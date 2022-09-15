package xcb

import _c "core:c"

/* Macros */

KEY_PRESS :: 2;
KEY_RELEASE :: 3;
BUTTON_PRESS :: 4;
BUTTON_RELEASE :: 5;
MOTION_NOTIFY :: 6;
ENTER_NOTIFY :: 7;
LEAVE_NOTIFY :: 8;
FOCUS_IN :: 9;
FOCUS_OUT :: 10;
KEYMAP_NOTIFY :: 11;
EXPOSE :: 12;
GRAPHICS_EXPOSURE :: 13;
NO_EXPOSURE :: 14;
VISIBILITY_NOTIFY :: 15;
CREATE_NOTIFY :: 16;
DESTROY_NOTIFY :: 17;
UNMAP_NOTIFY :: 18;
MAP_NOTIFY :: 19;
MAP_REQUEST :: 20;
REPARENT_NOTIFY :: 21;
CONFIGURE_NOTIFY :: 22;
CONFIGURE_REQUEST :: 23;
GRAVITY_NOTIFY :: 24;
RESIZE_REQUEST :: 25;
CIRCULATE_NOTIFY :: 26;
CIRCULATE_REQUEST :: 27;
PROPERTY_NOTIFY :: 28;
SELECTION_CLEAR :: 29;
SELECTION_REQUEST :: 30;
SELECTION_NOTIFY :: 31;
COLORMAP_NOTIFY :: 32;
CLIENT_MESSAGE :: 33;
MAPPING_NOTIFY :: 34;
GE_GENERIC :: 35;
REQUEST :: 1;
VALUE :: 2;
WINDOW :: 3;
PIXMAP :: 4;
ATOM :: 5;
CURSOR :: 6;
FONT :: 7;
MATCH :: 8;
DRAWABLE :: 9;
ACCESS :: 10;
ALLOC :: 11;
COLORMAP :: 12;
G_CONTEXT :: 13;
ID_CHOICE :: 14;
NAME :: 15;
LENGTH :: 16;
IMPLEMENTATION :: 17;
CREATE_WINDOW :: 1;
CHANGE_WINDOW_ATTRIBUTES :: 2;
GET_WINDOW_ATTRIBUTES :: 3;
DESTROY_WINDOW :: 4;
DESTROY_SUBWINDOWS :: 5;
CHANGE_SAVE_SET :: 6;
REPARENT_WINDOW :: 7;
MAP_WINDOW :: 8;
MAP_SUBWINDOWS :: 9;
UNMAP_WINDOW :: 10;
UNMAP_SUBWINDOWS :: 11;
CONFIGURE_WINDOW :: 12;
CIRCULATE_WINDOW :: 13;
GET_GEOMETRY :: 14;
QUERY_TREE :: 15;
NO_OPERATION :: 127;
INTERN_ATOM :: 16;
GET_ATOM_NAME :: 17;
CHANGE_PROPERTY :: 18;
DELETE_PROPERTY :: 19;
GET_PROPERTY :: 20;
LIST_PROPERTIES :: 21;
SET_SELECTION_OWNER :: 22;
GET_SELECTION_OWNER :: 23;
CONVERT_SELECTION :: 24;
SEND_EVENT :: 25;
GRAB_POINTER :: 26;
UNGRAB_POINTER :: 27;
GRAB_BUTTON :: 28;
UNGRAB_BUTTON :: 29;
CHANGE_ACTIVE_POINTER_GRAB :: 30;
GRAB_KEYBOARD :: 31;
UNGRAB_KEYBOARD :: 32;
GRAB_KEY :: 33;
UNGRAB_KEY :: 34;
ALLOW_EVENTS :: 35;
GRAB_SERVER :: 36;
UNGRAB_SERVER :: 37;
QUERY_POINTER :: 38;
GET_MOTION_EVENTS :: 39;
TRANSLATE_COORDINATES :: 40;
WARP_POINTER :: 41;
SET_INPUT_FOCUS :: 42;
GET_INPUT_FOCUS :: 43;
QUERY_KEYMAP :: 44;
OPEN_FONT :: 45;
CLOSE_FONT :: 46;
QUERY_FONT :: 47;
QUERY_TEXT_EXTENTS :: 48;
LIST_FONTS :: 49;
LIST_FONTS_WITH_INFO :: 50;
SET_FONT_PATH :: 51;
GET_FONT_PATH :: 52;
CREATE_PIXMAP :: 53;
FREE_PIXMAP :: 54;
CREATE_GC :: 55;
CHANGE_GC :: 56;
COPY_GC :: 57;
SET_DASHES :: 58;
SET_CLIP_RECTANGLES :: 59;
FREE_GC :: 60;
CLEAR_AREA :: 61;
COPY_AREA :: 62;
COPY_PLANE :: 63;
POLY_POINT :: 64;
POLY_LINE :: 65;
POLY_SEGMENT :: 66;
POLY_RECTANGLE :: 67;
POLY_ARC :: 68;
FILL_POLY :: 69;
POLY_FILL_RECTANGLE :: 70;
POLY_FILL_ARC :: 71;
PUT_IMAGE :: 72;
GET_IMAGE :: 73;
POLY_TEXT_8 :: 74;
POLY_TEXT_16 :: 75;
IMAGE_TEXT_8 :: 76;
IMAGE_TEXT_16 :: 77;
CREATE_COLORMAP :: 78;
FREE_COLORMAP :: 79;
COPY_COLORMAP_AND_FREE :: 80;
INSTALL_COLORMAP :: 81;
UNINSTALL_COLORMAP :: 82;
LIST_INSTALLED_COLORMAPS :: 83;
ALLOC_COLOR :: 84;
ALLOC_NAMED_COLOR :: 85;
ALLOC_COLOR_CELLS :: 86;
ALLOC_COLOR_PLANES :: 87;
FREE_COLORS :: 88;
STORE_COLORS :: 89;
STORE_NAMED_COLOR :: 90;
QUERY_COLORS :: 91;
LOOKUP_COLOR :: 92;
CREATE_CURSOR :: 93;
CREATE_GLYPH_CURSOR :: 94;
FREE_CURSOR :: 95;
RECOLOR_CURSOR :: 96;
QUERY_BEST_SIZE :: 97;
QUERY_EXTENSION :: 98;
LIST_EXTENSIONS :: 99;
CHANGE_KEYBOARD_MAPPING :: 100;
GET_KEYBOARD_MAPPING :: 101;
CHANGE_KEYBOARD_CONTROL :: 102;
GET_KEYBOARD_CONTROL :: 103;
BELL :: 104;
CHANGE_POINTER_CONTROL :: 105;
GET_POINTER_CONTROL :: 106;
SET_SCREEN_SAVER :: 107;
GET_SCREEN_SAVER :: 108;
CHANGE_HOSTS :: 109;
LIST_HOSTS :: 110;
SET_ACCESS_CONTROL :: 111;
SET_CLOSE_DOWN_MODE :: 112;
KILL_CLIENT :: 113;
ROTATE_PROPERTIES :: 114;
FORCE_SCREEN_SAVER :: 115;
SET_POINTER_MAPPING :: 116;
GET_POINTER_MAPPING :: 117;
SET_MODIFIER_MAPPING :: 118;
GET_MODIFIER_MAPPING :: 119;
char2b_t :: struct {
    byte1 : u8,
    byte2 : u8,
};

char2b_iterator_t :: struct {
     data : ^char2b_t,
      rem : _c.int,
    index : _c.int,
};

window_t :: u32;

window_iterator_t :: struct {
     data : ^window_t,
      rem : _c.int,
    index : _c.int,
};

pixmap_t :: u32;

pixmap_iterator_t :: struct {
     data : ^pixmap_t,
      rem : _c.int,
    index : _c.int,
};

cursor_t :: u32;

cursor_iterator_t :: struct {
     data : ^cursor_t,
      rem : _c.int,
    index : _c.int,
};

font_t :: u32;

font_iterator_t :: struct {
     data : ^font_t,
      rem : _c.int,
    index : _c.int,
};

gcontext_t :: u32;

gcontext_iterator_t :: struct {
     data : ^gcontext_t,
      rem : _c.int,
    index : _c.int,
};

colormap_t :: u32;

colormap_iterator_t :: struct {
     data : ^colormap_t,
      rem : _c.int,
    index : _c.int,
};

atom_t :: u32;

atom_iterator_t :: struct {
     data : ^atom_t,
      rem : _c.int,
    index : _c.int,
};

drawable_t :: u32;

drawable_iterator_t :: struct {
     data : ^drawable_t,
      rem : _c.int,
    index : _c.int,
};

fontable_t :: u32;

fontable_iterator_t :: struct {
     data : ^fontable_t,
      rem : _c.int,
    index : _c.int,
};

bool32_t :: u32;

bool32_iterator_t :: struct {
     data : ^bool32_t,
      rem : _c.int,
    index : _c.int,
};

visualid_t :: u32;

visualid_iterator_t :: struct {
     data : ^visualid_t,
      rem : _c.int,
    index : _c.int,
};

timestamp_t :: u32;

timestamp_iterator_t :: struct {
     data : ^timestamp_t,
      rem : _c.int,
    index : _c.int,
};

keysym_t :: u32;

keysym_iterator_t :: struct {
     data : ^keysym_t,
      rem : _c.int,
    index : _c.int,
};

keycode_t :: u8;

keycode_iterator_t :: struct {
     data : ^keycode_t,
      rem : _c.int,
    index : _c.int,
};

keycode32_t :: u32;

keycode32_iterator_t :: struct {
     data : ^keycode32_t,
      rem : _c.int,
    index : _c.int,
};

button_t :: u8;

button_iterator_t :: struct {
     data : ^button_t,
      rem : _c.int,
    index : _c.int,
};

point_t :: struct {
    x : i16,
    y : i16,
};

point_iterator_t :: struct {
     data : ^point_t,
      rem : _c.int,
    index : _c.int,
};

rectangle_t :: struct {
         x : i16,
         y : i16,
     width : u16,
    height : u16,
};

rectangle_iterator_t :: struct {
     data : ^rectangle_t,
      rem : _c.int,
    index : _c.int,
};

arc_t :: struct {
         x : i16,
         y : i16,
     width : u16,
    height : u16,
    angle1 : i16,
    angle2 : i16,
};

arc_iterator_t :: struct {
     data : ^arc_t,
      rem : _c.int,
    index : _c.int,
};

format_t :: struct {
             depth : u8,
    bits_per_pixel : u8,
      scanline_pad : u8,
              pad0 : [5]u8,
};

format_iterator_t :: struct {
     data : ^format_t,
      rem : _c.int,
    index : _c.int,
};

visual_class_t :: _c.int;
/* enum { */
     VISUAL_CLASS_STATIC_GRAY :: 0;
      VISUAL_CLASS_GRAY_SCALE :: 1;
    VISUAL_CLASS_STATIC_COLOR :: 2;
    VISUAL_CLASS_PSEUDO_COLOR :: 3;
      VISUAL_CLASS_TRUE_COLOR :: 4;
    VISUAL_CLASS_DIRECT_COLOR :: 5;
/* } */;

visualtype_t :: struct {
             visual_id : visualid_t,
                _class : u8,
    bits_per_rgb_value : u8,
      colormap_entries : u16,
              red_mask : u32,
            green_mask : u32,
             blue_mask : u32,
                  pad0 : [4]u8,
};

visualtype_iterator_t :: struct {
     data : ^visualtype_t,
      rem : _c.int,
    index : _c.int,
};

depth_t :: struct {
          depth : u8,
           pad0 : u8,
    visuals_len : u16,
           pad1 : [4]u8,
};

depth_iterator_t :: struct {
     data : ^depth_t,
      rem : _c.int,
    index : _c.int,
};

event_mask_t :: _c.int;
/* enum { */
                 EVENT_MASK_NO_EVENT :: 0;
                EVENT_MASK_KEY_PRESS :: 1;
              EVENT_MASK_KEY_RELEASE :: 2;
             EVENT_MASK_BUTTON_PRESS :: 4;
           EVENT_MASK_BUTTON_RELEASE :: 8;
             EVENT_MASK_ENTER_WINDOW :: 16;
             EVENT_MASK_LEAVE_WINDOW :: 32;
           EVENT_MASK_POINTER_MOTION :: 64;
      EVENT_MASK_POINTER_MOTION_HINT :: 128;
          EVENT_MASK_BUTTON_1_MOTION :: 256;
          EVENT_MASK_BUTTON_2_MOTION :: 512;
          EVENT_MASK_BUTTON_3_MOTION :: 1024;
          EVENT_MASK_BUTTON_4_MOTION :: 2048;
          EVENT_MASK_BUTTON_5_MOTION :: 4096;
            EVENT_MASK_BUTTON_MOTION :: 8192;
             EVENT_MASK_KEYMAP_STATE :: 16384;
                 EVENT_MASK_EXPOSURE :: 32768;
        EVENT_MASK_VISIBILITY_CHANGE :: 65536;
         EVENT_MASK_STRUCTURE_NOTIFY :: 131072;
          EVENT_MASK_RESIZE_REDIRECT :: 262144;
      EVENT_MASK_SUBSTRUCTURE_NOTIFY :: 524288;
    EVENT_MASK_SUBSTRUCTURE_REDIRECT :: 1048576;
             EVENT_MASK_FOCUS_CHANGE :: 2097152;
          EVENT_MASK_PROPERTY_CHANGE :: 4194304;
         EVENT_MASK_COLOR_MAP_CHANGE :: 8388608;
        EVENT_MASK_OWNER_GRAB_BUTTON :: 16777216;
/* } */;

backing_store_t :: _c.int;
/* enum { */
     BACKING_STORE_NOT_USEFUL :: 0;
    BACKING_STORE_WHEN_MAPPED :: 1;
         BACKING_STORE_ALWAYS :: 2;
/* } */;

screen_t :: struct {
                     root : window_t,
         default_colormap : colormap_t,
              white_pixel : u32,
              black_pixel : u32,
      current_input_masks : u32,
          width_in_pixels : u16,
         height_in_pixels : u16,
     width_in_millimeters : u16,
    height_in_millimeters : u16,
       min_installed_maps : u16,
       max_installed_maps : u16,
              root_visual : visualid_t,
           backing_stores : u8,
              save_unders : u8,
               root_depth : u8,
       allowed_depths_len : u8,
};

screen_iterator_t :: struct {
     data : ^screen_t,
      rem : _c.int,
    index : _c.int,
};

setup_request_t :: struct {
                         byte_order : u8,
                               pad0 : u8,
             protocol_major_version : u16,
             protocol_minor_version : u16,
    authorization_protocol_name_len : u16,
    authorization_protocol_data_len : u16,
                               pad1 : [2]u8,
};

setup_request_iterator_t :: struct {
     data : ^setup_request_t,
      rem : _c.int,
    index : _c.int,
};

setup_failed_t :: struct {
                    status : u8,
                reason_len : u8,
    protocol_major_version : u16,
    protocol_minor_version : u16,
                    length : u16,
};

setup_failed_iterator_t :: struct {
     data : ^setup_failed_t,
      rem : _c.int,
    index : _c.int,
};

setup_authenticate_t :: struct {
    status : u8,
      pad0 : [5]u8,
    length : u16,
};

setup_authenticate_iterator_t :: struct {
     data : ^setup_authenticate_t,
      rem : _c.int,
    index : _c.int,
};

image_order_t :: _c.int;
/* enum { */
    IMAGE_ORDER_LSB_FIRST :: 0;
    IMAGE_ORDER_MSB_FIRST :: 1;
/* } */;

