package xlib

import _c "core:c"

/* Macros */

IMStatusNone :: 0x800;
libSpecificationRelease :: 6;
HAVE_UTF8_STRING :: 1;
True :: 1;
False :: 0;
QueuedAlready :: 0;
QueuedAfterReading :: 1;
QueuedAfterFlush :: 2;
AllPlanes :: (~(_c.ulong)(0));
NRequiredCharSet :: "requiredCharSet";
NQueryOrientation :: "queryOrientation";
NBaseFontName :: "baseFontName";
NOMAutomatic :: "omAutomatic";
NMissingCharSet :: "missingCharSet";
NDefaultString :: "defaultString";
NOrientation :: "orientation";
NDirectionalDependentDrawing :: "directionalDependentDrawing";
NContextualDrawing :: "contextualDrawing";
NFontInfo :: "fontInfo";
IMPreeditArea :: 0x1;
IMPreeditCallbacks :: 0x2;
IMPreeditPosition :: 0x4;
IMPreeditNothing :: 0x8;
IMPreeditNone :: 0x10;
IMStatusArea :: 0x100;
IMStatusCallbacks :: 0x200;
IMStatusNothing :: 0x400;
NVaNestedList :: "XNVaNestedList";
NQueryInputStyle :: "queryInputStyle";
NClientWindow :: "clientWindow";
NInputStyle :: "inputStyle";
NFocusWindow :: "focusWindow";
NResourceName :: "resourceName";
NResourceClass :: "resourceClass";
NGeometryCallback :: "geometryCallback";
NDestroyCallback :: "destroyCallback";
NFilterEvents :: "filterEvents";
NPreeditStartCallback :: "preeditStartCallback";
NPreeditDoneCallback :: "preeditDoneCallback";
NPreeditDrawCallback :: "preeditDrawCallback";
NPreeditCaretCallback :: "preeditCaretCallback";
NPreeditStateNotifyCallback :: "preeditStateNotifyCallback";
NPreeditAttributes :: "preeditAttributes";
NStatusStartCallback :: "statusStartCallback";
NStatusDoneCallback :: "statusDoneCallback";
NStatusDrawCallback :: "statusDrawCallback";
NStatusAttributes :: "statusAttributes";
NArea :: "area";
NAreaNeeded :: "areaNeeded";
NSpotLocation :: "spotLocation";
NColormap :: "colorMap";
NStdColormap :: "stdColorMap";
NForeground :: "foreground";
NBackground :: "background";
NBackgroundPixmap :: "backgroundPixmap";
NFontSet :: "fontSet";
NLineSpace :: "lineSpace";
NCursor :: "cursor";
NQueryIMValuesList :: "queryIMValuesList";
NQueryICValuesList :: "queryICValuesList";
NVisiblePosition :: "visiblePosition";
NR6PreeditCallback :: "r6PreeditCallback";
NStringConversionCallback :: "stringConversionCallback";
NStringConversion :: "stringConversion";
NResetState :: "resetState";
NHotKey :: "hotKey";
NHotKeyState :: "hotKeyState";
NPreeditState :: "preeditState";
NSeparatorofNestedList :: "separatorofNestedList";
BufferOverflow :: -1;
LookupNone :: 1;
LookupChars :: 2;
LookupKeySym :: 3;
LookupBoth :: 4;
IMReverse :: 1;
IMUnderline :: (1 << 1);
IMHighlight :: (1 << 2);
IMPrimary :: (1 << 5);
IMSecondary :: (1 << 6);
IMTertiary :: (1 << 7);
IMVisibleToForward :: (1 << 8);
IMVisibleToBackword :: (1 << 9);
IMVisibleToCenter :: (1 << 10);
IMPreeditUnKnown :: 0;
IMPreeditEnable :: 1;
IMPreeditDisable :: (1 << 1);
IMInitialState :: 1;
IMPreserveState :: (1 << 1);
IMStringConversionLeftEdge :: (0x1);
IMStringConversionRightEdge :: (0x2);
IMStringConversionTopEdge :: (0x4);
IMStringConversionBottomEdge :: (0x8);
IMStringConversionConcealed :: (0x10);
IMStringConversionWrapped :: (0x20);
IMStringConversionBuffer :: (0x1);
IMStringConversionLine :: (0x2);
IMStringConversionWord :: (0x3);
IMStringConversionChar :: (0x4);
IMStringConversionSubstitution :: (0x1);
IMStringConversionRetrieval :: (0x2);
IMHotKeyStateON :: (0x1);
IMHotKeyStateOFF :: (0x2);
Pointer :: ^_c.char;

ExtData :: struct {
    number       : int,
    next         : ^_ExtData,
    free_private : (proc(extension : ^_ExtData) -> int),
    private_data : Pointer,
};

_ExtData :: struct {
    number       : int,
    next         : ^_ExtData,
    free_private : (proc(extension : ^_ExtData) -> int),
    private_data : Pointer,
};

ExtCodes :: struct {
    extension    : int,
    major_opcode : int,
    first_event  : int,
    first_error  : int,
};

PixmapFormatValues :: struct {
    depth          : int,
    bits_per_pixel : int,
    scanline_pad   : int,
};

GC :: ^_GC;

_Display :: struct {};

_rmHashBucketRec :: struct {};

funcs :: struct {
    create_image  : (proc(^_Display, ^Visual, _c.uint, int, int, ^_c.char, _c.uint, _c.uint, int, int) -> ^_Image),
    destroy_image : (proc(^_Image) -> int),
    get_pixel     : (proc(^_Image, int, int) -> _c.ulong),
    put_pixel     : (proc(^_Image, int, int, _c.ulong) -> int),
    sub_image     : (proc(^_Image, int, int, _c.uint, _c.uint) -> ^_Image),
    add_pixel     : (proc(^_Image, _c.long) -> int),
};

GCValues :: struct {
    function           : int,
    plane_mask         : _c.ulong,
    foreground         : _c.ulong,
    background         : _c.ulong,
    line_width         : int,
    line_style         : int,
    cap_style          : int,
    join_style         : int,
    fill_style         : int,
    fill_rule          : int,
    arc_mode           : int,
    tile               : Pixmap,
    stipple            : Pixmap,
    ts_x_origin        : int,
    ts_y_origin        : int,
    font               : Font,
    subwindow_mode     : int,
    graphics_exposures : int,
    clip_x_origin      : int,
    clip_y_origin      : int,
    clip_mask          : Pixmap,
    dash_offset        : int,
    dashes             : _c.char,
};

_GC :: struct {};

Visual :: struct {
    ext_data     : ^ExtData,
    visualid     : VisualID,
    class        : int,
    red_mask     : _c.ulong,
    green_mask   : _c.ulong,
    blue_mask    : _c.ulong,
    bits_per_rgb : int,
    map_entries  : int,
};

Depth :: struct {
    depth    : int,
    nvisuals : int,
    visuals  : ^Visual,
};

Screen :: struct {
    ext_data        : ^ExtData,
    display         : ^_Display,
    root            : Window,
    width           : int,
    height          : int,
    mwidth          : int,
    mheight         : int,
    ndepths         : int,
    depths          : ^Depth,
    root_depth      : int,
    root_visual     : ^Visual,
    default_gc      : GC,
    cmap            : Colormap,
    white_pixel     : _c.ulong,
    black_pixel     : _c.ulong,
    max_maps        : int,
    min_maps        : int,
    backing_store   : int,
    save_unders     : int,
    root_input_mask : _c.long,
};

ScreenFormat :: struct {
    ext_data       : ^ExtData,
    depth          : int,
    bits_per_pixel : int,
    scanline_pad   : int,
};

SetWindowAttributes :: struct {
    background_pixmap     : Pixmap,
    background_pixel      : _c.ulong,
    border_pixmap         : Pixmap,
    border_pixel          : _c.ulong,
    bit_gravity           : int,
    win_gravity           : int,
    backing_store         : int,
    backing_planes        : _c.ulong,
    backing_pixel         : _c.ulong,
    save_under            : int,
    event_mask            : _c.long,
    do_not_propagate_mask : _c.long,
    override_redirect     : int,
    colormap              : Colormap,
    cursor                : Cursor,
};

