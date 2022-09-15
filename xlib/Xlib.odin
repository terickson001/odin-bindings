package xlib

import _c "core:c"

/* Macros */

IMStatusNone :: 0x800;
True :: 1;
libSpecificationRelease :: 6;
HAVE_UTF8_STRING :: 1;
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
Pointer :: cstring;

ExtData :: struct {
    number : _c.int,
    next : ^_ExtData,
    free_private : (proc(extension : ^_ExtData) -> _c.int),
    private_data : Pointer,
};

_ExtData :: struct {
    number : _c.int,
    next : ^_ExtData,
    free_private : (proc(extension : ^_ExtData) -> _c.int),
    private_data : Pointer,
};

ExtCodes :: struct {
    extension : _c.int,
    major_opcode : _c.int,
    first_event : _c.int,
    first_error : _c.int,
};

PixmapFormatValues :: struct {
    depth : _c.int,
    bits_per_pixel : _c.int,
    scanline_pad : _c.int,
};

GCValues :: struct {
    function : _c.int,
    plane_mask : _c.ulong,
    foreground : _c.ulong,
    background : _c.ulong,
    line_width : _c.int,
    line_style : _c.int,
    cap_style : _c.int,
    join_style : _c.int,
    fill_style : _c.int,
    fill_rule : _c.int,
    arc_mode : _c.int,
    tile : Pixmap,
    stipple : Pixmap,
    ts_x_origin : _c.int,
    ts_y_origin : _c.int,
    font : Font,
    subwindow_mode : _c.int,
    graphics_exposures : _c.int,
    clip_x_origin : _c.int,
    clip_y_origin : _c.int,
    clip_mask : Pixmap,
    dash_offset : _c.int,
    dashes : _c.char,
};

_GC :: struct {};

GC :: ^_GC;

_Display :: struct {};

Visual :: struct {
    ext_data : ^ExtData,
    visualid : VisualID,
    class : _c.int,
    red_mask : _c.ulong,
    green_mask : _c.ulong,
    blue_mask : _c.ulong,
    bits_per_rgb : _c.int,
    map_entries : _c.int,
};

Depth :: struct {
    depth : _c.int,
    nvisuals : _c.int,
    visuals : ^Visual,
};

Screen :: struct {
    ext_data : ^ExtData,
    display : ^_Display,
    root : Window,
    width : _c.int,
    height : _c.int,
    mwidth : _c.int,
    mheight : _c.int,
    ndepths : _c.int,
    depths : ^Depth,
    root_depth : _c.int,
    root_visual : ^Visual,
    default_gc : GC,
    cmap : Colormap,
    white_pixel : _c.ulong,
    black_pixel : _c.ulong,
    max_maps : _c.int,
    min_maps : _c.int,
    backing_store : _c.int,
    save_unders : _c.int,
    root_input_mask : _c.long,
};

ScreenFormat :: struct {
    ext_data : ^ExtData,
    depth : _c.int,
    bits_per_pixel : _c.int,
    scanline_pad : _c.int,
};

SetWindowAttributes :: struct {
    background_pixmap : Pixmap,
    background_pixel : _c.ulong,
    border_pixmap : Pixmap,
    border_pixel : _c.ulong,
    bit_gravity : _c.int,
    win_gravity : _c.int,
    backing_store : _c.int,
    backing_planes : _c.ulong,
    backing_pixel : _c.ulong,
    save_under : _c.int,
    event_mask : _c.long,
    do_not_propagate_mask : _c.long,
    override_redirect : _c.int,
    colormap : Colormap,
    cursor : Cursor,
};

WindowAttributes :: struct {
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    border_width : _c.int,
    depth : _c.int,
    visual : ^Visual,
    root : Window,
    class : _c.int,
    bit_gravity : _c.int,
    win_gravity : _c.int,
    backing_store : _c.int,
    backing_planes : _c.ulong,
    backing_pixel : _c.ulong,
    save_under : _c.int,
    colormap : Colormap,
    map_installed : _c.int,
    map_state : _c.int,
    all_event_masks : _c.long,
    your_event_mask : _c.long,
    do_not_propagate_mask : _c.long,
    override_redirect : _c.int,
    screen : ^Screen,
};

HostAddress :: struct {
    family : _c.int,
    length : _c.int,
    address : cstring,
};

Image :: struct {
    width : _c.int,
    height : _c.int,
    xoffset : _c.int,
    format : _c.int,
    data : cstring,
    byte_order : _c.int,
    bitmap_unit : _c.int,
    bitmap_bit_order : _c.int,
    bitmap_pad : _c.int,
    depth : _c.int,
    bytes_per_line : _c.int,
    bits_per_pixel : _c.int,
    red_mask : _c.ulong,
    green_mask : _c.ulong,
    blue_mask : _c.ulong,
    obdata : Pointer,
    f : struct {
        create_image : (proc(^_Display, ^Visual, _c.uint, _c.int, _c.int, cstring, _c.uint, _c.uint, _c.int, _c.int) -> ^_Image),
        destroy_image : (proc(^_Image) -> _c.int),
        get_pixel : (proc(^_Image, _c.int, _c.int) -> _c.ulong),
        put_pixel : (proc(^_Image, _c.int, _c.int, _c.ulong) -> _c.int),
        sub_image : (proc(^_Image, _c.int, _c.int, _c.uint, _c.uint) -> ^_Image),
        add_pixel : (proc(^_Image, _c.long) -> _c.int),
    },
};

_Image :: struct {
    width : _c.int,
    height : _c.int,
    xoffset : _c.int,
    format : _c.int,
    data : cstring,
    byte_order : _c.int,
    bitmap_unit : _c.int,
    bitmap_bit_order : _c.int,
    bitmap_pad : _c.int,
    depth : _c.int,
    bytes_per_line : _c.int,
    bits_per_pixel : _c.int,
    red_mask : _c.ulong,
    green_mask : _c.ulong,
    blue_mask : _c.ulong,
    obdata : Pointer,
    f : struct {
        create_image : (proc(^_Display, ^Visual, _c.uint, _c.int, _c.int, cstring, _c.uint, _c.uint, _c.int, _c.int) -> ^_Image),
        destroy_image : (proc(^_Image) -> _c.int),
        get_pixel : (proc(^_Image, _c.int, _c.int) -> _c.ulong),
        put_pixel : (proc(^_Image, _c.int, _c.int, _c.ulong) -> _c.int),
        sub_image : (proc(^_Image, _c.int, _c.int, _c.uint, _c.uint) -> ^_Image),
        add_pixel : (proc(^_Image, _c.long) -> _c.int),
    },
};

funcs :: struct {
    create_image : (proc(^_Display, ^Visual, _c.uint, _c.int, _c.int, cstring, _c.uint, _c.uint, _c.int, _c.int) -> ^_Image),
    destroy_image : (proc(^_Image) -> _c.int),
    get_pixel : (proc(^_Image, _c.int, _c.int) -> _c.ulong),
    put_pixel : (proc(^_Image, _c.int, _c.int, _c.ulong) -> _c.int),
    sub_image : (proc(^_Image, _c.int, _c.int, _c.uint, _c.uint) -> ^_Image),
    add_pixel : (proc(^_Image, _c.long) -> _c.int),
};

WindowChanges :: struct {
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    border_width : _c.int,
    sibling : Window,
    stack_mode : _c.int,
};

Color :: struct {
    pixel : _c.ulong,
    red : _c.ushort,
    green : _c.ushort,
    blue : _c.ushort,
    flags : _c.char,
    pad : _c.char,
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
    x : _c.short,
    y : _c.short,
    width : _c.ushort,
    height : _c.ushort,
};