setup_t :: struct {
                         status : u8,
                           pad0 : u8,
         protocol_major_version : u16,
         protocol_minor_version : u16,
                         length : u16,
                 release_number : u32,
               resource_id_base : u32,
               resource_id_mask : u32,
             motion_buffer_size : u32,
                     vendor_len : u16,
         maximum_request_length : u16,
                      roots_len : u8,
             pixmap_formats_len : u8,
               image_byte_order : u8,
        bitmap_format_bit_order : u8,
    bitmap_format_scanline_unit : u8,
     bitmap_format_scanline_pad : u8,
                    min_keycode : keycode_t,
                    max_keycode : keycode_t,
                           pad1 : [4]u8,
};

setup_iterator_t :: struct {
     data : ^setup_t,
      rem : _c.int,
    index : _c.int,
};

mod_mask_t :: _c.int;
/* enum { */
      MOD_MASK_SHIFT :: 1;
       MOD_MASK_LOCK :: 2;
    MOD_MASK_CONTROL :: 4;
          MOD_MASK_1 :: 8;
          MOD_MASK_2 :: 16;
          MOD_MASK_3 :: 32;
          MOD_MASK_4 :: 64;
          MOD_MASK_5 :: 128;
        MOD_MASK_ANY :: 32768;
/* } */;

key_but_mask_t :: _c.int;
/* enum { */
       KEY_BUT_MASK_SHIFT :: 1;
        KEY_BUT_MASK_LOCK :: 2;
     KEY_BUT_MASK_CONTROL :: 4;
       KEY_BUT_MASK_MOD_1 :: 8;
       KEY_BUT_MASK_MOD_2 :: 16;
       KEY_BUT_MASK_MOD_3 :: 32;
       KEY_BUT_MASK_MOD_4 :: 64;
       KEY_BUT_MASK_MOD_5 :: 128;
    KEY_BUT_MASK_BUTTON_1 :: 256;
    KEY_BUT_MASK_BUTTON_2 :: 512;
    KEY_BUT_MASK_BUTTON_3 :: 1024;
    KEY_BUT_MASK_BUTTON_4 :: 2048;
    KEY_BUT_MASK_BUTTON_5 :: 4096;
/* } */;

window_enum_t :: _c.int;
/* enum { */
    WINDOW_NONE :: 0;
/* } */;

button_mask_t :: _c.int;
/* enum { */
      BUTTON_MASK_1 :: 256;
      BUTTON_MASK_2 :: 512;
      BUTTON_MASK_3 :: 1024;
      BUTTON_MASK_4 :: 2048;
      BUTTON_MASK_5 :: 4096;
    BUTTON_MASK_ANY :: 32768;
/* } */;

motion_t :: _c.int;
/* enum { */
    MOTION_NORMAL :: 0;
      MOTION_HINT :: 1;
/* } */;

notify_detail_t :: _c.int;
/* enum { */
             NOTIFY_DETAIL_ANCESTOR :: 0;
              NOTIFY_DETAIL_VIRTUAL :: 1;
             NOTIFY_DETAIL_INFERIOR :: 2;
            NOTIFY_DETAIL_NONLINEAR :: 3;
    NOTIFY_DETAIL_NONLINEAR_VIRTUAL :: 4;
              NOTIFY_DETAIL_POINTER :: 5;
         NOTIFY_DETAIL_POINTER_ROOT :: 6;
                 NOTIFY_DETAIL_NONE :: 7;
/* } */;

notify_mode_t :: _c.int;
/* enum { */
           NOTIFY_MODE_NORMAL :: 0;
             NOTIFY_MODE_GRAB :: 1;
           NOTIFY_MODE_UNGRAB :: 2;
    NOTIFY_MODE_WHILE_GRABBED :: 3;
/* } */;

visibility_t :: _c.int;
/* enum { */
            VISIBILITY_UNOBSCURED :: 0;
    VISIBILITY_PARTIALLY_OBSCURED :: 1;
        VISIBILITY_FULLY_OBSCURED :: 2;
/* } */;

place_t :: _c.int;
/* enum { */
       PLACE_ON_TOP :: 0;
    PLACE_ON_BOTTOM :: 1;
/* } */;

property_t :: _c.int;
/* enum { */
    PROPERTY_NEW_VALUE :: 0;
       PROPERTY_DELETE :: 1;
/* } */;

xcb_time_t :: _c.int;
/* enum { */
    TIME_CURRENT_TIME :: 0;
/* } */;

atom_enum_t :: _c.int;
/* enum { */
                   ATOM_NONE :: 0;
                    ATOM_ANY :: 0;
                ATOM_PRIMARY :: 1;
              ATOM_SECONDARY :: 2;
                    ATOM_ARC :: 3;
                   ATOM_ATOM :: 4;
                 ATOM_BITMAP :: 5;
               ATOM_CARDINAL :: 6;
               ATOM_COLORMAP :: 7;
                 ATOM_CURSOR :: 8;
            ATOM_CUT_BUFFER0 :: 9;
            ATOM_CUT_BUFFER1 :: 10;
            ATOM_CUT_BUFFER2 :: 11;
            ATOM_CUT_BUFFER3 :: 12;
            ATOM_CUT_BUFFER4 :: 13;
            ATOM_CUT_BUFFER5 :: 14;
            ATOM_CUT_BUFFER6 :: 15;
            ATOM_CUT_BUFFER7 :: 16;
               ATOM_DRAWABLE :: 17;
                   ATOM_FONT :: 18;
                ATOM_INTEGER :: 19;
                 ATOM_PIXMAP :: 20;
                  ATOM_POINT :: 21;
              ATOM_RECTANGLE :: 22;
       ATOM_RESOURCE_MANAGER :: 23;
          ATOM_RGB_COLOR_MAP :: 24;
           ATOM_RGB_BEST_MAP :: 25;
           ATOM_RGB_BLUE_MAP :: 26;
        ATOM_RGB_DEFAULT_MAP :: 27;
           ATOM_RGB_GRAY_MAP :: 28;
          ATOM_RGB_GREEN_MAP :: 29;
            ATOM_RGB_RED_MAP :: 30;
                 ATOM_STRING :: 31;
               ATOM_VISUALID :: 32;
                 ATOM_WINDOW :: 33;
             ATOM_WM_COMMAND :: 34;
               ATOM_WM_HINTS :: 35;
      ATOM_WM_CLIENT_MACHINE :: 36;
           ATOM_WM_ICON_NAME :: 37;
           ATOM_WM_ICON_SIZE :: 38;
                ATOM_WM_NAME :: 39;
        ATOM_WM_NORMAL_HINTS :: 40;
          ATOM_WM_SIZE_HINTS :: 41;
          ATOM_WM_ZOOM_HINTS :: 42;
              ATOM_MIN_SPACE :: 43;
             ATOM_NORM_SPACE :: 44;
              ATOM_MAX_SPACE :: 45;
              ATOM_END_SPACE :: 46;
          ATOM_SUPERSCRIPT_X :: 47;
          ATOM_SUPERSCRIPT_Y :: 48;
            ATOM_SUBSCRIPT_X :: 49;
            ATOM_SUBSCRIPT_Y :: 50;
     ATOM_UNDERLINE_POSITION :: 51;
    ATOM_UNDERLINE_THICKNESS :: 52;
       ATOM_STRIKEOUT_ASCENT :: 53;
      ATOM_STRIKEOUT_DESCENT :: 54;
           ATOM_ITALIC_ANGLE :: 55;
               ATOM_X_HEIGHT :: 56;
             ATOM_QUAD_WIDTH :: 57;
                 ATOM_WEIGHT :: 58;
             ATOM_POINT_SIZE :: 59;
             ATOM_RESOLUTION :: 60;
              ATOM_COPYRIGHT :: 61;
                 ATOM_NOTICE :: 62;
              ATOM_FONT_NAME :: 63;
            ATOM_FAMILY_NAME :: 64;
              ATOM_FULL_NAME :: 65;
             ATOM_CAP_HEIGHT :: 66;
               ATOM_WM_CLASS :: 67;
       ATOM_WM_TRANSIENT_FOR :: 68;
/* } */;

colormap_state_t :: _c.int;
/* enum { */
    COLORMAP_STATE_UNINSTALLED :: 0;
      COLORMAP_STATE_INSTALLED :: 1;
/* } */;

colormap_enum_t :: _c.int;
/* enum { */
    COLORMAP_NONE :: 0;
/* } */;

client_message_data_t :: struct #raw_union {
     data8 : [20]u8,
    data16 : [10]u16,
    data32 : [5]u32,
};

client_message_data_iterator_t :: struct {
     data : ^client_message_data_t,
      rem : _c.int,
    index : _c.int,
};

mapping_t :: _c.int;
/* enum { */
    MAPPING_MODIFIER :: 0;
    MAPPING_KEYBOARD :: 1;
     MAPPING_POINTER :: 2;
/* } */;

window_class_t :: _c.int;
/* enum { */
    WINDOW_CLASS_COPY_FROM_PARENT :: 0;
        WINDOW_CLASS_INPUT_OUTPUT :: 1;
          WINDOW_CLASS_INPUT_ONLY :: 2;
/* } */;

cw_t :: _c.int;
/* enum { */
          CW_BACK_PIXMAP :: 1;
           CW_BACK_PIXEL :: 2;
        CW_BORDER_PIXMAP :: 4;
         CW_BORDER_PIXEL :: 8;
          CW_BIT_GRAVITY :: 16;
          CW_WIN_GRAVITY :: 32;
        CW_BACKING_STORE :: 64;
       CW_BACKING_PLANES :: 128;
        CW_BACKING_PIXEL :: 256;
    CW_OVERRIDE_REDIRECT :: 512;
           CW_SAVE_UNDER :: 1024;
           CW_EVENT_MASK :: 2048;
       CW_DONT_PROPAGATE :: 4096;
             CW_COLORMAP :: 8192;
               CW_CURSOR :: 16384;
/* } */;

back_pixmap_t :: _c.int;
/* enum { */
               BACK_PIXMAP_NONE :: 0;
    BACK_PIXMAP_PARENT_RELATIVE :: 1;
/* } */;

gravity_t :: _c.int;
/* enum { */
    GRAVITY_BIT_FORGET :: 0;
     GRAVITY_WIN_UNMAP :: 0;
    GRAVITY_NORTH_WEST :: 1;
         GRAVITY_NORTH :: 2;
    GRAVITY_NORTH_EAST :: 3;
          GRAVITY_WEST :: 4;
        GRAVITY_CENTER :: 5;
          GRAVITY_EAST :: 6;
    GRAVITY_SOUTH_WEST :: 7;
         GRAVITY_SOUTH :: 8;
    GRAVITY_SOUTH_EAST :: 9;
        GRAVITY_STATIC :: 10;
/* } */;

create_window_value_list_t :: struct {
        background_pixmap : pixmap_t,
         background_pixel : u32,
            border_pixmap : pixmap_t,
             border_pixel : u32,
              bit_gravity : u32,
              win_gravity : u32,
            backing_store : u32,
           backing_planes : u32,
            backing_pixel : u32,
        override_redirect : bool32_t,
               save_under : bool32_t,
               event_mask : u32,
    do_not_propogate_mask : u32,
                 colormap : colormap_t,
                   cursor : cursor_t,
};

create_window_request_t :: struct {
    major_opcode : u8,
           depth : u8,
          length : u16,
             wid : window_t,
          parent : window_t,
               x : i16,
               y : i16,
           width : u16,
          height : u16,
    border_width : u16,
          _class : u16,
          visual : visualid_t,
      value_mask : u32,
};

change_window_attributes_value_list_t :: struct {
        background_pixmap : pixmap_t,
         background_pixel : u32,
            border_pixmap : pixmap_t,
             border_pixel : u32,
              bit_gravity : u32,
              win_gravity : u32,
            backing_store : u32,
           backing_planes : u32,
            backing_pixel : u32,
        override_redirect : bool32_t,
               save_under : bool32_t,
               event_mask : u32,
    do_not_propogate_mask : u32,
                 colormap : colormap_t,
                   cursor : cursor_t,
};

change_window_attributes_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
          window : window_t,
      value_mask : u32,
};

map_state_t :: _c.int;
/* enum { */
      MAP_STATE_UNMAPPED :: 0;
    MAP_STATE_UNVIEWABLE :: 1;
      MAP_STATE_VIEWABLE :: 2;
/* } */;

get_window_attributes_cookie_t :: struct {
    sequence : _c.uint,
};

get_window_attributes_reply_t :: struct {
            response_type : u8,
            backing_store : u8,
                 sequence : u16,
                   length : u32,
                   visual : visualid_t,
                   _class : u16,
              bit_gravity : u8,
              win_gravity : u8,
           backing_planes : u32,
            backing_pixel : u32,
               save_under : u8,
         map_is_installed : u8,
                map_state : u8,
        override_redirect : u8,
                 colormap : colormap_t,
          all_event_masks : u32,
          your_event_mask : u32,
    do_not_propagate_mask : u16,
                     pad0 : [2]u8,
};

set_mode_t :: _c.int;
/* enum { */
    SET_MODE_INSERT :: 0;
    SET_MODE_DELETE :: 1;
/* } */;

config_window_t :: _c.int;
/* enum { */
               CONFIG_WINDOW_X :: 1;
               CONFIG_WINDOW_Y :: 2;
           CONFIG_WINDOW_WIDTH :: 4;
          CONFIG_WINDOW_HEIGHT :: 8;
    CONFIG_WINDOW_BORDER_WIDTH :: 16;
         CONFIG_WINDOW_SIBLING :: 32;
      CONFIG_WINDOW_STACK_MODE :: 64;
/* } */;

stack_mode_t :: _c.int;
/* enum { */
        STACK_MODE_ABOVE :: 0;
        STACK_MODE_BELOW :: 1;
       STACK_MODE_TOP_IF :: 2;
    STACK_MODE_BOTTOM_IF :: 3;
     STACK_MODE_OPPOSITE :: 4;
/* } */;

configure_window_value_list_t :: struct {
               x : i32,
               y : i32,
           width : u32,
          height : u32,
    border_width : u32,
         sibling : window_t,
      stack_mode : u32,
};

configure_window_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
          window : window_t,
      value_mask : u16,
            pad1 : [2]u8,
};

circulate_t :: _c.int;
/* enum { */
     CIRCULATE_RAISE_LOWEST :: 0;
    CIRCULATE_LOWER_HIGHEST :: 1;
/* } */;

get_geometry_cookie_t :: struct {
    sequence : _c.uint,
};

get_geometry_reply_t :: struct {
    response_type : u8,
            depth : u8,
         sequence : u16,
           length : u32,
             root : window_t,
                x : i16,
                y : i16,
            width : u16,
           height : u16,
     border_width : u16,
             pad0 : [2]u8,
};

query_tree_cookie_t :: struct {
    sequence : _c.uint,
};

query_tree_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
             root : window_t,
           parent : window_t,
     children_len : u16,
             pad1 : [14]u8,
};

intern_atom_cookie_t :: struct {
    sequence : _c.uint,
};

fontprop_iterator_t :: struct {
     data : ^fontprop_t,
      rem : _c.int,
    index : _c.int,
};

charinfo_t :: struct {
     left_side_bearing : i16,
    right_side_bearing : i16,
       character_width : i16,
                ascent : i16,
               descent : i16,
            attributes : u16,
};

charinfo_iterator_t :: struct {
     data : ^charinfo_t,
      rem : _c.int,
    index : _c.int,
};

query_font_cookie_t :: struct {
    sequence : _c.uint,
};

query_font_reply_t :: struct {
        response_type : u8,
                 pad0 : u8,
             sequence : u16,
               length : u32,
           min_bounds : charinfo_t,
                 pad1 : [4]u8,
           max_bounds : charinfo_t,
                 pad2 : [4]u8,
    min_char_or_byte2 : u16,
    max_char_or_byte2 : u16,
         default_char : u16,
       properties_len : u16,
       draw_direction : u8,
            min_byte1 : u8,
            max_byte1 : u8,
      all_chars_exist : u8,
          font_ascent : i16,
         font_descent : i16,
       char_infos_len : u32,
};

