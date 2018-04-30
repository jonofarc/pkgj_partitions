#include "pkgi_dialog.h"
#include "pkgi_style.h"
#include "pkgi_utils.h"
#include "pkgi.h"

typedef enum {
    DialogNone,
    DialogMessage,
    DialogError,
    DialogProgress,
} DialogType;

static DialogType dialog_type;
static char dialog_title[256];
static char dialog_text[256];
static char dialog_extra[256];
static char dialog_eta[256];
static float dialog_progress;
static int dialog_allow_close;
static int dialog_cancelled;

static int32_t dialog_width;
static int32_t dialog_height;
static int32_t dialog_delta;

void pkgi_dialog_init(void)
{
    dialog_type = DialogNone;
    dialog_allow_close = 1;
}

int pkgi_dialog_is_open(void)
{
    return dialog_type != DialogNone;
}

int pkgi_dialog_is_cancelled(void)
{
    return dialog_cancelled;
}

void pkgi_dialog_allow_close(int allow)
{
    pkgi_dialog_lock();
    dialog_allow_close = allow;
    pkgi_dialog_unlock();
}

void pkgi_dialog_message(const char* text)
{
    pkgi_dialog_lock();

    pkgi_strncpy(dialog_text, sizeof(dialog_text), text);
    dialog_title[0] = 0;
    dialog_extra[0] = 0;
    dialog_eta[0] = 0;

    dialog_cancelled = 0;
    dialog_type = DialogMessage;
    dialog_delta = 1;

    pkgi_dialog_unlock();
}

void pkgi_dialog_error(const char* text)
{
    pkgi_dialog_lock();

    pkgi_strncpy(dialog_title, sizeof(dialog_title), "ERROR");
    pkgi_strncpy(dialog_text, sizeof(dialog_text), text);
    dialog_extra[0] = 0;
    dialog_eta[0] = 0;

    dialog_cancelled = 0;
    dialog_type = DialogError;
    dialog_delta = 1;

    pkgi_dialog_unlock();
}

void pkgi_dialog_start_progress(const char* title, const char* text, float progress)
{
    pkgi_dialog_lock();

    pkgi_strncpy(dialog_title, sizeof(dialog_title), title);
    pkgi_strncpy(dialog_text, sizeof(dialog_text), text);
    dialog_extra[0] = 0;
    dialog_eta[0] = 0;

    dialog_progress = progress;
    dialog_cancelled = 0;
    dialog_type = DialogProgress;
    dialog_delta = 1;

    pkgi_dialog_unlock();
}

void pkgi_dialog_set_progress_title(const char* title)
{
    pkgi_dialog_lock();
    pkgi_strncpy(dialog_title, sizeof(dialog_title), title);
    pkgi_dialog_unlock();
}

void pkgi_dialog_update_progress(const char* text, const char* extra, const char* eta, float progress)
{
    pkgi_dialog_lock();

    pkgi_strncpy(dialog_text, sizeof(dialog_text), text);
    pkgi_strncpy(dialog_extra, sizeof(dialog_extra), extra ? extra : "");
    pkgi_strncpy(dialog_eta, sizeof(dialog_eta), eta ? eta : "");

    dialog_progress = progress;

    pkgi_dialog_unlock();
}

void pkgi_dialog_close(void)
{
    dialog_delta = -1;
}