Arc :: struct {
    x : _c.short,
    y : _c.short,
    width : _c.ushort,
    height : _c.ushort,
    angle1 : _c.short,
    angle2 : _c.short,
};

KeyboardControl :: struct {
    key_click_percent : _c.int,
    bell_percent : _c.int,
    bell_pitch : _c.int,
    bell_duration : _c.int,
    led : _c.int,
    led_mode : _c.int,
    key : _c.int,
    auto_repeat_mode : _c.int,
};

KeyboardState :: struct {
    key_click_percent : _c.int,
    bell_percent : _c.int,
    bell_pitch : _c.uint,
    bell_duration : _c.uint,
    led_mask : _c.ulong,
    global_auto_repeat : _c.int,
    auto_repeats : [32]_c.char,
};

TimeCoord :: struct {
    time : Time,
    x : _c.short,
    y : _c.short,
};

ModifierKeymap :: struct {
    max_keypermod : _c.int,
    modifiermap : ^KeyCode,
};

Display :: _Display;

_rmHashBucketRec :: struct {};

KeyEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    root : Window,
    subwindow : Window,
    time : Time,
    x : _c.int,
    y : _c.int,
    x_root : _c.int,
    y_root : _c.int,
    state : _c.uint,
    keycode : _c.uint,
    same_screen : _c.int,
};

KeyPressedEvent :: KeyEvent;

ButtonEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    root : Window,
    subwindow : Window,
    time : Time,
    x : _c.int,
    y : _c.int,
    x_root : _c.int,
    y_root : _c.int,
    state : _c.uint,
    button : _c.uint,
    same_screen : _c.int,
};

MotionEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    root : Window,
    subwindow : Window,
    time : Time,
    x : _c.int,
    y : _c.int,
    x_root : _c.int,
    y_root : _c.int,
    state : _c.uint,
    is_hint : _c.char,
    same_screen : _c.int,
};

CrossingEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    root : Window,
    subwindow : Window,
    time : Time,
    x : _c.int,
    y : _c.int,
    x_root : _c.int,
    y_root : _c.int,
    mode : _c.int,
    detail : _c.int,
    same_screen : _c.int,
    focus : _c.int,
    state : _c.uint,
};

FocusChangeEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    mode : _c.int,
    detail : _c.int,
};

KeymapEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    key_vector : [32]_c.char,
};

ExposeEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    count : _c.int,
};

GraphicsExposeEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    drawable : Drawable,
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    count : _c.int,
    major_code : _c.int,
    minor_code : _c.int,
};

NoExposeEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    drawable : Drawable,
    major_code : _c.int,
    minor_code : _c.int,
};

VisibilityEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    state : _c.int,
};

CreateWindowEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    parent : Window,
    window : Window,
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    border_width : _c.int,
    override_redirect : _c.int,
};

DestroyWindowEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    event : Window,
    window : Window,
};

UnmapEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    event : Window,
    window : Window,
    from_configure : _c.int,
};

MapEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    event : Window,
    window : Window,
    override_redirect : _c.int,
};

MapRequestEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    parent : Window,
    window : Window,
};

ReparentEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    event : Window,
    window : Window,
    parent : Window,
    x : _c.int,
    y : _c.int,
    override_redirect : _c.int,
};

ConfigureEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    event : Window,
    window : Window,
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    border_width : _c.int,
    above : Window,
    override_redirect : _c.int,
};

GravityEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    event : Window,
    window : Window,
    x : _c.int,
    y : _c.int,
};

ResizeRequestEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    width : _c.int,
    height : _c.int,
};

ConfigureRequestEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    parent : Window,
    window : Window,
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    border_width : _c.int,
    above : Window,
    detail : _c.int,
    value_mask : _c.ulong,
};

CirculateEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    event : Window,
    window : Window,
    place : _c.int,
};

CirculateRequestEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    parent : Window,
    window : Window,
    place : _c.int,
};

PropertyEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    atom : Atom,
    time : Time,
    state : _c.int,
};

SelectionClearEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    selection : Atom,
    time : Time,
};

SelectionRequestEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    owner : Window,
    requestor : Window,
    selection : Atom,
    target : Atom,
    property : Atom,
    time : Time,
};

SelectionEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    requestor : Window,
    selection : Atom,
    target : Atom,
    property : Atom,
    time : Time,
};

ColormapEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    colormap : Colormap,
    new : _c.int,
    state : _c.int,
};

ClientMessageEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    message_type : Atom,
    format : _c.int,
    d : struct #raw_union {
        b : [20]_c.char,
        s : [10]_c.short,
        l : [5]_c.long,
    },
};

MappingEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
    request : _c.int,
    first_keycode : _c.int,
    count : _c.int,
};

ErrorEvent :: struct {
    type : _c.int,
    display : ^Display,
    resourceid : ID,
    serial : _c.ulong,
    error_code : _c.uchar,
    request_code : _c.uchar,
    minor_code : _c.uchar,
};

AnyEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    window : Window,
};

XGenericEvent :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    extension : _c.int,
    evtype : _c.int,
};

GenericEventCookie :: struct {
    type : _c.int,
    serial : _c.ulong,
    send_event : _c.int,
    display : ^Display,
    extension : _c.int,
    evtype : _c.int,
    cookie : _c.uint,
    data : rawptr,
};

_Event :: struct #raw_union {
    type : _c.int,
    xany : AnyEvent,
    xkey : KeyEvent,
    xbutton : ButtonEvent,
    xmotion : MotionEvent,
    xcrossing : CrossingEvent,
    xfocus : FocusChangeEvent,
    xexpose : ExposeEvent,
    xgraphicsexpose : GraphicsExposeEvent,
    xnoexpose : NoExposeEvent,
    xvisibility : VisibilityEvent,
    xcreatewindow : CreateWindowEvent,
    xdestroywindow : DestroyWindowEvent,
    xunmap : UnmapEvent,
    xmap : MapEvent,
    xmaprequest : MapRequestEvent,
    xreparent : ReparentEvent,
    xconfigure : ConfigureEvent,
    xgravity : GravityEvent,
    xresizerequest : ResizeRequestEvent,
    xconfigurerequest : ConfigureRequestEvent,
    xcirculate : CirculateEvent,
    xcirculaterequest : CirculateRequestEvent,
    xproperty : PropertyEvent,
    xselectionclear : SelectionClearEvent,
    xselectionrequest : SelectionRequestEvent,
    xselection : SelectionEvent,
    xcolormap : ColormapEvent,
    xclient : ClientMessageEvent,
    xmapping : MappingEvent,
    xerror : ErrorEvent,
    xkeymap : KeymapEvent,
    xgeneric : XGenericEvent,
    xcookie : GenericEventCookie,
    pad : [24]_c.long,
};

Event :: struct #raw_union {
    type : _c.int,
    xany : AnyEvent,
    xkey : KeyEvent,
    xbutton : ButtonEvent,
    xmotion : MotionEvent,
    xcrossing : CrossingEvent,
    xfocus : FocusChangeEvent,
    xexpose : ExposeEvent,
    xgraphicsexpose : GraphicsExposeEvent,
    xnoexpose : NoExposeEvent,
    xvisibility : VisibilityEvent,
    xcreatewindow : CreateWindowEvent,
    xdestroywindow : DestroyWindowEvent,
    xunmap : UnmapEvent,
    xmap : MapEvent,
    xmaprequest : MapRequestEvent,
    xreparent : ReparentEvent,
    xconfigure : ConfigureEvent,
    xgravity : GravityEvent,
    xresizerequest : ResizeRequestEvent,
    xconfigurerequest : ConfigureRequestEvent,
    xcirculate : CirculateEvent,
    xcirculaterequest : CirculateRequestEvent,
    xproperty : PropertyEvent,
    xselectionclear : SelectionClearEvent,
    xselectionrequest : SelectionRequestEvent,
    xselection : SelectionEvent,
    xcolormap : ColormapEvent,
    xclient : ClientMessageEvent,
    xmapping : MappingEvent,
    xerror : ErrorEvent,
    xkeymap : KeymapEvent,
    xgeneric : XGenericEvent,
    xcookie : GenericEventCookie,
    pad : [24]_c.long,
};