query_text_extents_cookie_t :: struct {
    sequence : _c.uint,
};

query_text_extents_reply_t :: struct {
      response_type : u8,
     draw_direction : u8,
           sequence : u16,
             length : u32,
        font_ascent : i16,
       font_descent : i16,
     overall_ascent : i16,
    overall_descent : i16,
      overall_width : i32,
       overall_left : i32,
      overall_right : i32,
};

str_t :: struct {
    name_len : u8,
};

str_iterator_t :: struct {
     data : ^str_t,
      rem : _c.int,
    index : _c.int,
};

list_fonts_cookie_t :: struct {
    sequence : _c.uint,
};

list_fonts_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
        names_len : u16,
             pad1 : [22]u8,
};

list_fonts_with_info_cookie_t :: struct {
    sequence : _c.uint,
};

list_fonts_with_info_reply_t :: struct {
        response_type : u8,
             name_len : u8,
             sequence : u16,
               length : u32,
           min_bounds : charinfo_t,
                 pad0 : [4]u8,
           max_bounds : charinfo_t,
                 pad1 : [4]u8,
    min_char_or_byte2 : u16,
    max_char_or_byte2 : u16,
         default_char : u16,
       properties_len : u16,
       draw_direction : u8,
            min_byte1 : u8,
            max_byte1 : u8,
      all_chars_exist : u8,
          font_ascent : i16,
         font_descent : i16,
         replies_hint : u32,
};

set_font_path_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        font_qty : u16,
            pad1 : [2]u8,
};

get_font_path_cookie_t :: struct {
    sequence : _c.uint,
};

get_font_path_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
         path_len : u16,
             pad1 : [22]u8,
};

gc_t :: _c.int;
/* enum { */
                 GC_FUNCTION :: 1;
               GC_PLANE_MASK :: 2;
               GC_FOREGROUND :: 4;
               GC_BACKGROUND :: 8;
               GC_LINE_WIDTH :: 16;
               GC_LINE_STYLE :: 32;
                GC_CAP_STYLE :: 64;
               GC_JOIN_STYLE :: 128;
               GC_FILL_STYLE :: 256;
                GC_FILL_RULE :: 512;
                     GC_TILE :: 1024;
                  GC_STIPPLE :: 2048;
    GC_TILE_STIPPLE_ORIGIN_X :: 4096;
    GC_TILE_STIPPLE_ORIGIN_Y :: 8192;
                     GC_FONT :: 16384;
           GC_SUBWINDOW_MODE :: 32768;
       GC_GRAPHICS_EXPOSURES :: 65536;
            GC_CLIP_ORIGIN_X :: 131072;
            GC_CLIP_ORIGIN_Y :: 262144;
                GC_CLIP_MASK :: 524288;
              GC_DASH_OFFSET :: 1048576;
                GC_DASH_LIST :: 2097152;
                 GC_ARC_MODE :: 4194304;
/* } */;

gx_t :: _c.int;
/* enum { */
            GX_CLEAR :: 0;
              GX_AND :: 1;
      GX_AND_REVERSE :: 2;
             GX_COPY :: 3;
     GX_AND_INVERTED :: 4;
             GX_NOOP :: 5;
              GX_XOR :: 6;
               GX_OR :: 7;
              GX_NOR :: 8;
            GX_EQUIV :: 9;
           GX_INVERT :: 10;
       GX_OR_REVERSE :: 11;
    GX_COPY_INVERTED :: 12;
      GX_OR_INVERTED :: 13;
             GX_NAND :: 14;
              GX_SET :: 15;
/* } */;

line_style_t :: _c.int;
/* enum { */
          LINE_STYLE_SOLID :: 0;
    LINE_STYLE_ON_OFF_DASH :: 1;
    LINE_STYLE_DOUBLE_DASH :: 2;
/* } */;

cap_style_t :: _c.int;
/* enum { */
      CAP_STYLE_NOT_LAST :: 0;
          CAP_STYLE_BUTT :: 1;
         CAP_STYLE_ROUND :: 2;
    CAP_STYLE_PROJECTING :: 3;
/* } */;

join_style_t :: _c.int;
/* enum { */
    JOIN_STYLE_MITER :: 0;
    JOIN_STYLE_ROUND :: 1;
    JOIN_STYLE_BEVEL :: 2;
/* } */;

fill_style_t :: _c.int;
/* enum { */
              FILL_STYLE_SOLID :: 0;
              FILL_STYLE_TILED :: 1;
           FILL_STYLE_STIPPLED :: 2;
    FILL_STYLE_OPAQUE_STIPPLED :: 3;
/* } */;

fill_rule_t :: _c.int;
/* enum { */
    FILL_RULE_EVEN_ODD :: 0;
     FILL_RULE_WINDING :: 1;
/* } */;

subwindow_mode_t :: _c.int;
/* enum { */
     SUBWINDOW_MODE_CLIP_BY_CHILDREN :: 0;
    SUBWINDOW_MODE_INCLUDE_INFERIORS :: 1;
/* } */;

arc_mode_t :: _c.int;
/* enum { */
        ARC_MODE_CHORD :: 0;
    ARC_MODE_PIE_SLICE :: 1;
/* } */;

create_gc_value_list_t :: struct {
                 function : u32,
               plane_mask : u32,
               foreground : u32,
               background : u32,
               line_width : u32,
               line_style : u32,
                cap_style : u32,
               join_style : u32,
               fill_style : u32,
                fill_rule : u32,
                     tile : pixmap_t,
                  stipple : pixmap_t,
    tile_stipple_x_origin : i32,
    tile_stipple_y_origin : i32,
                     font : font_t,
           subwindow_mode : u32,
       graphics_exposures : bool32_t,
            clip_x_origin : i32,
            clip_y_origin : i32,
                clip_mask : pixmap_t,
              dash_offset : u32,
                   dashes : u32,
                 arc_mode : u32,
};

create_gc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
             cid : gcontext_t,
        drawable : drawable_t,
      value_mask : u32,
};

change_gc_value_list_t :: struct {
                 function : u32,
               plane_mask : u32,
               foreground : u32,
               background : u32,
               line_width : u32,
               line_style : u32,
                cap_style : u32,
               join_style : u32,
               fill_style : u32,
                fill_rule : u32,
                     tile : pixmap_t,
                  stipple : pixmap_t,
    tile_stipple_x_origin : i32,
    tile_stipple_y_origin : i32,
                     font : font_t,
           subwindow_mode : u32,
       graphics_exposures : bool32_t,
            clip_x_origin : i32,
            clip_y_origin : i32,
                clip_mask : pixmap_t,
              dash_offset : u32,
                   dashes : u32,
                 arc_mode : u32,
};

change_gc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
              gc : gcontext_t,
      value_mask : u32,
};

set_dashes_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
              gc : gcontext_t,
     dash_offset : u16,
      dashes_len : u16,
};

clip_ordering_t :: _c.int;
/* enum { */
     CLIP_ORDERING_UNSORTED :: 0;
     CLIP_ORDERING_Y_SORTED :: 1;
    CLIP_ORDERING_YX_SORTED :: 2;
    CLIP_ORDERING_YX_BANDED :: 3;
/* } */;

set_clip_rectangles_request_t :: struct {
     major_opcode : u8,
         ordering : u8,
           length : u16,
               gc : gcontext_t,
    clip_x_origin : i16,
    clip_y_origin : i16,
};

coord_mode_t :: _c.int;
/* enum { */
      COORD_MODE_ORIGIN :: 0;
    COORD_MODE_PREVIOUS :: 1;
/* } */;

poly_line_request_t :: struct {
       major_opcode : u8,
    coordinate_mode : u8,
             length : u16,
           drawable : drawable_t,
                 gc : gcontext_t,
};

segment_t :: struct {
    x1 : i16,
    y1 : i16,
    x2 : i16,
    y2 : i16,
};

poly_segment_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
};

poly_rectangle_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
};

poly_arc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
};

poly_shape_t :: _c.int;
/* enum { */
      POLY_SHAPE_COMPLEX :: 0;
    POLY_SHAPE_NONCONVEX :: 1;
       POLY_SHAPE_CONVEX :: 2;
/* } */;

fill_poly_request_t :: struct {
       major_opcode : u8,
               pad0 : u8,
             length : u16,
           drawable : drawable_t,
                 gc : gcontext_t,
              shape : u8,
    coordinate_mode : u8,
               pad1 : [2]u8,
};

segment_iterator_t :: struct {
     data : ^segment_t,
      rem : _c.int,
    index : _c.int,
};

poly_fill_arc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
};

poly_point_request_t :: struct {
       major_opcode : u8,
    coordinate_mode : u8,
             length : u16,
           drawable : drawable_t,
                 gc : gcontext_t,
};

poly_fill_rectangle_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
};

image_format_t :: _c.int;
/* enum { */
    IMAGE_FORMAT_XY_BITMAP :: 0;
    IMAGE_FORMAT_XY_PIXMAP :: 1;
     IMAGE_FORMAT_Z_PIXMAP :: 2;
/* } */;

get_image_cookie_t :: struct {
    sequence : _c.uint,
};

get_image_reply_t :: struct {
    response_type : u8,
            depth : u8,
         sequence : u16,
           length : u32,
           visual : visualid_t,
             pad0 : [20]u8,
};

poly_text_8_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
};

poly_text_16_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
};

image_text_8_request_t :: struct {
    major_opcode : u8,
      string_len : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
};

image_text_16_request_t :: struct {
    major_opcode : u8,
      string_len : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
};

colormap_alloc_t :: _c.int;
/* enum { */
    COLORMAP_ALLOC_NONE :: 0;
     COLORMAP_ALLOC_ALL :: 1;
/* } */;

list_installed_colormaps_cookie_t :: struct {
    sequence : _c.uint,
};

list_installed_colormaps_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
        cmaps_len : u16,
             pad1 : [22]u8,
};

alloc_color_cookie_t :: struct {
    sequence : _c.uint,
};

alloc_named_color_cookie_t :: struct {
    sequence : _c.uint,
};

alloc_named_color_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
            pixel : u32,
        exact_red : u16,
      exact_green : u16,
       exact_blue : u16,
       visual_red : u16,
     visual_green : u16,
      visual_blue : u16,
};

alloc_color_cells_cookie_t :: struct {
    sequence : _c.uint,
};

alloc_color_cells_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
       pixels_len : u16,
        masks_len : u16,
             pad1 : [20]u8,
};

alloc_color_planes_cookie_t :: struct {
    sequence : _c.uint,
};

alloc_color_planes_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
       pixels_len : u16,
             pad1 : [2]u8,
         red_mask : u32,
       green_mask : u32,
        blue_mask : u32,
             pad2 : [8]u8,
};

free_colors_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
            cmap : colormap_t,
      plane_mask : u32,
};

color_flag_t :: _c.int;
/* enum { */
      COLOR_FLAG_RED :: 1;
    COLOR_FLAG_GREEN :: 2;
     COLOR_FLAG_BLUE :: 4;
/* } */;

coloritem_t :: struct {
    pixel : u32,
      red : u16,
    green : u16,
     blue : u16,
    flags : u8,
     pad0 : u8,
};

coloritem_iterator_t :: struct {
     data : ^coloritem_t,
      rem : _c.int,
    index : _c.int,
};

store_colors_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
            cmap : colormap_t,
};

store_named_color_request_t :: struct {
    major_opcode : u8,
           flags : u8,
          length : u16,
            cmap : colormap_t,
           pixel : u32,
        name_len : u16,
            pad0 : [2]u8,
};

rgb_t :: struct {
      red : u16,
    green : u16,
     blue : u16,
     pad0 : [2]u8,
};

rgb_iterator_t :: struct {
     data : ^rgb_t,
      rem : _c.int,
    index : _c.int,
};

query_colors_cookie_t :: struct {
    sequence : _c.uint,
};

query_colors_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
       colors_len : u16,
             pad1 : [22]u8,
};

lookup_color_cookie_t :: struct {
    sequence : _c.uint,
};

lookup_color_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
        exact_red : u16,
      exact_green : u16,
       exact_blue : u16,
       visual_red : u16,
     visual_green : u16,
      visual_blue : u16,
};

pixmap_enum_t :: _c.int;
/* enum { */
    PIXMAP_NONE :: 0;
/* } */;

font_enum_t :: _c.int;
/* enum { */
    FONT_NONE :: 0;
/* } */;

query_shape_of_t :: _c.int;
/* enum { */
     QUERY_SHAPE_OF_LARGEST_CURSOR :: 0;
       QUERY_SHAPE_OF_FASTEST_TILE :: 1;
    QUERY_SHAPE_OF_FASTEST_STIPPLE :: 2;
/* } */;

query_best_size_cookie_t :: struct {
    sequence : _c.uint,
};

query_best_size_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
            width : u16,
           height : u16,
};

query_extension_cookie_t :: struct {
    sequence : _c.uint,
};

query_extension_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
          present : u8,
     major_opcode : u8,
      first_event : u8,
      first_error : u8,
};

list_extensions_cookie_t :: struct {
    sequence : _c.uint,
};

list_extensions_reply_t :: struct {
    response_type : u8,
        names_len : u8,
         sequence : u16,
           length : u32,
             pad0 : [24]u8,
};

change_keyboard_mapping_request_t :: struct {
           major_opcode : u8,
          keycode_count : u8,
                 length : u16,
          first_keycode : keycode_t,
    keysyms_per_keycode : u8,
                   pad0 : [2]u8,
};

get_keyboard_mapping_cookie_t :: struct {
    sequence : _c.uint,
};

get_keyboard_mapping_reply_t :: struct {
          response_type : u8,
    keysyms_per_keycode : u8,
               sequence : u16,
                 length : u32,
                   pad0 : [24]u8,
};

kb_t :: _c.int;
/* enum { */
    KB_KEY_CLICK_PERCENT :: 1;
         KB_BELL_PERCENT :: 2;
           KB_BELL_PITCH :: 4;
        KB_BELL_DURATION :: 8;
                  KB_LED :: 16;
             KB_LED_MODE :: 32;
                  KB_KEY :: 64;
     KB_AUTO_REPEAT_MODE :: 128;
/* } */;

led_mode_t :: _c.int;
/* enum { */
    LED_MODE_OFF :: 0;
     LED_MODE_ON :: 1;
/* } */;

auto_repeat_mode_t :: _c.int;
/* enum { */
        AUTO_REPEAT_MODE_OFF :: 0;
         AUTO_REPEAT_MODE_ON :: 1;
    AUTO_REPEAT_MODE_DEFAULT :: 2;
/* } */;

change_keyboard_control_value_list_t :: struct {
    key_click_percent : i32,
         bell_percent : i32,
           bell_pitch : i32,
        bell_duration : i32,
                  led : u32,
             led_mode : u32,
                  key : keycode32_t,
     auto_repeat_mode : u32,
};

change_keyboard_control_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
      value_mask : u32,
};

get_keyboard_control_cookie_t :: struct {
    sequence : _c.uint,
};

get_keyboard_control_reply_t :: struct {
         response_type : u8,
    global_auto_repeat : u8,
              sequence : u16,
                length : u32,
              led_mask : u32,
     key_click_percent : u8,
          bell_percent : u8,
            bell_pitch : u16,
         bell_duration : u16,
                  pad0 : [2]u8,
          auto_repeats : [32]u8,
};

get_pointer_control_cookie_t :: struct {
    sequence : _c.uint,
};