void pkgi_do_dialog(pkgi_input* input)
{
    pkgi_dialog_lock();

    if (dialog_allow_close)
    {
        if ((dialog_type == DialogMessage || dialog_type == DialogError) && (input->pressed & pkgi_ok_button()))
        {
            dialog_delta = -1;
        }
        else if (dialog_type == DialogProgress && (input->pressed & pkgi_cancel_button()))
        {
            dialog_cancelled = 1;
        }
    }

    if (dialog_delta != 0)
    {
        dialog_width += dialog_delta * (int32_t)(input->delta * PKGI_ANIMATION_SPEED / 1000000);
        dialog_height += dialog_delta * (int32_t)(input->delta * PKGI_ANIMATION_SPEED / 1000000);

        if (dialog_delta < 0 && (dialog_width <= 0 || dialog_height <= 0))
        {
            dialog_type = DialogNone;
            dialog_text[0] = 0;
            dialog_extra[0] = 0;
            dialog_eta[0] = 0;

            dialog_width = 0;
            dialog_height = 0;
            dialog_delta = 0;
            pkgi_dialog_unlock();
            return;
        }
        else if (dialog_delta > 0)
        {
            if (dialog_width >= PKGI_DIALOG_WIDTH && dialog_height >= PKGI_DIALOG_HEIGHT)
            {
                dialog_delta = 0;
            }
            dialog_width = min32(dialog_width, PKGI_DIALOG_WIDTH);
            dialog_height = min32(dialog_height, PKGI_DIALOG_HEIGHT);
        }
    }

    DialogType local_type = dialog_type;
    char local_title[256];
    char local_text[256];
    char local_extra[256];
    char local_eta[256];
    float local_progress = dialog_progress;
    int local_allow_close = dialog_allow_close;
    int32_t local_width = dialog_width;
    int32_t local_height = dialog_height;

    pkgi_strncpy(local_title, sizeof(local_title), dialog_title);
    pkgi_strncpy(local_text, sizeof(local_text), dialog_text);
    pkgi_strncpy(local_extra, sizeof(local_extra), dialog_extra);
    pkgi_strncpy(local_eta, sizeof(local_eta), dialog_eta);

    pkgi_dialog_unlock();

    if (local_width != 0 && local_height != 0)
    {
        pkgi_draw_rect((VITA_WIDTH - local_width) / 2, (VITA_HEIGHT - local_height) / 2, local_width, local_height, PKGI_COLOR_MENU_BACKGROUND);
    }

    if (local_width != PKGI_DIALOG_WIDTH || local_height != PKGI_DIALOG_HEIGHT)
    {
        return;
    }

    int font_height = pkgi_text_height("M");

    int w = VITA_WIDTH - 2 * PKGI_DIALOG_HMARGIN;
    int h = VITA_HEIGHT - 2 * PKGI_DIALOG_VMARGIN;

    if (local_title[0])
    {
        uint32_t color;
        if (local_type == DialogError)
        {
            color = PKGI_COLOR_TEXT_ERROR;
        }
        else
        {
            color = PKGI_COLOR_TEXT_DIALOG;
        }

        int width = pkgi_text_width(local_title);
        if (width > w + 2 * PKGI_DIALOG_PADDING)
        {
            pkgi_clip_set(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, PKGI_DIALOG_VMARGIN + PKGI_DIALOG_PADDING, w - 2 * PKGI_DIALOG_PADDING, h - 2 * PKGI_DIALOG_PADDING);
            pkgi_draw_text((VITA_WIDTH - width) / 2, PKGI_DIALOG_VMARGIN + font_height, color, local_title);
            pkgi_clip_remove();
        }
        else
        {
            pkgi_draw_text((VITA_WIDTH - width) / 2, PKGI_DIALOG_VMARGIN + font_height, color, local_title);
        }
    }

    if (local_type == DialogProgress)
    {
        int extraw = pkgi_text_width(local_extra);

        int availw = VITA_WIDTH - 2 * (PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING) - (extraw ? extraw + 10 : 10);
        pkgi_clip_set(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, VITA_HEIGHT / 2 - font_height - PKGI_DIALOG_PROCESS_BAR_PADDING, availw, font_height + 2);
        pkgi_draw_text(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, VITA_HEIGHT / 2 - font_height - PKGI_DIALOG_PROCESS_BAR_PADDING, PKGI_COLOR_TEXT_DIALOG, local_text);
        pkgi_clip_remove();

        if (local_extra[0])
        {
            pkgi_draw_text(PKGI_DIALOG_HMARGIN + w - (PKGI_DIALOG_PADDING + extraw), VITA_HEIGHT / 2 - font_height - PKGI_DIALOG_PROCESS_BAR_PADDING, PKGI_COLOR_TEXT_DIALOG, local_extra);
        }

        if (local_progress < 0)
        {
            uint32_t avail = w - 2 * PKGI_DIALOG_PADDING;

            uint32_t start = (pkgi_time_msec() / 2) % (avail + PKGI_DIALOG_PROCESS_BAR_CHUNK);
            uint32_t end = start < PKGI_DIALOG_PROCESS_BAR_CHUNK ? start : start + PKGI_DIALOG_PROCESS_BAR_CHUNK > avail + PKGI_DIALOG_PROCESS_BAR_CHUNK ? avail : start;
            start = start < PKGI_DIALOG_PROCESS_BAR_CHUNK ? 0 : start - PKGI_DIALOG_PROCESS_BAR_CHUNK;

            pkgi_draw_rect(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, VITA_HEIGHT / 2, avail, PKGI_DIALOG_PROCESS_BAR_HEIGHT, PKGI_COLOR_PROGRESS_BACKGROUND);
            pkgi_draw_rect(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING + start, VITA_HEIGHT / 2, end - start, PKGI_DIALOG_PROCESS_BAR_HEIGHT, PKGI_COLOR_PROGRESS_BAR);
        }
        else
        {
            pkgi_draw_rect(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, VITA_HEIGHT / 2, w - 2 * PKGI_DIALOG_PADDING, PKGI_DIALOG_PROCESS_BAR_HEIGHT, PKGI_COLOR_PROGRESS_BACKGROUND);
            pkgi_draw_rect(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, VITA_HEIGHT / 2, (int)((w - 2 * PKGI_DIALOG_PADDING) * local_progress), PKGI_DIALOG_PROCESS_BAR_HEIGHT, PKGI_COLOR_PROGRESS_BAR);

            char percent[256];
            pkgi_snprintf(percent, sizeof(percent), "%.0f%%", local_progress * 100.f);

            int percentw = pkgi_text_width(percent);
            pkgi_draw_text((VITA_WIDTH - percentw) / 2, VITA_HEIGHT / 2 + PKGI_DIALOG_PROCESS_BAR_HEIGHT + PKGI_DIALOG_PROCESS_BAR_PADDING, PKGI_COLOR_TEXT_DIALOG, percent);
        }

        if (local_eta[0])
        {
            pkgi_draw_text(PKGI_DIALOG_HMARGIN + w - (PKGI_DIALOG_PADDING + pkgi_text_width(local_eta)), VITA_HEIGHT / 2 + PKGI_DIALOG_PROCESS_BAR_HEIGHT + PKGI_DIALOG_PROCESS_BAR_PADDING, PKGI_COLOR_TEXT_DIALOG, local_eta);
        }

        if (local_allow_close)
        {
            char text[256];
            pkgi_snprintf(text, sizeof(text), "press %s to cancel", pkgi_ok_button() == PKGI_BUTTON_X ? PKGI_UTF8_O : PKGI_UTF8_X);
            pkgi_draw_text((VITA_WIDTH - pkgi_text_width(text)) / 2, PKGI_DIALOG_VMARGIN + h - 2 * font_height, PKGI_COLOR_TEXT_DIALOG, text);
        }
    }
    else
    {
        uint32_t color;
        if (local_type == DialogMessage)
        {
            color = PKGI_COLOR_TEXT_DIALOG;
        }
        else // local_type == DialogError
        {
            color = PKGI_COLOR_TEXT_ERROR;
        }

        int textw = pkgi_text_width(local_text);
        if (textw > w + 2 * PKGI_DIALOG_PADDING)
        {
            pkgi_clip_set(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, PKGI_DIALOG_VMARGIN + PKGI_DIALOG_PADDING, w - 2 * PKGI_DIALOG_PADDING, h - 2 * PKGI_DIALOG_PADDING);
            pkgi_draw_text(PKGI_DIALOG_HMARGIN + PKGI_DIALOG_PADDING, VITA_HEIGHT / 2 - font_height / 2, color, local_text);
            pkgi_clip_remove();
        }
        else
        {
            pkgi_draw_text((VITA_WIDTH - textw) / 2, VITA_HEIGHT / 2 - font_height / 2, color, local_text);
        }

        if (local_allow_close)
        {
            char text[256];
            pkgi_snprintf(text, sizeof(text), "press %s to close", pkgi_ok_button() == PKGI_BUTTON_X ? PKGI_UTF8_X : PKGI_UTF8_O);
            pkgi_draw_text((VITA_WIDTH - pkgi_text_width(text)) / 2, PKGI_DIALOG_VMARGIN + h - 2 * font_height, PKGI_COLOR_TEXT_DIALOG, text);
        }
    }
}
