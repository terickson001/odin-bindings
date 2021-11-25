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
    flags       : _c.long,
    x           : int,
    y           : int,
    width       : int,
    height      : int,
    min_width   : int,
    min_height  : int,
    max_width   : int,
    max_height  : int,
    width_inc   : int,
    height_inc  : int,
    min_aspect : struct {
    x : int,
    y : int,
},
    max_aspect : struct {
    x : int,
    y : int,
},
    base_width  : int,
    base_height : int,
    win_gravity : int,
};

WMHints :: struct {
    flags         : _c.long,
    input         : int,
    initial_state : int,
    icon_pixmap   : Pixmap,
    icon_window   : Window,
    icon_x        : int,
    icon_y        : int,
    icon_mask     : Pixmap,
    window_group  : ID,
};

TextProperty :: struct {
    value    : ^_c.uchar,
    encoding : Atom,
    format   : int,
    nitems   : _c.ulong,
};

ICCEncodingStyle :: _c.int;
/*  <ENUM> :: enum { */
StringStyle        :: 0;
CompoundTextStyle  :: 1;
TextStyle          :: 2;
StdICCTextStyle    :: 3;
UTF8StringStyle    :: 4;
/* } */;

IconSize :: struct {
    min_width  : int,
    min_height : int,
    max_width  : int,
    max_height : int,
    width_inc  : int,
    height_inc : int,
};

ClassHint :: struct {
    res_name  : ^_c.char,
    res_class : ^_c.char,
};

_ComposeStatus :: struct {
    compose_ptr   : Pointer,
    chars_matched : int,
};

ComposeStatus :: struct {
    compose_ptr   : Pointer,
    chars_matched : int,
};

_Region :: struct {};

Region :: ^_Region;

VisualInfo :: struct {
    visual        : ^Visual,
    visualid      : VisualID,
    screen        : int,
    depth         : int,
    class         : int,
    red_mask      : _c.ulong,
    green_mask    : _c.ulong,
    blue_mask     : _c.ulong,
    colormap_size : int,
    bits_per_rgb  : int,
};

StandardColormap :: struct {
    colormap   : Colormap,
    red_max    : _c.ulong,
    red_mult   : _c.ulong,
    green_max  : _c.ulong,
    green_mult : _c.ulong,
    blue_max   : _c.ulong,
    blue_mult  : _c.ulong,
    base_pixel : _c.ulong,
    visualid   : VisualID,
    killid     : ID,
};

Context :: int;


/***** libX11 *****/
foreign import libX11 "system:libX11.so"