get_pointer_control_reply_t :: struct {
               response_type : u8,
                        pad0 : u8,
                    sequence : u16,
                      length : u32,
      acceleration_numerator : u16,
    acceleration_denominator : u16,
                   threshold : u16,
                        pad1 : [18]u8,
};

blanking_t :: _c.int;
/* enum { */
    BLANKING_NOT_PREFERRED :: 0;
        BLANKING_PREFERRED :: 1;
          BLANKING_DEFAULT :: 2;
/* } */;

exposures_t :: _c.int;
/* enum { */
    EXPOSURES_NOT_ALLOWED :: 0;
        EXPOSURES_ALLOWED :: 1;
        EXPOSURES_DEFAULT :: 2;
/* } */;

list_hosts_cookie_t :: struct {
    sequence : _c.uint,
};

list_hosts_reply_t :: struct {
    response_type : u8,
             mode : u8,
         sequence : u16,
           length : u32,
        hosts_len : u16,
             pad0 : [22]u8,
};

access_control_t :: _c.int;
/* enum { */
    ACCESS_CONTROL_DISABLE :: 0;
     ACCESS_CONTROL_ENABLE :: 1;
/* } */;

close_down_t :: _c.int;
/* enum { */
         CLOSE_DOWN_DESTROY_ALL :: 0;
    CLOSE_DOWN_RETAIN_PERMANENT :: 1;
    CLOSE_DOWN_RETAIN_TEMPORARY :: 2;
/* } */;

screen_saver_t :: _c.int;
/* enum { */
     SCREEN_SAVER_RESET :: 0;
    SCREEN_SAVER_ACTIVE :: 1;
/* } */;

mapping_status_t :: _c.int;
/* enum { */
    MAPPING_STATUS_SUCCESS :: 0;
       MAPPING_STATUS_BUSY :: 1;
    MAPPING_STATUS_FAILURE :: 2;
/* } */;

set_pointer_mapping_cookie_t :: struct {
    sequence : _c.uint,
};

get_pointer_mapping_cookie_t :: struct {
    sequence : _c.uint,
};

get_modifier_mapping_cookie_t :: struct {
    sequence : _c.uint,
};

map_index_t :: _c.int;
/* enum { */
      MAP_INDEX_SHIFT :: 0;
       MAP_INDEX_LOCK :: 1;
    MAP_INDEX_CONTROL :: 2;
          MAP_INDEX_1 :: 3;
          MAP_INDEX_2 :: 4;
          MAP_INDEX_3 :: 5;
          MAP_INDEX_4 :: 6;
          MAP_INDEX_5 :: 7;
/* } */;

set_modifier_mapping_cookie_t :: struct {
    sequence : _c.uint,
};

get_pointer_mapping_reply_t :: struct {
    response_type : u8,
          map_len : u8,
         sequence : u16,
           length : u32,
             pad0 : [24]u8,
};

set_modifier_mapping_reply_t :: struct {
    response_type : u8,
           status : u8,
         sequence : u16,
           length : u32,
};

kill_t :: _c.int;
/* enum { */
    KILL_ALL_TEMPORARY :: 0;
/* } */;

rotate_properties_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
          window : window_t,
       atoms_len : u16,
           delta : i16,
};

set_pointer_mapping_reply_t :: struct {
    response_type : u8,
           status : u8,
         sequence : u16,
           length : u32,
};

get_screen_saver_cookie_t :: struct {
    sequence : _c.uint,
};

get_screen_saver_reply_t :: struct {
      response_type : u8,
               pad0 : u8,
           sequence : u16,
             length : u32,
            timeout : u16,
           interval : u16,
    prefer_blanking : u8,
    allow_exposures : u8,
               pad1 : [18]u8,
};

host_mode_t :: _c.int;
/* enum { */
    HOST_MODE_INSERT :: 0;
    HOST_MODE_DELETE :: 1;
/* } */;

family_t :: _c.int;
/* enum { */
              FAMILY_INTERNET :: 0;
                FAMILY_DECNET :: 1;
                 FAMILY_CHAOS :: 2;
    FAMILY_SERVER_INTERPRETED :: 5;
            FAMILY_INTERNET_6 :: 6;
/* } */;

change_hosts_request_t :: struct {
    major_opcode : u8,
            mode : u8,
          length : u16,
          family : u8,
            pad0 : u8,
     address_len : u16,
};

host_t :: struct {
         family : u8,
           pad0 : u8,
    address_len : u16,
};

host_iterator_t :: struct {
     data : ^host_t,
      rem : _c.int,
    index : _c.int,
};

get_modifier_mapping_reply_t :: struct {
            response_type : u8,
    keycodes_per_modifier : u8,
                 sequence : u16,
                   length : u32,
                     pad0 : [24]u8,
};

put_image_request_t :: struct {
    major_opcode : u8,
          format : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
           width : u16,
          height : u16,
           dst_x : i16,
           dst_y : i16,
        left_pad : u8,
           depth : u8,
            pad0 : [2]u8,
};

fontprop_t :: struct {
     name : atom_t,
    value : u32,
};

alloc_color_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
              red : u16,
            green : u16,
             blue : u16,
             pad1 : [2]u8,
            pixel : u32,
};

get_selection_owner_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
            owner : window_t,
};

allow_t :: _c.int;
/* enum { */
      ALLOW_ASYNC_POINTER :: 0;
       ALLOW_SYNC_POINTER :: 1;
     ALLOW_REPLAY_POINTER :: 2;
     ALLOW_ASYNC_KEYBOARD :: 3;
      ALLOW_SYNC_KEYBOARD :: 4;
    ALLOW_REPLAY_KEYBOARD :: 5;
         ALLOW_ASYNC_BOTH :: 6;
          ALLOW_SYNC_BOTH :: 7;
/* } */;

intern_atom_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
             atom : atom_t,
};

get_atom_name_cookie_t :: struct {
    sequence : _c.uint,
};

get_atom_name_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
         name_len : u16,
             pad1 : [22]u8,
};

prop_mode_t :: _c.int;
/* enum { */
    PROP_MODE_REPLACE :: 0;
    PROP_MODE_PREPEND :: 1;
     PROP_MODE_APPEND :: 2;
/* } */;

change_property_request_t :: struct {
    major_opcode : u8,
            mode : u8,
          length : u16,
          window : window_t,
        property : atom_t,
            type : atom_t,
          format : u8,
            pad0 : [3]u8,
        data_len : u32,
};

get_property_type_t :: _c.int;
/* enum { */
    GET_PROPERTY_TYPE_ANY :: 0;
/* } */;

get_property_cookie_t :: struct {
    sequence : _c.uint,
};

get_property_reply_t :: struct {
    response_type : u8,
           format : u8,
         sequence : u16,
           length : u32,
             type : atom_t,
      bytes_after : u32,
        value_len : u32,
             pad0 : [12]u8,
};

list_properties_cookie_t :: struct {
    sequence : _c.uint,
};

list_properties_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
        atoms_len : u16,
             pad1 : [22]u8,
};

get_selection_owner_cookie_t :: struct {
    sequence : _c.uint,
};

send_event_dest_t :: _c.int;
/* enum { */
    SEND_EVENT_DEST_POINTER_WINDOW :: 0;
        SEND_EVENT_DEST_ITEM_FOCUS :: 1;
/* } */;

grab_mode_t :: _c.int;
/* enum { */
     GRAB_MODE_SYNC :: 0;
    GRAB_MODE_ASYNC :: 1;
/* } */;

grab_status_t :: _c.int;
/* enum { */
            GRAB_STATUS_SUCCESS :: 0;
    GRAB_STATUS_ALREADY_GRABBED :: 1;
       GRAB_STATUS_INVALID_TIME :: 2;
       GRAB_STATUS_NOT_VIEWABLE :: 3;
             GRAB_STATUS_FROZEN :: 4;
/* } */;

cursor_enum_t :: _c.int;
/* enum { */
    CURSOR_NONE :: 0;
/* } */;

grab_pointer_cookie_t :: struct {
    sequence : _c.uint,
};

grab_pointer_reply_t :: struct {
    response_type : u8,
           status : u8,
         sequence : u16,
           length : u32,
};

button_index_t :: _c.int;
/* enum { */
    BUTTON_INDEX_ANY :: 0;
      BUTTON_INDEX_1 :: 1;
      BUTTON_INDEX_2 :: 2;
      BUTTON_INDEX_3 :: 3;
      BUTTON_INDEX_4 :: 4;
      BUTTON_INDEX_5 :: 5;
/* } */;

grab_keyboard_cookie_t :: struct {
    sequence : _c.uint,
};

grab_keyboard_reply_t :: struct {
    response_type : u8,
           status : u8,
         sequence : u16,
           length : u32,
};

grab_t :: _c.int;
/* enum { */
    GRAB_ANY :: 0;
/* } */;

query_pointer_cookie_t :: struct {
    sequence : _c.uint,
};

query_pointer_reply_t :: struct {
    response_type : u8,
      same_screen : u8,
         sequence : u16,
           length : u32,
             root : window_t,
            child : window_t,
           root_x : i16,
           root_y : i16,
            win_x : i16,
            win_y : i16,
             mask : u16,
             pad0 : [2]u8,
};

timecoord_t :: struct {
    time : timestamp_t,
       x : i16,
       y : i16,
};

timecoord_iterator_t :: struct {
     data : ^timecoord_t,
      rem : _c.int,
    index : _c.int,
};

get_motion_events_cookie_t :: struct {
    sequence : _c.uint,
};

get_motion_events_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
       events_len : u32,
             pad1 : [20]u8,
};

translate_coordinates_cookie_t :: struct {
    sequence : _c.uint,
};

translate_coordinates_reply_t :: struct {
    response_type : u8,
      same_screen : u8,
         sequence : u16,
           length : u32,
            child : window_t,
            dst_x : i16,
            dst_y : i16,
};

input_focus_t :: _c.int;
/* enum { */
               INPUT_FOCUS_NONE :: 0;
       INPUT_FOCUS_POINTER_ROOT :: 1;
             INPUT_FOCUS_PARENT :: 2;
    INPUT_FOCUS_FOLLOW_KEYBOARD :: 3;
/* } */;

get_input_focus_cookie_t :: struct {
    sequence : _c.uint,
};

get_input_focus_reply_t :: struct {
    response_type : u8,
        revert_to : u8,
         sequence : u16,
           length : u32,
            focus : window_t,
};

query_keymap_cookie_t :: struct {
    sequence : _c.uint,
};

query_keymap_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
             keys : [32]u8,
};

open_font_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
             fid : font_t,
        name_len : u16,
            pad1 : [2]u8,
};

font_draw_t :: _c.int;
/* enum { */
    FONT_DRAW_LEFT_TO_RIGHT :: 0;
    FONT_DRAW_RIGHT_TO_LEFT :: 1;
/* } */;


/***** libxcb *****/
foreign import libxcb "system:libxcb.so"