CharStruct :: struct {
    lbearing : _c.short,
    rbearing : _c.short,
    width : _c.short,
    ascent : _c.short,
    descent : _c.short,
    attributes : _c.ushort,
};

FontProp :: struct {
    name : Atom,
    card32 : _c.ulong,
};

FontStruct :: struct {
    ext_data : ^ExtData,
    fid : Font,
    direction : _c.uint,
    min_char_or_byte2 : _c.uint,
    max_char_or_byte2 : _c.uint,
    min_byte1 : _c.uint,
    max_byte1 : _c.uint,
    all_chars_exist : _c.int,
    default_char : _c.uint,
    n_properties : _c.int,
    properties : ^FontProp,
    min_bounds : CharStruct,
    max_bounds : CharStruct,
    per_char : ^CharStruct,
    ascent : _c.int,
    descent : _c.int,
};

TextItem :: struct {
    chars : cstring,
    nchars : _c.int,
    delta : _c.int,
    font : Font,
};

Char2b :: struct {
    byte1 : _c.uchar,
    byte2 : _c.uchar,
};

TextItem16 :: struct {
    chars : ^Char2b,
    nchars : _c.int,
    delta : _c.int,
    font : Font,
};

EDataObject :: struct #raw_union {
    display : ^Display,
    gc : GC,
    visual : ^Visual,
    screen : ^Screen,
    pixmap_format : ^ScreenFormat,
    font : ^FontStruct,
};

FontSetExtents :: struct {
    max_ink_extent : Rectangle,
    max_logical_extent : Rectangle,
};

_OM :: struct {};

_OC :: struct {};

OC :: ^_OC;

mbTextItem :: struct {
    chars : cstring,
    nchars : _c.int,
    delta : _c.int,
    font_set : FontSet,
};

wcTextItem :: struct {
    chars : ^_c.wchar_t,
    nchars : _c.int,
    delta : _c.int,
    font_set : FontSet,
};

Orientation :: _c.int;
/*  <ENUM> :: enum { */
OMOrientation_LTR_TTB :: 0;
OMOrientation_RTL_TTB :: 1;
OMOrientation_TTB_LTR :: 2;
OMOrientation_TTB_RTL :: 3;
OMOrientation_Context :: 4;
/* } */;

FontSet :: ^_OC;

IMCaretDirection :: _c.int;
/*  <ENUM> :: enum { */
IMForwardChar :: 0;
IMBackwardChar :: 1;
IMForwardWord :: 2;
IMBackwardWord :: 3;
IMCaretUp :: 4;
IMCaretDown :: 5;
IMNextLine :: 6;
IMPreviousLine :: 7;
IMLineStart :: 8;
IMLineEnd :: 9;
IMAbsolutePosition :: 10;
IMDontChange :: 11;
/* } */;

_IM :: struct {};

IM :: ^_IM;

_IC :: struct {};

IMCaretStyle :: _c.int;
/*  <ENUM> :: enum { */
IMIsInvisible :: 0;
IMIsPrimary :: 1;
IMIsSecondary :: 2;
/* } */;

VaNestedList :: rawptr;

IMStatusDataType :: _c.int;
/*  <ENUM> :: enum { */
IMTextType :: 0;
IMBitmapType :: 1;
/* } */;

IC :: ^_IC;

IDProc :: proc(^Display, Pointer, Pointer);

OM :: ^_OM;

IOErrorHandler :: (proc(^Display) -> _c.int);

IOErrorExitHandler :: proc(^Display, rawptr);

ErrorHandler :: (proc(^Display, ^ErrorEvent) -> _c.int);

ConnectionWatchProc :: proc(^Display, Pointer, _c.int, _c.int, ^Pointer);


/***** libX11 *****/
foreign import libX11 "system:libX11.so"