WindowAttributes :: struct {
    x                     : int,
    y                     : int,
    width                 : int,
    height                : int,
    border_width          : int,
    depth                 : int,
    visual                : ^Visual,
    root                  : Window,
    class                 : int,
    bit_gravity           : int,
    win_gravity           : int,
    backing_store         : int,
    backing_planes        : _c.ulong,
    backing_pixel         : _c.ulong,
    save_under            : int,
    colormap              : Colormap,
    map_installed         : int,
    map_state             : int,
    all_event_masks       : _c.long,
    your_event_mask       : _c.long,
    do_not_propagate_mask : _c.long,
    override_redirect     : int,
    screen                : ^Screen,
};

HostAddress :: struct {
    family  : int,
    length  : int,
    address : ^_c.char,
};

_Image :: struct {
    width            : int,
    height           : int,
    xoffset          : int,
    format           : int,
    data             : ^_c.char,
    byte_order       : int,
    bitmap_unit      : int,
    bitmap_bit_order : int,
    bitmap_pad       : int,
    depth            : int,
    bytes_per_line   : int,
    bits_per_pixel   : int,
    red_mask         : _c.ulong,
    green_mask       : _c.ulong,
    blue_mask        : _c.ulong,
    obdata           : Pointer,
    f : struct {
        create_image  : (proc(^_Display, ^Visual, _c.uint, int, int, ^_c.char, _c.uint, _c.uint, int, int) -> ^_Image),
        destroy_image : (proc(^_Image) -> int),
        get_pixel     : (proc(^_Image, int, int) -> _c.ulong),
        put_pixel     : (proc(^_Image, int, int, _c.ulong) -> int),
        sub_image     : (proc(^_Image, int, int, _c.uint, _c.uint) -> ^_Image),
        add_pixel     : (proc(^_Image, _c.long) -> int),
    },
};

Image :: struct {
    width            : int,
    height           : int,
    xoffset          : int,
    format           : int,
    data             : ^_c.char,
    byte_order       : int,
    bitmap_unit      : int,
    bitmap_bit_order : int,
    bitmap_pad       : int,
    depth            : int,
    bytes_per_line   : int,
    bits_per_pixel   : int,
    red_mask         : _c.ulong,
    green_mask       : _c.ulong,
    blue_mask        : _c.ulong,
    obdata           : Pointer,
    f : struct {
        create_image  : (proc(^_Display, ^Visual, _c.uint, int, int, ^_c.char, _c.uint, _c.uint, int, int) -> ^_Image),
        destroy_image : (proc(^_Image) -> int),
        get_pixel     : (proc(^_Image, int, int) -> _c.ulong),
        put_pixel     : (proc(^_Image, int, int, _c.ulong) -> int),
        sub_image     : (proc(^_Image, int, int, _c.uint, _c.uint) -> ^_Image),
        add_pixel     : (proc(^_Image, _c.long) -> int),
    },
};

WindowChanges :: struct {
    x            : int,
    y            : int,
    width        : int,
    height       : int,
    border_width : int,
    sibling      : Window,
    stack_mode   : int,
};

Color :: struct {
    pixel : _c.ulong,
    red   : _c.ushort,
    green : _c.ushort,
    blue  : _c.ushort,
    flags : _c.char,
    pad   : _c.char,
};

Segment :: struct {
    x1 : _c.short,
    y1 : _c.short,
    x2 : _c.short,
    y2 : _c.short,
};

Point :: struct {
    x : _c.short,
    y : _c.short,
};

Rectangle :: struct {
    x      : _c.short,
    y      : _c.short,
    width  : _c.ushort,
    height : _c.ushort,
};

Arc :: struct {
    x      : _c.short,
    y      : _c.short,
    width  : _c.ushort,
    height : _c.ushort,
    angle1 : _c.short,
    angle2 : _c.short,
};

KeyboardControl :: struct {
    key_click_percent : int,
    bell_percent      : int,
    bell_pitch        : int,
    bell_duration     : int,
    led               : int,
    led_mode          : int,
    key               : int,
    auto_repeat_mode  : int,
};

KeyboardState :: struct {
    key_click_percent  : int,
    bell_percent       : int,
    bell_pitch         : _c.uint,
    bell_duration      : _c.uint,
    led_mask           : _c.ulong,
    global_auto_repeat : int,
    auto_repeats       : [32]_c.char,
};

TimeCoord :: struct {
    time : Time,
    x    : _c.short,
    y    : _c.short,
};

ModifierKeymap :: struct {
    max_keypermod : int,
    modifiermap   : ^KeyCode,
};

Display :: _Display;

KeyEvent :: struct {
    type        : int,
    serial      : _c.ulong,
    send_event  : int,
    display     : ^Display,
    window      : Window,
    root        : Window,
    subwindow   : Window,
    time        : Time,
    x           : int,
    y           : int,
    x_root      : int,
    y_root      : int,
    state       : _c.uint,
    keycode     : _c.uint,
    same_screen : int,
};

KeyPressedEvent :: KeyEvent;

ButtonEvent :: struct {
    type        : int,
    serial      : _c.ulong,
    send_event  : int,
    display     : ^Display,
    window      : Window,
    root        : Window,
    subwindow   : Window,
    time        : Time,
    x           : int,
    y           : int,
    x_root      : int,
    y_root      : int,
    state       : _c.uint,
    button      : _c.uint,
    same_screen : int,
};

MotionEvent :: struct {
    type        : int,
    serial      : _c.ulong,
    send_event  : int,
    display     : ^Display,
    window      : Window,
    root        : Window,
    subwindow   : Window,
    time        : Time,
    x           : int,
    y           : int,
    x_root      : int,
    y_root      : int,
    state       : _c.uint,
    is_hint     : _c.char,
    same_screen : int,
};

CrossingEvent :: struct {
    type        : int,
    serial      : _c.ulong,
    send_event  : int,
    display     : ^Display,
    window      : Window,
    root        : Window,
    subwindow   : Window,
    time        : Time,
    x           : int,
    y           : int,
    x_root      : int,
    y_root      : int,
    mode        : int,
    detail      : int,
    same_screen : int,
    focus       : int,
    state       : _c.uint,
};

FocusChangeEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    mode       : int,
    detail     : int,
};

KeymapEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    key_vector : [32]_c.char,
};

ExposeEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    x          : int,
    y          : int,
    width      : int,
    height     : int,
    count      : int,
};

GraphicsExposeEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    drawable   : Drawable,
    x          : int,
    y          : int,
    width      : int,
    height     : int,
    count      : int,
    major_code : int,
    minor_code : int,
};

NoExposeEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    drawable   : Drawable,
    major_code : int,
    minor_code : int,
};

VisibilityEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    state      : int,
};

CreateWindowEvent :: struct {
    type              : int,
    serial            : _c.ulong,
    send_event        : int,
    display           : ^Display,
    parent            : Window,
    window            : Window,
    x                 : int,
    y                 : int,
    width             : int,
    height            : int,
    border_width      : int,
    override_redirect : int,
};

DestroyWindowEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    event      : Window,
    window     : Window,
};

UnmapEvent :: struct {
    type           : int,
    serial         : _c.ulong,
    send_event     : int,
    display        : ^Display,
    event          : Window,
    window         : Window,
    from_configure : int,
};

MapEvent :: struct {
    type              : int,
    serial            : _c.ulong,
    send_event        : int,
    display           : ^Display,
    event             : Window,
    window            : Window,
    override_redirect : int,
};

MapRequestEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    parent     : Window,
    window     : Window,
};

ReparentEvent :: struct {
    type              : int,
    serial            : _c.ulong,
    send_event        : int,
    display           : ^Display,
    event             : Window,
    window            : Window,
    parent            : Window,
    x                 : int,
    y                 : int,
    override_redirect : int,
};

ConfigureEvent :: struct {
    type              : int,
    serial            : _c.ulong,
    send_event        : int,
    display           : ^Display,
    event             : Window,
    window            : Window,
    x                 : int,
    y                 : int,
    width             : int,
    height            : int,
    border_width      : int,
    above             : Window,
    override_redirect : int,
};

GravityEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    event      : Window,
    window     : Window,
    x          : int,
    y          : int,
};

ResizeRequestEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    width      : int,
    height     : int,
};

ConfigureRequestEvent :: struct {
    type         : int,
    serial       : _c.ulong,
    send_event   : int,
    display      : ^Display,
    parent       : Window,
    window       : Window,
    x            : int,
    y            : int,
    width        : int,
    height       : int,
    border_width : int,
    above        : Window,
    detail       : int,
    value_mask   : _c.ulong,
};

CirculateEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    event      : Window,
    window     : Window,
    place      : int,
};

CirculateRequestEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    parent     : Window,
    window     : Window,
    place      : int,
};

PropertyEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    atom       : Atom,
    time       : Time,
    state      : int,
};

SelectionClearEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    selection  : Atom,
    time       : Time,
};

SelectionRequestEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    owner      : Window,
    requestor  : Window,
    selection  : Atom,
    target     : Atom,
    property   : Atom,
    time       : Time,
};

SelectionEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    requestor  : Window,
    selection  : Atom,
    target     : Atom,
    property   : Atom,
    time       : Time,
};

ColormapEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
    colormap   : Colormap,
    new        : int,
    state      : int,
};

ClientMessageEvent :: struct {
    type         : int,
    serial       : _c.ulong,
    send_event   : int,
    display      : ^Display,
    window       : Window,
    message_type : Atom,
    format       : int,
    data : struct #raw_union {
        b : [20]_c.char,
        s : [10]_c.short,
        l : [5]_c.long,
    },
};

MappingEvent :: struct {
    type          : int,
    serial        : _c.ulong,
    send_event    : int,
    display       : ^Display,
    window        : Window,
    request       : int,
    first_keycode : int,
    count         : int,
};

ErrorEvent :: struct {
    type         : int,
    display      : ^Display,
    resourceid   : ID,
    serial       : _c.ulong,
    error_code   : _c.uchar,
    request_code : _c.uchar,
    minor_code   : _c.uchar,
};

AnyEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    window     : Window,
};

XGenericEvent :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    extension  : int,
    evtype     : int,
};

GenericEventCookie :: struct {
    type       : int,
    serial     : _c.ulong,
    send_event : int,
    display    : ^Display,
    extension  : int,
    evtype     : int,
    cookie     : _c.uint,
    data       : rawptr,
};

Event :: struct #raw_union {
    type              : int,
    xany              : AnyEvent,
    xkey              : KeyEvent,
    xbutton           : ButtonEvent,
    xmotion           : MotionEvent,
    xcrossing         : CrossingEvent,
    xfocus            : FocusChangeEvent,
    xexpose           : ExposeEvent,
    xgraphicsexpose   : GraphicsExposeEvent,
    xnoexpose         : NoExposeEvent,
    xvisibility       : VisibilityEvent,
    xcreatewindow     : CreateWindowEvent,
    xdestroywindow    : DestroyWindowEvent,
    xunmap            : UnmapEvent,
    xmap              : MapEvent,
    xmaprequest       : MapRequestEvent,
    xreparent         : ReparentEvent,
    xconfigure        : ConfigureEvent,
    xgravity          : GravityEvent,
    xresizerequest    : ResizeRequestEvent,
    xconfigurerequest : ConfigureRequestEvent,
    xcirculate        : CirculateEvent,
    xcirculaterequest : CirculateRequestEvent,
    xproperty         : PropertyEvent,
    xselectionclear   : SelectionClearEvent,
    xselectionrequest : SelectionRequestEvent,
    xselection        : SelectionEvent,
    xcolormap         : ColormapEvent,
    xclient           : ClientMessageEvent,
    xmapping          : MappingEvent,
    xerror            : ErrorEvent,
    xkeymap           : KeymapEvent,
    xgeneric          : XGenericEvent,
    xcookie           : GenericEventCookie,
    pad               : [24]_c.long,
};

_Event :: struct #raw_union {
    type              : int,
    xany              : AnyEvent,
    xkey              : KeyEvent,
    xbutton           : ButtonEvent,
    xmotion           : MotionEvent,
    xcrossing         : CrossingEvent,
    xfocus            : FocusChangeEvent,
    xexpose           : ExposeEvent,
    xgraphicsexpose   : GraphicsExposeEvent,
    xnoexpose         : NoExposeEvent,
    xvisibility       : VisibilityEvent,
    xcreatewindow     : CreateWindowEvent,
    xdestroywindow    : DestroyWindowEvent,
    xunmap            : UnmapEvent,
    xmap              : MapEvent,
    xmaprequest       : MapRequestEvent,
    xreparent         : ReparentEvent,
    xconfigure        : ConfigureEvent,
    xgravity          : GravityEvent,
    xresizerequest    : ResizeRequestEvent,
    xconfigurerequest : ConfigureRequestEvent,
    xcirculate        : CirculateEvent,
    xcirculaterequest : CirculateRequestEvent,
    xproperty         : PropertyEvent,
    xselectionclear   : SelectionClearEvent,
    xselectionrequest : SelectionRequestEvent,
    xselection        : SelectionEvent,
    xcolormap         : ColormapEvent,
    xclient           : ClientMessageEvent,
    xmapping          : MappingEvent,
    xerror            : ErrorEvent,
    xkeymap           : KeymapEvent,
    xgeneric          : XGenericEvent,
    xcookie           : GenericEventCookie,
    pad               : [24]_c.long,
};

CharStruct :: struct {
    lbearing   : _c.short,
    rbearing   : _c.short,
    width      : _c.short,
    ascent     : _c.short,
    descent    : _c.short,
    attributes : _c.ushort,
};

FontProp :: struct {
    name   : Atom,
    card32 : _c.ulong,
};

FontStruct :: struct {
    ext_data          : ^ExtData,
    fid               : Font,
    direction         : _c.uint,
    min_char_or_byte2 : _c.uint,
    max_char_or_byte2 : _c.uint,
    min_byte1         : _c.uint,
    max_byte1         : _c.uint,
    all_chars_exist   : int,
    default_char      : _c.uint,
    n_properties      : int,
    properties        : ^FontProp,
    min_bounds        : CharStruct,
    max_bounds        : CharStruct,
    per_char          : ^CharStruct,
    ascent            : int,
    descent           : int,
};

TextItem :: struct {
    chars  : ^_c.char,
    nchars : int,
    delta  : int,
    font   : Font,
};

Char2b :: struct {
    byte1 : _c.uchar,
    byte2 : _c.uchar,
};

TextItem16 :: struct {
    chars  : ^Char2b,
    nchars : int,
    delta  : int,
    font   : Font,
};

EDataObject :: struct #raw_union {
    display       : ^Display,
    gc            : GC,
    visual        : ^Visual,
    screen        : ^Screen,
    pixmap_format : ^ScreenFormat,
    font          : ^FontStruct,
};

FontSetExtents :: struct {
    max_ink_extent     : Rectangle,
    max_logical_extent : Rectangle,
};

_OM :: struct {};

OM :: ^_OM;

_OC :: struct {};

mbTextItem :: struct {
    chars    : ^_c.char,
    nchars   : int,
    delta    : int,
    font_set : FontSet,
};

OC :: ^_OC;

FontSet :: ^_OC;

wcTextItem :: struct {
    chars    : ^_c.wchar_t,
    nchars   : int,
    delta    : int,
    font_set : FontSet,
};

Orientation :: _c.int;
/*  <ENUM> :: enum { */
OMOrientation_LTR_TTB  :: 0;
OMOrientation_RTL_TTB  :: 1;
OMOrientation_TTB_LTR  :: 2;
OMOrientation_TTB_RTL  :: 3;
OMOrientation_Context  :: 4;
/* } */;

_IM :: struct {};

IM :: ^_IM;

_IC :: struct {};

VaNestedList :: rawptr;

IMCaretDirection :: _c.int;
/*  <ENUM> :: enum { */
IMForwardChar       :: 0;
IMBackwardChar      :: 1;
IMForwardWord       :: 2;
IMBackwardWord      :: 3;
IMCaretUp           :: 4;
IMCaretDown         :: 5;
IMNextLine          :: 6;
IMPreviousLine      :: 7;
IMLineStart         :: 8;
IMLineEnd           :: 9;
IMAbsolutePosition  :: 10;
IMDontChange        :: 11;
/* } */;

IMCaretStyle :: _c.int;
/*  <ENUM> :: enum { */
IMIsInvisible  :: 0;
IMIsPrimary    :: 1;
IMIsSecondary  :: 2;
/* } */;

IMStatusDataType :: _c.int;
/*  <ENUM> :: enum { */
IMTextType    :: 0;
IMBitmapType  :: 1;
/* } */;