/* Procedures */
@(link_prefix="xcb_")
foreign libxcb {
                                                                                         char2b_next :: proc(i : ^char2b_iterator_t) ---;
                                                                                          char2b_end :: proc(i : char2b_iterator_t) -> generic_iterator_t ---;
                                                                                         window_next :: proc(i : ^window_iterator_t) ---;
                                                                                          window_end :: proc(i : window_iterator_t) -> generic_iterator_t ---;
                                                                                         pixmap_next :: proc(i : ^pixmap_iterator_t) ---;
                                                                                          pixmap_end :: proc(i : pixmap_iterator_t) -> generic_iterator_t ---;
                                                                                         cursor_next :: proc(i : ^cursor_iterator_t) ---;
                                                                                          cursor_end :: proc(i : cursor_iterator_t) -> generic_iterator_t ---;
                                                                                           font_next :: proc(i : ^font_iterator_t) ---;
                                                                                            font_end :: proc(i : font_iterator_t) -> generic_iterator_t ---;
                                                                                       gcontext_next :: proc(i : ^gcontext_iterator_t) ---;
                                                                                        gcontext_end :: proc(i : gcontext_iterator_t) -> generic_iterator_t ---;
                                                                                       colormap_next :: proc(i : ^colormap_iterator_t) ---;
                                                                                        colormap_end :: proc(i : colormap_iterator_t) -> generic_iterator_t ---;
                                                                                           atom_next :: proc(i : ^atom_iterator_t) ---;
                                                                                            atom_end :: proc(i : atom_iterator_t) -> generic_iterator_t ---;
                                                                                        drawable_end :: proc(i : drawable_iterator_t) -> generic_iterator_t ---;
                                                                                       fontable_next :: proc(i : ^fontable_iterator_t) ---;
                                                                                        fontable_end :: proc(i : fontable_iterator_t) -> generic_iterator_t ---;
                                                                                         bool32_next :: proc(i : ^bool32_iterator_t) ---;
                                                                                       drawable_next :: proc(i : ^drawable_iterator_t) ---;
                                                                                          bool32_end :: proc(i : bool32_iterator_t) -> generic_iterator_t ---;
                                                                                      rectangle_next :: proc(i : ^rectangle_iterator_t) ---;
                                                                                      visualtype_end :: proc(i : visualtype_iterator_t) -> generic_iterator_t ---;
                                                                                       visualid_next :: proc(i : ^visualid_iterator_t) ---;
                                                                                        visualid_end :: proc(i : visualid_iterator_t) -> generic_iterator_t ---;
                                                                                      timestamp_next :: proc(i : ^timestamp_iterator_t) ---;
                                                                                       timestamp_end :: proc(i : timestamp_iterator_t) -> generic_iterator_t ---;
                                                                                         keysym_next :: proc(i : ^keysym_iterator_t) ---;
                                                                                          keysym_end :: proc(i : keysym_iterator_t) -> generic_iterator_t ---;
                                                                                        keycode_next :: proc(i : ^keycode_iterator_t) ---;
                                                                                         keycode_end :: proc(i : keycode_iterator_t) -> generic_iterator_t ---;
                                                                                      keycode32_next :: proc(i : ^keycode32_iterator_t) ---;
                                                                                       keycode32_end :: proc(i : keycode32_iterator_t) -> generic_iterator_t ---;
                                                                                         button_next :: proc(i : ^button_iterator_t) ---;
                                                                                          button_end :: proc(i : button_iterator_t) -> generic_iterator_t ---;
                                                                                          point_next :: proc(i : ^point_iterator_t) ---;
                                                                                           point_end :: proc(i : point_iterator_t) -> generic_iterator_t ---;
                                                                                       rectangle_end :: proc(i : rectangle_iterator_t) -> generic_iterator_t ---;
                                                                                            arc_next :: proc(i : ^arc_iterator_t) ---;
                                                                                             arc_end :: proc(i : arc_iterator_t) -> generic_iterator_t ---;
                                                                                         format_next :: proc(i : ^format_iterator_t) ---;
                                                                                          format_end :: proc(i : format_iterator_t) -> generic_iterator_t ---;
                                                                                     visualtype_next :: proc(i : ^visualtype_iterator_t) ---;
                                                                                        depth_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                depth_visuals_length :: proc(R : ^depth_t) -> _c.int ---;
                                                                              depth_visuals_iterator :: proc(R : ^depth_t) -> visualtype_iterator_t ---;
                                                                                          depth_next :: proc(i : ^depth_iterator_t) ---;
                                                                                           depth_end :: proc(i : depth_iterator_t) -> generic_iterator_t ---;
                                                                                       screen_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                        screen_allowed_depths_length :: proc(R : ^screen_t) -> _c.int ---;
                                                                      screen_allowed_depths_iterator :: proc(R : ^screen_t) -> depth_iterator_t ---;
                                                                                         screen_next :: proc(i : ^screen_iterator_t) ---;
                                                                                          screen_end :: proc(i : screen_iterator_t) -> generic_iterator_t ---;
                                                                                setup_request_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                    setup_request_authorization_protocol_name_length :: proc(R : ^setup_request_t) -> _c.int ---;
                                                       setup_request_authorization_protocol_name_end :: proc(R : ^setup_request_t) -> generic_iterator_t ---;
                                                    setup_request_authorization_protocol_data_length :: proc(R : ^setup_request_t) -> _c.int ---;
                                                       setup_request_authorization_protocol_data_end :: proc(R : ^setup_request_t) -> generic_iterator_t ---;
                                                                                   setup_request_end :: proc(i : setup_request_iterator_t) -> generic_iterator_t ---;
                                                                                 setup_failed_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                          setup_failed_reason_length :: proc(R : ^setup_failed_t) -> _c.int ---;
                                                                             setup_failed_reason_end :: proc(R : ^setup_failed_t) -> generic_iterator_t ---;
                                                                                   setup_failed_next :: proc(i : ^setup_failed_iterator_t) ---;
                                                                                    setup_failed_end :: proc(i : setup_failed_iterator_t) -> generic_iterator_t ---;
                                                                           setup_authenticate_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                    setup_authenticate_reason_length :: proc(R : ^setup_authenticate_t) -> _c.int ---;
                                                                       setup_authenticate_reason_end :: proc(R : ^setup_authenticate_t) -> generic_iterator_t ---;
                                                                                  setup_request_next :: proc(i : ^setup_request_iterator_t) ---;
                                                                             setup_authenticate_next :: proc(i : ^setup_authenticate_iterator_t) ---;
                                                                              setup_authenticate_end :: proc(i : setup_authenticate_iterator_t) -> generic_iterator_t ---;
                                                                                        setup_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                 setup_vendor_length :: proc(R : ^setup_t) -> _c.int ---;
                                                                                    setup_vendor_end :: proc(R : ^setup_t) -> generic_iterator_t ---;
                                                                         setup_pixmap_formats_length :: proc(R : ^setup_t) -> _c.int ---;
                                                                       setup_pixmap_formats_iterator :: proc(R : ^setup_t) -> format_iterator_t ---;
                                                                                  setup_roots_length :: proc(R : ^setup_t) -> _c.int ---;
                                                                                setup_roots_iterator :: proc(R : ^setup_t) -> screen_iterator_t ---;
                                                                                          setup_next :: proc(i : ^setup_iterator_t) ---;
                                                                                           setup_end :: proc(i : setup_iterator_t) -> generic_iterator_t ---;
                                                                            client_message_data_next :: proc(i : ^client_message_data_iterator_t) ---;
                                                                             client_message_data_end :: proc(i : client_message_data_iterator_t) -> generic_iterator_t ---;
                                                                  create_window_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^create_window_value_list_t) -> _c.int ---;
                                                                     create_window_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^create_window_value_list_t) -> _c.int ---;
                                                                     create_window_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---;
                                                                                create_window_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                               create_window_checked :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                                       create_window :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                           create_window_aux_checked :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : ^create_window_value_list_t) -> void_cookie_t ---;
                                                                                   create_window_aux :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : ^create_window_value_list_t) -> void_cookie_t ---;
                                                       change_window_attributes_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^change_window_attributes_value_list_t) -> _c.int ---;
                                                          change_window_attributes_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^change_window_attributes_value_list_t) -> _c.int ---;
                                                          change_window_attributes_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---;
                                                                     change_window_attributes_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                    change_window_attributes_checked :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                            change_window_attributes :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                change_window_attributes_aux_checked :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : ^change_window_attributes_value_list_t) -> void_cookie_t ---;
                                                                        change_window_attributes_aux :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : ^change_window_attributes_value_list_t) -> void_cookie_t ---;
                                                                               get_window_attributes :: proc(c : ^connection_t, window : window_t) -> get_window_attributes_cookie_t ---;
                                                                     get_window_attributes_unchecked :: proc(c : ^connection_t, window : window_t) -> get_window_attributes_cookie_t ---;
                                                                              destroy_window_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                                      destroy_window :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                          destroy_subwindows_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                                        get_geometry :: proc(c : ^connection_t, drawable : drawable_t) -> get_geometry_cookie_t ---;
                                                                              get_geometry_unchecked :: proc(c : ^connection_t, drawable : drawable_t) -> get_geometry_cookie_t ---;
                                                                                  intern_atom_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                  destroy_subwindows :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                             change_save_set_checked :: proc(c : ^connection_t, mode : u8, window : window_t) -> void_cookie_t ---;
                                                                                     change_save_set :: proc(c : ^connection_t, mode : u8, window : window_t) -> void_cookie_t ---;
                                                                             reparent_window_checked :: proc(c : ^connection_t, window : window_t, parent : window_t, x : i16, y : i16) -> void_cookie_t ---;
                                                                                     reparent_window :: proc(c : ^connection_t, window : window_t, parent : window_t, x : i16, y : i16) -> void_cookie_t ---;
                                                                                  map_window_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                                          map_window :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                              map_subwindows_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                                      map_subwindows :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                                unmap_window_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                                        unmap_window :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                            unmap_subwindows_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                                                    unmap_subwindows :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---;
                                                               configure_window_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u16, _aux : ^configure_window_value_list_t) -> _c.int ---;
                                                                  configure_window_value_list_unpack :: proc(_buffer : rawptr, value_mask : u16, _aux : ^configure_window_value_list_t) -> _c.int ---;
                                                                  configure_window_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u16) -> _c.int ---;
                                                                             configure_window_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                            configure_window_checked :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : rawptr) -> void_cookie_t ---;
                                                                                    configure_window :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : rawptr) -> void_cookie_t ---;
                                                                        configure_window_aux_checked :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : ^configure_window_value_list_t) -> void_cookie_t ---;
                                                                                configure_window_aux :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : ^configure_window_value_list_t) -> void_cookie_t ---;
                                                                            circulate_window_checked :: proc(c : ^connection_t, direction : u8, window : window_t) -> void_cookie_t ---;
                                                                                    circulate_window :: proc(c : ^connection_t, direction : u8, window : window_t) -> void_cookie_t ---;
                                                                                   query_tree_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                          query_tree :: proc(c : ^connection_t, window : window_t) -> query_tree_cookie_t ---;
                                                                                query_tree_unchecked :: proc(c : ^connection_t, window : window_t) -> query_tree_cookie_t ---;
                                                                          query_tree_children_length :: proc(R : ^query_tree_reply_t) -> _c.int ---;
                                                                             query_tree_children_end :: proc(R : ^query_tree_reply_t) -> generic_iterator_t ---;
                                                                                         intern_atom :: proc(c : ^connection_t, only_if_exists : u8, name_len : u16, name : cstring) -> intern_atom_cookie_t ---;
                                                                               intern_atom_unchecked :: proc(c : ^connection_t, only_if_exists : u8, name_len : u16, name : cstring) -> intern_atom_cookie_t ---;
                                                                            create_window_value_list :: proc(R : ^create_window_request_t) -> rawptr ---;
                                                                 change_window_attributes_value_list :: proc(R : ^change_window_attributes_request_t) -> rawptr ---;
                                                                                setup_pixmap_formats :: proc(R : ^setup_t) -> ^format_t ---;
                                                                         configure_window_value_list :: proc(R : ^configure_window_request_t) -> rawptr ---;
                                                                                get_atom_name_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                       get_atom_name :: proc(c : ^connection_t, atom : atom_t) -> get_atom_name_cookie_t ---;
                                                                             get_atom_name_unchecked :: proc(c : ^connection_t, atom : atom_t) -> get_atom_name_cookie_t ---;
                                                                           get_atom_name_name_length :: proc(R : ^get_atom_name_reply_t) -> _c.int ---;
                                                                                 setup_failed_reason :: proc(R : ^setup_failed_t) -> cstring ---;
                                                                              get_atom_name_name_end :: proc(R : ^get_atom_name_reply_t) -> generic_iterator_t ---;
                                                                                        setup_vendor :: proc(R : ^setup_t) -> cstring ---;
                                                                                       depth_visuals :: proc(R : ^depth_t) -> ^visualtype_t ---;
                                                                                  get_geometry_reply :: proc(c : ^connection_t, cookie : get_geometry_cookie_t, e : ^^generic_error_t) -> ^get_geometry_reply_t ---;
                                                                                 query_tree_children :: proc(R : ^query_tree_reply_t) -> ^window_t ---;
                                                                              change_property_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                             change_property_checked :: proc(c : ^connection_t, mode : u8, window : window_t, property : atom_t, type : atom_t, format : u8, data_len : u32, data : rawptr) -> void_cookie_t ---;
                                                           setup_request_authorization_protocol_data :: proc(R : ^setup_request_t) -> cstring ---;
                                                           setup_request_authorization_protocol_name :: proc(R : ^setup_request_t) -> cstring ---;
                                                                           setup_authenticate_reason :: proc(R : ^setup_authenticate_t) -> cstring ---;
                                                                                  get_atom_name_name :: proc(R : ^get_atom_name_reply_t) -> cstring ---;
                                                                                    query_tree_reply :: proc(c : ^connection_t, cookie : query_tree_cookie_t, e : ^^generic_error_t) -> ^query_tree_reply_t ---;
                                                                         get_window_attributes_reply :: proc(c : ^connection_t, cookie : get_window_attributes_cookie_t, e : ^^generic_error_t) -> ^get_window_attributes_reply_t ---;
                                                                                   intern_atom_reply :: proc(c : ^connection_t, cookie : intern_atom_cookie_t, e : ^^generic_error_t) -> ^intern_atom_reply_t ---;
                                                                                 get_atom_name_reply :: proc(c : ^connection_t, cookie : get_atom_name_cookie_t, e : ^^generic_error_t) -> ^get_atom_name_reply_t ---;
                                                                                     change_property :: proc(c : ^connection_t, mode : u8, window : window_t, property : atom_t, type : atom_t, format : u8, data_len : u32, data : rawptr) -> void_cookie_t ---;
                                                                         change_property_data_length :: proc(R : ^change_property_request_t) -> _c.int ---;
                                                                                change_property_data :: proc(R : ^change_property_request_t) -> rawptr ---;
                                                                            change_property_data_end :: proc(R : ^change_property_request_t) -> generic_iterator_t ---;
                                                                             delete_property_checked :: proc(c : ^connection_t, window : window_t, property : atom_t) -> void_cookie_t ---;
                                                                                     delete_property :: proc(c : ^connection_t, window : window_t, property : atom_t) -> void_cookie_t ---;
                                                                                 get_property_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                        get_property :: proc(c : ^connection_t, _delete : u8, window : window_t, property : atom_t, type : atom_t, long_offset : u32, long_length : u32) -> get_property_cookie_t ---;
                                                                              get_property_unchecked :: proc(c : ^connection_t, _delete : u8, window : window_t, property : atom_t, type : atom_t, long_offset : u32, long_length : u32) -> get_property_cookie_t ---;
                                                                                  get_property_value :: proc(R : ^get_property_reply_t) -> rawptr ---;
                                                                           get_property_value_length :: proc(R : ^get_property_reply_t) -> _c.int ---;
                                                                              get_property_value_end :: proc(R : ^get_property_reply_t) -> generic_iterator_t ---;
                                                                              list_properties_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                     list_properties :: proc(c : ^connection_t, window : window_t) -> list_properties_cookie_t ---;
                                                                                  get_property_reply :: proc(c : ^connection_t, cookie : get_property_cookie_t, e : ^^generic_error_t) -> ^get_property_reply_t ---;
                                                                           list_properties_unchecked :: proc(c : ^connection_t, window : window_t) -> list_properties_cookie_t ---;
                                                                        list_properties_atoms_length :: proc(R : ^list_properties_reply_t) -> _c.int ---;
                                                                               list_properties_atoms :: proc(R : ^list_properties_reply_t) -> ^atom_t ---;
                                                                           list_properties_atoms_end :: proc(R : ^list_properties_reply_t) -> generic_iterator_t ---;
                                                                               list_properties_reply :: proc(c : ^connection_t, cookie : list_properties_cookie_t, e : ^^generic_error_t) -> ^list_properties_reply_t ---;
                                                                         set_selection_owner_checked :: proc(c : ^connection_t, owner : window_t, selection : atom_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                 set_selection_owner :: proc(c : ^connection_t, owner : window_t, selection : atom_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                 get_selection_owner :: proc(c : ^connection_t, selection : atom_t) -> get_selection_owner_cookie_t ---;
                                                                       get_selection_owner_unchecked :: proc(c : ^connection_t, selection : atom_t) -> get_selection_owner_cookie_t ---;
                                                                           get_selection_owner_reply :: proc(c : ^connection_t, cookie : get_selection_owner_cookie_t, e : ^^generic_error_t) -> ^get_selection_owner_reply_t ---;
                                                                           convert_selection_checked :: proc(c : ^connection_t, requestor : window_t, selection : atom_t, target : atom_t, property : atom_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                   convert_selection :: proc(c : ^connection_t, requestor : window_t, selection : atom_t, target : atom_t, property : atom_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                  send_event_checked :: proc(c : ^connection_t, propagate : u8, destination : window_t, event_mask : u32, event : cstring) -> void_cookie_t ---;
                                                                                          send_event :: proc(c : ^connection_t, propagate : u8, destination : window_t, event_mask : u32, event : cstring) -> void_cookie_t ---;
                                                                                        grab_pointer :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, time : timestamp_t) -> grab_pointer_cookie_t ---;
                                                                              grab_pointer_unchecked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, time : timestamp_t) -> grab_pointer_cookie_t ---;
                                                                              ungrab_pointer_checked :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                      ungrab_pointer :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                 grab_button_checked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, button : u8, modifiers : u16) -> void_cookie_t ---;
                                                                                  grab_pointer_reply :: proc(c : ^connection_t, cookie : grab_pointer_cookie_t, e : ^^generic_error_t) -> ^grab_pointer_reply_t ---;
                                                                                         grab_button :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, button : u8, modifiers : u16) -> void_cookie_t ---;
                                                                               ungrab_button_checked :: proc(c : ^connection_t, button : u8, grab_window : window_t, modifiers : u16) -> void_cookie_t ---;
                                                                                       ungrab_button :: proc(c : ^connection_t, button : u8, grab_window : window_t, modifiers : u16) -> void_cookie_t ---;
                                                                  change_active_pointer_grab_checked :: proc(c : ^connection_t, cursor : cursor_t, time : timestamp_t, event_mask : u16) -> void_cookie_t ---;
                                                                          change_active_pointer_grab :: proc(c : ^connection_t, cursor : cursor_t, time : timestamp_t, event_mask : u16) -> void_cookie_t ---;
                                                                                       grab_keyboard :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, time : timestamp_t, pointer_mode : u8, keyboard_mode : u8) -> grab_keyboard_cookie_t ---;
                                                                             grab_keyboard_unchecked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, time : timestamp_t, pointer_mode : u8, keyboard_mode : u8) -> grab_keyboard_cookie_t ---;
                                                                             ungrab_keyboard_checked :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                     ungrab_keyboard :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                 grab_keyboard_reply :: proc(c : ^connection_t, cookie : grab_keyboard_cookie_t, e : ^^generic_error_t) -> ^grab_keyboard_reply_t ---;
                                                                                    grab_key_checked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, modifiers : u16, key : keycode_t, pointer_mode : u8, keyboard_mode : u8) -> void_cookie_t ---;
                                                                                            grab_key :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, modifiers : u16, key : keycode_t, pointer_mode : u8, keyboard_mode : u8) -> void_cookie_t ---;
                                                                                  ungrab_key_checked :: proc(c : ^connection_t, key : keycode_t, grab_window : window_t, modifiers : u16) -> void_cookie_t ---;
                                                                                          ungrab_key :: proc(c : ^connection_t, key : keycode_t, grab_window : window_t, modifiers : u16) -> void_cookie_t ---;
                                                                                allow_events_checked :: proc(c : ^connection_t, mode : u8, time : timestamp_t) -> void_cookie_t ---;
                                                                                        allow_events :: proc(c : ^connection_t, mode : u8, time : timestamp_t) -> void_cookie_t ---;
                                                                                 grab_server_checked :: proc(c : ^connection_t) -> void_cookie_t ---;
                                                                                         grab_server :: proc(c : ^connection_t) -> void_cookie_t ---;
                                                                               ungrab_server_checked :: proc(c : ^connection_t) -> void_cookie_t ---;
                                                                                       ungrab_server :: proc(c : ^connection_t) -> void_cookie_t ---;
                                                                                       query_pointer :: proc(c : ^connection_t, window : window_t) -> query_pointer_cookie_t ---;
                                                                             query_pointer_unchecked :: proc(c : ^connection_t, window : window_t) -> query_pointer_cookie_t ---;
                                                                                 query_pointer_reply :: proc(c : ^connection_t, cookie : query_pointer_cookie_t, e : ^^generic_error_t) -> ^query_pointer_reply_t ---;
                                                                                      timecoord_next :: proc(i : ^timecoord_iterator_t) ---;
                                                                                       timecoord_end :: proc(i : timecoord_iterator_t) -> generic_iterator_t ---;
                                                                            get_motion_events_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                   get_motion_events :: proc(c : ^connection_t, window : window_t, start : timestamp_t, stop : timestamp_t) -> get_motion_events_cookie_t ---;
                                                                         get_motion_events_unchecked :: proc(c : ^connection_t, window : window_t, start : timestamp_t, stop : timestamp_t) -> get_motion_events_cookie_t ---;
                                                                     get_motion_events_events_length :: proc(R : ^get_motion_events_reply_t) -> _c.int ---;
                                                                   get_motion_events_events_iterator :: proc(R : ^get_motion_events_reply_t) -> timecoord_iterator_t ---;
                                                                               translate_coordinates :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16) -> translate_coordinates_cookie_t ---;
                                                                     translate_coordinates_unchecked :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16) -> translate_coordinates_cookie_t ---;
                                                                                warp_pointer_checked :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16, src_width : u16, src_height : u16, dst_x : i16, dst_y : i16) -> void_cookie_t ---;
                                                                                        warp_pointer :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16, src_width : u16, src_height : u16, dst_x : i16, dst_y : i16) -> void_cookie_t ---;
                                                                             set_input_focus_checked :: proc(c : ^connection_t, revert_to : u8, focus : window_t, time : timestamp_t) -> void_cookie_t ---;
                                                                            get_motion_events_events :: proc(R : ^get_motion_events_reply_t) -> ^timecoord_t ---;
                                                                             get_motion_events_reply :: proc(c : ^connection_t, cookie : get_motion_events_cookie_t, e : ^^generic_error_t) -> ^get_motion_events_reply_t ---;
                                                                                     set_input_focus :: proc(c : ^connection_t, revert_to : u8, focus : window_t, time : timestamp_t) -> void_cookie_t ---;
                                                                                     get_input_focus :: proc(c : ^connection_t) -> get_input_focus_cookie_t ---;
                                                                           get_input_focus_unchecked :: proc(c : ^connection_t) -> get_input_focus_cookie_t ---;
                                                                                        query_keymap :: proc(c : ^connection_t) -> query_keymap_cookie_t ---;
                                                                              query_keymap_unchecked :: proc(c : ^connection_t) -> query_keymap_cookie_t ---;
                                                                         translate_coordinates_reply :: proc(c : ^connection_t, cookie : translate_coordinates_cookie_t, e : ^^generic_error_t) -> ^translate_coordinates_reply_t ---;
                                                                                    open_font_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                   open_font_checked :: proc(c : ^connection_t, fid : font_t, name_len : u16, name : cstring) -> void_cookie_t ---;
                                                                                           open_font :: proc(c : ^connection_t, fid : font_t, name_len : u16, name : cstring) -> void_cookie_t ---;
                                                                               open_font_name_length :: proc(R : ^open_font_request_t) -> _c.int ---;
                                                                                  open_font_name_end :: proc(R : ^open_font_request_t) -> generic_iterator_t ---;
                                                                                  close_font_checked :: proc(c : ^connection_t, font : font_t) -> void_cookie_t ---;
                                                                                          close_font :: proc(c : ^connection_t, font : font_t) -> void_cookie_t ---;
                                                                                       fontprop_next :: proc(i : ^fontprop_iterator_t) ---;
                                                                                        fontprop_end :: proc(i : fontprop_iterator_t) -> generic_iterator_t ---;
                                                                                       charinfo_next :: proc(i : ^charinfo_iterator_t) ---;
                                                                                        charinfo_end :: proc(i : charinfo_iterator_t) -> generic_iterator_t ---;
                                                                                   query_font_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                          query_font :: proc(c : ^connection_t, font : fontable_t) -> query_font_cookie_t ---;
                                                                               get_input_focus_reply :: proc(c : ^connection_t, cookie : get_input_focus_cookie_t, e : ^^generic_error_t) -> ^get_input_focus_reply_t ---;
                                                                                  query_keymap_reply :: proc(c : ^connection_t, cookie : query_keymap_cookie_t, e : ^^generic_error_t) -> ^query_keymap_reply_t ---;
                                                                                query_font_unchecked :: proc(c : ^connection_t, font : fontable_t) -> query_font_cookie_t ---;
                                                                                      open_font_name :: proc(R : ^open_font_request_t) -> cstring ---;
                                                                        query_font_properties_length :: proc(R : ^query_font_reply_t) -> _c.int ---;
                                                                      query_font_properties_iterator :: proc(R : ^query_font_reply_t) -> fontprop_iterator_t ---;
                                                                        query_font_char_infos_length :: proc(R : ^query_font_reply_t) -> _c.int ---;
                                                                      query_font_char_infos_iterator :: proc(R : ^query_font_reply_t) -> charinfo_iterator_t ---;
                                                                           query_text_extents_sizeof :: proc(_buffer : rawptr, string_len : u32) -> _c.int ---;
                                                                                  query_text_extents :: proc(c : ^connection_t, font : fontable_t, string_len : u32, string : ^char2b_t) -> query_text_extents_cookie_t ---;
                                                                        query_text_extents_unchecked :: proc(c : ^connection_t, font : fontable_t, string_len : u32, string : ^char2b_t) -> query_text_extents_cookie_t ---;
                                                                                          str_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                     str_name_length :: proc(R : ^str_t) -> _c.int ---;
                                                                                        str_name_end :: proc(R : ^str_t) -> generic_iterator_t ---;
                                                                                            str_next :: proc(i : ^str_iterator_t) ---;
                                                                               query_font_properties :: proc(R : ^query_font_reply_t) -> ^fontprop_t ---;
                                                                                             str_end :: proc(i : str_iterator_t) -> generic_iterator_t ---;
                                                                                   list_fonts_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                               query_font_char_infos :: proc(R : ^query_font_reply_t) -> ^charinfo_t ---;
                                                                                    query_font_reply :: proc(c : ^connection_t, cookie : query_font_cookie_t, e : ^^generic_error_t) -> ^query_font_reply_t ---;
                                                                            query_text_extents_reply :: proc(c : ^connection_t, cookie : query_text_extents_cookie_t, e : ^^generic_error_t) -> ^query_text_extents_reply_t ---;
                                                                                          list_fonts :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_cookie_t ---;
                                                                                list_fonts_unchecked :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_cookie_t ---;
                                                                             list_fonts_names_length :: proc(R : ^list_fonts_reply_t) -> _c.int ---;
                                                                           list_fonts_names_iterator :: proc(R : ^list_fonts_reply_t) -> str_iterator_t ---;
                                                                         list_fonts_with_info_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                list_fonts_with_info :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_with_info_cookie_t ---;
                                                                      list_fonts_with_info_unchecked :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_with_info_cookie_t ---;
                                                              list_fonts_with_info_properties_length :: proc(R : ^list_fonts_with_info_reply_t) -> _c.int ---;
                                                            list_fonts_with_info_properties_iterator :: proc(R : ^list_fonts_with_info_reply_t) -> fontprop_iterator_t ---;
                                                                    list_fonts_with_info_name_length :: proc(R : ^list_fonts_with_info_reply_t) -> _c.int ---;
                                                                       list_fonts_with_info_name_end :: proc(R : ^list_fonts_with_info_reply_t) -> generic_iterator_t ---;
                                                                                    list_fonts_reply :: proc(c : ^connection_t, cookie : list_fonts_cookie_t, e : ^^generic_error_t) -> ^list_fonts_reply_t ---;
                                                                                set_font_path_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                               set_font_path_checked :: proc(c : ^connection_t, font_qty : u16, font : ^str_t) -> void_cookie_t ---;
                                                                                       set_font_path :: proc(c : ^connection_t, font_qty : u16, font : ^str_t) -> void_cookie_t ---;
                                                                           set_font_path_font_length :: proc(R : ^set_font_path_request_t) -> _c.int ---;
                                                                         set_font_path_font_iterator :: proc(R : ^set_font_path_request_t) -> str_iterator_t ---;
                                                                                get_font_path_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                       get_font_path :: proc(c : ^connection_t) -> get_font_path_cookie_t ---;
                                                                             get_font_path_unchecked :: proc(c : ^connection_t) -> get_font_path_cookie_t ---;
                                                                           get_font_path_path_length :: proc(R : ^get_font_path_reply_t) -> _c.int ---;
                                                                         get_font_path_path_iterator :: proc(R : ^get_font_path_reply_t) -> str_iterator_t ---;
                                                                               create_pixmap_checked :: proc(c : ^connection_t, depth : u8, pid : pixmap_t, drawable : drawable_t, width : u16, height : u16) -> void_cookie_t ---;
                                                                                       create_pixmap :: proc(c : ^connection_t, depth : u8, pid : pixmap_t, drawable : drawable_t, width : u16, height : u16) -> void_cookie_t ---;
                                                                                 free_pixmap_checked :: proc(c : ^connection_t, pixmap : pixmap_t) -> void_cookie_t ---;
                                                                                         free_pixmap :: proc(c : ^connection_t, pixmap : pixmap_t) -> void_cookie_t ---;
                                                                      create_gc_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^create_gc_value_list_t) -> _c.int ---;
                                                                         create_gc_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^create_gc_value_list_t) -> _c.int ---;
                                                                         create_gc_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---;
                                                                                    create_gc_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                   create_gc_checked :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                                           create_gc :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                               create_gc_aux_checked :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : ^create_gc_value_list_t) -> void_cookie_t ---;
                                                                                       create_gc_aux :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : ^create_gc_value_list_t) -> void_cookie_t ---;
                                                                      change_gc_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^change_gc_value_list_t) -> _c.int ---;
                                                                         change_gc_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^change_gc_value_list_t) -> _c.int ---;
                                                                         change_gc_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---;
                                                                                    change_gc_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                   change_gc_checked :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                                           change_gc :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                               change_gc_aux_checked :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : ^change_gc_value_list_t) -> void_cookie_t ---;
                                                                                       change_gc_aux :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : ^change_gc_value_list_t) -> void_cookie_t ---;
                                                                                     copy_gc_checked :: proc(c : ^connection_t, src_gc : gcontext_t, dst_gc : gcontext_t, value_mask : u32) -> void_cookie_t ---;
                                                                                             copy_gc :: proc(c : ^connection_t, src_gc : gcontext_t, dst_gc : gcontext_t, value_mask : u32) -> void_cookie_t ---;
                                                                                   set_dashes_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                  set_dashes_checked :: proc(c : ^connection_t, gc : gcontext_t, dash_offset : u16, dashes_len : u16, dashes : ^u8) -> void_cookie_t ---;
                                                                                          set_dashes :: proc(c : ^connection_t, gc : gcontext_t, dash_offset : u16, dashes_len : u16, dashes : ^u8) -> void_cookie_t ---;
                                                                            set_dashes_dashes_length :: proc(R : ^set_dashes_request_t) -> _c.int ---;
                                                                               set_dashes_dashes_end :: proc(R : ^set_dashes_request_t) -> generic_iterator_t ---;
                                                                          set_clip_rectangles_sizeof :: proc(_buffer : rawptr, rectangles_len : u32) -> _c.int ---;
                                                                         set_clip_rectangles_checked :: proc(c : ^connection_t, ordering : u8, gc : gcontext_t, clip_x_origin : i16, clip_y_origin : i16, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---;
                                                                                 set_clip_rectangles :: proc(c : ^connection_t, ordering : u8, gc : gcontext_t, clip_x_origin : i16, clip_y_origin : i16, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---;
                                                               set_clip_rectangles_rectangles_length :: proc(R : ^set_clip_rectangles_request_t) -> _c.int ---;
                                                             set_clip_rectangles_rectangles_iterator :: proc(R : ^set_clip_rectangles_request_t) -> rectangle_iterator_t ---;
                                                                                     free_gc_checked :: proc(c : ^connection_t, gc : gcontext_t) -> void_cookie_t ---;
                                                                                             free_gc :: proc(c : ^connection_t, gc : gcontext_t) -> void_cookie_t ---;
                                                                                  clear_area_checked :: proc(c : ^connection_t, exposures : u8, window : window_t, x : i16, y : i16, width : u16, height : u16) -> void_cookie_t ---;
                                                                                          clear_area :: proc(c : ^connection_t, exposures : u8, window : window_t, x : i16, y : i16, width : u16, height : u16) -> void_cookie_t ---;
                                                                                   copy_area_checked :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16) -> void_cookie_t ---;
                                                                                           copy_area :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16) -> void_cookie_t ---;
                                                                                          copy_plane :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16, bit_plane : u32) -> void_cookie_t ---;
                                                                                create_gc_value_list :: proc(R : ^create_gc_request_t) -> rawptr ---;
                                                                                change_gc_value_list :: proc(R : ^change_gc_request_t) -> rawptr ---;
                                                                                   set_dashes_dashes :: proc(R : ^set_dashes_request_t) -> ^u8 ---;
                                                                                   poly_point_sizeof :: proc(_buffer : rawptr, points_len : u32) -> _c.int ---;
                                                                                  poly_point_checked :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---;
                                                                                          poly_point :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---;
                                                                            poly_point_points_length :: proc(R : ^poly_point_request_t) -> _c.int ---;
                                                                          poly_point_points_iterator :: proc(R : ^poly_point_request_t) -> point_iterator_t ---;
                                                                                    poly_line_sizeof :: proc(_buffer : rawptr, points_len : u32) -> _c.int ---;
                                                                                   poly_line_checked :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---;
                                                                                           poly_line :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---;
                                                                             poly_line_points_length :: proc(R : ^poly_line_request_t) -> _c.int ---;
                                                                           poly_line_points_iterator :: proc(R : ^poly_line_request_t) -> point_iterator_t ---;
                                                                                        segment_next :: proc(i : ^segment_iterator_t) ---;
                                                                                         segment_end :: proc(i : segment_iterator_t) -> generic_iterator_t ---;
                                                                                 poly_segment_sizeof :: proc(_buffer : rawptr, segments_len : u32) -> _c.int ---;
                                                                                poly_segment_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, segments_len : u32, segments : ^segment_t) -> void_cookie_t ---;
                                                                                        poly_segment :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, segments_len : u32, segments : ^segment_t) -> void_cookie_t ---;
                                                                        poly_segment_segments_length :: proc(R : ^poly_segment_request_t) -> _c.int ---;
                                                                      poly_segment_segments_iterator :: proc(R : ^poly_segment_request_t) -> segment_iterator_t ---;
                                                                               poly_rectangle_sizeof :: proc(_buffer : rawptr, rectangles_len : u32) -> _c.int ---;
                                                                              poly_rectangle_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---;
                                                                                      poly_rectangle :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---;
                                                                    poly_rectangle_rectangles_length :: proc(R : ^poly_rectangle_request_t) -> _c.int ---;
                                                                  poly_rectangle_rectangles_iterator :: proc(R : ^poly_rectangle_request_t) -> rectangle_iterator_t ---;
                                                                                     poly_arc_sizeof :: proc(_buffer : rawptr, arcs_len : u32) -> _c.int ---;
                                                                                    poly_arc_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---;
                                                                                            poly_arc :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---;
                                                                                poly_arc_arcs_length :: proc(R : ^poly_arc_request_t) -> _c.int ---;
                                                                                            str_name :: proc(R : ^str_t) -> cstring ---;
                                                                           list_fonts_with_info_name :: proc(R : ^list_fonts_with_info_reply_t) -> cstring ---;
                                                                                   poly_point_points :: proc(R : ^poly_point_request_t) -> ^point_t ---;
                                                                      set_clip_rectangles_rectangles :: proc(R : ^set_clip_rectangles_request_t) -> ^rectangle_t ---;
                                                                                    poly_line_points :: proc(R : ^poly_line_request_t) -> ^point_t ---;
                                                                           poly_rectangle_rectangles :: proc(R : ^poly_rectangle_request_t) -> ^rectangle_t ---;
                                                                              poly_arc_arcs_iterator :: proc(R : ^poly_arc_request_t) -> arc_iterator_t ---;
                                                                                    fill_poly_sizeof :: proc(_buffer : rawptr, points_len : u32) -> _c.int ---;
                                                                                   fill_poly_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, shape : u8, coordinate_mode : u8, points_len : u32, points : ^point_t) -> void_cookie_t ---;
                                                                                           fill_poly :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, shape : u8, coordinate_mode : u8, points_len : u32, points : ^point_t) -> void_cookie_t ---;
                                                                             fill_poly_points_length :: proc(R : ^fill_poly_request_t) -> _c.int ---;
                                                                           fill_poly_points_iterator :: proc(R : ^fill_poly_request_t) -> point_iterator_t ---;
                                                                          poly_fill_rectangle_sizeof :: proc(_buffer : rawptr, rectangles_len : u32) -> _c.int ---;
                                                                     list_fonts_with_info_properties :: proc(R : ^list_fonts_with_info_reply_t) -> ^fontprop_t ---;
                                                                                 get_font_path_reply :: proc(c : ^connection_t, cookie : get_font_path_cookie_t, e : ^^generic_error_t) -> ^get_font_path_reply_t ---;
                                                                         poly_fill_rectangle_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---;
                                                                                       poly_arc_arcs :: proc(R : ^poly_arc_request_t) -> ^arc_t ---;
                                                                                 poly_fill_rectangle :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---;
                                                               poly_fill_rectangle_rectangles_length :: proc(R : ^poly_fill_rectangle_request_t) -> _c.int ---;
                                                             poly_fill_rectangle_rectangles_iterator :: proc(R : ^poly_fill_rectangle_request_t) -> rectangle_iterator_t ---;
                                                                      poly_fill_rectangle_rectangles :: proc(R : ^poly_fill_rectangle_request_t) -> ^rectangle_t ---;
                                                                                poly_fill_arc_sizeof :: proc(_buffer : rawptr, arcs_len : u32) -> _c.int ---;
                                                                               poly_fill_arc_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---;
                                                                                       poly_fill_arc :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---;
                                                                           poly_fill_arc_arcs_length :: proc(R : ^poly_fill_arc_request_t) -> _c.int ---;
                                                                         poly_fill_arc_arcs_iterator :: proc(R : ^poly_fill_arc_request_t) -> arc_iterator_t ---;
                                                                                    put_image_sizeof :: proc(_buffer : rawptr, data_len : u32) -> _c.int ---;
                                                                                   put_image_checked :: proc(c : ^connection_t, format : u8, drawable : drawable_t, gc : gcontext_t, width : u16, height : u16, dst_x : i16, dst_y : i16, left_pad : u8, depth : u8, data_len : u32, data : ^u8) -> void_cookie_t ---;
                                                                                           put_image :: proc(c : ^connection_t, format : u8, drawable : drawable_t, gc : gcontext_t, width : u16, height : u16, dst_x : i16, dst_y : i16, left_pad : u8, depth : u8, data_len : u32, data : ^u8) -> void_cookie_t ---;
                                                                               put_image_data_length :: proc(R : ^put_image_request_t) -> _c.int ---;
                                                                                  put_image_data_end :: proc(R : ^put_image_request_t) -> generic_iterator_t ---;
                                                                                    get_image_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                           get_image :: proc(c : ^connection_t, format : u8, drawable : drawable_t, x : i16, y : i16, width : u16, height : u16, plane_mask : u32) -> get_image_cookie_t ---;
                                                                                 get_image_unchecked :: proc(c : ^connection_t, format : u8, drawable : drawable_t, x : i16, y : i16, width : u16, height : u16, plane_mask : u32) -> get_image_cookie_t ---;
                                                                               poly_segment_segments :: proc(R : ^poly_segment_request_t) -> ^segment_t ---;
                                                                                  poly_fill_arc_arcs :: proc(R : ^poly_fill_arc_request_t) -> ^arc_t ---;
                                                                                      put_image_data :: proc(R : ^put_image_request_t) -> ^u8 ---;
                                                                                      get_image_data :: proc(R : ^get_image_reply_t) -> ^u8 ---;
                                                                               get_image_data_length :: proc(R : ^get_image_reply_t) -> _c.int ---;
                                                                                  get_image_data_end :: proc(R : ^get_image_reply_t) -> generic_iterator_t ---;
                                                                            poly_text_8_items_length :: proc(R : ^poly_text_8_request_t) -> _c.int ---;
                                                                                    fill_poly_points :: proc(R : ^fill_poly_request_t) -> ^point_t ---;
                                                                                  poly_text_8_sizeof :: proc(_buffer : rawptr, items_len : u32) -> _c.int ---;
                                                                                 poly_text_8_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---;
                                                                                         poly_text_8 :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---;
                                                                               poly_text_8_items_end :: proc(R : ^poly_text_8_request_t) -> generic_iterator_t ---;
                                                                                   poly_text_8_items :: proc(R : ^poly_text_8_request_t) -> ^u8 ---;
                                                                                     get_image_reply :: proc(c : ^connection_t, cookie : get_image_cookie_t, e : ^^generic_error_t) -> ^get_image_reply_t ---;
                                                                          list_fonts_with_info_reply :: proc(c : ^connection_t, cookie : list_fonts_with_info_cookie_t, e : ^^generic_error_t) -> ^list_fonts_with_info_reply_t ---;
                                                                                  copy_plane_checked :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16, bit_plane : u32) -> void_cookie_t ---;
                                                                                 poly_text_16_sizeof :: proc(_buffer : rawptr, items_len : u32) -> _c.int ---;
                                                                                poly_text_16_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---;
                                                                                        poly_text_16 :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---;
                                                                                  poly_text_16_items :: proc(R : ^poly_text_16_request_t) -> ^u8 ---;
                                                                           poly_text_16_items_length :: proc(R : ^poly_text_16_request_t) -> _c.int ---;
                                                                              poly_text_16_items_end :: proc(R : ^poly_text_16_request_t) -> generic_iterator_t ---;
                                                                                 image_text_8_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                image_text_8_checked :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : cstring) -> void_cookie_t ---;
                                                                                        image_text_8 :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : cstring) -> void_cookie_t ---;
                                                                          image_text_8_string_length :: proc(R : ^image_text_8_request_t) -> _c.int ---;
                                                                             image_text_8_string_end :: proc(R : ^image_text_8_request_t) -> generic_iterator_t ---;
                                                                                image_text_16_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                               image_text_16_checked :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : ^char2b_t) -> void_cookie_t ---;
                                                                                 image_text_8_string :: proc(R : ^image_text_8_request_t) -> cstring ---;
                                                                                       image_text_16 :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : ^char2b_t) -> void_cookie_t ---;
                                                                         image_text_16_string_length :: proc(R : ^image_text_16_request_t) -> _c.int ---;
                                                                       image_text_16_string_iterator :: proc(R : ^image_text_16_request_t) -> char2b_iterator_t ---;
                                                                             create_colormap_checked :: proc(c : ^connection_t, alloc : u8, mid : colormap_t, window : window_t, visual : visualid_t) -> void_cookie_t ---;
                                                                                     create_colormap :: proc(c : ^connection_t, alloc : u8, mid : colormap_t, window : window_t, visual : visualid_t) -> void_cookie_t ---;
                                                                               free_colormap_checked :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---;
                                                                                       free_colormap :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---;
                                                                      copy_colormap_and_free_checked :: proc(c : ^connection_t, mid : colormap_t, src_cmap : colormap_t) -> void_cookie_t ---;
                                                                              copy_colormap_and_free :: proc(c : ^connection_t, mid : colormap_t, src_cmap : colormap_t) -> void_cookie_t ---;
                                                                            install_colormap_checked :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---;
                                                                                    install_colormap :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---;
                                                                          uninstall_colormap_checked :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---;
                                                                                  uninstall_colormap :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---;
                                                                     list_installed_colormaps_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                            list_installed_colormaps :: proc(c : ^connection_t, window : window_t) -> list_installed_colormaps_cookie_t ---;
                                                                                image_text_16_string :: proc(R : ^image_text_16_request_t) -> ^char2b_t ---;
                                                                  list_installed_colormaps_unchecked :: proc(c : ^connection_t, window : window_t) -> list_installed_colormaps_cookie_t ---;
                                                                      list_installed_colormaps_cmaps :: proc(R : ^list_installed_colormaps_reply_t) -> ^colormap_t ---;
                                                               list_installed_colormaps_cmaps_length :: proc(R : ^list_installed_colormaps_reply_t) -> _c.int ---;
                                                                  list_installed_colormaps_cmaps_end :: proc(R : ^list_installed_colormaps_reply_t) -> generic_iterator_t ---;
                                                                                         alloc_color :: proc(c : ^connection_t, cmap : colormap_t, red : u16, green : u16, blue : u16) -> alloc_color_cookie_t ---;
                                                                               alloc_color_unchecked :: proc(c : ^connection_t, cmap : colormap_t, red : u16, green : u16, blue : u16) -> alloc_color_cookie_t ---;
                                                                            alloc_named_color_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                   alloc_named_color :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> alloc_named_color_cookie_t ---;
                                                                         alloc_named_color_unchecked :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> alloc_named_color_cookie_t ---;
                                                                            alloc_color_cells_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                   alloc_color_cells :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, planes : u16) -> alloc_color_cells_cookie_t ---;
                                                                         alloc_color_cells_unchecked :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, planes : u16) -> alloc_color_cells_cookie_t ---;
                                                                     alloc_color_cells_pixels_length :: proc(R : ^alloc_color_cells_reply_t) -> _c.int ---;
                                                                        alloc_color_cells_pixels_end :: proc(R : ^alloc_color_cells_reply_t) -> generic_iterator_t ---;
                                                                      alloc_color_cells_masks_length :: proc(R : ^alloc_color_cells_reply_t) -> _c.int ---;
                                                                         alloc_color_cells_masks_end :: proc(R : ^alloc_color_cells_reply_t) -> generic_iterator_t ---;
                                                                           alloc_color_planes_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                  alloc_color_planes :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, reds : u16, greens : u16, blues : u16) -> alloc_color_planes_cookie_t ---;
                                                                        alloc_color_planes_unchecked :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, reds : u16, greens : u16, blues : u16) -> alloc_color_planes_cookie_t ---;
                                                                    alloc_color_planes_pixels_length :: proc(R : ^alloc_color_planes_reply_t) -> _c.int ---;
                                                                       alloc_color_planes_pixels_end :: proc(R : ^alloc_color_planes_reply_t) -> generic_iterator_t ---;
                                                                                  free_colors_sizeof :: proc(_buffer : rawptr, pixels_len : u32) -> _c.int ---;
                                                                                 free_colors_checked :: proc(c : ^connection_t, cmap : colormap_t, plane_mask : u32, pixels_len : u32, pixels : ^u32) -> void_cookie_t ---;
                                                                                         free_colors :: proc(c : ^connection_t, cmap : colormap_t, plane_mask : u32, pixels_len : u32, pixels : ^u32) -> void_cookie_t ---;
                                                                           free_colors_pixels_length :: proc(R : ^free_colors_request_t) -> _c.int ---;
                                                                              free_colors_pixels_end :: proc(R : ^free_colors_request_t) -> generic_iterator_t ---;
                                                                                      coloritem_next :: proc(i : ^coloritem_iterator_t) ---;
                                                                            alloc_color_cells_pixels :: proc(R : ^alloc_color_cells_reply_t) -> ^u32 ---;
                                                                           alloc_color_planes_pixels :: proc(R : ^alloc_color_planes_reply_t) -> ^u32 ---;
                                                                                  free_colors_pixels :: proc(R : ^free_colors_request_t) -> ^u32 ---;
                                                                                   alloc_color_reply :: proc(c : ^connection_t, cookie : alloc_color_cookie_t, e : ^^generic_error_t) -> ^alloc_color_reply_t ---;
                                                                             alloc_named_color_reply :: proc(c : ^connection_t, cookie : alloc_named_color_cookie_t, e : ^^generic_error_t) -> ^alloc_named_color_reply_t ---;
                                                                             alloc_color_cells_reply :: proc(c : ^connection_t, cookie : alloc_color_cells_cookie_t, e : ^^generic_error_t) -> ^alloc_color_cells_reply_t ---;
                                                                            alloc_color_planes_reply :: proc(c : ^connection_t, cookie : alloc_color_planes_cookie_t, e : ^^generic_error_t) -> ^alloc_color_planes_reply_t ---;
                                                                                       coloritem_end :: proc(i : coloritem_iterator_t) -> generic_iterator_t ---;
                                                                      list_installed_colormaps_reply :: proc(c : ^connection_t, cookie : list_installed_colormaps_cookie_t, e : ^^generic_error_t) -> ^list_installed_colormaps_reply_t ---;
                                                                                 store_colors_sizeof :: proc(_buffer : rawptr, items_len : u32) -> _c.int ---;
                                                                                store_colors_checked :: proc(c : ^connection_t, cmap : colormap_t, items_len : u32, items : ^coloritem_t) -> void_cookie_t ---;
                                                                                        store_colors :: proc(c : ^connection_t, cmap : colormap_t, items_len : u32, items : ^coloritem_t) -> void_cookie_t ---;
                                                                           store_colors_items_length :: proc(R : ^store_colors_request_t) -> _c.int ---;
                                                                                  store_colors_items :: proc(R : ^store_colors_request_t) -> ^coloritem_t ---;
                                                                         store_colors_items_iterator :: proc(R : ^store_colors_request_t) -> coloritem_iterator_t ---;
                                                                             alloc_color_cells_masks :: proc(R : ^alloc_color_cells_reply_t) -> ^u32 ---;
                                                                            store_named_color_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                           store_named_color_checked :: proc(c : ^connection_t, flags : u8, cmap : colormap_t, pixel : u32, name_len : u16, name : cstring) -> void_cookie_t ---;
                                                                                   store_named_color :: proc(c : ^connection_t, flags : u8, cmap : colormap_t, pixel : u32, name_len : u16, name : cstring) -> void_cookie_t ---;
                                                                       store_named_color_name_length :: proc(R : ^store_named_color_request_t) -> _c.int ---;
                                                                          store_named_color_name_end :: proc(R : ^store_named_color_request_t) -> generic_iterator_t ---;
                                                                                            rgb_next :: proc(i : ^rgb_iterator_t) ---;
                                                                                             rgb_end :: proc(i : rgb_iterator_t) -> generic_iterator_t ---;
                                                                                 query_colors_sizeof :: proc(_buffer : rawptr, pixels_len : u32) -> _c.int ---;
                                                                                        query_colors :: proc(c : ^connection_t, cmap : colormap_t, pixels_len : u32, pixels : ^u32) -> query_colors_cookie_t ---;
                                                                              query_colors_unchecked :: proc(c : ^connection_t, cmap : colormap_t, pixels_len : u32, pixels : ^u32) -> query_colors_cookie_t ---;
                                                                          query_colors_colors_length :: proc(R : ^query_colors_reply_t) -> _c.int ---;
                                                                        query_colors_colors_iterator :: proc(R : ^query_colors_reply_t) -> rgb_iterator_t ---;
                                                                              store_named_color_name :: proc(R : ^store_named_color_request_t) -> cstring ---;
                                                                                 lookup_color_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                        lookup_color :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> lookup_color_cookie_t ---;
                                                                              lookup_color_unchecked :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> lookup_color_cookie_t ---;
                                                                               create_cursor_checked :: proc(c : ^connection_t, cid : cursor_t, source : pixmap_t, mask : pixmap_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16, x : u16, y : u16) -> void_cookie_t ---;
                                                                                 query_colors_colors :: proc(R : ^query_colors_reply_t) -> ^rgb_t ---;
                                                                                  query_colors_reply :: proc(c : ^connection_t, cookie : query_colors_cookie_t, e : ^^generic_error_t) -> ^query_colors_reply_t ---;
                                                                                  lookup_color_reply :: proc(c : ^connection_t, cookie : lookup_color_cookie_t, e : ^^generic_error_t) -> ^lookup_color_reply_t ---;
                                                                                       create_cursor :: proc(c : ^connection_t, cid : cursor_t, source : pixmap_t, mask : pixmap_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16, x : u16, y : u16) -> void_cookie_t ---;
                                                                                         free_cursor :: proc(c : ^connection_t, cursor : cursor_t) -> void_cookie_t ---;
                                                                                      recolor_cursor :: proc(c : ^connection_t, cursor : cursor_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---;
                                                                                     query_best_size :: proc(c : ^connection_t, _class : u8, drawable : drawable_t, width : u16, height : u16) -> query_best_size_cookie_t ---;
                                                                           query_best_size_unchecked :: proc(c : ^connection_t, _class : u8, drawable : drawable_t, width : u16, height : u16) -> query_best_size_cookie_t ---;
                                                                      change_keyboard_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                         create_glyph_cursor_checked :: proc(c : ^connection_t, cid : cursor_t, source_font : font_t, mask_font : font_t, source_char : u16, mask_char : u16, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---;
                                                                                 create_glyph_cursor :: proc(c : ^connection_t, cid : cursor_t, source_font : font_t, mask_font : font_t, source_char : u16, mask_char : u16, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---;
                                                                                 free_cursor_checked :: proc(c : ^connection_t, cursor : cursor_t) -> void_cookie_t ---;
                                                                              recolor_cursor_checked :: proc(c : ^connection_t, cursor : cursor_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---;
                                                                              query_extension_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                     query_extension :: proc(c : ^connection_t, name_len : u16, name : cstring) -> query_extension_cookie_t ---;
                                                                           query_extension_unchecked :: proc(c : ^connection_t, name_len : u16, name : cstring) -> query_extension_cookie_t ---;
                                                                               query_best_size_reply :: proc(c : ^connection_t, cookie : query_best_size_cookie_t, e : ^^generic_error_t) -> ^query_best_size_reply_t ---;
                                                                              list_extensions_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                     list_extensions :: proc(c : ^connection_t) -> list_extensions_cookie_t ---;
                                                                           list_extensions_unchecked :: proc(c : ^connection_t) -> list_extensions_cookie_t ---;
                                                                        list_extensions_names_length :: proc(R : ^list_extensions_reply_t) -> _c.int ---;
                                                                      list_extensions_names_iterator :: proc(R : ^list_extensions_reply_t) -> str_iterator_t ---;
                                                                     change_keyboard_mapping_checked :: proc(c : ^connection_t, keycode_count : u8, first_keycode : keycode_t, keysyms_per_keycode : u8, keysyms : ^keysym_t) -> void_cookie_t ---;
                                                                               query_extension_reply :: proc(c : ^connection_t, cookie : query_extension_cookie_t, e : ^^generic_error_t) -> ^query_extension_reply_t ---;
                                                                             change_keyboard_mapping :: proc(c : ^connection_t, keycode_count : u8, first_keycode : keycode_t, keysyms_per_keycode : u8, keysyms : ^keysym_t) -> void_cookie_t ---;
                                                              change_keyboard_mapping_keysyms_length :: proc(R : ^change_keyboard_mapping_request_t) -> _c.int ---;
                                                                 change_keyboard_mapping_keysyms_end :: proc(R : ^change_keyboard_mapping_request_t) -> generic_iterator_t ---;
                                                                         get_keyboard_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                      get_keyboard_mapping_unchecked :: proc(c : ^connection_t, first_keycode : keycode_t, count : u8) -> get_keyboard_mapping_cookie_t ---;
                                                                 get_keyboard_mapping_keysyms_length :: proc(R : ^get_keyboard_mapping_reply_t) -> _c.int ---;
                                                                    get_keyboard_mapping_keysyms_end :: proc(R : ^get_keyboard_mapping_reply_t) -> generic_iterator_t ---;
                                                                     change_keyboard_mapping_keysyms :: proc(R : ^change_keyboard_mapping_request_t) -> ^keysym_t ---;
                                                                        get_keyboard_mapping_keysyms :: proc(R : ^get_keyboard_mapping_reply_t) -> ^keysym_t ---;
                                                                               list_extensions_reply :: proc(c : ^connection_t, cookie : list_extensions_cookie_t, e : ^^generic_error_t) -> ^list_extensions_reply_t ---;
                                                                                get_keyboard_mapping :: proc(c : ^connection_t, first_keycode : keycode_t, count : u8) -> get_keyboard_mapping_cookie_t ---;
                                                                          get_keyboard_mapping_reply :: proc(c : ^connection_t, cookie : get_keyboard_mapping_cookie_t, e : ^^generic_error_t) -> ^get_keyboard_mapping_reply_t ---;
                                                        change_keyboard_control_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^change_keyboard_control_value_list_t) -> _c.int ---;
                                                           change_keyboard_control_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^change_keyboard_control_value_list_t) -> _c.int ---;
                                                           change_keyboard_control_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---;
                                                                      change_keyboard_control_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                     change_keyboard_control_checked :: proc(c : ^connection_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                             change_keyboard_control :: proc(c : ^connection_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---;
                                                                 change_keyboard_control_aux_checked :: proc(c : ^connection_t, value_mask : u32, value_list : ^change_keyboard_control_value_list_t) -> void_cookie_t ---;
                                                                         change_keyboard_control_aux :: proc(c : ^connection_t, value_mask : u32, value_list : ^change_keyboard_control_value_list_t) -> void_cookie_t ---;
                                                                                get_keyboard_control :: proc(c : ^connection_t) -> get_keyboard_control_cookie_t ---;
                                                                      get_keyboard_control_unchecked :: proc(c : ^connection_t) -> get_keyboard_control_cookie_t ---;
                                                                                        bell_checked :: proc(c : ^connection_t, percent : i8) -> void_cookie_t ---;
                                                                                                bell :: proc(c : ^connection_t, percent : i8) -> void_cookie_t ---;
                                                                      change_pointer_control_checked :: proc(c : ^connection_t, acceleration_numerator : i16, acceleration_denominator : i16, threshold : i16, do_acceleration : u8, do_threshold : u8) -> void_cookie_t ---;
                                                                              change_pointer_control :: proc(c : ^connection_t, acceleration_numerator : i16, acceleration_denominator : i16, threshold : i16, do_acceleration : u8, do_threshold : u8) -> void_cookie_t ---;
                                                                  change_keyboard_control_value_list :: proc(R : ^change_keyboard_control_request_t) -> rawptr ---;
                                                                          get_keyboard_control_reply :: proc(c : ^connection_t, cookie : get_keyboard_control_cookie_t, e : ^^generic_error_t) -> ^get_keyboard_control_reply_t ---;
                                                                                 get_pointer_control :: proc(c : ^connection_t) -> get_pointer_control_cookie_t ---;
                                                                       get_pointer_control_unchecked :: proc(c : ^connection_t) -> get_pointer_control_cookie_t ---;
                                                                           get_pointer_control_reply :: proc(c : ^connection_t, cookie : get_pointer_control_cookie_t, e : ^^generic_error_t) -> ^get_pointer_control_reply_t ---;
                                                                            set_screen_saver_checked :: proc(c : ^connection_t, timeout : i16, interval : i16, prefer_blanking : u8, allow_exposures : u8) -> void_cookie_t ---;
                                                                                    set_screen_saver :: proc(c : ^connection_t, timeout : i16, interval : i16, prefer_blanking : u8, allow_exposures : u8) -> void_cookie_t ---;
                                                                                    get_screen_saver :: proc(c : ^connection_t) -> get_screen_saver_cookie_t ---;
                                                                          get_screen_saver_unchecked :: proc(c : ^connection_t) -> get_screen_saver_cookie_t ---;
                                                                              get_screen_saver_reply :: proc(c : ^connection_t, cookie : get_screen_saver_cookie_t, e : ^^generic_error_t) -> ^get_screen_saver_reply_t ---;
                                                                                 change_hosts_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                change_hosts_checked :: proc(c : ^connection_t, mode : u8, family : u8, address_len : u16, address : ^u8) -> void_cookie_t ---;
                                                                                        change_hosts :: proc(c : ^connection_t, mode : u8, family : u8, address_len : u16, address : ^u8) -> void_cookie_t ---;
                                                                         change_hosts_address_length :: proc(R : ^change_hosts_request_t) -> _c.int ---;
                                                                            change_hosts_address_end :: proc(R : ^change_hosts_request_t) -> generic_iterator_t ---;
                                                                                         host_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                change_hosts_address :: proc(R : ^change_hosts_request_t) -> ^u8 ---;
                                                                                        host_address :: proc(R : ^host_t) -> ^u8 ---;
                                                                                 host_address_length :: proc(R : ^host_t) -> _c.int ---;
                                                                                    host_address_end :: proc(R : ^host_t) -> generic_iterator_t ---;
                                                                                           host_next :: proc(i : ^host_iterator_t) ---;
                                                                           list_hosts_hosts_iterator :: proc(R : ^list_hosts_reply_t) -> host_iterator_t ---;
                                                                                no_operation_checked :: proc(c : ^connection_t) -> void_cookie_t ---;
                                                                                        no_operation :: proc(c : ^connection_t) -> void_cookie_t ---;
                                                                                          list_hosts :: proc(c : ^connection_t) -> list_hosts_cookie_t ---;
                                                                   get_modifier_mapping_keycodes_end :: proc(R : ^get_modifier_mapping_reply_t) -> generic_iterator_t ---;
                                                                         get_pointer_mapping_map_end :: proc(R : ^get_pointer_mapping_reply_t) -> generic_iterator_t ---;
                                                                             list_hosts_hosts_length :: proc(R : ^list_hosts_reply_t) -> _c.int ---;
                                                                          set_access_control_checked :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---;
                                                                                  set_access_control :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---;
                                                                         set_close_down_mode_checked :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---;
                                                                                 set_close_down_mode :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---;
                                                                                 kill_client_checked :: proc(c : ^connection_t, resource : u32) -> void_cookie_t ---;
                                                                                         kill_client :: proc(c : ^connection_t, resource : u32) -> void_cookie_t ---;
                                                                           rotate_properties_checked :: proc(c : ^connection_t, window : window_t, atoms_len : u16, delta : i16, atoms : ^atom_t) -> void_cookie_t ---;
                                                                                   rotate_properties :: proc(c : ^connection_t, window : window_t, atoms_len : u16, delta : i16, atoms : ^atom_t) -> void_cookie_t ---;
                                                                            rotate_properties_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                            host_end :: proc(i : host_iterator_t) -> generic_iterator_t ---;
                                                                                   list_hosts_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                list_hosts_unchecked :: proc(c : ^connection_t) -> list_hosts_cookie_t ---;
                                                                      rotate_properties_atoms_length :: proc(R : ^rotate_properties_request_t) -> _c.int ---;
                                                                         rotate_properties_atoms_end :: proc(R : ^rotate_properties_request_t) -> generic_iterator_t ---;
                                                                          force_screen_saver_checked :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---;
                                                                                  force_screen_saver :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---;
                                                                          set_pointer_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                 set_pointer_mapping :: proc(c : ^connection_t, map_len : u8, map_ : ^u8) -> set_pointer_mapping_cookie_t ---;
                                                                       set_pointer_mapping_unchecked :: proc(c : ^connection_t, map_len : u8, map_ : ^u8) -> set_pointer_mapping_cookie_t ---;
                                                                          get_pointer_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                 get_pointer_mapping :: proc(c : ^connection_t) -> get_pointer_mapping_cookie_t ---;
                                                                       get_pointer_mapping_unchecked :: proc(c : ^connection_t) -> get_pointer_mapping_cookie_t ---;
                                                                      get_pointer_mapping_map_length :: proc(R : ^get_pointer_mapping_reply_t) -> _c.int ---;
                                                                         set_modifier_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                set_modifier_mapping :: proc(c : ^connection_t, keycodes_per_modifier : u8, keycodes : ^keycode_t) -> set_modifier_mapping_cookie_t ---;
                                                                      set_modifier_mapping_unchecked :: proc(c : ^connection_t, keycodes_per_modifier : u8, keycodes : ^keycode_t) -> set_modifier_mapping_cookie_t ---;
                                                                          set_modifier_mapping_reply :: proc(c : ^connection_t, cookie : set_modifier_mapping_cookie_t, e : ^^generic_error_t) -> ^set_modifier_mapping_reply_t ---;
                                                                         get_modifier_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---;
                                                                                get_modifier_mapping :: proc(c : ^connection_t) -> get_modifier_mapping_cookie_t ---;
                                                                      get_modifier_mapping_unchecked :: proc(c : ^connection_t) -> get_modifier_mapping_cookie_t ---;
                                                                get_modifier_mapping_keycodes_length :: proc(R : ^get_modifier_mapping_reply_t) -> _c.int ---;
                                                                             get_pointer_mapping_map :: proc(R : ^get_pointer_mapping_reply_t) -> ^u8 ---;
                                                                       get_modifier_mapping_keycodes :: proc(R : ^get_modifier_mapping_reply_t) -> ^keycode_t ---;
                                                                                    list_hosts_reply :: proc(c : ^connection_t, cookie : list_hosts_cookie_t, e : ^^generic_error_t) -> ^list_hosts_reply_t ---;
                                                                             rotate_properties_atoms :: proc(R : ^rotate_properties_request_t) -> ^atom_t ---;
                                                                           set_pointer_mapping_reply :: proc(c : ^connection_t, cookie : set_pointer_mapping_cookie_t, e : ^^generic_error_t) -> ^set_pointer_mapping_reply_t ---;
                                                                           get_pointer_mapping_reply :: proc(c : ^connection_t, cookie : get_pointer_mapping_cookie_t, e : ^^generic_error_t) -> ^get_pointer_mapping_reply_t ---;
                                                                          get_modifier_mapping_reply :: proc(c : ^connection_t, cookie : get_modifier_mapping_cookie_t, e : ^^generic_error_t) -> ^get_modifier_mapping_reply_t ---;
}

