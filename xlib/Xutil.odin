package xlib

import _c "core:c"

/* Macros */

NoValue :: 0x0;
Value :: 0x1;
YValue :: 0x2;
WidthValue :: 0x4;
HeightValue :: 0x8;
AllValues :: 0xF;
Negative :: 0x10;
YNegative :: 0x20;
USPosition :: (1 << 0);
USSize :: (1 << 1);
PPosition :: (1 << 2);
PSize :: (1 << 3);
PMinSize :: (1 << 4);
PMaxSize :: (1 << 5);
PResizeInc :: (1 << 6);
PAspect :: (1 << 7);
PBaseSize :: (1 << 8);
PWinGravity :: (1 << 9);
PAllHints :: (PPosition | PSize | PMinSize | PMaxSize | PResizeInc | PAspect);
InputHint :: (1 << 0);
StateHint :: (1 << 1);
IconPixmapHint :: (1 << 2);
IconWindowHint :: (1 << 3);
IconPositionHint :: (1 << 4);
IconMaskHint :: (1 << 5);
WindowGroupHint :: (1 << 6);
AllHints :: (InputHint | StateHint | IconPixmapHint | IconWindowHint | IconPositionHint | IconMaskHint | WindowGroupHint);
UrgencyHint :: (1 << 8);
WithdrawnState :: 0;
NormalState :: 1;
IconicState :: 3;
DontCareState :: 0;
ZoomState :: 2;
InactiveState :: 4;
NoMemory :: -1;
LocaleNotSupported :: -2;
ConverterNotFound :: -3;
RectangleOut :: 0;
RectangleIn :: 1;
RectanglePart :: 2;
VisualNoMask :: 0x0;
VisualIDMask :: 0x1;
VisualScreenMask :: 0x2;
VisualDepthMask :: 0x4;
VisualClassMask :: 0x8;
VisualRedMaskMask :: 0x10;
VisualGreenMaskMask :: 0x20;
VisualBlueMaskMask :: 0x40;
VisualColormapSizeMask :: 0x80;
VisualBitsPerRGBMask :: 0x100;
VisualAllMask :: 0x1FF;
ReleaseByFreeingColormap :: ((ID)(1));
BitmapSuccess :: 0;
BitmapOpenFailed :: 1;
BitmapFileInvalid :: 2;
BitmapNoMemory :: 3;
CSUCCESS :: 0;
CNOMEM :: 1;
CNOENT :: 2;
SizeHints :: struct {
    flags : _c.long,
    x : _c.int,
    y : _c.int,
    width : _c.int,
    height : _c.int,
    min_width : _c.int,
    min_height : _c.int,
    max_width : _c.int,
    max_height : _c.int,
    width_inc : _c.int,
    height_inc : _c.int,
    min_aspect : struct {
        x : _c.int,
        y : _c.int,
    },
    max_aspect : struct {
        x : _c.int,
        y : _c.int,
    },
    base_width : _c.int,
    base_height : _c.int,
    win_gravity : _c.int,
};

WMHints :: struct {
    flags : _c.long,
    input : _c.int,
    initial_state : _c.int,
    icon_pixmap : Pixmap,
    icon_window : Window,
    icon_x : _c.int,
    icon_y : _c.int,
    icon_mask : Pixmap,
    window_group : ID,
};

TextProperty :: struct {
    value : ^_c.uchar,
    encoding : Atom,
    format : _c.int,
    nitems : _c.ulong,
};

ICCEncodingStyle :: _c.int;
/*  <ENUM> :: enum { */
StringStyle :: 0;
CompoundTextStyle :: 1;
TextStyle :: 2;
StdICCTextStyle :: 3;
UTF8StringStyle :: 4;
/* } */;

IconSize :: struct {
    min_width : _c.int,
    min_height : _c.int,
    max_width : _c.int,
    max_height : _c.int,
    width_inc : _c.int,
    height_inc : _c.int,
};

ClassHint :: struct {
    res_name : cstring,
    res_class : cstring,
};

_ComposeStatus :: struct {
    compose_ptr : Pointer,
    chars_matched : _c.int,
};

ComposeStatus :: struct {
    compose_ptr : Pointer,
    chars_matched : _c.int,
};

_Region :: struct {};