/* Procedures */
@(link_prefix="X")
foreign libX11 {
    _mblen :: proc(str : cstring, len : _c.int) -> _c.int ---;
    rmInitialize :: proc() ---;
    CreateGlyphCursor :: proc(^Display, Font, Font, _c.uint, _c.uint, ^Color, ^Color) -> Cursor ---;
    LoadQueryFont :: proc(^Display, cstring) -> ^FontStruct ---;
    QueryFont :: proc(^Display, ID) -> ^FontStruct ---;
    GetAtomNames :: proc(^Display, ^Atom, _c.int, ^cstring) -> _c.int ---;
    GetMotionEvents :: proc(^Display, Window, Time, Time, ^_c.int) -> ^TimeCoord ---;
    DeleteModifiermapEntry :: proc(^ModifierKeymap, KeyCode, _c.int) -> ^ModifierKeymap ---;
    GetModifierMapping :: proc(^Display) -> ^ModifierKeymap ---;
    CreateImage :: proc(^Display, ^Visual, _c.uint, _c.int, _c.int, cstring, _c.uint, _c.uint, _c.int, _c.int) -> ^Image ---;
    InsertModifiermapEntry :: proc(^ModifierKeymap, KeyCode, _c.int) -> ^ModifierKeymap ---;
    NewModifiermap :: proc(_c.int) -> ^ModifierKeymap ---;
    InitImage :: proc(^Image) -> _c.int ---;
    CreateGC :: proc(^Display, Drawable, _c.ulong, ^GCValues) -> GC ---;
    GetImage :: proc(^Display, Drawable, _c.int, _c.int, _c.uint, _c.uint, _c.ulong, _c.int) -> ^Image ---;
    OpenDisplay :: proc(cstring) -> ^Display ---;
    FetchBytes :: proc(^Display, ^_c.int) -> cstring ---;
    FetchBuffer :: proc(^Display, ^_c.int, _c.int) -> cstring ---;
    GetAtomName :: proc(^Display, Atom) -> cstring ---;
    GetDefault :: proc(^Display, cstring, cstring) -> cstring ---;
    KeysymToString :: proc(KeySym) -> cstring ---;
    Synchronize :: proc(^Display, _c.int) -> (proc(^Display) -> _c.int) ---;
    SetAfterFunction :: proc(^Display, (proc(^Display) -> _c.int)) -> (proc(^Display) -> _c.int) ---;
    InternAtom :: proc(^Display, cstring, _c.int) -> Atom ---;
    InternAtoms :: proc(^Display, ^cstring, _c.int, _c.int, ^Atom) -> _c.int ---;
    CopyColormapAndFree :: proc(^Display, Colormap) -> Colormap ---;
    CreateColormap :: proc(^Display, Window, ^Visual, _c.int) -> Colormap ---;
    CreatePixmapCursor :: proc(^Display, Pixmap, Pixmap, ^Color, ^Color, _c.uint, _c.uint) -> Cursor ---;
    CreateFontCursor :: proc(^Display, _c.uint) -> Cursor ---;
    LoadFont :: proc(^Display, cstring) -> Font ---;
    GContextFromGC :: proc(GC) -> GContext ---;
    FlushGC :: proc(^Display, GC) ---;
    CreatePixmap :: proc(^Display, Drawable, _c.uint, _c.uint, _c.uint) -> Pixmap ---;
    CreateBitmapFromData :: proc(^Display, Drawable, cstring, _c.uint, _c.uint) -> Pixmap ---;
    CreatePixmapFromBitmapData :: proc(^Display, Drawable, cstring, _c.uint, _c.uint, _c.ulong, _c.ulong, _c.uint) -> Pixmap ---;
    CreateSimpleWindow :: proc(^Display, Window, _c.int, _c.int, _c.uint, _c.uint, _c.uint, _c.ulong, _c.ulong) -> Window ---;
    DisplayName :: proc(cstring) -> cstring ---;
    GetSubImage :: proc(^Display, Drawable, _c.int, _c.int, _c.uint, _c.uint, _c.ulong, _c.int, ^Image, _c.int, _c.int) -> ^Image ---;
    GetSelectionOwner :: proc(^Display, Atom) -> Window ---;
    CreateWindow :: proc(^Display, Window, _c.int, _c.int, _c.uint, _c.uint, _c.uint, _c.int, _c.uint, ^Visual, _c.ulong, ^SetWindowAttributes) -> Window ---;
    ListFonts :: proc(^Display, cstring, _c.int, ^_c.int) -> ^cstring ---;
    ListInstalledColormaps :: proc(^Display, Window, ^_c.int) -> ^Colormap ---;
    ListFontsWithInfo :: proc(^Display, cstring, _c.int, ^_c.int, ^^FontStruct) -> ^cstring ---;
    KeycodeToKeysym :: proc(^Display, KeyCode, _c.int) -> KeySym ---;
    LookupKeysym :: proc(^KeyEvent, _c.int) -> KeySym ---;
    StringToKeysym :: proc(cstring) -> KeySym ---;
    MaxRequestSize :: proc(^Display) -> _c.long ---;
    ExtendedMaxRequestSize :: proc(^Display) -> _c.long ---;
    DisplayMotionBufferSize :: proc(^Display) -> _c.ulong ---;
    ListProperties :: proc(^Display, Window, ^_c.int) -> ^Atom ---;
    ResourceManagerString :: proc(^Display) -> cstring ---;
    ScreenResourceString :: proc(^Screen) -> cstring ---;
    GetFontPath :: proc(^Display, ^_c.int) -> ^cstring ---;
    VisualIDFromVisual :: proc(^Visual) -> VisualID ---;
    InitThreads :: proc() -> _c.int ---;
    LockDisplay :: proc(^Display) ---;
    UnlockDisplay :: proc(^Display) ---;
    BlackPixel :: proc(^Display, _c.int) -> _c.ulong ---;
    ListExtensions :: proc(^Display, ^_c.int) -> ^cstring ---;
    ListHosts :: proc(^Display, ^_c.int, ^_c.int) -> ^HostAddress ---;
    GetKeyboardMapping :: proc(^Display, KeyCode, _c.int, ^_c.int) -> ^KeySym ---;
    FindOnExtensionList :: proc(^^ExtData, _c.int) -> ^ExtData ---;
    InitExtension :: proc(^Display, cstring) -> ^ExtCodes ---;
    EHeadOfExtensionList :: proc(EDataObject) -> ^^ExtData ---;
    RootWindow :: proc(^Display, _c.int) -> Window ---;
    DefaultRootWindow :: proc(^Display) -> Window ---;
    RootWindowOfScreen :: proc(^Screen) -> Window ---;
    DefaultVisual :: proc(^Display, _c.int) -> ^Visual ---;
    DefaultGC :: proc(^Display, _c.int) -> GC ---;
    DefaultGCOfScreen :: proc(^Screen) -> GC ---;
    DefaultVisualOfScreen :: proc(^Screen) -> ^Visual ---;
    WhitePixel :: proc(^Display, _c.int) -> _c.ulong ---;
    XAllPlanes :: proc() -> _c.ulong ---;
    BlackPixelOfScreen :: proc(^Screen) -> _c.ulong ---;
    WhitePixelOfScreen :: proc(^Screen) -> _c.ulong ---;
    NextRequest :: proc(^Display) -> _c.ulong ---;
    LastKnownRequestProcessed :: proc(^Display) -> _c.ulong ---;
    ServerVendor :: proc(^Display) -> cstring ---;
    DisplayString :: proc(^Display) -> cstring ---;
    DefaultColormap :: proc(^Display, _c.int) -> Colormap ---;
    AddExtension :: proc(^Display) -> ^ExtCodes ---;
    DefaultColormapOfScreen :: proc(^Screen) -> Colormap ---;
    EventMaskOfScreen :: proc(^Screen) -> _c.long ---;
    ScreenOfDisplay :: proc(^Display, _c.int) -> ^Screen ---;
    DefaultScreenOfDisplay :: proc(^Display) -> ^Screen ---;
    DisplayOfScreen :: proc(^Screen) -> ^Display ---;
    ScreenNumberOfScreen :: proc(^Screen) -> _c.int ---;
    SetErrorHandler :: proc(ErrorHandler) -> ErrorHandler ---;
    SetIOErrorHandler :: proc(IOErrorHandler) -> IOErrorHandler ---;
    SetIOErrorExitHandler :: proc(^Display, IOErrorExitHandler, rawptr) ---;
    ListDepths :: proc(^Display, _c.int, ^_c.int) -> ^_c.int ---;
    ListPixmapFormats :: proc(^Display, ^_c.int) -> ^PixmapFormatValues ---;
    ReconfigureWMWindow :: proc(^Display, Window, _c.int, _c.uint, ^WindowChanges) -> _c.int ---;
    GetWMProtocols :: proc(^Display, Window, ^^Atom, ^_c.int) -> _c.int ---;
    SetWMProtocols :: proc(^Display, Window, ^Atom, _c.int) -> _c.int ---;
    IconifyWindow :: proc(^Display, Window, _c.int) -> _c.int ---;
    WithdrawWindow :: proc(^Display, Window, _c.int) -> _c.int ---;
    GetCommand :: proc(^Display, Window, ^^cstring, ^_c.int) -> _c.int ---;
    GetWMColormapWindows :: proc(^Display, Window, ^^Window, ^_c.int) -> _c.int ---;
    SetWMColormapWindows :: proc(^Display, Window, ^Window, _c.int) -> _c.int ---;
    FreeStringList :: proc(^cstring) ---;
    SetTransientForHint :: proc(^Display, Window, Window) -> _c.int ---;
    ActivateScreenSaver :: proc(^Display) -> _c.int ---;
    AddHost :: proc(^Display, ^HostAddress) -> _c.int ---;
    AddHosts :: proc(^Display, ^HostAddress, _c.int) -> _c.int ---;
    AddToExtensionList :: proc(^^_ExtData, ^ExtData) -> _c.int ---;
    AddToSaveSet :: proc(^Display, Window) -> _c.int ---;
    AllocColor :: proc(^Display, Colormap, ^Color) -> _c.int ---;
    AllocColorCells :: proc(^Display, Colormap, _c.int, ^_c.ulong, _c.uint, ^_c.ulong, _c.uint) -> _c.int ---;
    AllocColorPlanes :: proc(^Display, Colormap, _c.int, ^_c.ulong, _c.int, _c.int, _c.int, _c.int, ^_c.ulong, ^_c.ulong, ^_c.ulong) -> _c.int ---;
    AllocNamedColor :: proc(^Display, Colormap, cstring, ^Color, ^Color) -> _c.int ---;
    AllowEvents :: proc(^Display, _c.int, Time) -> _c.int ---;
    AutoRepeatOff :: proc(^Display) -> _c.int ---;
    AutoRepeatOn :: proc(^Display) -> _c.int ---;
    Bell :: proc(^Display, _c.int) -> _c.int ---;
    BitmapBitOrder :: proc(^Display) -> _c.int ---;
    BitmapPad :: proc(^Display) -> _c.int ---;
    BitmapUnit :: proc(^Display) -> _c.int ---;
    CellsOfScreen :: proc(^Screen) -> _c.int ---;
    ChangeActivePointerGrab :: proc(^Display, _c.uint, Cursor, Time) -> _c.int ---;
    ChangeGC :: proc(^Display, GC, _c.ulong, ^GCValues) -> _c.int ---;
    ChangeKeyboardControl :: proc(^Display, _c.ulong, ^KeyboardControl) -> _c.int ---;
    ChangeKeyboardMapping :: proc(^Display, _c.int, _c.int, ^KeySym, _c.int) -> _c.int ---;
    ChangePointerControl :: proc(^Display, _c.int, _c.int, _c.int, _c.int, _c.int) -> _c.int ---;
    ChangeProperty :: proc(^Display, Window, Atom, Atom, _c.int, _c.int, ^_c.uchar, _c.int) -> _c.int ---;
    ChangeSaveSet :: proc(^Display, Window, _c.int) -> _c.int ---;
    ChangeWindowAttributes :: proc(^Display, Window, _c.ulong, ^SetWindowAttributes) -> _c.int ---;
    CheckIfEvent :: proc(^Display, ^Event, (proc(^Display, ^Event, Pointer) -> _c.int), Pointer) -> _c.int ---;
    CheckMaskEvent :: proc(^Display, _c.long, ^Event) -> _c.int ---;
    CheckTypedEvent :: proc(^Display, _c.int, ^Event) -> _c.int ---;
    CheckTypedWindowEvent :: proc(^Display, Window, _c.int, ^Event) -> _c.int ---;
    CheckWindowEvent :: proc(^Display, Window, _c.long, ^Event) -> _c.int ---;
    CirculateSubwindows :: proc(^Display, Window, _c.int) -> _c.int ---;
    CirculateSubwindowsDown :: proc(^Display, Window) -> _c.int ---;
    CirculateSubwindowsUp :: proc(^Display, Window) -> _c.int ---;
    ClearArea :: proc(^Display, Window, _c.int, _c.int, _c.uint, _c.uint, _c.int) -> _c.int ---;
    ClearWindow :: proc(^Display, Window) -> _c.int ---;
    CloseDisplay :: proc(^Display) -> _c.int ---;
    ConfigureWindow :: proc(^Display, Window, _c.uint, ^WindowChanges) -> _c.int ---;
    ConnectionNumber :: proc(^Display) -> _c.int ---;
    ConvertSelection :: proc(^Display, Atom, Atom, Atom, Window, Time) -> _c.int ---;
    CopyArea :: proc(^Display, Drawable, Drawable, GC, _c.int, _c.int, _c.uint, _c.uint, _c.int, _c.int) -> _c.int ---;
    CopyGC :: proc(^Display, GC, _c.ulong, GC) -> _c.int ---;
    CopyPlane :: proc(^Display, Drawable, Drawable, GC, _c.int, _c.int, _c.uint, _c.uint, _c.int, _c.int, _c.ulong) -> _c.int ---;
    DefaultDepth :: proc(^Display, _c.int) -> _c.int ---;
    DefaultDepthOfScreen :: proc(^Screen) -> _c.int ---;
    DefaultScreen :: proc(^Display) -> _c.int ---;
    DefineCursor :: proc(^Display, Window, Cursor) -> _c.int ---;
    DeleteProperty :: proc(^Display, Window, Atom) -> _c.int ---;
    DestroyWindow :: proc(^Display, Window) -> _c.int ---;
    DestroySubwindows :: proc(^Display, Window) -> _c.int ---;
    DoesBackingStore :: proc(^Screen) -> _c.int ---;
    DoesSaveUnders :: proc(^Screen) -> _c.int ---;
    DisableAccessControl :: proc(^Display) -> _c.int ---;
    DisplayCells :: proc(^Display, _c.int) -> _c.int ---;
    DisplayHeight :: proc(^Display, _c.int) -> _c.int ---;
    DisplayHeightMM :: proc(^Display, _c.int) -> _c.int ---;
    DisplayKeycodes :: proc(^Display, ^_c.int, ^_c.int) -> _c.int ---;
    DisplayPlanes :: proc(^Display, _c.int) -> _c.int ---;
    DisplayWidth :: proc(^Display, _c.int) -> _c.int ---;
    DisplayWidthMM :: proc(^Display, _c.int) -> _c.int ---;
    DrawArc :: proc(^Display, Drawable, GC, _c.int, _c.int, _c.uint, _c.uint, _c.int, _c.int) -> _c.int ---;
    DrawArcs :: proc(^Display, Drawable, GC, ^Arc, _c.int) -> _c.int ---;
    DrawImageString :: proc(^Display, Drawable, GC, _c.int, _c.int, cstring, _c.int) -> _c.int ---;
    DrawImageString16 :: proc(^Display, Drawable, GC, _c.int, _c.int, ^Char2b, _c.int) -> _c.int ---;
    DrawLine :: proc(^Display, Drawable, GC, _c.int, _c.int, _c.int, _c.int) -> _c.int ---;
    DrawLines :: proc(^Display, Drawable, GC, ^Point, _c.int, _c.int) -> _c.int ---;
    DrawPoint :: proc(^Display, Drawable, GC, _c.int, _c.int) -> _c.int ---;
    DrawPoints :: proc(^Display, Drawable, GC, ^Point, _c.int, _c.int) -> _c.int ---;
    DrawRectangle :: proc(^Display, Drawable, GC, _c.int, _c.int, _c.uint, _c.uint) -> _c.int ---;
    DrawRectangles :: proc(^Display, Drawable, GC, ^Rectangle, _c.int) -> _c.int ---;
    DrawSegments :: proc(^Display, Drawable, GC, ^Segment, _c.int) -> _c.int ---;
    DrawString :: proc(^Display, Drawable, GC, _c.int, _c.int, cstring, _c.int) -> _c.int ---;
    DrawString16 :: proc(^Display, Drawable, GC, _c.int, _c.int, ^Char2b, _c.int) -> _c.int ---;
    DrawText :: proc(^Display, Drawable, GC, _c.int, _c.int, ^TextItem, _c.int) -> _c.int ---;
    DrawText16 :: proc(^Display, Drawable, GC, _c.int, _c.int, ^TextItem16, _c.int) -> _c.int ---;
    EnableAccessControl :: proc(^Display) -> _c.int ---;
    EventsQueued :: proc(^Display, _c.int) -> _c.int ---;
    FetchName :: proc(^Display, Window, ^cstring) -> _c.int ---;
    FillArc :: proc(^Display, Drawable, GC, _c.int, _c.int, _c.uint, _c.uint, _c.int, _c.int) -> _c.int ---;
    FillArcs :: proc(^Display, Drawable, GC, ^Arc, _c.int) -> _c.int ---;
    FillPolygon :: proc(^Display, Drawable, GC, ^Point, _c.int, _c.int, _c.int) -> _c.int ---;
    FillRectangle :: proc(^Display, Drawable, GC, _c.int, _c.int, _c.uint, _c.uint) -> _c.int ---;
    FillRectangles :: proc(^Display, Drawable, GC, ^Rectangle, _c.int) -> _c.int ---;
    Flush :: proc(^Display) -> _c.int ---;
    ForceScreenSaver :: proc(^Display, _c.int) -> _c.int ---;
    Free :: proc(rawptr) -> _c.int ---;
    FreeColormap :: proc(^Display, Colormap) -> _c.int ---;
    FreeColors :: proc(^Display, Colormap, ^_c.ulong, _c.int, _c.ulong) -> _c.int ---;
    FreeCursor :: proc(^Display, Cursor) -> _c.int ---;
    FreeExtensionList :: proc(^cstring) -> _c.int ---;
    FreeFont :: proc(^Display, ^FontStruct) -> _c.int ---;
    FreeFontInfo :: proc(^cstring, ^FontStruct, _c.int) -> _c.int ---;
    FreeFontNames :: proc(^cstring) -> _c.int ---;
    FreeFontPath :: proc(^cstring) -> _c.int ---;
    FreeGC :: proc(^Display, GC) -> _c.int ---;
    FreeModifiermap :: proc(^ModifierKeymap) -> _c.int ---;
    FreePixmap :: proc(^Display, Pixmap) -> _c.int ---;
    Geometry :: proc(^Display, _c.int, cstring, cstring, _c.uint, _c.uint, _c.uint, _c.int, _c.int, ^_c.int, ^_c.int, ^_c.int, ^_c.int) -> _c.int ---;
    GetErrorDatabaseText :: proc(^Display, cstring, cstring, cstring, cstring, _c.int) -> _c.int ---;
    GetErrorText :: proc(^Display, _c.int, cstring, _c.int) -> _c.int ---;
    GetFontProperty :: proc(^FontStruct, Atom, ^_c.ulong) -> _c.int ---;
    GetGCValues :: proc(^Display, GC, _c.ulong, ^GCValues) -> _c.int ---;
    GetGeometry :: proc(^Display, Drawable, ^Window, ^_c.int, ^_c.int, ^_c.uint, ^_c.uint, ^_c.uint, ^_c.uint) -> _c.int ---;
    GetIconName :: proc(^Display, Window, ^cstring) -> _c.int ---;
    GetInputFocus :: proc(^Display, ^Window, ^_c.int) -> _c.int ---;
    GetKeyboardControl :: proc(^Display, ^KeyboardState) -> _c.int ---;
    GetPointerControl :: proc(^Display, ^_c.int, ^_c.int, ^_c.int) -> _c.int ---;
    GetPointerMapping :: proc(^Display, ^_c.uchar, _c.int) -> _c.int ---;
    GetScreenSaver :: proc(^Display, ^_c.int, ^_c.int, ^_c.int, ^_c.int) -> _c.int ---;
    GetTransientForHint :: proc(^Display, Window, ^Window) -> _c.int ---;
    GetWindowProperty :: proc(^Display, Window, Atom, _c.long, _c.long, _c.int, Atom, ^Atom, ^_c.int, ^_c.ulong, ^_c.ulong, ^^_c.uchar) -> _c.int ---;
    GetWindowAttributes :: proc(^Display, Window, ^WindowAttributes) -> _c.int ---;
    GrabButton :: proc(^Display, _c.uint, _c.uint, Window, _c.int, _c.uint, _c.int, _c.int, Window, Cursor) -> _c.int ---;
    GrabKey :: proc(^Display, _c.int, _c.uint, Window, _c.int, _c.int, _c.int) -> _c.int ---;
    GrabKeyboard :: proc(^Display, Window, _c.int, _c.int, _c.int, Time) -> _c.int ---;
    GrabPointer :: proc(^Display, Window, _c.int, _c.uint, _c.int, _c.int, Window, Cursor, Time) -> _c.int ---;
    GrabServer :: proc(^Display) -> _c.int ---;
    HeightMMOfScreen :: proc(^Screen) -> _c.int ---;
    HeightOfScreen :: proc(^Screen) -> _c.int ---;
    IfEvent :: proc(^Display, ^Event, (proc(^Display, ^Event, Pointer) -> _c.int), Pointer) -> _c.int ---;
    ImageByteOrder :: proc(^Display) -> _c.int ---;
    InstallColormap :: proc(^Display, Colormap) -> _c.int ---;
    KeysymToKeycode :: proc(^Display, KeySym) -> KeyCode ---;
    KillClient :: proc(^Display, ID) -> _c.int ---;
    LookupColor :: proc(^Display, Colormap, cstring, ^Color, ^Color) -> _c.int ---;
    LowerWindow :: proc(^Display, Window) -> _c.int ---;
    MapRaised :: proc(^Display, Window) -> _c.int ---;
    MapSubwindows :: proc(^Display, Window) -> _c.int ---;
    MapWindow :: proc(^Display, Window) -> _c.int ---;
    MaskEvent :: proc(^Display, _c.long, ^Event) -> _c.int ---;
    MaxCmapsOfScreen :: proc(^Screen) -> _c.int ---;
    MinCmapsOfScreen :: proc(^Screen) -> _c.int ---;
    MoveResizeWindow :: proc(^Display, Window, _c.int, _c.int, _c.uint, _c.uint) -> _c.int ---;
    MoveWindow :: proc(^Display, Window, _c.int, _c.int) -> _c.int ---;
    NextEvent :: proc(^Display, ^Event) -> _c.int ---;
    NoOp :: proc(^Display) -> _c.int ---;
    ParseColor :: proc(^Display, Colormap, cstring, ^Color) -> _c.int ---;
    ParseGeometry :: proc(cstring, ^_c.int, ^_c.int, ^_c.uint, ^_c.uint) -> _c.int ---;
    PeekEvent :: proc(^Display, ^Event) -> _c.int ---;
    PeekIfEvent :: proc(^Display, ^Event, (proc(^Display, ^Event, Pointer) -> _c.int), Pointer) -> _c.int ---;
    Pending :: proc(^Display) -> _c.int ---;
    PlanesOfScreen :: proc(^Screen) -> _c.int ---;
    ProtocolRevision :: proc(^Display) -> _c.int ---;
    ProtocolVersion :: proc(^Display) -> _c.int ---;
    PutBackEvent :: proc(^Display, ^Event) -> _c.int ---;
    PutImage :: proc(^Display, Drawable, GC, ^Image, _c.int, _c.int, _c.int, _c.int, _c.uint, _c.uint) -> _c.int ---;
    QLength :: proc(^Display) -> _c.int ---;
    QueryBestCursor :: proc(^Display, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> _c.int ---;
    QueryBestSize :: proc(^Display, _c.int, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> _c.int ---;
    QueryBestStipple :: proc(^Display, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> _c.int ---;
    QueryBestTile :: proc(^Display, Drawable, _c.uint, _c.uint, ^_c.uint, ^_c.uint) -> _c.int ---;
    QueryColor :: proc(^Display, Colormap, ^Color) -> _c.int ---;
    QueryColors :: proc(^Display, Colormap, ^Color, _c.int) -> _c.int ---;
    QueryExtension :: proc(^Display, cstring, ^_c.int, ^_c.int, ^_c.int) -> _c.int ---;
    QueryKeymap :: proc(^Display, [32]_c.char) -> _c.int ---;
    QueryPointer :: proc(^Display, Window, ^Window, ^Window, ^_c.int, ^_c.int, ^_c.int, ^_c.int, ^_c.uint) -> _c.int ---;
    QueryTextExtents :: proc(^Display, ID, cstring, _c.int, ^_c.int, ^_c.int, ^_c.int, ^CharStruct) -> _c.int ---;
    QueryTextExtents16 :: proc(^Display, ID, ^Char2b, _c.int, ^_c.int, ^_c.int, ^_c.int, ^CharStruct) -> _c.int ---;
    QueryTree :: proc(^Display, Window, ^Window, ^Window, ^^Window, ^_c.uint) -> _c.int ---;
    RaiseWindow :: proc(^Display, Window) -> _c.int ---;
    ReadBitmapFile :: proc(^Display, Drawable, cstring, ^_c.uint, ^_c.uint, ^Pixmap, ^_c.int, ^_c.int) -> _c.int ---;
    ReadBitmapFileData :: proc(cstring, ^_c.uint, ^_c.uint, ^^_c.uchar, ^_c.int, ^_c.int) -> _c.int ---;
    RebindKeysym :: proc(^Display, KeySym, ^KeySym, _c.int, ^_c.uchar, _c.int) -> _c.int ---;
    RecolorCursor :: proc(^Display, Cursor, ^Color, ^Color) -> _c.int ---;
    RefreshKeyboardMapping :: proc(^MappingEvent) -> _c.int ---;
    RemoveFromSaveSet :: proc(^Display, Window) -> _c.int ---;
    RemoveHost :: proc(^Display, ^HostAddress) -> _c.int ---;
    RemoveHosts :: proc(^Display, ^HostAddress, _c.int) -> _c.int ---;
    ReparentWindow :: proc(^Display, Window, Window, _c.int, _c.int) -> _c.int ---;
    ResetScreenSaver :: proc(^Display) -> _c.int ---;
    ResizeWindow :: proc(^Display, Window, _c.uint, _c.uint) -> _c.int ---;
    RestackWindows :: proc(^Display, ^Window, _c.int) -> _c.int ---;
    RotateBuffers :: proc(^Display, _c.int) -> _c.int ---;
    RotateWindowProperties :: proc(^Display, Window, ^Atom, _c.int, _c.int) -> _c.int ---;
    ScreenCount :: proc(^Display) -> _c.int ---;
    SelectInput :: proc(^Display, Window, _c.long) -> _c.int ---;
    SendEvent :: proc(^Display, Window, _c.int, _c.long, ^Event) -> _c.int ---;
    SetAccessControl :: proc(^Display, _c.int) -> _c.int ---;
    SetArcMode :: proc(^Display, GC, _c.int) -> _c.int ---;
    SetBackground :: proc(^Display, GC, _c.ulong) -> _c.int ---;
    SetClipMask :: proc(^Display, GC, Pixmap) -> _c.int ---;
    SetClipOrigin :: proc(^Display, GC, _c.int, _c.int) -> _c.int ---;
    SetClipRectangles :: proc(^Display, GC, _c.int, _c.int, ^Rectangle, _c.int, _c.int) -> _c.int ---;
    SetCloseDownMode :: proc(^Display, _c.int) -> _c.int ---;
    SetCommand :: proc(^Display, Window, ^cstring, _c.int) -> _c.int ---;
    SetDashes :: proc(^Display, GC, _c.int, cstring, _c.int) -> _c.int ---;
    SetFillRule :: proc(^Display, GC, _c.int) -> _c.int ---;
    SetFillStyle :: proc(^Display, GC, _c.int) -> _c.int ---;
    SetFont :: proc(^Display, GC, Font) -> _c.int ---;
    SetFontPath :: proc(^Display, ^cstring, _c.int) -> _c.int ---;
    SetForeground :: proc(^Display, GC, _c.ulong) -> _c.int ---;
    SetFunction :: proc(^Display, GC, _c.int) -> _c.int ---;
    SetGraphicsExposures :: proc(^Display, GC, _c.int) -> _c.int ---;
    SetIconName :: proc(^Display, Window, cstring) -> _c.int ---;
    SetInputFocus :: proc(^Display, Window, _c.int, Time) -> _c.int ---;
    SetLineAttributes :: proc(^Display, GC, _c.uint, _c.int, _c.int, _c.int) -> _c.int ---;
    SetModifierMapping :: proc(^Display, ^ModifierKeymap) -> _c.int ---;
    SetPlaneMask :: proc(^Display, GC, _c.ulong) -> _c.int ---;
    SetPointerMapping :: proc(^Display, ^_c.uchar, _c.int) -> _c.int ---;
    SetScreenSaver :: proc(^Display, _c.int, _c.int, _c.int, _c.int) -> _c.int ---;
    SetSelectionOwner :: proc(^Display, Atom, Window, Time) -> _c.int ---;
    SetState :: proc(^Display, GC, _c.ulong, _c.ulong, _c.int, _c.ulong) -> _c.int ---;
    SetStipple :: proc(^Display, GC, Pixmap) -> _c.int ---;
    SetSubwindowMode :: proc(^Display, GC, _c.int) -> _c.int ---;
    SetTSOrigin :: proc(^Display, GC, _c.int, _c.int) -> _c.int ---;
    SetTile :: proc(^Display, GC, Pixmap) -> _c.int ---;
    SetWindowBackground :: proc(^Display, Window, _c.ulong) -> _c.int ---;
    SetWindowBackgroundPixmap :: proc(^Display, Window, Pixmap) -> _c.int ---;
    SetWindowBorder :: proc(^Display, Window, _c.ulong) -> _c.int ---;
    SetWindowBorderPixmap :: proc(^Display, Window, Pixmap) -> _c.int ---;
    SetWindowBorderWidth :: proc(^Display, Window, _c.uint) -> _c.int ---;
    SetWindowColormap :: proc(^Display, Window, Colormap) -> _c.int ---;
    StoreBuffer :: proc(^Display, cstring, _c.int, _c.int) -> _c.int ---;
    StoreBytes :: proc(^Display, cstring, _c.int) -> _c.int ---;
    StoreColor :: proc(^Display, Colormap, ^Color) -> _c.int ---;
    StoreColors :: proc(^Display, Colormap, ^Color, _c.int) -> _c.int ---;
    StoreName :: proc(^Display, Window, cstring) -> _c.int ---;
    StoreNamedColor :: proc(^Display, Colormap, cstring, _c.ulong, _c.int) -> _c.int ---;
    Sync :: proc(^Display, _c.int) -> _c.int ---;
    TextExtents :: proc(^FontStruct, cstring, _c.int, ^_c.int, ^_c.int, ^_c.int, ^CharStruct) -> _c.int ---;
    TextExtents16 :: proc(^FontStruct, ^Char2b, _c.int, ^_c.int, ^_c.int, ^_c.int, ^CharStruct) -> _c.int ---;
    TextWidth :: proc(^FontStruct, cstring, _c.int) -> _c.int ---;
    TextWidth16 :: proc(^FontStruct, ^Char2b, _c.int) -> _c.int ---;
    TranslateCoordinates :: proc(^Display, Window, Window, _c.int, _c.int, ^_c.int, ^_c.int, ^Window) -> _c.int ---;
    UndefineCursor :: proc(^Display, Window) -> _c.int ---;
    UngrabButton :: proc(^Display, _c.uint, _c.uint, Window) -> _c.int ---;
    UngrabKey :: proc(^Display, _c.int, _c.uint, Window) -> _c.int ---;
    UngrabKeyboard :: proc(^Display, Time) -> _c.int ---;
    UngrabPointer :: proc(^Display, Time) -> _c.int ---;
    UngrabServer :: proc(^Display) -> _c.int ---;
    UninstallColormap :: proc(^Display, Colormap) -> _c.int ---;
    UnloadFont :: proc(^Display, Font) -> _c.int ---;
    UnmapSubwindows :: proc(^Display, Window) -> _c.int ---;
    UnmapWindow :: proc(^Display, Window) -> _c.int ---;
    VendorRelease :: proc(^Display) -> _c.int ---;
    WarpPointer :: proc(^Display, Window, Window, _c.int, _c.int, _c.uint, _c.uint, _c.int, _c.int) -> _c.int ---;
    WidthMMOfScreen :: proc(^Screen) -> _c.int ---;
    WidthOfScreen :: proc(^Screen) -> _c.int ---;
    WindowEvent :: proc(^Display, Window, _c.long, ^Event) -> _c.int ---;
    WriteBitmapFile :: proc(^Display, cstring, Pixmap, _c.uint, _c.uint, _c.int, _c.int) -> _c.int ---;
    SupportsLocale :: proc() -> _c.int ---;
    OpenOM :: proc(^Display, ^_rmHashBucketRec, cstring, cstring) -> OM ---;
    CloseOM :: proc(OM) -> _c.int ---;
    SetLocaleModifiers :: proc(cstring) -> cstring ---;
    CreateOC :: proc(OM, #c_vararg ..any) -> OC ---;
    DestroyOC :: proc(OC) ---;
    OMOfOC :: proc(OC) -> OM ---;
    CreateFontSet :: proc(^Display, cstring, ^^cstring, ^_c.int, ^cstring) -> FontSet ---;
    FreeFontSet :: proc(^Display, FontSet) ---;
    GetOMValues :: proc(OM, #c_vararg ..any) -> cstring ---;
    SetOCValues :: proc(OC, #c_vararg ..any) -> cstring ---;
    GetOCValues :: proc(OC, #c_vararg ..any) -> cstring ---;
    FontsOfFontSet :: proc(FontSet, ^^^FontStruct, ^^cstring) -> _c.int ---;
    ContextDependentDrawing :: proc(FontSet) -> _c.int ---;
    BaseFontNameListOfFontSet :: proc(FontSet) -> cstring ---;
    LocaleOfFontSet :: proc(FontSet) -> cstring ---;
    DirectionalDependentDrawing :: proc(FontSet) -> _c.int ---;
    SetOMValues :: proc(OM, #c_vararg ..any) -> cstring ---;
    ContextualDrawing :: proc(FontSet) -> _c.int ---;
    DisplayOfOM :: proc(OM) -> ^Display ---;
    LocaleOfOM :: proc(OM) -> cstring ---;
    ExtentsOfFontSet :: proc(FontSet) -> ^FontSetExtents ---;
    mbTextEscapement :: proc(FontSet, cstring, _c.int) -> _c.int ---;
    wcTextEscapement :: proc(FontSet, ^_c.wchar_t, _c.int) -> _c.int ---;
    utf8TextEscapement :: proc(FontSet, cstring, _c.int) -> _c.int ---;
    mbTextExtents :: proc(FontSet, cstring, _c.int, ^Rectangle, ^Rectangle) -> _c.int ---;
    wcTextExtents :: proc(FontSet, ^_c.wchar_t, _c.int, ^Rectangle, ^Rectangle) -> _c.int ---;
    utf8TextExtents :: proc(FontSet, cstring, _c.int, ^Rectangle, ^Rectangle) -> _c.int ---;
    mbTextPerCharExtents :: proc(FontSet, cstring, _c.int, ^Rectangle, ^Rectangle, _c.int, ^_c.int, ^Rectangle, ^Rectangle) -> _c.int ---;
    wcTextPerCharExtents :: proc(FontSet, ^_c.wchar_t, _c.int, ^Rectangle, ^Rectangle, _c.int, ^_c.int, ^Rectangle, ^Rectangle) -> _c.int ---;
    utf8TextPerCharExtents :: proc(FontSet, cstring, _c.int, ^Rectangle, ^Rectangle, _c.int, ^_c.int, ^Rectangle, ^Rectangle) -> _c.int ---;
    mbDrawText :: proc(^Display, Drawable, GC, _c.int, _c.int, ^mbTextItem, _c.int) ---;
    wcDrawText :: proc(^Display, Drawable, GC, _c.int, _c.int, ^wcTextItem, _c.int) ---;
    utf8DrawText :: proc(^Display, Drawable, GC, _c.int, _c.int, ^mbTextItem, _c.int) ---;
    mbDrawString :: proc(^Display, Drawable, FontSet, GC, _c.int, _c.int, cstring, _c.int) ---;
    wcDrawString :: proc(^Display, Drawable, FontSet, GC, _c.int, _c.int, ^_c.wchar_t, _c.int) ---;
    utf8DrawString :: proc(^Display, Drawable, FontSet, GC, _c.int, _c.int, cstring, _c.int) ---;
    mbDrawImageString :: proc(^Display, Drawable, FontSet, GC, _c.int, _c.int, cstring, _c.int) ---;
    wcDrawImageString :: proc(^Display, Drawable, FontSet, GC, _c.int, _c.int, ^_c.wchar_t, _c.int) ---;
    utf8DrawImageString :: proc(^Display, Drawable, FontSet, GC, _c.int, _c.int, cstring, _c.int) ---;
    OpenIM :: proc(^Display, ^_rmHashBucketRec, cstring, cstring) -> IM ---;
    CloseIM :: proc(IM) -> _c.int ---;
    DestroyIC :: proc(IC) ---;
    GetIMValues :: proc(IM, #c_vararg ..any) -> cstring ---;
    SetIMValues :: proc(IM, #c_vararg ..any) -> cstring ---;
    SetICFocus :: proc(IC) ---;
    UnsetICFocus :: proc(IC) ---;
    LocaleOfIM :: proc(IM) -> cstring ---;
    DisplayOfIM :: proc(IM) -> ^Display ---;
    CreateIC :: proc(IM, #c_vararg ..any) -> IC ---;
    mbResetIC :: proc(IC) -> cstring ---;
    utf8ResetIC :: proc(IC) -> cstring ---;
    SetICValues :: proc(IC, #c_vararg ..any) -> cstring ---;
    GetICValues :: proc(IC, #c_vararg ..any) -> cstring ---;
    IMOfIC :: proc(IC) -> IM ---;
    FilterEvent :: proc(^Event, Window) -> _c.int ---;
    wcLookupString :: proc(IC, ^KeyPressedEvent, ^_c.wchar_t, _c.int, ^KeySym, ^_c.int) -> _c.int ---;
    utf8LookupString :: proc(IC, ^KeyPressedEvent, cstring, _c.int, ^KeySym, ^_c.int) -> _c.int ---;
    VaCreateNestedList :: proc(_c.int, #c_vararg ..any) -> VaNestedList ---;
    RegisterIMInstantiateCallback :: proc(^Display, ^_rmHashBucketRec, cstring, cstring, IDProc, Pointer) -> _c.int ---;
    wcResetIC :: proc(IC) -> ^_c.wchar_t ---;
    mbLookupString :: proc(IC, ^KeyPressedEvent, cstring, _c.int, ^KeySym, ^_c.int) -> _c.int ---;
    UnregisterIMInstantiateCallback :: proc(^Display, ^_rmHashBucketRec, cstring, cstring, IDProc, Pointer) -> _c.int ---;
    ProcessInternalConnection :: proc(^Display, _c.int) ---;
    AddConnectionWatch :: proc(^Display, ConnectionWatchProc, Pointer) -> _c.int ---;
    RemoveConnectionWatch :: proc(^Display, ConnectionWatchProc, Pointer) ---;
    SetAuthorization :: proc(cstring, _c.int, cstring, _c.int) ---;
    _mbtowc :: proc(^_c.wchar_t, cstring, _c.int) -> _c.int ---;
    _wctomb :: proc(cstring, _c.wchar_t) -> _c.int ---;
    GetEventData :: proc(^Display, ^GenericEventCookie) -> _c.int ---;
    FreeEventData :: proc(^Display, ^GenericEventCookie) ---;
    InternalConnectionNumbers :: proc(^Display, ^^_c.int, ^_c.int) -> _c.int ---;
}