/* Procedures */
@(link_prefix="X")
foreign libX11 {
ClipBox                                                    :: proc(Region, ^Rectangle) -> int ---;
CreateRegion                                               :: proc() -> Region ---;
DeleteContext                                              :: proc(^Display, ID, Context) -> int ---;
DestroyRegion                                              :: proc(Region) -> int ---;
EmptyRegion                                                :: proc(Region) -> int ---;
EqualRegion                                                :: proc(Region, Region) -> int ---;
FindContext                                                :: proc(^Display, ID, Context, ^Pointer) -> int ---;
GetClassHint                                               :: proc(^Display, Window, ^ClassHint) -> int ---;
GetIconSizes                                               :: proc(^Display, Window, ^^IconSize, ^int) -> int ---;
AllocClassHint                                             :: proc() -> ^ClassHint ---;
AllocIconSize                                              :: proc() -> ^IconSize ---;
AllocSizeHints                                             :: proc() -> ^SizeHints ---;
AllocStandardColormap                                      :: proc() -> ^StandardColormap ---;
GetNormalHints                                             :: proc(^Display, Window, ^SizeHints) -> int ---;
GetRGBColormaps                                            :: proc(^Display, Window, ^^StandardColormap, ^int, Atom) -> int ---;
GetSizeHints                                               :: proc(^Display, Window, ^SizeHints, Atom) -> int ---;
GetStandardColormap                                        :: proc(^Display, Window, ^StandardColormap, Atom) -> int ---;
GetTextProperty                                            :: proc(^Display, Window, ^TextProperty, Atom) -> int ---;
GetWMClientMachine                                         :: proc(^Display, Window, ^TextProperty) -> int ---;
AllocWMHints                                               :: proc() -> ^WMHints ---;
DefaultString                                              :: proc() -> ^_c.char ---;
GetVisualInfo                                              :: proc(^Display, _c.long, ^VisualInfo, ^int) -> ^VisualInfo ---;
GetWMHints                                                 :: proc(^Display, Window) -> ^WMHints ---;
GetWMIconName                                              :: proc(^Display, Window, ^TextProperty) -> int ---;
GetWMName                                                  :: proc(^Display, Window, ^TextProperty) -> int ---;
GetWMNormalHints                                           :: proc(^Display, Window, ^SizeHints, ^_c.long) -> int ---;
GetWMSizeHints                                             :: proc(^Display, Window, ^SizeHints, ^_c.long, Atom) -> int ---;
GetZoomHints                                               :: proc(^Display, Window, ^SizeHints) -> int ---;
IntersectRegion                                            :: proc(Region, Region, Region) -> int ---;
ConvertCase                                                :: proc(KeySym, ^KeySym, ^KeySym) ---;
LookupString                                               :: proc(^KeyEvent, ^_c.char, int, ^KeySym, ^ComposeStatus) -> int ---;
MatchVisualInfo                                            :: proc(^Display, int, int, int, ^VisualInfo) -> int ---;
OffsetRegion                                               :: proc(Region, int, int) -> int ---;
PointInRegion                                              :: proc(Region, int, int) -> int ---;
PolygonRegion                                              :: proc(^Point, int, int) -> Region ---;
RectInRegion                                               :: proc(Region, int, int, _c.uint, _c.uint) -> int ---;
SaveContext                                                :: proc(^Display, ID, Context, ^_c.char) -> int ---;
SetClassHint                                               :: proc(^Display, Window, ^ClassHint) -> int ---;
SetIconSizes                                               :: proc(^Display, Window, ^IconSize, int) -> int ---;
SetNormalHints                                             :: proc(^Display, Window, ^SizeHints) -> int ---;
SetRGBColormaps                                            :: proc(^Display, Window, ^StandardColormap, int, Atom) ---;
SetSizeHints                                               :: proc(^Display, Window, ^SizeHints, Atom) -> int ---;
SetStandardProperties                                      :: proc(^Display, Window, ^_c.char, ^_c.char, Pixmap, ^^_c.char, int, ^SizeHints) -> int ---;
SetTextProperty                                            :: proc(^Display, Window, ^TextProperty, Atom) ---;
SetWMClientMachine                                         :: proc(^Display, Window, ^TextProperty) ---;
SetWMHints                                                 :: proc(^Display, Window, ^WMHints) -> int ---;
SetWMIconName                                              :: proc(^Display, Window, ^TextProperty) ---;
SetWMName                                                  :: proc(^Display, Window, ^TextProperty) ---;
SetWMNormalHints                                           :: proc(^Display, Window, ^SizeHints) ---;
SetWMProperties                                            :: proc(^Display, Window, ^TextProperty, ^TextProperty, ^^_c.char, int, ^SizeHints, ^WMHints, ^ClassHint) ---;
mbSetWMProperties                                          :: proc(^Display, Window, ^_c.char, ^_c.char, ^^_c.char, int, ^SizeHints, ^WMHints, ^ClassHint) ---;
utf8SetWMProperties                                        :: proc(^Display, Window, ^_c.char, ^_c.char, ^^_c.char, int, ^SizeHints, ^WMHints, ^ClassHint) ---;
SetWMSizeHints                                             :: proc(^Display, Window, ^SizeHints, Atom) ---;
SetRegion                                                  :: proc(^Display, GC, Region) -> int ---;
SetStandardColormap                                        :: proc(^Display, Window, ^StandardColormap, Atom) ---;
SetZoomHints                                               :: proc(^Display, Window, ^SizeHints) -> int ---;
ShrinkRegion                                               :: proc(Region, int, int) -> int ---;
StringListToTextProperty                                   :: proc(^^_c.char, int, ^TextProperty) -> int ---;
SubtractRegion                                             :: proc(Region, Region, Region) -> int ---;
mbTextListToTextProperty                                   :: proc(display : ^Display, list : ^^_c.char, count : int, style : ICCEncodingStyle, text_prop_return : ^TextProperty) -> int ---;
wcTextListToTextProperty                                   :: proc(display : ^Display, list : ^^_c.wchar_t, count : int, style : ICCEncodingStyle, text_prop_return : ^TextProperty) -> int ---;
utf8TextListToTextProperty                                 :: proc(display : ^Display, list : ^^_c.char, count : int, style : ICCEncodingStyle, text_prop_return : ^TextProperty) -> int ---;
wcFreeStringList                                           :: proc(list : ^^_c.wchar_t) ---;
TextPropertyToStringList                                   :: proc(^TextProperty, ^^^_c.char, ^int) -> int ---;
mbTextPropertyToTextList                                   :: proc(display : ^Display, text_prop : ^TextProperty, list_return : ^^^_c.char, count_return : ^int) -> int ---;
wcTextPropertyToTextList                                   :: proc(display : ^Display, text_prop : ^TextProperty, list_return : ^^^_c.wchar_t, count_return : ^int) -> int ---;
utf8TextPropertyToTextList                                 :: proc(display : ^Display, text_prop : ^TextProperty, list_return : ^^^_c.char, count_return : ^int) -> int ---;
UnionRectWithRegion                                        :: proc(^Rectangle, Region, Region) -> int ---;
UnionRegion                                                :: proc(Region, Region, Region) -> int ---;
WMGeometry                                                 :: proc(^Display, int, ^_c.char, ^_c.char, _c.uint, ^SizeHints, ^int, ^int, ^int, ^int, ^int) -> int ---;
XorRegion                                                  :: proc(Region, Region, Region) -> int ---;
}

