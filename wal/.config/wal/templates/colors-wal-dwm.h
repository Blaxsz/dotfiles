static const char norm_fg[] = "#ddbd93";
static const char norm_bg[] = "#17120f";
static const char norm_border[] = "#9a8466";

static const char sel_fg[] = "#ddbd93";
static const char sel_bg[] = "#344960";
static const char sel_border[] = "#ddbd93";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