Region :: ^_Region;

VisualInfo :: struct {
    visual : ^Visual,
    visualid : VisualID,
    screen : _c.int,
    depth : _c.int,
    class : _c.int,
    red_mask : _c.ulong,
    green_mask : _c.ulong,
    blue_mask : _c.ulong,
    colormap_size : _c.int,
    bits_per_rgb : _c.int,
};

StandardColormap :: struct {
    colormap : Colormap,
    red_max : _c.ulong,
    red_mult : _c.ulong,
    green_max : _c.ulong,
    green_mult : _c.ulong,
    blue_max : _c.ulong,
    blue_mult : _c.ulong,
    base_pixel : _c.ulong,
    visualid : VisualID,
    killid : ID,
};

Context :: _c.int;


/***** libX11 *****/
foreign import libX11 "system:libX11.so"

/* Procedures */
@(link_prefix="X")
foreign libX11 {
    ClipBox :: proc(Region, ^Rectangle) -> _c.int ---;
    CreateRegion :: proc() -> Region ---;
    DeleteContext :: proc(^Display, ID, Context) -> _c.int ---;
    DestroyRegion :: proc(Region) -> _c.int ---;
    EmptyRegion :: proc(Region) -> _c.int ---;
    EqualRegion :: proc(Region, Region) -> _c.int ---;
    FindContext :: proc(^Display, ID, Context, ^Pointer) -> _c.int ---;
    GetClassHint :: proc(^Display, Window, ^ClassHint) -> _c.int ---;
    GetIconSizes :: proc(^Display, Window, ^^IconSize, ^_c.int) -> _c.int ---;
    GetNormalHints :: proc(^Display, Window, ^SizeHints) -> _c.int ---;
    GetRGBColormaps :: proc(^Display, Window, ^^StandardColormap, ^_c.int, Atom) -> _c.int ---;
    GetSizeHints :: proc(^Display, Window, ^SizeHints, Atom) -> _c.int ---;
    GetStandardColormap :: proc(^Display, Window, ^StandardColormap, Atom) -> _c.int ---;
    GetTextProperty :: proc(^Display, Window, ^TextProperty, Atom) -> _c.int ---;
    GetWMClientMachine :: proc(^Display, Window, ^TextProperty) -> _c.int ---;
    GetWMIconName :: proc(^Display, Window, ^TextProperty) -> _c.int ---;
    GetWMName :: proc(^Display, Window, ^TextProperty) -> _c.int ---;
    GetWMNormalHints :: proc(^Display, Window, ^SizeHints, ^_c.long) -> _c.int ---;
    GetWMSizeHints :: proc(^Display, Window, ^SizeHints, ^_c.long, Atom) -> _c.int ---;
    GetZoomHints :: proc(^Display, Window, ^SizeHints) -> _c.int ---;
    IntersectRegion :: proc(Region, Region, Region) -> _c.int ---;
    ConvertCase :: proc(KeySym, ^KeySym, ^KeySym) ---;
    LookupString :: proc(^KeyEvent, cstring, _c.int, ^KeySym, ^ComposeStatus) -> _c.int ---;
    MatchVisualInfo :: proc(^Display, _c.int, _c.int, _c.int, ^VisualInfo) -> _c.int ---;
    OffsetRegion :: proc(Region, _c.int, _c.int) -> _c.int ---;
    PointInRegion :: proc(Region, _c.int, _c.int) -> _c.int ---;
    PolygonRegion :: proc(^Point, _c.int, _c.int) -> Region ---;
    RectInRegion :: proc(Region, _c.int, _c.int, _c.uint, _c.uint) -> _c.int ---;
    SaveContext :: proc(^Display, ID, Context, cstring) -> _c.int ---;
    SetClassHint :: proc(^Display, Window, ^ClassHint) -> _c.int ---;
    SetIconSizes :: proc(^Display, Window, ^IconSize, _c.int) -> _c.int ---;
    SetNormalHints :: proc(^Display, Window, ^SizeHints) -> _c.int ---;
    SetRGBColormaps :: proc(^Display, Window, ^StandardColormap, _c.int, Atom) ---;
    SetSizeHints :: proc(^Display, Window, ^SizeHints, Atom) -> _c.int ---;
    SetStandardProperties :: proc(^Display, Window, cstring, cstring, Pixmap, ^cstring, _c.int, ^SizeHints) -> _c.int ---;
    SetTextProperty :: proc(^Display, Window, ^TextProperty, Atom) ---;
    SetWMClientMachine :: proc(^Display, Window, ^TextProperty) ---;
    SetWMHints :: proc(^Display, Window, ^WMHints) -> _c.int ---;
    SetWMIconName :: proc(^Display, Window, ^TextProperty) ---;
    SetWMName :: proc(^Display, Window, ^TextProperty) ---;
    SetWMNormalHints :: proc(^Display, Window, ^SizeHints) ---;
    SetWMProperties :: proc(^Display, Window, ^TextProperty, ^TextProperty, ^cstring, _c.int, ^SizeHints, ^WMHints, ^ClassHint) ---;
    mbSetWMProperties :: proc(^Display, Window, cstring, cstring, ^cstring, _c.int, ^SizeHints, ^WMHints, ^ClassHint) ---;
    utf8SetWMProperties :: proc(^Display, Window, cstring, cstring, ^cstring, _c.int, ^SizeHints, ^WMHints, ^ClassHint) ---;
    SetWMSizeHints :: proc(^Display, Window, ^SizeHints, Atom) ---;
    SetRegion :: proc(^Display, GC, Region) -> _c.int ---;
    SetStandardColormap :: proc(^Display, Window, ^StandardColormap, Atom) ---;
    SetZoomHints :: proc(^Display, Window, ^SizeHints) -> _c.int ---;
    ShrinkRegion :: proc(Region, _c.int, _c.int) -> _c.int ---;
    StringListToTextProperty :: proc(^cstring, _c.int, ^TextProperty) -> _c.int ---;
    SubtractRegion :: proc(Region, Region, Region) -> _c.int ---;
    AllocWMHints :: proc() -> ^WMHints ---;
    AllocClassHint :: proc() -> ^ClassHint ---;
    AllocIconSize :: proc() -> ^IconSize ---;
    UnionRegion :: proc(Region, Region, Region) -> _c.int ---;
    AllocSizeHints :: proc() -> ^SizeHints ---;
    mbTextListToTextProperty :: proc(display : ^Display, list : ^cstring, count : _c.int, style : ICCEncodingStyle, text_prop_return : ^TextProperty) -> _c.int ---;
    wcTextListToTextProperty :: proc(display : ^Display, list : ^^_c.wchar_t, count : _c.int, style : ICCEncodingStyle, text_prop_return : ^TextProperty) -> _c.int ---;
    utf8TextListToTextProperty :: proc(display : ^Display, list : ^cstring, count : _c.int, style : ICCEncodingStyle, text_prop_return : ^TextProperty) -> _c.int ---;
    wcFreeStringList :: proc(list : ^^_c.wchar_t) ---;
    TextPropertyToStringList :: proc(^TextProperty, ^^cstring, ^_c.int) -> _c.int ---;
    mbTextPropertyToTextList :: proc(display : ^Display, text_prop : ^TextProperty, list_return : ^^cstring, count_return : ^_c.int) -> _c.int ---;
    wcTextPropertyToTextList :: proc(display : ^Display, text_prop : ^TextProperty, list_return : ^^^_c.wchar_t, count_return : ^_c.int) -> _c.int ---;
    utf8TextPropertyToTextList :: proc(display : ^Display, text_prop : ^TextProperty, list_return : ^^cstring, count_return : ^_c.int) -> _c.int ---;
    UnionRectWithRegion :: proc(^Rectangle, Region, Region) -> _c.int ---;
    WMGeometry :: proc(^Display, _c.int, cstring, cstring, _c.uint, ^SizeHints, ^_c.int, ^_c.int, ^_c.int, ^_c.int, ^_c.int) -> _c.int ---;
    XorRegion :: proc(Region, Region, Region) -> _c.int ---;
    GetWMHints :: proc(^Display, Window) -> ^WMHints ---;
    AllocStandardColormap :: proc() -> ^StandardColormap ---;
    DefaultString :: proc() -> cstring ---;
    GetVisualInfo :: proc(^Display, _c.long, ^VisualInfo, ^_c.int) -> ^VisualInfo ---;
}

