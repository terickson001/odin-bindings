package xcb

import _c "core:c"

/* Macros */

X_PROTOCOL :: 11;
X_PROTOCOL_REVISION :: 0;
X_TCP_PORT :: 6000;
CONN_ERROR :: 1;
CONN_CLOSED_EXT_NOTSUPPORTED :: 2;
CONN_CLOSED_MEM_INSUFFICIENT :: 3;
CONN_CLOSED_REQ_LEN_EXCEED :: 4;
CONN_CLOSED_PARSE_ERR :: 5;
CONN_CLOSED_INVALID_SCREEN :: 6;
CONN_CLOSED_FDPASSING_FAILED :: 7;
NONE :: 0;
COPY_FROM_PARENT :: 0;
CURRENT_TIME :: 0;
NO_SYMBOL :: 0;
connection_t :: struct {};

generic_iterator_t :: struct {
    data  : rawptr,
    rem   : int,
    index : int,
};

generic_event_t :: struct {
    response_type : u8,
    pad0          : u8,
    sequence      : u16,
    pad           : [7]u32,
    full_sequence : u32,
};

generic_error_t :: struct {
    response_type : u8,
    error_code    : u8,
    sequence      : u16,
    resource_id   : u32,
    minor_code    : u16,
    major_code    : u8,
    pad0          : u8,
    pad           : [5]u32,
    full_sequence : u32,
};

void_cookie_t :: struct {
    sequence : _c.uint,
};

auth_info_t :: struct {
    namelen : int,
    name    : cstring,
    datalen : int,
    data    : cstring,
};

special_event :: struct {};

special_event_t :: special_event;

extension_t :: struct {};


/***** libxcb *****/
foreign import libxcb "/usr/lib/libxcb.so"

/* Procedures */
@(link_prefix="xcb_")
foreign libxcb {
    flush                                                                  :: proc(c : ^connection_t) -> int ---;
    get_maximum_request_length                                             :: proc(c : ^connection_t) -> u32 ---;
    prefetch_maximum_request_length                                        :: proc(c : ^connection_t) ---;
    wait_for_event                                                         :: proc(c : ^connection_t) -> ^generic_event_t ---;
    poll_for_event                                                         :: proc(c : ^connection_t) -> ^generic_event_t ---;
    poll_for_queued_event                                                  :: proc(c : ^connection_t) -> ^generic_event_t ---;
    poll_for_special_event                                                 :: proc(c : ^connection_t, se : ^special_event_t) -> ^generic_event_t ---;
    wait_for_special_event                                                 :: proc(c : ^connection_t, se : ^special_event_t) -> ^generic_event_t ---;
    unregister_for_special_event                                           :: proc(c : ^connection_t, se : ^special_event_t) ---;
    register_for_special_xge                                               :: proc(c : ^connection_t, ext : ^extension_t, eid : u32, stamp : ^u32) -> ^special_event_t ---;
    request_check                                                          :: proc(c : ^connection_t, cookie : void_cookie_t) -> ^generic_error_t ---;
    discard_reply                                                          :: proc(c : ^connection_t, sequence : _c.uint) ---;
    discard_reply64                                                        :: proc(c : ^connection_t, sequence : u64) ---;
    prefetch_extension_data                                                :: proc(c : ^connection_t, ext : ^extension_t) ---;
    get_setup                                                              :: proc(c : ^connection_t) -> ^setup_t ---;
    get_extension_data                                                     :: proc(c : ^connection_t, ext : ^extension_t) -> ^query_extension_reply_t ---;
    get_file_descriptor                                                    :: proc(c : ^connection_t) -> int ---;
    connection_has_error                                                   :: proc(c : ^connection_t) -> int ---;
    connect_to_fd                                                          :: proc(fd : int, auth_info : ^auth_info_t) -> ^connection_t ---;
    disconnect                                                             :: proc(c : ^connection_t) ---;
    parse_display                                                          :: proc(name : cstring, host : ^cstring, display : ^int, screen : ^int) -> int ---;
    generate_id                                                            :: proc(c : ^connection_t) -> u32 ---;
    total_read                                                             :: proc(c : ^connection_t) -> u64 ---;
    total_written                                                          :: proc(c : ^connection_t) -> u64 ---;
    connect                                                                :: proc(displayname : cstring, screenp : ^int) -> ^connection_t ---;
    connect_to_display_with_auth_info                                      :: proc(display : cstring, auth : ^auth_info_t, screen : ^int) -> ^connection_t ---;
}