ErrorHandler :: (proc(^Display, ^ErrorEvent) -> int);

IOErrorHandler :: (proc(^Display) -> int);

IDProc :: proc(^Display, Pointer, Pointer);

IOErrorExitHandler :: proc(^Display, rawptr);

IC :: ^_IC;

ConnectionWatchProc :: proc(^Display, Pointer, int, int, ^Pointer);


/***** libX11 *****/
foreign import libX11 "system:libX11.so"

/* Procedures */
@(link_prefix="X")
foreign libX11 {
    _mblen                                                          :: proc(str : ^_c.char, len : int) -> int ---;
    InitImage                                                       :: proc(^Image) -> int ---;
    rmInitialize                                                    :: proc() ---;
    GetAtomNames                                                    :: proc(^Display, ^Atom, int, ^^_c.char) -> int ---;
    InternAtom                                                      :: proc(^Display, ^_c.char, int) -> Atom ---;
    InternAtoms                                                     :: proc(^Display, ^^_c.char, int, int, ^Atom) -> int ---;
    CopyColormapAndFree                                             :: proc(^Display, Colormap) -> Colormap ---;
    CreateColormap                                                  :: proc(^Display, Window, ^Visual, int) -> Colormap ---;
    CreatePixmapCursor                                              :: proc(^Display, Pixmap, Pixmap, ^Color, ^Color, _c.uint, _c.uint) -> Cursor ---;
    CreateGlyphCursor                                               :: proc(^Display, Font, Font, _c.uint, _c.uint, ^Color, ^Color) -> Cursor ---;
    CreateFontCursor                                                :: proc(^Display, _c.uint) -> Cursor ---;
    LoadFont                                                        :: proc(^Display, ^_c.char) -> Font ---;
    CreateGC                                                        :: proc(^Display, Drawable, _c.ulong, ^GCValues) -> GC ---;
    GContextFromGC                                                  :: proc(GC) -> GContext ---;
    FlushGC                                                         :: proc(^Display, GC) ---;
    CreatePixmap                                                    :: proc(^Display, Drawable, _c.uint, _c.uint, _c.uint) -> Pixmap ---;
    CreateBitmapFromData                                            :: proc(^Display, Drawable, ^_c.char, _c.uint, _c.uint) -> Pixmap ---;
    CreatePixmapFromBitmapData                                      :: proc(^Display, Drawable, ^_c.char, _c.uint, _c.uint, _c.ulong, _c.ulong, _c.uint) -> Pixmap ---;
    CreateSimpleWindow                                              :: proc(^Display, Window, int, int, _c.uint, _c.uint, _c.uint, _c.ulong, _c.ulong) -> Window ---;
    GetSelectionOwner                                               :: proc(^Display, Atom) -> Window ---;
    CreateWindow                                                    :: proc(^Display, Window, int, int, _c.uint, _c.uint, _c.uint, int, _c.uint, ^Visual, _c.ulong, ^SetWindowAttributes) -> Window ---;
    KeycodeToKeysym                                                 :: proc(^Display, KeyCode, int) -> KeySym ---;
    LookupKeysym                                                    :: proc(^KeyEvent, int) -> KeySym ---;
    StringToKeysym                                                  :: proc(^_c.char) -> KeySym ---;
    MaxRequestSize                                                  :: proc(^Display) -> _c.long ---;
    ExtendedMaxRequestSize                                          :: proc(^Display) -> _c.long ---;
    DisplayMotionBufferSize                                         :: proc(^Display) -> _c.ulong ---;
    VisualIDFromVisual                                              :: proc(^Visual) -> VisualID ---;
    InitThreads                                                     :: proc() -> int ---;
    LockDisplay                                                     :: proc(^Display) ---;
    UnlockDisplay                                                   :: proc(^Display) ---;
    RootWindow                                                      :: proc(^Display, int) -> Window ---;
    DefaultRootWindow                                               :: proc(^Display) -> Window ---;
    RootWindowOfScreen                                              :: proc(^Screen) -> Window ---;
    DefaultGC                                                       :: proc(^Display, int) -> GC ---;
    DefaultGCOfScreen                                               :: proc(^Screen) -> GC ---;
    BlackPixel                                                      :: proc(^Display, int) -> _c.ulong ---;
    WhitePixel                                                      :: proc(^Display, int) -> _c.ulong ---;
    XAllPlanes                                                      :: proc() -> _c.ulong ---;
    BlackPixelOfScreen                                              :: proc(^Screen) -> _c.ulong ---;
    WhitePixelOfScreen                                              :: proc(^Screen) -> _c.ulong ---;
    NextRequest                                                     :: proc(^Display) -> _c.ulong ---;
    LastKnownRequestProcessed                                       :: proc(^Display) -> _c.ulong ---;
    DefaultColormap                                                 :: proc(^Display, int) -> Colormap ---;
    DefaultColormapOfScreen                                         :: proc(^Screen) -> Colormap ---;
    EventMaskOfScreen                                               :: proc(^Screen) -> _c.long ---;
    ScreenNumberOfScreen                                            :: proc(^Screen) -> int ---;
    SetErrorHandler                                                 :: proc(ErrorHandler) -> ErrorHandler ---;
    SetIOErrorHandler                                               :: proc(IOErrorHandler) -> IOErrorHandler ---;
    SetIOErrorExitHandler                                           :: proc(^Display, IOErrorExitHandler, rawptr) ---;
    ReconfigureWMWindow                                             :: proc(^Display, Window, int, _c.uint, ^WindowChanges) -> int ---;
    GetWMProtocols                                                  :: proc(^Display, Window, ^^Atom, ^int) -> int ---;
    SetWMProtocols                                                  :: proc(^Display, Window, ^Atom, int) -> int ---;
    IconifyWindow                                                   :: proc(^Display, Window, int) -> int ---;
    WithdrawWindow                                                  :: proc(^Display, Window, int) -> int ---;
    GetCommand                                                      :: proc(^Display, Window, ^^^_c.char, ^int) -> int ---;
    GetWMColormapWindows                                            :: proc(^Display, Window, ^^Window, ^int) -> int ---;
    SetWMColormapWindows                                            :: proc(^Display, Window, ^Window, int) -> int ---;
    FreeStringList                                                  :: proc(^^_c.char) ---;
    SetTransientForHint                                             :: proc(^Display, Window, Window) -> int ---;
    ActivateScreenSaver                                             :: proc(^Display) -> int ---;
    AddHost                                                         :: proc(^Display, ^HostAddress) -> int ---;
    AddHosts                                                        :: proc(^Display, ^HostAddress, int) -> int ---;
    AddToExtensionList                                              :: proc(^^_ExtData, ^ExtData) -> int ---;
    AddToSaveSet                                                    :: proc(^Display, Window) -> int ---;
    AllocColor                                                      :: proc(^Display, Colormap, ^Color) -> int ---;
    AllocColorCells                                                 :: proc(^Display, Colormap, int, ^_c.ulong, _c.uint, ^_c.ulong, _c.uint) -> int ---;
    AllocColorPlanes                                                :: proc(^Display, Colormap, int, ^_c.ulong, int, int, int, int, ^_c.ulong, ^_c.ulong, ^_c.ulong) -> int ---;
    AllocNamedColor                                                 :: proc(^Display, Colormap, ^_c.char, ^Color, ^Color) -> int ---;
    AllowEvents                                                     :: proc(^Display, int, Time) -> int ---;
    AutoRepeatOff                                                   :: proc(^Display) -> int ---;
    AutoRepeatOn                                                    :: proc(^Display) -> int ---;
    Bell                                                            :: proc(^Display, int) -> int ---;
    BitmapBitOrder                                                  :: proc(^Display) -> int ---;
    BitmapPad                                                       :: proc(^Display) -> int ---;
    BitmapUnit                                                      :: proc(^Display) -> int ---;
    CellsOfScreen                                                   :: proc(^Screen) -> int ---;
    ChangeActivePointerGrab                                         :: proc(^Display, _c.uint, Cursor, Time) -> int ---;
    ChangeGC                                                        :: proc(^Display, GC, _c.ulong, ^GCValues) -> int ---;
    ChangeKeyboardControl                                           :: proc(^Display, _c.ulong, ^KeyboardControl) -> int ---;
    ChangeKeyboardMapping                                           :: proc(^Display, int, int, ^KeySym, int) -> int ---;
    ChangePointerControl                                            :: proc(^Display, int, int, int, int, int) -> int ---;
    ChangeProperty                                                  :: proc(^Display, Window, Atom, Atom, int, int, ^_c.uchar, int) -> int ---;
    ChangeSaveSet                                                   :: proc(^Display, Window, int) -> int ---;
    ChangeWindowAttributes                                          :: proc(^Display, Window, _c.ulong, ^SetWindowAttributes) -> int ---;
    CheckIfEvent                                                    :: proc(^Display, ^Event, (proc(^Display, ^Event, Pointer) -> int), Pointer) -> int ---;
    CheckMaskEvent                                                  :: proc(^Display, _c.long, ^Event) -> int ---;
    CheckTypedEvent                                                 :: proc(^Display, int, ^Event) -> int ---;
    CheckTypedWindowEvent                                           :: proc(^Display, Window, int, ^Event) -> int ---;
    CheckWindowEvent                                                :: proc(^Display, Window, _c.long, ^Event) -> int ---;
    CirculateSubwindows                                             :: proc(^Display, Window, int) -> int ---;
    CirculateSubwindowsDown                                         :: proc(^Display, Window) -> int ---;
    CirculateSubwindowsUp                                           :: proc(^Display, Window) -> int ---;
    ClearArea                                                       :: proc(^Display, Window, int, int, _c.uint, _c.uint, int) -> int ---;
    ClearWindow                                                     :: proc(^Display, Window) -> int ---;
    CloseDisplay                                                    :: proc(^Display) -> int ---;
    ConfigureWindow                                                 :: proc(^Display, Window, _c.uint, ^WindowChanges) -> int ---;
    ConnectionNumber                                                :: proc(^Display) -> int ---;
    ConvertSelection                                                :: proc(^Display, Atom, Atom, Atom, Window, Time) -> int ---;
    CopyArea                                                        :: proc(^Display, Drawable, Drawable, GC, int, int, _c.uint, _c.uint, int, int) -> int ---;
    CopyGC                                                          :: proc(^Display, GC, _c.ulong, GC) -> int ---;
    CopyPlane                                                       :: proc(^Display, Drawable, Drawable, GC, int, int, _c.uint, _c.uint, int, int, _c.ulong) -> int ---;
    DefaultDepth                                                    :: proc(^Display, int) -> int ---;
    DefaultDepthOfScreen                                            :: proc(^Screen) -> int ---;
    DefaultScreen                                                   :: proc(^Display) -> int ---;
    DefineCursor                                                    :: proc(^Display, Window, Cursor) -> int ---;
    DeleteProperty                                                  :: proc(^Display, Window, Atom) -> int ---;
    DestroyWindow                                                   :: proc(^Display, Window) -> int ---;
    DestroySubwindows                                               :: proc(^Display, Window) -> int ---;
    DoesBackingStore                                                :: proc(^Screen) -> int ---;
    DoesSaveUnders                                                  :: proc(^Screen) -> int ---;
    DisableAccessControl                                            :: proc(^Display) -> int ---;
    DisplayCells                                                    :: proc(^Display, int) -> int ---;
    DisplayHeight                                                   :: proc(^Display, int) -> int ---;
    DisplayHeightMM                                                 :: proc(^Display, int) -> int ---;
    DisplayKeycodes                                                 :: proc(^Display, ^int, ^int) -> int ---;
    DisplayPlanes                                                   :: proc(^Display, int) -> int ---;
    DisplayWidth                                                    :: proc(^Display, int) -> int ---;
    DisplayWidthMM                                                  :: proc(^Display, int) -> int ---;
    DrawArc                                                         :: proc(^Display, Drawable, GC, int, int, _c.uint, _c.uint, int, int) -> int ---;
    DrawArcs                                                        :: proc(^Display, Drawable, GC, ^Arc, int) -> int ---;
    DrawImageString                                                 :: proc(^Display, Drawable, GC, int, int, ^_c.char, int) -> int ---;
    DrawImageString16                                               :: proc(^Display, Drawable, GC, int, int, ^Char2b, int) -> int ---;
    DrawLine                                                        :: proc(^Display, Drawable, GC, int, int, int, int) -> int ---;
    DrawLines                                                       :: proc(^Display, Drawable, GC, ^Point, int, int) -> int ---;
    DrawPoint                                                       :: proc(^Display, Drawable, GC, int, int) -> int ---;
    DrawPoints                                                      :: proc(^Display, Drawable, GC, ^Point, int, int) -> int ---;
    DrawRectangle                                                   :: proc(^Display, Drawable, GC, int, int, _c.uint, _c.uint) -> int ---;
    DrawRectangles                                                  :: proc(^Display, Drawable, GC, ^Rectangle, int) -> int ---;
    DrawSegments                                                    :: proc(^Display, Drawable, GC, ^Segment, int) -> int ---;
    DrawString                                                      :: proc(^Display, Drawable, GC, int, int, ^_c.char, int) -> int ---;
    DrawString16                                                    :: proc(^Display, Drawable, GC, int, int, ^Char2b, int) -> int ---;
    DrawText                                                        :: proc(^Display, Drawable, GC, int, int, ^TextItem, int) -> int ---;
    DrawText16                                                      :: proc(^Display, Drawable, GC, int, int, ^TextItem16, int) -> int ---;
    EnableAccessControl                                             :: proc(^Display) -> int ---;
    EventsQueued                                                    :: proc(^Display, int) -> int ---;
    FetchName                                                       :: proc(^Display, Window, ^^_c.char) -> int ---;
    FillArc                                                         :: proc(^Display, Drawable, GC, int, int, _c.uint, _c.uint, int, int) -> int ---;
    FillArcs                                                        :: proc(^Display, Drawable, GC, ^Arc, int) -> int ---;
    FillPolygon                                                     :: proc(^Display, Drawable, GC, ^Point, int, int, int) -> int ---;
    FillRectangle                                                   :: proc(^Display, Drawable, GC, int, int, _c.uint, _c.uint) -> int ---;
    FillRectangles                                                  :: proc(^Display, Drawable, GC, ^Rectangle, int) -> int ---;
    Flush                                                           :: proc(^Display) -> int ---;
    ForceScreenSaver                                                :: proc(^Display, int) -> int ---;
    Free                                                            :: proc(rawptr) -> int ---;
    FreeColormap                                                    :: proc(^Display, Colormap) -> int ---;
    FreeColors                                                      :: proc(^Display, Colormap, ^_c.ulong, int, _c.ulong) -> int ---;
    FreeCursor                                                      :: proc(^Display, Cursor) -> int ---;
    FreeExtensionList                                               :: proc(^^_c.char) -> int ---;
    FreeFont                                                        :: proc(^Display, ^FontStruct) -> int ---;
    FreeFontInfo                                                    :: proc(^^_c.char, ^FontStruct, int) -> int ---;
    FreeFontNames                                                   :: proc(^^_c.char) -> int ---;
    FreeFontPath                                                    :: proc(^^_c.char) -> int ---;
    FreeGC                                                          :: proc(^Display, GC) -> int ---;
    FreeModifiermap                                                 :: proc(^ModifierKeymap) -> int ---;
    FreePixmap                                                      :: proc(^Display, Pixmap) -> int ---;
    Geometry                                                        :: proc(^Display, int, ^_c.char, ^_c.char, _c.uint, _c.uint, _c.uint, int, int, ^int, ^int, ^int, ^int) -> int ---;
    GetErrorDatabaseText                                            :: proc(^Display, ^_c.char, ^_c.char, ^_c.char, ^_c.char, int) -> int ---;
    GetErrorText                                                    :: proc(^Display, int, ^_c.char, int) -> int ---;
    GetFontProperty                                                 :: proc(^FontStruct, Atom, ^_c.ulong) -> int ---;
    GetGCValues                                                     :: proc(^Display, GC, _c.ulong, ^GCValues) -> int ---;
    GetGeometry                                                     :: proc(^Display, Drawable, ^Window, ^int, ^int, ^_c.uint, ^_c.uint, ^_c.uint, ^_c.uint) -> int ---;
    GetIconName                                                     :: proc(^Display, Window, ^^_c.char) -> int ---;
    GetInputFocus                                                   :: proc(^Display, ^Window, ^int) -> int ---;
    GetKeyboardControl                                              :: proc(^Display, ^KeyboardState) -> int ---;
    GetPointerControl                                               :: proc(^Display, ^int, ^int, ^int) -> int ---;
    GetPointerMapping                                               :: proc(^Display, ^_c.uchar, int) -> int ---;
    GetScreenSaver                                                  :: proc(^Display, ^int, ^int, ^int, ^int) -> int ---;
    GetTransientForHint                                             :: proc(^Display, Window, ^Window) -> int ---;
    ListDepths                                                      :: proc(^Display, int, ^int) -> ^int ---;
    FetchBytes                                                      :: proc(^Display, ^int) -> ^_c.char ---;
    FetchBuffer                                                     :: proc(^Display, ^int, int) -> ^_c.char ---;
    GetAtomName                                                     :: proc(^Display, Atom) -> ^_c.char ---;
    GetDefault                                                      :: proc(^Display, ^_c.char, ^_c.char) -> ^_c.char ---;
    DisplayName                                                     :: proc(^_c.char) -> ^_c.char ---;
    KeysymToString                                                  :: proc(KeySym) -> ^_c.char ---;
    Synchronize                                                     :: proc(^Display, int) -> (proc(^Display) -> int) ---;
    SetAfterFunction                                                :: proc(^Display, (proc(^Display) -> int)) -> (proc(^Display) -> int) ---;
    ListProperties                                                  :: proc(^Display, Window, ^int) -> ^Atom ---;
    ResourceManagerString                                           :: proc(^Display) -> ^_c.char ---;
    ScreenResourceString                                            :: proc(^Screen) -> ^_c.char ---;
    ServerVendor                                                    :: proc(^Display) -> ^_c.char ---;
    DisplayString                                                   :: proc(^Display) -> ^_c.char ---;
    ListFonts                                                       :: proc(^Display, ^_c.char, int, ^int) -> ^^_c.char ---;
    ListFontsWithInfo                                               :: proc(^Display, ^_c.char, int, ^int, ^^FontStruct) -> ^^_c.char ---;
    GetFontPath                                                     :: proc(^Display, ^int) -> ^^_c.char ---;
    ListExtensions                                                  :: proc(^Display, ^int) -> ^^_c.char ---;
    CreateImage                                                     :: proc(^Display, ^Visual, _c.uint, int, int, ^_c.char, _c.uint, _c.uint, int, int) -> ^Image ---;
    GetImage                                                        :: proc(^Display, Drawable, int, int, _c.uint, _c.uint, _c.ulong, int) -> ^Image ---;
    GetSubImage                                                     :: proc(^Display, Drawable, int, int, _c.uint, _c.uint, _c.ulong, int, ^Image, int, int) -> ^Image ---;
    GetKeyboardMapping                                              :: proc(^Display, KeyCode, int, ^int) -> ^KeySym ---;
    DefaultVisual                                                   :: proc(^Display, int) -> ^Visual ---;
    DefaultVisualOfScreen                                           :: proc(^Screen) -> ^Visual ---;
    ScreenOfDisplay                                                 :: proc(^Display, int) -> ^Screen ---;
    DefaultScreenOfDisplay                                          :: proc(^Display) -> ^Screen ---;
    OpenDisplay                                                     :: proc(^_c.char) -> ^Display ---;
    DisplayOfScreen                                                 :: proc(^Screen) -> ^Display ---;
    ListInstalledColormaps                                          :: proc(^Display, Window, ^int) -> ^Colormap ---;
    FindOnExtensionList                                             :: proc(^^ExtData, int) -> ^ExtData ---;
    InitExtension                                                   :: proc(^Display, ^_c.char) -> ^ExtCodes ---;
    AddExtension                                                    :: proc(^Display) -> ^ExtCodes ---;
    EHeadOfExtensionList                                            :: proc(EDataObject) -> ^^ExtData ---;
    GetMotionEvents                                                 :: proc(^Display, Window, Time, Time, ^int) -> ^TimeCoord ---;
    LoadQueryFont                                                   :: proc(^Display, ^_c.char) -> ^FontStruct ---;
    QueryFont                                                       :: proc(^Display, ID) -> ^FontStruct ---;
    DeleteModifiermapEntry                                          :: proc(^ModifierKeymap, KeyCode, int) -> ^ModifierKeymap ---;
    ListHosts                                                       :: proc(^Display, ^int, ^int) -> ^HostAddress ---;
    GetModifierMapping                                              :: proc(^Display) -> ^ModifierKeymap ---;
    InsertModifiermapEntry                                          :: proc(^ModifierKeymap, KeyCode, int) -> ^ModifierKeymap ---;
    NewModifiermap                                                  :: proc(int) -> ^ModifierKeymap ---;
    ListPixmapFormats                                               :: proc(^Display, ^int) -> ^PixmapFormatValues ---;
    GetWindowProperty                                               :: proc(^Display, Window, Atom, _c.long, _c.long, int, Atom, ^Atom, ^int, ^_c.ulong, ^_c.ulong, ^^_c.uchar) -> int ---;
    GetWindowAttributes                                             :: proc(^Display, Window, ^WindowAttributes) -> int ---;
    GrabButton                                                      :: proc(^Display, _c.uint, _c.uint, Window, int, _c.uint, int, int, Window, Cursor) -> int ---;
    GrabKey                                                         :: proc(^Display, int, _c.uint, Window, int, int, int) -> int ---;
    GrabKeyboard                                                    :: proc(^Display, Window, int, int, int, Time) -> int ---;
    GrabPointer                                                     :: proc(^Display, Window, int, _c.uint, int, int, Window, Cursor, Time) -> int ---;
    GrabServer                                                      :: proc(^Display) -> int ---;
    HeightMMOfScreen                                                :: proc(^Screen) -> int ---;
    HeightOfScreen                                                  :: proc(^Screen) -> int ---;
    IfEvent                                                         :: proc(^Display, ^Event, (proc(^Display, ^Event, Pointer) -> int), Pointer) -> int ---;
    ImageByteOrder                                                  :: proc(^Display) -> int ---;
    InstallColormap                                                 :: proc(^Display, Colormap) -> int ---;
    KeysymToKeycode                                                 :: proc(^Display, KeySym) -> KeyCode ---;
    KillClient                                                      :: proc(^Display, ID) -> int ---;
    LookupColor                                                     :: proc(^Display, Colormap, ^_c.char, ^Color, ^Color) -> int ---;
    LowerWindow                                                     :: proc(^Display, Window) -> int ---;
    MapRaised                                                       :: proc(^Display, Window) -> int ---;
    MapSubwindows                                                   :: proc(^Display, Window) -> int ---;
    MapWindow                                                       :: proc(^Display, Window) -> int ---;
    MaskEvent                                                       :: proc(^Display, _c.long, ^Event) -> int ---;
    MaxCmapsOfScreen                                                :: proc(^Screen) -> int ---;
    MinCmapsOfScreen                                                :: proc(^Screen) -> int ---;
    MoveResizeWindow                                                :: proc(^Display, Window, int, int, _c.uint, _c.uint) -> int ---;
    MoveWindow                                                      :: proc(^Display, Window, int, int) -> int ---;
    NextEvent                                                       :: proc(^Display, ^Event) -> int ---;
    NoOp                                                            :: proc(^Display) -> int ---;
    ParseColor                                                      :: proc(^Display, Colormap, ^_c.char, ^Color) -> int ---;
    ParseGeometry                                                   :: proc(^_c.char, ^int, ^int, ^_c.uint, ^_c.uint) -> int ---;
    PeekEvent                                                       :: proc(^Display, ^Event) -> int ---;
    PeekIfEvent                                                     :: proc(^Display, ^Event, (proc(^Display, ^Event, Pointer) -> int), Pointer) -> int ---;
    Pending                                                         :: proc(^Display) -> int ---;
    PlanesOfScreen                                                  :: proc(^Screen) -> int ---;
    ProtocolRevision                                                :: proc(^Display) -> int ---;
    ProtocolVersion                                                 :: proc(^Display) -> int ---;
    PutBackEvent                                                    :: proc(^Display, ^Event) -> int ---;
    PutImage                                                        :: proc(^Display, Drawable, GC, ^Image, int, int, int, int, _c.uint, _c.uint) -> int ---;
    QLength                                                         :: proc(^Display) -> int ---;
    QueryBestCursor                                                 :: proc(^Display, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> int ---;
    QueryBestSize                                                   :: proc(^Display, int, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> int ---;
    QueryBestStipple                                                :: proc(^Display, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> int ---;
    QueryBestTile                                                   :: proc(^Display, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> int ---;
    QueryColor                                                      :: proc(^Display, Colormap, ^Color) -> int ---;
    QueryColors                                                     :: proc(^Display, Colormap, ^Color, int) -> int ---;
    QueryExtension                                                  :: proc(^Display, ^_c.char, ^int, ^int, ^int) -> int ---;
    QueryKeymap                                                     :: proc(^Display, [32]_c.char) -> int ---;
    QueryPointer                                                    :: proc(^Display, Window, ^Window, ^Window, ^int, ^int, ^int, ^int, ^_c.uint) -> int ---;
    QueryTextExtents                                                :: proc(^Display, ID, ^_c.char, int, ^int, ^int, ^int, ^CharStruct) -> int ---;
    QueryTextExtents16                                              :: proc(^Display, ID, ^Char2b, int, ^int, ^int, ^int, ^CharStruct) -> int ---;
    QueryTree                                                       :: proc(^Display, Window, ^Window, ^Window, ^^Window, ^_c.uint) -> int ---;
    RaiseWindow                                                     :: proc(^Display, Window) -> int ---;
    ReadBitmapFile                                                  :: proc(^Display, Drawable, ^_c.char, ^_c.uint, ^_c.uint, ^Pixmap, ^int, ^int) -> int ---;
    ReadBitmapFileData                                              :: proc(^_c.char, ^_c.uint, ^_c.uint, ^^_c.uchar, ^int, ^int) -> int ---;
    RebindKeysym                                                    :: proc(^Display, KeySym, ^KeySym, int, ^_c.uchar, int) -> int ---;
    RecolorCursor                                                   :: proc(^Display, Cursor, ^Color, ^Color) -> int ---;
    RefreshKeyboardMapping                                          :: proc(^MappingEvent) -> int ---;
    RemoveFromSaveSet                                               :: proc(^Display, Window) -> int ---;
    RemoveHost                                                      :: proc(^Display, ^HostAddress) -> int ---;
    RemoveHosts                                                     :: proc(^Display, ^HostAddress, int) -> int ---;
    ReparentWindow                                                  :: proc(^Display, Window, Window, int, int) -> int ---;
    ResetScreenSaver                                                :: proc(^Display) -> int ---;
    ResizeWindow                                                    :: proc(^Display, Window, _c.uint, _c.uint) -> int ---;
    RestackWindows                                                  :: proc(^Display, ^Window, int) -> int ---;
    RotateBuffers                                                   :: proc(^Display, int) -> int ---;
    RotateWindowProperties                                          :: proc(^Display, Window, ^Atom, int, int) -> int ---;
    ScreenCount                                                     :: proc(^Display) -> int ---;
    SelectInput                                                     :: proc(^Display, Window, _c.long) -> int ---;
    SendEvent                                                       :: proc(^Display, Window, int, _c.long, ^Event) -> int ---;
    SetAccessControl                                                :: proc(^Display, int) -> int ---;
    SetArcMode                                                      :: proc(^Display, GC, int) -> int ---;
    SetBackground                                                   :: proc(^Display, GC, _c.ulong) -> int ---;
    SetClipMask                                                     :: proc(^Display, GC, Pixmap) -> int ---;
    SetClipOrigin                                                   :: proc(^Display, GC, int, int) -> int ---;
    SetClipRectangles                                               :: proc(^Display, GC, int, int, ^Rectangle, int, int) -> int ---;
    SetCloseDownMode                                                :: proc(^Display, int) -> int ---;
    SetCommand                                                      :: proc(^Display, Window, ^^_c.char, int) -> int ---;
    SetDashes                                                       :: proc(^Display, GC, int, ^_c.char, int) -> int ---;
    SetFillRule                                                     :: proc(^Display, GC, int) -> int ---;
    SetFillStyle                                                    :: proc(^Display, GC, int) -> int ---;
    SetFont                                                         :: proc(^Display, GC, Font) -> int ---;
    SetFontPath                                                     :: proc(^Display, ^^_c.char, int) -> int ---;
    SetForeground                                                   :: proc(^Display, GC, _c.ulong) -> int ---;
    SetFunction                                                     :: proc(^Display, GC, int) -> int ---;
    SetGraphicsExposures                                            :: proc(^Display, GC, int) -> int ---;
    SetIconName                                                     :: proc(^Display, Window, ^_c.char) -> int ---;
    SetInputFocus                                                   :: proc(^Display, Window, int, Time) -> int ---;
    SetLineAttributes                                               :: proc(^Display, GC, _c.uint, int, int, int) -> int ---;
    SetModifierMapping                                              :: proc(^Display, ^ModifierKeymap) -> int ---;
    SetPlaneMask                                                    :: proc(^Display, GC, _c.ulong) -> int ---;
    SetPointerMapping                                               :: proc(^Display, ^_c.uchar, int) -> int ---;
    SetScreenSaver                                                  :: proc(^Display, int, int, int, int) -> int ---;
    SetSelectionOwner                                               :: proc(^Display, Atom, Window, Time) -> int ---;
    SetState                                                        :: proc(^Display, GC, _c.ulong, _c.ulong, int, _c.ulong) -> int ---;
    SetStipple                                                      :: proc(^Display, GC, Pixmap) -> int ---;
    SetSubwindowMode                                                :: proc(^Display, GC, int) -> int ---;
    SetTSOrigin                                                     :: proc(^Display, GC, int, int) -> int ---;
    SetTile                                                         :: proc(^Display, GC, Pixmap) -> int ---;
    SetWindowBackground                                             :: proc(^Display, Window, _c.ulong) -> int ---;
    SetWindowBackgroundPixmap                                       :: proc(^Display, Window, Pixmap) -> int ---;
    SetWindowBorder                                                 :: proc(^Display, Window, _c.ulong) -> int ---;
    SetWindowBorderPixmap                                           :: proc(^Display, Window, Pixmap) -> int ---;
    SetWindowBorderWidth                                            :: proc(^Display, Window, _c.uint) -> int ---;
    SetWindowColormap                                               :: proc(^Display, Window, Colormap) -> int ---;
    StoreBuffer                                                     :: proc(^Display, ^_c.char, int, int) -> int ---;
    StoreBytes                                                      :: proc(^Display, ^_c.char, int) -> int ---;
    StoreColor                                                      :: proc(^Display, Colormap, ^Color) -> int ---;
    StoreColors                                                     :: proc(^Display, Colormap, ^Color, int) -> int ---;
    StoreName                                                       :: proc(^Display, Window, ^_c.char) -> int ---;
    StoreNamedColor                                                 :: proc(^Display, Colormap, ^_c.char, _c.ulong, int) -> int ---;
    Sync                                                            :: proc(^Display, int) -> int ---;
    TextExtents                                                     :: proc(^FontStruct, ^_c.char, int, ^int, ^int, ^int, ^CharStruct) -> int ---;
    TextExtents16                                                   :: proc(^FontStruct, ^Char2b, int, ^int, ^int, ^int, ^CharStruct) -> int ---;
    TextWidth                                                       :: proc(^FontStruct, ^_c.char, int) -> int ---;
    TextWidth16                                                     :: proc(^FontStruct, ^Char2b, int) -> int ---;
    TranslateCoordinates                                            :: proc(^Display, Window, Window, int, int, ^int, ^int, ^Window) -> int ---;
    UndefineCursor                                                  :: proc(^Display, Window) -> int ---;
    UngrabButton                                                    :: proc(^Display, _c.uint, _c.uint, Window) -> int ---;
    UngrabKey                                                       :: proc(^Display, int, _c.uint, Window) -> int ---;
    UngrabKeyboard                                                  :: proc(^Display, Time) -> int ---;
    UngrabPointer                                                   :: proc(^Display, Time) -> int ---;
    UngrabServer                                                    :: proc(^Display) -> int ---;
    UninstallColormap                                               :: proc(^Display, Colormap) -> int ---;
    UnloadFont                                                      :: proc(^Display, Font) -> int ---;
    UnmapSubwindows                                                 :: proc(^Display, Window) -> int ---;
    UnmapWindow                                                     :: proc(^Display, Window) -> int ---;
    VendorRelease                                                   :: proc(^Display) -> int ---;
    WarpPointer                                                     :: proc(^Display, Window, Window, int, int, _c.uint, _c.uint, int, int) -> int ---;
    WidthMMOfScreen                                                 :: proc(^Screen) -> int ---;
    WidthOfScreen                                                   :: proc(^Screen) -> int ---;
    WindowEvent                                                     :: proc(^Display, Window, _c.long, ^Event) -> int ---;
    WriteBitmapFile                                                 :: proc(^Display, ^_c.char, Pixmap, _c.uint, _c.uint, int, int) -> int ---;
    SupportsLocale                                                  :: proc() -> int ---;
    OpenOM                                                          :: proc(^Display, ^_rmHashBucketRec, ^_c.char, ^_c.char) -> OM ---;
    CloseOM                                                         :: proc(OM) -> int ---;
    CreateOC                                                        :: proc(OM, #c_vararg ..any) -> OC ---;
    DestroyOC                                                       :: proc(OC) ---;
    OMOfOC                                                          :: proc(OC) -> OM ---;
    CreateFontSet                                                   :: proc(^Display, ^_c.char, ^^^_c.char, ^int, ^^_c.char) -> FontSet ---;
    FreeFontSet                                                     :: proc(^Display, FontSet) ---;
    FontsOfFontSet                                                  :: proc(FontSet, ^^^FontStruct, ^^^_c.char) -> int ---;
    ContextDependentDrawing                                         :: proc(FontSet) -> int ---;
    DirectionalDependentDrawing                                     :: proc(FontSet) -> int ---;
    ContextualDrawing                                               :: proc(FontSet) -> int ---;
    mbTextEscapement                                                :: proc(FontSet, ^_c.char, int) -> int ---;
    SetLocaleModifiers                                              :: proc(^_c.char) -> ^_c.char ---;
    SetOMValues                                                     :: proc(OM, #c_vararg ..any) -> ^_c.char ---;
    GetOMValues                                                     :: proc(OM, #c_vararg ..any) -> ^_c.char ---;
    DisplayOfOM                                                     :: proc(OM) -> ^Display ---;
    LocaleOfOM                                                      :: proc(OM) -> ^_c.char ---;
    SetOCValues                                                     :: proc(OC, #c_vararg ..any) -> ^_c.char ---;
    GetOCValues                                                     :: proc(OC, #c_vararg ..any) -> ^_c.char ---;
    BaseFontNameListOfFontSet                                       :: proc(FontSet) -> ^_c.char ---;
    LocaleOfFontSet                                                 :: proc(FontSet) -> ^_c.char ---;
    ExtentsOfFontSet                                                :: proc(FontSet) -> ^FontSetExtents ---;
    wcTextEscapement                                                :: proc(FontSet, ^_c.wchar_t, int) -> int ---;
    utf8TextEscapement                                              :: proc(FontSet, ^_c.char, int) -> int ---;
    mbTextExtents                                                   :: proc(FontSet, ^_c.char, int, ^Rectangle, ^Rectangle) -> int ---;
    wcTextExtents                                                   :: proc(FontSet, ^_c.wchar_t, int, ^Rectangle, ^Rectangle) -> int ---;
    utf8TextExtents                                                 :: proc(FontSet, ^_c.char, int, ^Rectangle, ^Rectangle) -> int ---;
    mbTextPerCharExtents                                            :: proc(FontSet, ^_c.char, int, ^Rectangle, ^Rectangle, int, ^int, ^Rectangle, ^Rectangle) -> int ---;
    wcTextPerCharExtents                                            :: proc(FontSet, ^_c.wchar_t, int, ^Rectangle, ^Rectangle, int, ^int, ^Rectangle, ^Rectangle) -> int ---;
    utf8TextPerCharExtents                                          :: proc(FontSet, ^_c.char, int, ^Rectangle, ^Rectangle, int, ^int, ^Rectangle, ^Rectangle) -> int ---;
    mbDrawText                                                      :: proc(^Display, Drawable, GC, int, int, ^mbTextItem, int) ---;
    wcDrawText                                                      :: proc(^Display, Drawable, GC, int, int, ^wcTextItem, int) ---;
    utf8DrawText                                                    :: proc(^Display, Drawable, GC, int, int, ^mbTextItem, int) ---;
    mbDrawString                                                    :: proc(^Display, Drawable, FontSet, GC, int, int, ^_c.char, int) ---;
    wcDrawString                                                    :: proc(^Display, Drawable, FontSet, GC, int, int, ^_c.wchar_t, int) ---;
    utf8DrawString                                                  :: proc(^Display, Drawable, FontSet, GC, int, int, ^_c.char, int) ---;
    mbDrawImageString                                               :: proc(^Display, Drawable, FontSet, GC, int, int, ^_c.char, int) ---;
    wcDrawImageString                                               :: proc(^Display, Drawable, FontSet, GC, int, int, ^_c.wchar_t, int) ---;
    utf8DrawImageString                                             :: proc(^Display, Drawable, FontSet, GC, int, int, ^_c.char, int) ---;
    OpenIM                                                          :: proc(^Display, ^_rmHashBucketRec, ^_c.char, ^_c.char) -> IM ---;
    CloseIM                                                         :: proc(IM) -> int ---;
    GetIMValues                                                     :: proc(IM, #c_vararg ..any) -> ^_c.char ---;
    SetIMValues                                                     :: proc(IM, #c_vararg ..any) -> ^_c.char ---;
    LocaleOfIM                                                      :: proc(IM) -> ^_c.char ---;
    DisplayOfIM                                                     :: proc(IM) -> ^Display ---;
    CreateIC                                                        :: proc(IM, #c_vararg ..any) -> IC ---;
    DestroyIC                                                       :: proc(IC) ---;
    SetICFocus                                                      :: proc(IC) ---;
    UnsetICFocus                                                    :: proc(IC) ---;
    mbResetIC                                                       :: proc(IC) -> ^_c.char ---;
    wcResetIC                                                       :: proc(IC) -> ^_c.wchar_t ---;
    utf8ResetIC                                                     :: proc(IC) -> ^_c.char ---;
    SetICValues                                                     :: proc(IC, #c_vararg ..any) -> ^_c.char ---;
    GetICValues                                                     :: proc(IC, #c_vararg ..any) -> ^_c.char ---;
    IMOfIC                                                          :: proc(IC) -> IM ---;
    FilterEvent                                                     :: proc(^Event, Window) -> int ---;
    mbLookupString                                                  :: proc(IC, ^KeyPressedEvent, ^_c.char, int, ^KeySym, ^int) -> int ---;
    wcLookupString                                                  :: proc(IC, ^KeyPressedEvent, ^_c.wchar_t, int, ^KeySym, ^int) -> int ---;
    utf8LookupString                                                :: proc(IC, ^KeyPressedEvent, ^_c.char, int, ^KeySym, ^int) -> int ---;
    VaCreateNestedList                                              :: proc(int, #c_vararg ..any) -> VaNestedList ---;
    RegisterIMInstantiateCallback                                   :: proc(^Display, ^_rmHashBucketRec, ^_c.char, ^_c.char, IDProc, Pointer) -> int ---;
    UnregisterIMInstantiateCallback                                 :: proc(^Display, ^_rmHashBucketRec, ^_c.char, ^_c.char, IDProc, Pointer) -> int ---;
    InternalConnectionNumbers                                       :: proc(^Display, ^^int, ^int) -> int ---;
    ProcessInternalConnection                                       :: proc(^Display, int) ---;
    AddConnectionWatch                                              :: proc(^Display, ConnectionWatchProc, Pointer) -> int ---;
    RemoveConnectionWatch                                           :: proc(^Display, ConnectionWatchProc, Pointer) ---;
    SetAuthorization                                                :: proc(^_c.char, int, ^_c.char, int) ---;
    _mbtowc                                                         :: proc(^_c.wchar_t, ^_c.char, int) -> int ---;
    _wctomb                                                         :: proc(^_c.char, _c.wchar_t) -> int ---;
    GetEventData                                                    :: proc(^Display, ^GenericEventCookie) -> int ---;
    FreeEventData                                                   :: proc(^Display, ^GenericEventCookie) ---;
}

