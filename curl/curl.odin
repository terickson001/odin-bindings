package curl

import _c "core:c"

/* Macros */

SOCKET_BAD :: -1;
SSLBACKEND_LIBRESSL :: SSLBACKEND_OPENSSL;
SSLBACKEND_BORINGSSL :: SSLBACKEND_OPENSSL;
SSLBACKEND_CYASSL :: SSLBACKEND_WOLFSSL;
SSLBACKEND_DARWINSSL :: SSLBACKEND_SECURETRANSPORT;
HTTPPOST_FILENAME :: (1 << 0);
HTTPPOST_READFILE :: (1 << 1);
HTTPPOST_PTRNAME :: (1 << 2);
HTTPPOST_PTRCONTENTS :: (1 << 3);
HTTPPOST_BUFFER :: (1 << 4);
HTTPPOST_PTRBUFFER :: (1 << 5);
HTTPPOST_CALLBACK :: (1 << 6);
HTTPPOST_LARGE :: (1 << 7);
PROGRESSFUNC_CONTINUE :: 0x10000001;
MAX_READ_SIZE :: 524288;
MAX_WRITE_SIZE :: 16384;
MAX_HTTP_HEADER :: (100 * 1024);
WRITEFUNC_PAUSE :: 0x10000001;
FINFOFLAG_KNOWN_FILENAME :: (1 << 0);
FINFOFLAG_KNOWN_FILETYPE :: (1 << 1);
FINFOFLAG_KNOWN_TIME :: (1 << 2);
FINFOFLAG_KNOWN_PERM :: (1 << 3);
FINFOFLAG_KNOWN_UID :: (1 << 4);
FINFOFLAG_KNOWN_GID :: (1 << 5);
FINFOFLAG_KNOWN_SIZE :: (1 << 6);
FINFOFLAG_KNOWN_HLINKCOUNT :: (1 << 7);
CHUNK_BGN_FUNC_OK :: 0;
CHUNK_BGN_FUNC_FAIL :: 1;
CHUNK_BGN_FUNC_SKIP :: 2;
LIBCURL_COPYRIGHT :: "1996 - 2021 Daniel Stenberg, <daniel@haxx.se>.";
LIBCURL_VERSION :: "7.77.0";
LIBCURL_VERSION_MAJOR :: 7;
LIBCURL_VERSION_MINOR :: 77;
LIBCURL_VERSION_PATCH :: 0;
LIBCURL_VERSION_NUM :: 0x74D00;
LIBCURL_TIMESTAMP :: "2021-05-26";
BLOB_COPY :: 1;
BLOB_NOCOPY :: 0;
M_CALL_MULTI_SOCKET :: M_CALL_MULTI_PERFORM;
PIPE_NOTHING :: 0;
PIPE_HTTP1 :: 1;
PIPE_MULTIPLEX :: 2;
WAIT_POLLIN :: 0x1;
WAIT_POLLPRI :: 0x2;
WAIT_POLLOUT :: 0x4;
POLL_NONE :: 0;
POLL_IN :: 1;
POLL_OUT :: 2;
POLL_INOUT :: 3;
POLL_REMOVE :: 4;
SOCKET_TIMEOUT :: SOCKET_BAD;
CSELECT_IN :: 0x1;
CSELECT_OUT :: 0x2;
CSELECT_ERR :: 0x4;
OT_FLAG_ALIAS :: (1 << 0);
U_DEFAULT_PORT :: (1 << 0);
U_NO_DEFAULT_PORT :: (1 << 1);
U_DEFAULT_SCHEME :: (1 << 2);
U_NON_SUPPORT_SCHEME :: (1 << 3);
U_PATH_AS_IS :: (1 << 4);
U_DISALLOW_USER :: (1 << 5);
U_URLDECODE :: (1 << 6);
U_URLENCODE :: (1 << 7);
U_APPENDQUERY :: (1 << 8);
U_GUESS_SCHEME :: (1 << 9);
U_NO_AUTHORITY :: (1 << 10);
CHUNK_END_FUNC_OK :: 0;
CHUNK_END_FUNC_FAIL :: 1;
FNMATCHFUNC_MATCH :: 0;
FNMATCHFUNC_NOMATCH :: 1;
FNMATCHFUNC_FAIL :: 2;
SEEKFUNC_OK :: 0;
SEEKFUNC_FAIL :: 1;
SEEKFUNC_CANTSEEK :: 2;
READFUNC_ABORT :: 0x10000000;
READFUNC_PAUSE :: 0x10000001;
TRAILERFUNC_OK :: 0;
TRAILERFUNC_ABORT :: 1;
SOCKOPT_OK :: 0;
SOCKOPT_ERROR :: 1;
SOCKOPT_ALREADY_CONNECTED :: 2;
PULL_SYS_TYPES_H :: 1;
PULL_SYS_SOCKET_H :: 1;
PUSH_OK :: 0;
PUSH_DENY :: 1;
PUSH_ERROROUT :: 2;
FORMAT_CURL_OFF_T :: "ld";
FORMAT_CURL_OFF_TU :: "lu";
E_OBSOLETE16 :: E_HTTP2;
E_OBSOLETE10 :: E_FTP_ACCEPT_FAILED;
E_OBSOLETE12 :: E_FTP_ACCEPT_TIMEOUT;
OPT_ENCODING :: OPT_ACCEPT_ENCODING;
E_FTP_WEIRD_SERVER_REPLY :: E_WEIRD_SERVER_REPLY;
E_SSL_CACERT :: E_PEER_FAILED_VERIFICATION;
E_UNKNOWN_TELNET_OPTION :: E_UNKNOWN_OPTION;
E_SSL_PEER_CERTIFICATE :: E_PEER_FAILED_VERIFICATION;
E_OBSOLETE :: E_OBSOLETE50;
E_BAD_PASSWORD_ENTERED :: E_OBSOLETE46;
E_BAD_CALLING_ORDER :: E_OBSOLETE44;
E_FTP_USER_PASSWORD_INCORRECT :: E_OBSOLETE10;
E_FTP_CANT_RECONNECT :: E_OBSOLETE16;
E_FTP_COULDNT_GET_SIZE :: E_OBSOLETE32;
E_FTP_COULDNT_SET_ASCII :: E_OBSOLETE29;
E_FTP_WEIRD_USER_REPLY :: E_OBSOLETE12;
E_FTP_WRITE_ERROR :: E_OBSOLETE20;
E_LIBRARY_NOT_FOUND :: E_OBSOLETE40;
E_MALFORMAT_USER :: E_OBSOLETE24;
E_SHARE_IN_USE :: E_OBSOLETE57;
E_URL_MALFORMAT_USER :: E_NOT_BUILT_IN;
E_FTP_ACCESS_DENIED :: E_REMOTE_ACCESS_DENIED;
E_FTP_COULDNT_SET_BINARY :: E_FTP_COULDNT_SET_TYPE;
E_FTP_QUOTE_ERROR :: E_QUOTE_ERROR;
E_TFTP_DISKFULL :: E_REMOTE_DISK_FULL;
E_TFTP_EXISTS :: E_REMOTE_FILE_EXISTS;
E_HTTP_RANGE_ERROR :: E_RANGE_ERROR;
E_FTP_SSL_FAILED :: E_USE_SSL_FAILED;
E_OPERATION_TIMEOUTED :: E_OPERATION_TIMEDOUT;
E_HTTP_NOT_FOUND :: E_HTTP_RETURNED_ERROR;
E_HTTP_PORT_FAILED :: E_INTERFACE_FAILED;
E_FTP_COULDNT_STOR_FILE :: E_UPLOAD_FAILED;
E_FTP_PARTIAL_FILE :: E_PARTIAL_FILE;
E_FTP_BAD_DOWNLOAD_RESUME :: E_BAD_DOWNLOAD_RESUME;
E_ALREADY_COMPLETE :: 99999;
OPT_FILE :: OPT_WRITEDATA;
OPT_INFILE :: OPT_READDATA;
OPT_WRITEHEADER :: OPT_HEADERDATA;
OPT_WRITEINFO :: OPT_OBSOLETE40;
OPT_CLOSEPOLICY :: OPT_OBSOLETE72;
AUTH_NONE :: ((_c.ulong)(0));
AUTH_BASIC :: (((_c.ulong)(1)) << 0);
AUTH_DIGEST :: (((_c.ulong)(1)) << 1);
AUTH_NEGOTIATE :: (((_c.ulong)(1)) << 2);
AUTH_GSSNEGOTIATE :: AUTH_NEGOTIATE;
AUTH_GSSAPI :: AUTH_NEGOTIATE;
AUTH_NTLM :: (((_c.ulong)(1)) << 3);
AUTH_DIGEST_IE :: (((_c.ulong)(1)) << 4);
AUTH_NTLM_WB :: (((_c.ulong)(1)) << 5);
AUTH_BEARER :: (((_c.ulong)(1)) << 6);
AUTH_AWS_SIGV4 :: (((_c.ulong)(1)) << 7);
AUTH_ONLY :: (((_c.ulong)(1)) << 31);
AUTH_ANY :: (~AUTH_DIGEST_IE);
AUTH_ANYSAFE :: (~(AUTH_BASIC | AUTH_DIGEST_IE));
SSH_AUTH_ANY :: ~u32(0);
SSH_AUTH_NONE :: 0;
SSH_AUTH_PUBLICKEY :: (1 << 0);
SSH_AUTH_PASSWORD :: (1 << 1);
SSH_AUTH_HOST :: (1 << 2);
SSH_AUTH_KEYBOARD :: (1 << 3);
SSH_AUTH_AGENT :: (1 << 4);
SSH_AUTH_GSSAPI :: (1 << 5);
SSH_AUTH_DEFAULT :: SSH_AUTH_ANY;
GSSAPI_DELEGATION_NONE :: 0;
GSSAPI_DELEGATION_POLICY_FLAG :: (1 << 0);
GSSAPI_DELEGATION_FLAG :: (1 << 1);
ERROR_SIZE :: 256;
SSLOPT_ALLOW_BEAST :: (1 << 0);
SSLOPT_NO_REVOKE :: (1 << 1);
SSLOPT_NO_PARTIALCHAIN :: (1 << 2);
SSLOPT_REVOKE_BEST_EFFORT :: (1 << 3);
SSLOPT_NATIVE_CA :: (1 << 4);
SSLOPT_AUTO_CLIENT_CERT :: (1 << 5);
HET_DEFAULT :: 200;
UPKEEP_INTERVAL_DEFAULT :: 60000;
FTPSSL_NONE :: USESSL_NONE;
FTPSSL_TRY :: USESSL_TRY;
FTPSSL_CONTROL :: USESSL_CONTROL;
FTPSSL_ALL :: USESSL_ALL;
FTPSSL_LAST :: USESSL_LAST;
HEADER_UNIFIED :: 0;
HEADER_SEPARATE :: (1 << 0);
ALTSVC_READONLYFILE :: (1 << 2);
ALTSVC_H1 :: (1 << 3);
ALTSVC_H2 :: (1 << 4);
ALTSVC_H3 :: (1 << 5);
HSTS_ENABLE :: (_c.long)(1 << 0);
HSTS_READONLYFILE :: (_c.long)(1 << 1);
PROTO_HTTP :: (1 << 0);
PROTO_HTTPS :: (1 << 1);
PROTO_FTP :: (1 << 2);
PROTO_FTPS :: (1 << 3);
PROTO_SCP :: (1 << 4);
PROTO_SFTP :: (1 << 5);
PROTO_TELNET :: (1 << 6);
PROTO_LDAP :: (1 << 7);
PROTO_LDAPS :: (1 << 8);
PROTO_DICT :: (1 << 9);
PROTO_FILE :: (1 << 10);
PROTO_TFTP :: (1 << 11);
PROTO_IMAP :: (1 << 12);
PROTO_IMAPS :: (1 << 13);
PROTO_POP3 :: (1 << 14);
PROTO_POP3S :: (1 << 15);
PROTO_SMTP :: (1 << 16);
PROTO_SMTPS :: (1 << 17);
PROTO_RTSP :: (1 << 18);
PROTO_RTMP :: (1 << 19);
PROTO_RTMPT :: (1 << 20);
PROTO_RTMPE :: (1 << 21);
PROTO_RTMPTE :: (1 << 22);
PROTO_RTMPS :: (1 << 23);
PROTO_RTMPTS :: (1 << 24);
PROTO_GOPHER :: (1 << 25);
PROTO_SMB :: (1 << 26);
PROTO_SMBS :: (1 << 27);
PROTO_MQTT :: (1 << 28);
PROTO_GOPHERS :: (1 << 29);
PROTO_ALL :: (~u32(0));
OPTTYPE_LONG :: 0;
OPTTYPE_OBJECTPOINT :: 10000;
OPTTYPE_FUNCTIONPOINT :: 20000;
OPTTYPE_OFF_T :: 30000;
OPTTYPE_BLOB :: 40000;
OPTTYPE_STRINGPOINT :: OPTTYPE_OBJECTPOINT;
OPTTYPE_SLISTPOINT :: OPTTYPE_OBJECTPOINT;
OPTTYPE_CBPOINT :: OPTTYPE_OBJECTPOINT;
OPTTYPE_VALUES :: OPTTYPE_LONG;
OPT_PROGRESSDATA :: OPT_XFERINFODATA;
OPT_SERVER_RESPONSE_TIMEOUT :: OPT_FTP_RESPONSE_TIMEOUT;
OPT_POST301 :: OPT_POSTREDIR;
OPT_SSLKEYPASSWD :: OPT_KEYPASSWD;
OPT_FTPAPPEND :: OPT_APPEND;
OPT_FTPLISTONLY :: OPT_DIRLISTONLY;
OPT_FTP_SSL :: OPT_USE_SSL;
OPT_SSLCERTPASSWD :: OPT_KEYPASSWD;
OPT_KRB4LEVEL :: OPT_KRBLEVEL;
IPRESOLVE_WHATEVER :: 0;
IPRESOLVE_V4 :: 1;
IPRESOLVE_V6 :: 2;
OPT_RTSPHEADER :: OPT_HTTPHEADER;
REDIR_GET_ALL :: 0;
REDIR_POST_301 :: 1;
REDIR_POST_302 :: 2;
REDIR_POST_303 :: 4;
REDIR_POST_ALL :: (REDIR_POST_301 | REDIR_POST_302 | REDIR_POST_303);
ZERO_TERMINATED :: (~(uint)(0));
INFO_STRING :: 0x100000;
INFO_LONG :: 0x200000;
INFO_DOUBLE :: 0x300000;
INFO_SLIST :: 0x400000;
INFO_PTR :: 0x400000;
INFO_SOCKET :: 0x500000;
INFO_OFF_T :: 0x600000;
INFO_MASK :: 0xFFFFF;
INFO_TYPEMASK :: 0xF00000;
INFO_HTTP_CODE :: INFO_RESPONSE_CODE;
GLOBAL_SSL :: (1 << 0);
GLOBAL_WIN32 :: (1 << 1);
GLOBAL_ALL :: (GLOBAL_SSL | GLOBAL_WIN32);
GLOBAL_NOTHING :: 0;
GLOBAL_DEFAULT :: GLOBAL_ALL;
GLOBAL_ACK_EINTR :: (1 << 2);
VERSION_NOW :: VERSION_TENTH;
VERSION_IPV6 :: (1 << 0);
VERSION_KERBEROS4 :: (1 << 1);
VERSION_SSL :: (1 << 2);
VERSION_LIBZ :: (1 << 3);
VERSION_NTLM :: (1 << 4);
VERSION_GSSNEGOTIATE :: (1 << 5);
VERSION_DEBUG :: (1 << 6);
VERSION_ASYNCHDNS :: (1 << 7);
VERSION_SPNEGO :: (1 << 8);
VERSION_LARGEFILE :: (1 << 9);
VERSION_IDN :: (1 << 10);
VERSION_SSPI :: (1 << 11);
VERSION_CONV :: (1 << 12);
VERSION_CURLDEBUG :: (1 << 13);
VERSION_TLSAUTH_SRP :: (1 << 14);
VERSION_NTLM_WB :: (1 << 15);
VERSION_HTTP2 :: (1 << 16);
VERSION_GSSAPI :: (1 << 17);
VERSION_KERBEROS5 :: (1 << 18);
VERSION_UNIX_SOCKETS :: (1 << 19);
VERSION_PSL :: (1 << 20);
VERSION_HTTPS_PROXY :: (1 << 21);
VERSION_MULTI_SSL :: (1 << 22);
VERSION_BROTLI :: (1 << 23);
VERSION_ALTSVC :: (1 << 24);
VERSION_HTTP3 :: (1 << 25);
VERSION_ZSTD :: (1 << 26);
VERSION_UNICODE :: (1 << 27);
VERSION_HSTS :: (1 << 28);
VERSION_GSASL :: (1 << 29);
PAUSE_RECV :: (1 << 0);
PAUSE_RECV_CONT :: (0);
PAUSE_SEND :: (1 << 2);
PAUSE_SEND_CONT :: (0);
PAUSE_ALL :: (PAUSE_RECV | PAUSE_SEND);
PAUSE_CONT :: (PAUSE_RECV_CONT | PAUSE_SEND_CONT);
time_t :: __time_t;

;

__fd_mask :: _c.long;

fd_set :: struct {
    __fds_bits : [1024 / (8 * (int)(size_of(__fd_mask)))]__fd_mask,
};

;

socket_t :: int;

sslbackend :: _c.int;
/*  <ENUM> :: enum { */
SSLBACKEND_NONE                :: 0;
SSLBACKEND_OPENSSL             :: 1;
SSLBACKEND_GNUTLS              :: 2;
SSLBACKEND_NSS                 :: 3;
SSLBACKEND_OBSOLETE4           :: 4;
SSLBACKEND_GSKIT               :: 5;
SSLBACKEND_POLARSSL            :: 6;
SSLBACKEND_WOLFSSL             :: 7;
SSLBACKEND_SCHANNEL            :: 8;
SSLBACKEND_SECURETRANSPORT     :: 9;
SSLBACKEND_AXTLS               :: 10;
SSLBACKEND_MBEDTLS             :: 11;
SSLBACKEND_MESALINK            :: 12;
SSLBACKEND_BEARSSL             :: 13;
SSLBACKEND_RUSTLS              :: 14;
/* } */;

httppost :: struct {
    next           : ^httppost,
    name           : cstring,
    namelength     : _c.long,
    contents       : cstring,
    contentslength : _c.long,
    buffer         : cstring,
    bufferlength   : _c.long,
    contenttype    : cstring,
    contentheader  : ^slist,
    more           : ^httppost,
    flags          : _c.long,
    showfilename   : cstring,
    userp          : rawptr,
    contentlen     : off_t,
};

curlfiletype :: _c.int;
/*  <ENUM> :: enum { */
FILETYPE_FILE             :: 0;
FILETYPE_DIRECTORY        :: 1;
FILETYPE_SYMLINK          :: 2;
FILETYPE_DEVICE_BLOCK     :: 3;
FILETYPE_DEVICE_CHAR      :: 4;
FILETYPE_NAMEDPIPE        :: 5;
FILETYPE_SOCKET           :: 6;
FILETYPE_DOOR             :: 7;
FILETYPE_UNKNOWN          :: 8;
/* } */;

seek_callback :: (proc(instream : rawptr, offset : off_t, origin : int) -> int);

read_callback :: (proc(buffer : cstring, size : uint, nitems : uint, instream : rawptr) -> uint);

curlsocktype :: _c.int;
/*  <ENUM> :: enum { */
SOCKTYPE_IPCXN      :: 0;
SOCKTYPE_ACCEPT     :: 1;
SOCKTYPE_LAST       :: 2;
/* } */;

curlioerr :: _c.int;
/*  <ENUM> :: enum { */
IOE_OK              :: 0;
IOE_UNKNOWNCMD      :: 1;
IOE_FAILRESTART     :: 2;
IOE_LAST            :: 3;
/* } */;

curliocmd :: _c.int;
/*  <ENUM> :: enum { */
IOCMD_NOP             :: 0;
IOCMD_RESTARTREAD     :: 1;
IOCMD_LAST            :: 2;
/* } */;

malloc_callback :: (proc(size : uint) -> rawptr);

infotype :: _c.int;
/*  <ENUM> :: enum { */
INFO_TEXT             :: 0;
INFO_HEADER_IN        :: 1;
INFO_HEADER_OUT       :: 2;
INFO_DATA_IN          :: 3;
INFO_DATA_OUT         :: 4;
INFO_SSL_DATA_IN      :: 5;
INFO_SSL_DATA_OUT     :: 6;
INFO_END              :: 7;
/* } */;

free_callback :: proc(ptr : rawptr);

realloc_callback :: (proc(ptr : rawptr, size : uint) -> rawptr);

strdup_callback :: (proc(str : cstring) -> cstring);

calloc_callback :: (proc(nmemb : uint, size : uint) -> rawptr);

off_t :: _c.long;

CURLcode :: _c.int;
/*  <ENUM> :: enum { */
E_OK                           :: 0;
E_UNSUPPORTED_PROTOCOL         :: 1;
E_FAILED_INIT                  :: 2;
E_URL_MALFORMAT                :: 3;
E_NOT_BUILT_IN                 :: 4;
E_COULDNT_RESOLVE_PROXY        :: 5;
E_COULDNT_RESOLVE_HOST         :: 6;
E_COULDNT_CONNECT              :: 7;
E_WEIRD_SERVER_REPLY           :: 8;
E_REMOTE_ACCESS_DENIED         :: 9;
E_FTP_ACCEPT_FAILED            :: 10;
E_FTP_WEIRD_PASS_REPLY         :: 11;
E_FTP_ACCEPT_TIMEOUT           :: 12;
E_FTP_WEIRD_PASV_REPLY         :: 13;
E_FTP_WEIRD_227_FORMAT         :: 14;
E_FTP_CANT_GET_HOST            :: 15;
E_HTTP2                        :: 16;
E_FTP_COULDNT_SET_TYPE         :: 17;
E_PARTIAL_FILE                 :: 18;
E_FTP_COULDNT_RETR_FILE        :: 19;
E_OBSOLETE20                   :: 20;
E_QUOTE_ERROR                  :: 21;
E_HTTP_RETURNED_ERROR          :: 22;
E_WRITE_ERROR                  :: 23;
E_OBSOLETE24                   :: 24;
E_UPLOAD_FAILED                :: 25;
E_READ_ERROR                   :: 26;
E_OUT_OF_MEMORY                :: 27;
E_OPERATION_TIMEDOUT           :: 28;
E_OBSOLETE29                   :: 29;
E_FTP_PORT_FAILED              :: 30;
E_FTP_COULDNT_USE_REST         :: 31;
E_OBSOLETE32                   :: 32;
E_RANGE_ERROR                  :: 33;
E_HTTP_POST_ERROR              :: 34;
E_SSL_CONNECT_ERROR            :: 35;
E_BAD_DOWNLOAD_RESUME          :: 36;
E_FILE_COULDNT_READ_FILE       :: 37;
E_LDAP_CANNOT_BIND             :: 38;
E_LDAP_SEARCH_FAILED           :: 39;
E_OBSOLETE40                   :: 40;
E_FUNCTION_NOT_FOUND           :: 41;
E_ABORTED_BY_CALLBACK          :: 42;
E_BAD_FUNCTION_ARGUMENT        :: 43;
E_OBSOLETE44                   :: 44;
E_INTERFACE_FAILED             :: 45;
E_OBSOLETE46                   :: 46;
E_TOO_MANY_REDIRECTS           :: 47;
E_UNKNOWN_OPTION               :: 48;
E_TELNET_OPTION_SYNTAX         :: 49;
E_OBSOLETE50                   :: 50;
E_OBSOLETE51                   :: 51;
E_GOT_NOTHING                  :: 52;
E_SSL_ENGINE_NOTFOUND          :: 53;
E_SSL_ENGINE_SETFAILED         :: 54;
E_SEND_ERROR                   :: 55;
E_RECV_ERROR                   :: 56;
E_OBSOLETE57                   :: 57;
E_SSL_CERTPROBLEM              :: 58;
E_SSL_CIPHER                   :: 59;
E_PEER_FAILED_VERIFICATION     :: 60;
E_BAD_CONTENT_ENCODING         :: 61;
E_LDAP_INVALID_URL             :: 62;
E_FILESIZE_EXCEEDED            :: 63;
E_USE_SSL_FAILED               :: 64;
E_SEND_FAIL_REWIND             :: 65;
E_SSL_ENGINE_INITFAILED        :: 66;
E_LOGIN_DENIED                 :: 67;
E_TFTP_NOTFOUND                :: 68;
E_TFTP_PERM                    :: 69;
E_REMOTE_DISK_FULL             :: 70;
E_TFTP_ILLEGAL                 :: 71;
E_TFTP_UNKNOWNID               :: 72;
E_REMOTE_FILE_EXISTS           :: 73;
E_TFTP_NOSUCHUSER              :: 74;
E_CONV_FAILED                  :: 75;
E_CONV_REQD                    :: 76;
E_SSL_CACERT_BADFILE           :: 77;
E_REMOTE_FILE_NOT_FOUND        :: 78;
E_SSH                          :: 79;
E_SSL_SHUTDOWN_FAILED          :: 80;
E_AGAIN                        :: 81;
E_SSL_CRL_BADFILE              :: 82;
E_SSL_ISSUER_ERROR             :: 83;
E_FTP_PRET_FAILED              :: 84;
E_RTSP_CSEQ_ERROR              :: 85;
E_RTSP_SESSION_ERROR           :: 86;
E_FTP_BAD_FILE_LIST            :: 87;
E_CHUNK_FAILED                 :: 88;
E_NO_CONNECTION_AVAILABLE      :: 89;
E_SSL_PINNEDPUBKEYNOTMATCH     :: 90;
E_SSL_INVALIDCERTSTATUS        :: 91;
E_HTTP2_STREAM                 :: 92;
E_RECURSIVE_API_CALL           :: 93;
E_AUTH_ERROR                   :: 94;
E_HTTP3                        :: 95;
E_QUIC_CONNECT_ERROR           :: 96;
E_PROXY                        :: 97;
E_SSL_CLIENTCERT               :: 98;
LAST                           :: 99;
/* } */;

slist :: struct {
    data : cstring,
    next : ^slist,
};

CURLproxycode :: _c.int;
/*  <ENUM> :: enum { */
PX_OK                                   :: 0;
PX_BAD_ADDRESS_TYPE                     :: 1;
PX_BAD_VERSION                          :: 2;
PX_CLOSED                               :: 3;
PX_GSSAPI                               :: 4;
PX_GSSAPI_PERMSG                        :: 5;
PX_GSSAPI_PROTECTION                    :: 6;
PX_IDENTD                               :: 7;
PX_IDENTD_DIFFER                        :: 8;
PX_LONG_HOSTNAME                        :: 9;
PX_LONG_PASSWD                          :: 10;
PX_LONG_USER                            :: 11;
PX_NO_AUTH                              :: 12;
PX_RECV_ADDRESS                         :: 13;
PX_RECV_AUTH                            :: 14;
PX_RECV_CONNECT                         :: 15;
PX_RECV_REQACK                          :: 16;
PX_REPLY_ADDRESS_TYPE_NOT_SUPPORTED     :: 17;
PX_REPLY_COMMAND_NOT_SUPPORTED          :: 18;
PX_REPLY_CONNECTION_REFUSED             :: 19;
PX_REPLY_GENERAL_SERVER_FAILURE         :: 20;
PX_REPLY_HOST_UNREACHABLE               :: 21;
PX_REPLY_NETWORK_UNREACHABLE            :: 22;
PX_REPLY_NOT_ALLOWED                    :: 23;
PX_REPLY_TTL_EXPIRED                    :: 24;
PX_REPLY_UNASSIGNED                     :: 25;
PX_REQUEST_FAILED                       :: 26;
PX_RESOLVE_HOST                         :: 27;
PX_SEND_AUTH                            :: 28;
PX_SEND_CONNECT                         :: 29;
PX_SEND_REQUEST                         :: 30;
PX_UNKNOWN_FAIL                         :: 31;
PX_UNKNOWN_MODE                         :: 32;
PX_USER_REJECTED                        :: 33;
PX_LAST                                 :: 34;
/* } */;

proxytype :: _c.int;
/*  <ENUM> :: enum { */
PROXY_HTTP                :: 0;
PROXY_HTTP_1_0            :: 1;
PROXY_HTTPS               :: 2;
PROXY_SOCKS4              :: 4;
PROXY_SOCKS5              :: 5;
PROXY_SOCKS4A             :: 6;
PROXY_SOCKS5_HOSTNAME     :: 7;
/* } */;

usessl :: _c.int;
/*  <ENUM> :: enum { */
USESSL_NONE        :: 0;
USESSL_TRY         :: 1;
USESSL_CONTROL     :: 2;
USESSL_ALL         :: 3;
USESSL_LAST        :: 4;
/* } */;

ftpccc :: _c.int;
/*  <ENUM> :: enum { */
FTPSSL_CCC_NONE        :: 0;
FTPSSL_CCC_PASSIVE     :: 1;
FTPSSL_CCC_ACTIVE      :: 2;
FTPSSL_CCC_LAST        :: 3;
/* } */;

ftpauth :: _c.int;
/*  <ENUM> :: enum { */
FTPAUTH_DEFAULT     :: 0;
FTPAUTH_SSL         :: 1;
FTPAUTH_TLS         :: 2;
FTPAUTH_LAST        :: 3;
/* } */;

ftpcreatedir :: _c.int;
/*  <ENUM> :: enum { */
FTP_CREATE_DIR_NONE      :: 0;
FTP_CREATE_DIR           :: 1;
FTP_CREATE_DIR_RETRY     :: 2;
FTP_CREATE_DIR_LAST      :: 3;
/* } */;

ftpmethod :: _c.int;
/*  <ENUM> :: enum { */
FTPMETHOD_DEFAULT       :: 0;
FTPMETHOD_MULTICWD      :: 1;
FTPMETHOD_NOCWD         :: 2;
FTPMETHOD_SINGLECWD     :: 3;
FTPMETHOD_LAST          :: 4;
/* } */;

CURLSTScode :: _c.int;
/*  <ENUM> :: enum { */
STS_OK       :: 0;
STS_DONE     :: 1;
STS_FAIL     :: 2;
/* } */;

CURLoption :: _c.int;
/*  <ENUM> :: enum { */
OPT_WRITEDATA                      :: 10000 + 1;
OPT_URL                            :: 10000 + 2;
OPT_PORT                           :: 0 + 3;
OPT_PROXY                          :: 10000 + 4;
OPT_USERPWD                        :: 10000 + 5;
OPT_PROXYUSERPWD                   :: 10000 + 6;
OPT_RANGE                          :: 10000 + 7;
OPT_READDATA                       :: 10000 + 9;
OPT_ERRORBUFFER                    :: 10000 + 10;
OPT_WRITEFUNCTION                  :: 20000 + 11;
OPT_READFUNCTION                   :: 20000 + 12;
OPT_TIMEOUT                        :: 0 + 13;
OPT_INFILESIZE                     :: 0 + 14;
OPT_POSTFIELDS                     :: 10000 + 15;
OPT_REFERER                        :: 10000 + 16;
OPT_FTPPORT                        :: 10000 + 17;
OPT_USERAGENT                      :: 10000 + 18;
OPT_LOW_SPEED_LIMIT                :: 0 + 19;
OPT_LOW_SPEED_TIME                 :: 0 + 20;
OPT_RESUME_FROM                    :: 0 + 21;
OPT_COOKIE                         :: 10000 + 22;
OPT_HTTPHEADER                     :: 10000 + 23;
OPT_HTTPPOST                       :: 10000 + 24;
OPT_SSLCERT                        :: 10000 + 25;
OPT_KEYPASSWD                      :: 10000 + 26;
OPT_CRLF                           :: 0 + 27;
OPT_QUOTE                          :: 10000 + 28;
OPT_HEADERDATA                     :: 10000 + 29;
OPT_COOKIEFILE                     :: 10000 + 31;
OPT_SSLVERSION                     :: 0 + 32;
OPT_TIMECONDITION                  :: 0 + 33;
OPT_TIMEVALUE                      :: 0 + 34;
OPT_CUSTOMREQUEST                  :: 10000 + 36;
OPT_STDERR                         :: 10000 + 37;
OPT_POSTQUOTE                      :: 10000 + 39;
OPT_OBSOLETE40                     :: 10000 + 40;
OPT_VERBOSE                        :: 0 + 41;
OPT_HEADER                         :: 0 + 42;
OPT_NOPROGRESS                     :: 0 + 43;
OPT_NOBODY                         :: 0 + 44;
OPT_FAILONERROR                    :: 0 + 45;
OPT_UPLOAD                         :: 0 + 46;
OPT_POST                           :: 0 + 47;
OPT_DIRLISTONLY                    :: 0 + 48;
OPT_APPEND                         :: 0 + 50;
OPT_NETRC                          :: 0 + 51;
OPT_FOLLOWLOCATION                 :: 0 + 52;
OPT_TRANSFERTEXT                   :: 0 + 53;
OPT_PUT                            :: 0 + 54;
OPT_PROGRESSFUNCTION               :: 20000 + 56;
OPT_XFERINFODATA                   :: 10000 + 57;
OPT_AUTOREFERER                    :: 0 + 58;
OPT_PROXYPORT                      :: 0 + 59;
OPT_POSTFIELDSIZE                  :: 0 + 60;
OPT_HTTPPROXYTUNNEL                :: 0 + 61;
OPT_INTERFACE                      :: 10000 + 62;
OPT_KRBLEVEL                       :: 10000 + 63;
OPT_SSL_VERIFYPEER                 :: 0 + 64;
OPT_CAINFO                         :: 10000 + 65;
OPT_MAXREDIRS                      :: 0 + 68;
OPT_FILETIME                       :: 0 + 69;
OPT_TELNETOPTIONS                  :: 10000 + 70;
OPT_MAXCONNECTS                    :: 0 + 71;
OPT_OBSOLETE72                     :: 0 + 72;
OPT_FRESH_CONNECT                  :: 0 + 74;
OPT_FORBID_REUSE                   :: 0 + 75;
OPT_RANDOM_FILE                    :: 10000 + 76;
OPT_EGDSOCKET                      :: 10000 + 77;
OPT_CONNECTTIMEOUT                 :: 0 + 78;
OPT_HEADERFUNCTION                 :: 20000 + 79;
OPT_HTTPGET                        :: 0 + 80;
OPT_SSL_VERIFYHOST                 :: 0 + 81;
OPT_COOKIEJAR                      :: 10000 + 82;
OPT_SSL_CIPHER_LIST                :: 10000 + 83;
OPT_HTTP_VERSION                   :: 0 + 84;
OPT_FTP_USE_EPSV                   :: 0 + 85;
OPT_SSLCERTTYPE                    :: 10000 + 86;
OPT_SSLKEY                         :: 10000 + 87;
OPT_SSLKEYTYPE                     :: 10000 + 88;
OPT_SSLENGINE                      :: 10000 + 89;
OPT_SSLENGINE_DEFAULT              :: 0 + 90;
OPT_DNS_USE_GLOBAL_CACHE           :: 0 + 91;
OPT_DNS_CACHE_TIMEOUT              :: 0 + 92;
OPT_PREQUOTE                       :: 10000 + 93;
OPT_DEBUGFUNCTION                  :: 20000 + 94;
OPT_DEBUGDATA                      :: 10000 + 95;
OPT_COOKIESESSION                  :: 0 + 96;
OPT_CAPATH                         :: 10000 + 97;
OPT_BUFFERSIZE                     :: 0 + 98;
OPT_NOSIGNAL                       :: 0 + 99;
OPT_SHARE                          :: 10000 + 100;
OPT_PROXYTYPE                      :: 0 + 101;
OPT_ACCEPT_ENCODING                :: 10000 + 102;
OPT_PRIVATE                        :: 10000 + 103;
OPT_HTTP200ALIASES                 :: 10000 + 104;
OPT_UNRESTRICTED_AUTH              :: 0 + 105;
OPT_FTP_USE_EPRT                   :: 0 + 106;
OPT_HTTPAUTH                       :: 0 + 107;
OPT_SSL_CTX_FUNCTION               :: 20000 + 108;
OPT_SSL_CTX_DATA                   :: 10000 + 109;
OPT_FTP_CREATE_MISSING_DIRS        :: 0 + 110;
OPT_PROXYAUTH                      :: 0 + 111;
OPT_FTP_RESPONSE_TIMEOUT           :: 0 + 112;
OPT_IPRESOLVE                      :: 0 + 113;
OPT_MAXFILESIZE                    :: 0 + 114;
OPT_INFILESIZE_LARGE               :: 30000 + 115;
OPT_RESUME_FROM_LARGE              :: 30000 + 116;
OPT_MAXFILESIZE_LARGE              :: 30000 + 117;
OPT_NETRC_FILE                     :: 10000 + 118;
OPT_USE_SSL                        :: 0 + 119;
OPT_POSTFIELDSIZE_LARGE            :: 30000 + 120;
OPT_TCP_NODELAY                    :: 0 + 121;
OPT_FTPSSLAUTH                     :: 0 + 129;
OPT_IOCTLFUNCTION                  :: 20000 + 130;
OPT_IOCTLDATA                      :: 10000 + 131;
OPT_FTP_ACCOUNT                    :: 10000 + 134;
OPT_COOKIELIST                     :: 10000 + 135;
OPT_IGNORE_CONTENT_LENGTH          :: 0 + 136;
OPT_FTP_SKIP_PASV_IP               :: 0 + 137;
OPT_FTP_FILEMETHOD                 :: 0 + 138;
OPT_LOCALPORT                      :: 0 + 139;
OPT_LOCALPORTRANGE                 :: 0 + 140;
OPT_CONNECT_ONLY                   :: 0 + 141;
OPT_CONV_FROM_NETWORK_FUNCTION     :: 20000 + 142;
OPT_CONV_TO_NETWORK_FUNCTION       :: 20000 + 143;
OPT_CONV_FROM_UTF8_FUNCTION        :: 20000 + 144;
OPT_MAX_SEND_SPEED_LARGE           :: 30000 + 145;
OPT_MAX_RECV_SPEED_LARGE           :: 30000 + 146;
OPT_FTP_ALTERNATIVE_TO_USER        :: 10000 + 147;
OPT_SOCKOPTFUNCTION                :: 20000 + 148;
OPT_SOCKOPTDATA                    :: 10000 + 149;
OPT_SSL_SESSIONID_CACHE            :: 0 + 150;
OPT_SSH_AUTH_TYPES                 :: 0 + 151;
OPT_SSH_PUBLIC_KEYFILE             :: 10000 + 152;
OPT_SSH_PRIVATE_KEYFILE            :: 10000 + 153;
OPT_FTP_SSL_CCC                    :: 0 + 154;
OPT_TIMEOUT_MS                     :: 0 + 155;
OPT_CONNECTTIMEOUT_MS              :: 0 + 156;
OPT_HTTP_TRANSFER_DECODING         :: 0 + 157;
OPT_HTTP_CONTENT_DECODING          :: 0 + 158;
OPT_NEW_FILE_PERMS                 :: 0 + 159;
OPT_NEW_DIRECTORY_PERMS            :: 0 + 160;
OPT_POSTREDIR                      :: 0 + 161;
OPT_SSH_HOST_PUBLIC_KEY_MD5        :: 10000 + 162;
OPT_OPENSOCKETFUNCTION             :: 20000 + 163;
OPT_OPENSOCKETDATA                 :: 10000 + 164;
OPT_COPYPOSTFIELDS                 :: 10000 + 165;
OPT_PROXY_TRANSFER_MODE            :: 0 + 166;
OPT_SEEKFUNCTION                   :: 20000 + 167;
OPT_SEEKDATA                       :: 10000 + 168;
OPT_CRLFILE                        :: 10000 + 169;
OPT_ISSUERCERT                     :: 10000 + 170;
OPT_ADDRESS_SCOPE                  :: 0 + 171;
OPT_CERTINFO                       :: 0 + 172;
OPT_USERNAME                       :: 10000 + 173;
OPT_PASSWORD                       :: 10000 + 174;
OPT_PROXYUSERNAME                  :: 10000 + 175;
OPT_PROXYPASSWORD                  :: 10000 + 176;
OPT_NOPROXY                        :: 10000 + 177;
OPT_TFTP_BLKSIZE                   :: 0 + 178;
OPT_SOCKS5_GSSAPI_SERVICE          :: 10000 + 179;
OPT_SOCKS5_GSSAPI_NEC              :: 0 + 180;
OPT_PROTOCOLS                      :: 0 + 181;
OPT_REDIR_PROTOCOLS                :: 0 + 182;
OPT_SSH_KNOWNHOSTS                 :: 10000 + 183;
OPT_SSH_KEYFUNCTION                :: 20000 + 184;
OPT_SSH_KEYDATA                    :: 10000 + 185;
OPT_MAIL_FROM                      :: 10000 + 186;
OPT_MAIL_RCPT                      :: 10000 + 187;
OPT_FTP_USE_PRET                   :: 0 + 188;
OPT_RTSP_REQUEST                   :: 0 + 189;
OPT_RTSP_SESSION_ID                :: 10000 + 190;
OPT_RTSP_STREAM_URI                :: 10000 + 191;
OPT_RTSP_TRANSPORT                 :: 10000 + 192;
OPT_RTSP_CLIENT_CSEQ               :: 0 + 193;
OPT_RTSP_SERVER_CSEQ               :: 0 + 194;
OPT_INTERLEAVEDATA                 :: 10000 + 195;
OPT_INTERLEAVEFUNCTION             :: 20000 + 196;
OPT_WILDCARDMATCH                  :: 0 + 197;
OPT_CHUNK_BGN_FUNCTION             :: 20000 + 198;
OPT_CHUNK_END_FUNCTION             :: 20000 + 199;
OPT_FNMATCH_FUNCTION               :: 20000 + 200;
OPT_CHUNK_DATA                     :: 10000 + 201;
OPT_FNMATCH_DATA                   :: 10000 + 202;
OPT_RESOLVE                        :: 10000 + 203;
OPT_TLSAUTH_USERNAME               :: 10000 + 204;
OPT_TLSAUTH_PASSWORD               :: 10000 + 205;
OPT_TLSAUTH_TYPE                   :: 10000 + 206;
OPT_TRANSFER_ENCODING              :: 0 + 207;
OPT_CLOSESOCKETFUNCTION            :: 20000 + 208;
OPT_CLOSESOCKETDATA                :: 10000 + 209;
OPT_GSSAPI_DELEGATION              :: 0 + 210;
OPT_DNS_SERVERS                    :: 10000 + 211;
OPT_ACCEPTTIMEOUT_MS               :: 0 + 212;
OPT_TCP_KEEPALIVE                  :: 0 + 213;
OPT_TCP_KEEPIDLE                   :: 0 + 214;
OPT_TCP_KEEPINTVL                  :: 0 + 215;
OPT_SSL_OPTIONS                    :: 0 + 216;
OPT_MAIL_AUTH                      :: 10000 + 217;
OPT_SASL_IR                        :: 0 + 218;
OPT_XFERINFOFUNCTION               :: 20000 + 219;
OPT_XOAUTH2_BEARER                 :: 10000 + 220;
OPT_DNS_INTERFACE                  :: 10000 + 221;
OPT_DNS_LOCAL_IP4                  :: 10000 + 222;
OPT_DNS_LOCAL_IP6                  :: 10000 + 223;
OPT_LOGIN_OPTIONS                  :: 10000 + 224;
OPT_SSL_ENABLE_NPN                 :: 0 + 225;
OPT_SSL_ENABLE_ALPN                :: 0 + 226;
OPT_EXPECT_100_TIMEOUT_MS          :: 0 + 227;
OPT_PROXYHEADER                    :: 10000 + 228;
OPT_HEADEROPT                      :: 0 + 229;
OPT_PINNEDPUBLICKEY                :: 10000 + 230;
OPT_UNIX_SOCKET_PATH               :: 10000 + 231;
OPT_SSL_VERIFYSTATUS               :: 0 + 232;
OPT_SSL_FALSESTART                 :: 0 + 233;
OPT_PATH_AS_IS                     :: 0 + 234;
OPT_PROXY_SERVICE_NAME             :: 10000 + 235;
OPT_SERVICE_NAME                   :: 10000 + 236;
OPT_PIPEWAIT                       :: 0 + 237;
OPT_DEFAULT_PROTOCOL               :: 10000 + 238;
OPT_STREAM_WEIGHT                  :: 0 + 239;
OPT_STREAM_DEPENDS                 :: 10000 + 240;
OPT_STREAM_DEPENDS_E               :: 10000 + 241;
OPT_TFTP_NO_OPTIONS                :: 0 + 242;
OPT_CONNECT_TO                     :: 10000 + 243;
OPT_TCP_FASTOPEN                   :: 0 + 244;
OPT_KEEP_SENDING_ON_ERROR          :: 0 + 245;
OPT_PROXY_CAINFO                   :: 10000 + 246;
OPT_PROXY_CAPATH                   :: 10000 + 247;
OPT_PROXY_SSL_VERIFYPEER           :: 0 + 248;
OPT_PROXY_SSL_VERIFYHOST           :: 0 + 249;
OPT_PROXY_SSLVERSION               :: 0 + 250;
OPT_PROXY_TLSAUTH_USERNAME         :: 10000 + 251;
OPT_PROXY_TLSAUTH_PASSWORD         :: 10000 + 252;
OPT_PROXY_TLSAUTH_TYPE             :: 10000 + 253;
OPT_PROXY_SSLCERT                  :: 10000 + 254;
OPT_PROXY_SSLCERTTYPE              :: 10000 + 255;
OPT_PROXY_SSLKEY                   :: 10000 + 256;
OPT_PROXY_SSLKEYTYPE               :: 10000 + 257;
OPT_PROXY_KEYPASSWD                :: 10000 + 258;
OPT_PROXY_SSL_CIPHER_LIST          :: 10000 + 259;
OPT_PROXY_CRLFILE                  :: 10000 + 260;
OPT_PROXY_SSL_OPTIONS              :: 0 + 261;
OPT_PRE_PROXY                      :: 10000 + 262;
OPT_PROXY_PINNEDPUBLICKEY          :: 10000 + 263;
OPT_ABSTRACT_UNIX_SOCKET           :: 10000 + 264;
OPT_SUPPRESS_CONNECT_HEADERS       :: 0 + 265;
OPT_REQUEST_TARGET                 :: 10000 + 266;
OPT_SOCKS5_AUTH                    :: 0 + 267;
OPT_SSH_COMPRESSION                :: 0 + 268;
OPT_MIMEPOST                       :: 10000 + 269;
OPT_TIMEVALUE_LARGE                :: 30000 + 270;
OPT_HAPPY_EYEBALLS_TIMEOUT_MS      :: 0 + 271;
OPT_RESOLVER_START_FUNCTION        :: 20000 + 272;
OPT_RESOLVER_START_DATA            :: 10000 + 273;
OPT_HAPROXYPROTOCOL                :: 0 + 274;
OPT_DNS_SHUFFLE_ADDRESSES          :: 0 + 275;
OPT_TLS13_CIPHERS                  :: 10000 + 276;
OPT_PROXY_TLS13_CIPHERS            :: 10000 + 277;
OPT_DISALLOW_USERNAME_IN_URL       :: 0 + 278;
OPT_DOH_URL                        :: 10000 + 279;
OPT_UPLOAD_BUFFERSIZE              :: 0 + 280;
OPT_UPKEEP_INTERVAL_MS             :: 0 + 281;
OPT_CURLU                          :: 10000 + 282;
OPT_TRAILERFUNCTION                :: 20000 + 283;
OPT_TRAILERDATA                    :: 10000 + 284;
OPT_HTTP09_ALLOWED                 :: 0 + 285;
OPT_ALTSVC_CTRL                    :: 0 + 286;
OPT_ALTSVC                         :: 10000 + 287;
OPT_MAXAGE_CONN                    :: 0 + 288;
OPT_SASL_AUTHZID                   :: 10000 + 289;
OPT_MAIL_RCPT_ALLLOWFAILS          :: 0 + 290;
OPT_SSLCERT_BLOB                   :: 40000 + 291;
OPT_SSLKEY_BLOB                    :: 40000 + 292;
OPT_PROXY_SSLCERT_BLOB             :: 40000 + 293;
OPT_PROXY_SSLKEY_BLOB              :: 40000 + 294;
OPT_ISSUERCERT_BLOB                :: 40000 + 295;
OPT_PROXY_ISSUERCERT               :: 10000 + 296;
OPT_PROXY_ISSUERCERT_BLOB          :: 40000 + 297;
OPT_SSL_EC_CURVES                  :: 10000 + 298;
OPT_HSTS_CTRL                      :: 0 + 299;
OPT_HSTS                           :: 10000 + 300;
OPT_HSTSREADFUNCTION               :: 20000 + 301;
OPT_HSTSREADDATA                   :: 10000 + 302;
OPT_HSTSWRITEFUNCTION              :: 20000 + 303;
OPT_HSTSWRITEDATA                  :: 10000 + 304;
OPT_AWS_SIGV4                      :: 10000 + 305;
OPT_DOH_SSL_VERIFYPEER             :: 0 + 306;
OPT_DOH_SSL_VERIFYHOST             :: 0 + 307;
OPT_DOH_SSL_VERIFYSTATUS           :: 0 + 308;
OPT_CAINFO_BLOB                    :: 40000 + 309;
OPT_PROXY_CAINFO_BLOB              :: 40000 + 310;
OPT_LASTENTRY                      :: 40311;
/* } */;

TimeCond :: _c.int;
/*  <ENUM> :: enum { */
TIMECOND_NONE              :: 0;
TIMECOND_IFMODSINCE        :: 1;
TIMECOND_IFUNMODSINCE      :: 2;
TIMECOND_LASTMOD           :: 3;
TIMECOND_LAST              :: 4;
/* } */;

mime :: struct {};

mimepart :: struct {};

CURLformoption :: _c.int;
/*  <ENUM> :: enum { */
FORM_NOTHING            :: 0;
FORM_COPYNAME           :: 1;
FORM_PTRNAME            :: 2;
FORM_NAMELENGTH         :: 3;
FORM_COPYCONTENTS       :: 4;
FORM_PTRCONTENTS        :: 5;
FORM_CONTENTSLENGTH     :: 6;
FORM_FILECONTENT        :: 7;
FORM_ARRAY              :: 8;
FORM_OBSOLETE           :: 9;
FORM_FILE               :: 10;
FORM_BUFFER             :: 11;
FORM_BUFFERPTR          :: 12;
FORM_BUFFERLENGTH       :: 13;
FORM_CONTENTTYPE        :: 14;
FORM_CONTENTHEADER      :: 15;
FORM_FILENAME           :: 16;
FORM_END                :: 17;
FORM_OBSOLETE2          :: 18;
FORM_STREAM             :: 19;
FORM_CONTENTLEN         :: 20;
FORM_LASTENTRY          :: 21;
/* } */;

CURLFORMcode :: _c.int;
/*  <ENUM> :: enum { */
FORMADD_OK                  :: 0;
FORMADD_MEMORY              :: 1;
FORMADD_OPTION_TWICE        :: 2;
FORMADD_NULL                :: 3;
FORMADD_UNKNOWN_OPTION      :: 4;
FORMADD_INCOMPLETE          :: 5;
FORMADD_ILLEGAL_ARRAY       :: 6;
FORMADD_DISABLED            :: 7;
FORMADD_LAST                :: 8;
/* } */;

CURLMsg :: struct {
    msg         : CURLMSG,
    easy_handle : rawptr,
    data : struct #raw_union {
        whatever : rawptr,
        result   : CURLcode,
    },
};

waitfd :: struct {
    fd      : socket_t,
    events  : _c.short,
    revents : _c.short,
};

;

CURLMcode :: _c.int;
/*  <ENUM> :: enum { */
M_CALL_MULTI_PERFORM        :: -1;
M_OK                        :: 0;
M_BAD_HANDLE                :: 1;
M_BAD_EASY_HANDLE           :: 2;
M_OUT_OF_MEMORY             :: 3;
M_INTERNAL_ERROR            :: 4;
M_BAD_SOCKET                :: 5;
M_UNKNOWN_OPTION            :: 6;
M_ADDED_ALREADY             :: 7;
M_RECURSIVE_API_CALL        :: 8;
M_WAKEUP_FAILURE            :: 9;
M_BAD_FUNCTION_ARGUMENT     :: 10;
M_LAST                      :: 11;
/* } */;

CURLMSG :: _c.int;
/*  <ENUM> :: enum { */
MSG_NONE     :: 0;
MSG_DONE     :: 1;
MSG_LAST     :: 2;
/* } */;

ssl_backend :: struct {
    id   : sslbackend,
    name : cstring,
};

version_info_data :: struct {
    age             : CURLversion,
    version         : cstring,
    version_num     : _c.uint,
    host            : cstring,
    features        : int,
    ssl_version     : cstring,
    ssl_version_num : _c.long,
    libz_version    : cstring,
    protocols       : ^cstring,
    ares            : cstring,
    ares_num        : int,
    libidn          : cstring,
    iconv_ver_num   : int,
    libssh_version  : cstring,
    brotli_ver_num  : _c.uint,
    brotli_version  : cstring,
    nghttp2_ver_num : _c.uint,
    nghttp2_version : cstring,
    quic_version    : cstring,
    cainfo          : cstring,
    capath          : cstring,
    zstd_ver_num    : _c.uint,
    zstd_version    : cstring,
    hyper_version   : cstring,
    gsasl_version   : cstring,
};

CURLsslset :: _c.int;
/*  <ENUM> :: enum { */
SSLSET_OK                  :: 0;
SSLSET_UNKNOWN_BACKEND     :: 1;
SSLSET_TOO_LATE            :: 2;
SSLSET_NO_BACKENDS         :: 3;
/* } */;

CURLINFO :: _c.int;
/*  <ENUM> :: enum { */
INFO_NONE                          :: 0;
INFO_EFFECTIVE_URL                 :: 0x100000 + 1;
INFO_RESPONSE_CODE                 :: 0x200000 + 2;
INFO_TOTAL_TIME                    :: 0x300000 + 3;
INFO_NAMELOOKUP_TIME               :: 0x300000 + 4;
INFO_CONNECT_TIME                  :: 0x300000 + 5;
INFO_PRETRANSFER_TIME              :: 0x300000 + 6;
INFO_SIZE_UPLOAD                   :: 0x300000 + 7;
INFO_SIZE_UPLOAD_T                 :: 0x600000 + 7;
INFO_SIZE_DOWNLOAD                 :: 0x300000 + 8;
INFO_SIZE_DOWNLOAD_T               :: 0x600000 + 8;
INFO_SPEED_DOWNLOAD                :: 0x300000 + 9;
INFO_SPEED_DOWNLOAD_T              :: 0x600000 + 9;
INFO_SPEED_UPLOAD                  :: 0x300000 + 10;
INFO_SPEED_UPLOAD_T                :: 0x600000 + 10;
INFO_HEADER_SIZE                   :: 0x200000 + 11;
INFO_REQUEST_SIZE                  :: 0x200000 + 12;
INFO_SSL_VERIFYRESULT              :: 0x200000 + 13;
INFO_FILETIME                      :: 0x200000 + 14;
INFO_FILETIME_T                    :: 0x600000 + 14;
INFO_CONTENT_LENGTH_DOWNLOAD       :: 0x300000 + 15;
INFO_CONTENT_LENGTH_DOWNLOAD_T     :: 0x600000 + 15;
INFO_CONTENT_LENGTH_UPLOAD         :: 0x300000 + 16;
INFO_CONTENT_LENGTH_UPLOAD_T       :: 0x600000 + 16;
INFO_STARTTRANSFER_TIME            :: 0x300000 + 17;
INFO_CONTENT_TYPE                  :: 0x100000 + 18;
INFO_REDIRECT_TIME                 :: 0x300000 + 19;
INFO_REDIRECT_COUNT                :: 0x200000 + 20;
INFO_PRIVATE                       :: 0x100000 + 21;
INFO_HTTP_CONNECTCODE              :: 0x200000 + 22;
INFO_HTTPAUTH_AVAIL                :: 0x200000 + 23;
INFO_PROXYAUTH_AVAIL               :: 0x200000 + 24;
INFO_OS_ERRNO                      :: 0x200000 + 25;
INFO_NUM_CONNECTS                  :: 0x200000 + 26;
INFO_SSL_ENGINES                   :: 0x400000 + 27;
INFO_COOKIELIST                    :: 0x400000 + 28;
INFO_LASTSOCKET                    :: 0x200000 + 29;
INFO_FTP_ENTRY_PATH                :: 0x100000 + 30;
INFO_REDIRECT_URL                  :: 0x100000 + 31;
INFO_PRIMARY_IP                    :: 0x100000 + 32;
INFO_APPCONNECT_TIME               :: 0x300000 + 33;
INFO_CERTINFO                      :: 0x400000 + 34;
INFO_CONDITION_UNMET               :: 0x200000 + 35;
INFO_RTSP_SESSION_ID               :: 0x100000 + 36;
INFO_RTSP_CLIENT_CSEQ              :: 0x200000 + 37;
INFO_RTSP_SERVER_CSEQ              :: 0x200000 + 38;
INFO_RTSP_CSEQ_RECV                :: 0x200000 + 39;
INFO_PRIMARY_PORT                  :: 0x200000 + 40;
INFO_LOCAL_IP                      :: 0x100000 + 41;
INFO_LOCAL_PORT                    :: 0x200000 + 42;
INFO_TLS_SESSION                   :: 0x400000 + 43;
INFO_ACTIVESOCKET                  :: 0x500000 + 44;
INFO_TLS_SSL_PTR                   :: 0x400000 + 45;
INFO_HTTP_VERSION                  :: 0x200000 + 46;
INFO_PROXY_SSL_VERIFYRESULT        :: 0x200000 + 47;
INFO_PROTOCOL                      :: 0x200000 + 48;
INFO_SCHEME                        :: 0x100000 + 49;
INFO_TOTAL_TIME_T                  :: 0x600000 + 50;
INFO_NAMELOOKUP_TIME_T             :: 0x600000 + 51;
INFO_CONNECT_TIME_T                :: 0x600000 + 52;
INFO_PRETRANSFER_TIME_T            :: 0x600000 + 53;
INFO_STARTTRANSFER_TIME_T          :: 0x600000 + 54;
INFO_REDIRECT_TIME_T               :: 0x600000 + 55;
INFO_APPCONNECT_TIME_T             :: 0x600000 + 56;
INFO_RETRY_AFTER                   :: 0x600000 + 57;
INFO_EFFECTIVE_METHOD              :: 0x100000 + 58;
INFO_PROXY_ERROR                   :: 0x200000 + 59;
INFO_REFERER                       :: 0x100000 + 60;
INFO_LASTONE                       :: 60;
/* } */;

closepolicy :: _c.int;
/*  <ENUM> :: enum { */
CLOSEPOLICY_NONE                    :: 0;
CLOSEPOLICY_OLDEST                  :: 1;
CLOSEPOLICY_LEAST_RECENTLY_USED     :: 2;
CLOSEPOLICY_LEAST_TRAFFIC           :: 3;
CLOSEPOLICY_SLOWEST                 :: 4;
CLOSEPOLICY_CALLBACK                :: 5;
CLOSEPOLICY_LAST                    :: 6;
/* } */;

lock_data :: _c.int;
/*  <ENUM> :: enum { */
LOCK_DATA_NONE             :: 0;
LOCK_DATA_SHARE            :: 1;
LOCK_DATA_COOKIE           :: 2;
LOCK_DATA_DNS              :: 3;
LOCK_DATA_SSL_SESSION      :: 4;
LOCK_DATA_CONNECT          :: 5;
LOCK_DATA_PSL              :: 6;
LOCK_DATA_LAST             :: 7;
/* } */;

lock_access :: _c.int;
/*  <ENUM> :: enum { */
LOCK_ACCESS_NONE        :: 0;
LOCK_ACCESS_SHARED      :: 1;
LOCK_ACCESS_SINGLE      :: 2;
LOCK_ACCESS_LAST        :: 3;
/* } */;

CURLSHcode :: _c.int;
/*  <ENUM> :: enum { */
SHE_OK               :: 0;
SHE_BAD_OPTION       :: 1;
SHE_IN_USE           :: 2;
SHE_INVALID          :: 3;
SHE_NOMEM            :: 4;
SHE_NOT_BUILT_IN     :: 5;
SHE_LAST             :: 6;
/* } */;

CURLSHoption :: _c.int;
/*  <ENUM> :: enum { */
SHOPT_NONE           :: 0;
SHOPT_SHARE          :: 1;
SHOPT_UNSHARE        :: 2;
SHOPT_LOCKFUNC       :: 3;
SHOPT_UNLOCKFUNC     :: 4;
SHOPT_USERDATA       :: 5;
SHOPT_LAST           :: 6;
/* } */;

CURLversion :: _c.int;
/*  <ENUM> :: enum { */
VERSION_FIRST       :: 0;
VERSION_SECOND      :: 1;
VERSION_THIRD       :: 2;
VERSION_FOURTH      :: 3;
VERSION_FIFTH       :: 4;
VERSION_SIXTH       :: 5;
VERSION_SEVENTH     :: 6;
VERSION_EIGHTH      :: 7;
VERSION_NINTH       :: 8;
VERSION_TENTH       :: 9;
VERSION_LAST        :: 10;
/* } */;

__time_t :: _c.long;

formget_callback :: (proc(arg : rawptr, buf : cstring, len : uint) -> uint);

pushheaders :: struct {};

easytype :: _c.int;
/*  <ENUM> :: enum { */
OT_LONG         :: 0;
OT_VALUES       :: 1;
OT_OFF_T        :: 2;
OT_OBJECT       :: 3;
OT_STRING       :: 4;
OT_SLIST        :: 5;
OT_CBPTR        :: 6;
OT_BLOB         :: 7;
OT_FUNCTION     :: 8;
/* } */;

CURLUcode :: _c.int;
/*  <ENUM> :: enum { */
UE_OK                     :: 0;
UE_BAD_HANDLE             :: 1;
UE_BAD_PARTPOINTER        :: 2;
UE_MALFORMED_INPUT        :: 3;
UE_BAD_PORT_NUMBER        :: 4;
UE_UNSUPPORTED_SCHEME     :: 5;
UE_URLDECODE              :: 6;
UE_OUT_OF_MEMORY          :: 7;
UE_USER_NOT_ALLOWED       :: 8;
UE_UNKNOWN_PART           :: 9;
UE_NO_SCHEME              :: 10;
UE_NO_USER                :: 11;
UE_NO_PASSWORD            :: 12;
UE_NO_OPTIONS             :: 13;
UE_NO_HOST                :: 14;
UE_NO_PORT                :: 15;
UE_NO_QUERY               :: 16;
UE_NO_FRAGMENT            :: 17;
/* } */;

easyoption :: struct {
    name  : cstring,
    id    : CURLoption,
    type  : easytype,
    flags : _c.uint,
};

CURLUPart :: _c.int;
/*  <ENUM> :: enum { */
UPART_URL          :: 0;
UPART_SCHEME       :: 1;
UPART_USER         :: 2;
UPART_PASSWORD     :: 3;
UPART_OPTIONS      :: 4;
UPART_HOST         :: 5;
UPART_PORT         :: 6;
UPART_PATH         :: 7;
UPART_QUERY        :: 8;
UPART_FRAGMENT     :: 9;
UPART_ZONEID       :: 10;
/* } */;

Curl_URL :: struct {};

CURLU :: Curl_URL;

CURLMoption :: _c.int;
/*  <ENUM> :: enum { */
MOPT_SOCKETFUNCTION                  :: 20000 + 1;
MOPT_SOCKETDATA                      :: 10000 + 2;
MOPT_PIPELINING                      :: 0 + 3;
MOPT_TIMERFUNCTION                   :: 20000 + 4;
MOPT_TIMERDATA                       :: 10000 + 5;
MOPT_MAXCONNECTS                     :: 0 + 6;
MOPT_MAX_HOST_CONNECTIONS            :: 0 + 7;
MOPT_MAX_PIPELINE_LENGTH             :: 0 + 8;
MOPT_CONTENT_LENGTH_PENALTY_SIZE     :: 30000 + 9;
MOPT_CHUNK_LENGTH_PENALTY_SIZE       :: 30000 + 10;
MOPT_PIPELINING_SITE_BL              :: 10000 + 11;
MOPT_PIPELINING_SERVER_BL            :: 10000 + 12;
MOPT_MAX_TOTAL_CONNECTIONS           :: 0 + 13;
MOPT_PUSHFUNCTION                    :: 20000 + 14;
MOPT_PUSHDATA                        :: 10000 + 15;
MOPT_MAX_CONCURRENT_STREAMS          :: 0 + 16;
MOPT_LASTENTRY                       :: 17;
/* } */;


/***** libcurl *****/
foreign import libcurl "system:curl"

/* Procedures */
@(link_prefix="curl_")
foreign libcurl {
    easy_setopt                                 :: proc(curl : rawptr, option : CURLoption, #c_vararg __args : ..any) -> CURLcode ---;
    easy_perform                                :: proc(curl : rawptr) -> CURLcode ---;
    easy_cleanup                                :: proc(curl : rawptr) ---;
    easy_getinfo                                :: proc(curl : rawptr, info : CURLINFO, #c_vararg __args : ..any) -> CURLcode ---;
    easy_reset                                  :: proc(curl : rawptr) ---;
    easy_recv                                   :: proc(curl : rawptr, buffer : rawptr, buflen : uint, n : ^uint) -> CURLcode ---;
    easy_send                                   :: proc(curl : rawptr, buffer : rawptr, buflen : uint, n : ^uint) -> CURLcode ---;
    easy_upkeep                                 :: proc(curl : rawptr) -> CURLcode ---;
    multi_add_handle                            :: proc(multi_handle : rawptr, curl_handle : rawptr) -> CURLMcode ---;
    multi_remove_handle                         :: proc(multi_handle : rawptr, curl_handle : rawptr) -> CURLMcode ---;
    multi_fdset                                 :: proc(multi_handle : rawptr, read_fd_set : ^fd_set, write_fd_set : ^fd_set, exc_fd_set : ^fd_set, max_fd : ^int) -> CURLMcode ---;
    easy_init                                   :: proc() -> rawptr ---;
    easy_duphandle                              :: proc(curl : rawptr) -> rawptr ---;
    multi_init                                  :: proc() -> rawptr ---;
    strequal                                    :: proc(s1 : cstring, s2 : cstring) -> int ---;
    strnequal                                   :: proc(s1 : cstring, s2 : cstring, n : uint) -> int ---;
    mime_init                                   :: proc(easy : rawptr) -> ^mime ---;
    mime_free                                   :: proc(mime : ^mime) ---;
    mime_addpart                                :: proc(mime : ^mime) -> ^mimepart ---;
    mime_name                                   :: proc(part : ^mimepart, name : cstring) -> CURLcode ---;
    mime_filename                               :: proc(part : ^mimepart, filename : cstring) -> CURLcode ---;
    mime_type                                   :: proc(part : ^mimepart, mimetype : cstring) -> CURLcode ---;
    mime_encoder                                :: proc(part : ^mimepart, encoding : cstring) -> CURLcode ---;
    mime_data                                   :: proc(part : ^mimepart, data : cstring, datasize : uint) -> CURLcode ---;
    mime_filedata                               :: proc(part : ^mimepart, filename : cstring) -> CURLcode ---;
    mime_data_cb                                :: proc(part : ^mimepart, datasize : off_t, readfunc : read_callback, seekfunc : seek_callback, freefunc : free_callback, arg : rawptr) -> CURLcode ---;
    mime_subparts                               :: proc(part : ^mimepart, subparts : ^mime) -> CURLcode ---;
    mime_headers                                :: proc(part : ^mimepart, headers : ^slist, take_ownership : int) -> CURLcode ---;
    formadd                                     :: proc(_httppost : ^^httppost, last_post : ^^httppost, #c_vararg __args : ..any) -> CURLFORMcode ---;
    multi_wait                                  :: proc(multi_handle : rawptr, extra_fds : ^waitfd, extra_nfds : _c.uint, timeout_ms : int, ret : ^int) -> CURLMcode ---;
    multi_poll                                  :: proc(multi_handle : rawptr, extra_fds : ^waitfd, extra_nfds : _c.uint, timeout_ms : int, ret : ^int) -> CURLMcode ---;
    multi_wakeup                                :: proc(multi_handle : rawptr) -> CURLMcode ---;
    multi_perform                               :: proc(multi_handle : rawptr, running_handles : ^int) -> CURLMcode ---;
    multi_cleanup                               :: proc(multi_handle : rawptr) -> CURLMcode ---;
    multi_socket                                :: proc(multi_handle : rawptr, s : socket_t, running_handles : ^int) -> CURLMcode ---;
    multi_socket_action                         :: proc(multi_handle : rawptr, s : socket_t, ev_bitmask : int, running_handles : ^int) -> CURLMcode ---;
    multi_info_read                             :: proc(multi_handle : rawptr, msgs_in_queue : ^int) -> ^CURLMsg ---;
    multi_strerror                              :: proc(CURLMcode) -> cstring ---;
    formget                                     :: proc(form : ^httppost, arg : rawptr, append : formget_callback) -> int ---;
    formfree                                    :: proc(form : ^httppost) ---;
    getenv                                      :: proc(variable : cstring) -> cstring ---;
    version                                     :: proc() -> cstring ---;
    easy_escape                                 :: proc(handle : rawptr, string : cstring, length : int) -> cstring ---;
    escape                                      :: proc(string : cstring, length : int) -> cstring ---;
    easy_unescape                               :: proc(handle : rawptr, string : cstring, length : int, outlength : ^int) -> cstring ---;
    unescape                                    :: proc(string : cstring, length : int) -> cstring ---;
    free                                        :: proc(p : rawptr) ---;
    global_init                                 :: proc(flags : _c.long) -> CURLcode ---;
    global_init_mem                             :: proc(flags : _c.long, m : malloc_callback, f : free_callback, r : realloc_callback, s : strdup_callback, c : calloc_callback) -> CURLcode ---;
    global_cleanup                              :: proc() ---;
    global_sslset                               :: proc(id : sslbackend, name : cstring, avail : ^^^ssl_backend) -> CURLsslset ---;
    slist_append                                :: proc(^slist, cstring) -> ^slist ---;
    slist_free_all                              :: proc(^slist) ---;
    getdate                                     :: proc(p : cstring, unused : ^time_t) -> time_t ---;
    share_init                                  :: proc() -> rawptr ---;
    share_setopt                                :: proc(rawptr, CURLSHoption, #c_vararg ..any) -> CURLSHcode ---;
    share_cleanup                               :: proc(rawptr) -> CURLSHcode ---;
    version_info                                :: proc(CURLversion) -> ^version_info_data ---;
    easy_strerror                               :: proc(CURLcode) -> cstring ---;
    share_strerror                              :: proc(CURLSHcode) -> cstring ---;
    easy_pause                                  :: proc(handle : rawptr, bitmask : int) -> CURLcode ---;
    multi_socket_all                            :: proc(multi_handle : rawptr, running_handles : ^int) -> CURLMcode ---;
    easy_option_by_name                         :: proc(name : cstring) -> ^easyoption ---;
    easy_option_by_id                           :: proc(id : CURLoption) -> ^easyoption ---;
    easy_option_next                            :: proc(prev : ^easyoption) -> ^easyoption ---;
    url                                         :: proc() -> ^CURLU ---;
    url_cleanup                                 :: proc(handle : ^CURLU) ---;
    url_dup                                     :: proc(in_ : ^CURLU) -> ^CURLU ---;
    url_get                                     :: proc(handle : ^CURLU, what : CURLUPart, part : ^cstring, flags : _c.uint) -> CURLUcode ---;
    url_set                                     :: proc(handle : ^CURLU, what : CURLUPart, part : cstring, flags : _c.uint) -> CURLUcode ---;
    multi_timeout                               :: proc(multi_handle : rawptr, milliseconds : ^_c.long) -> CURLMcode ---;
    multi_setopt                                :: proc(multi_handle : rawptr, option : CURLMoption, #c_vararg __args : ..any) -> CURLMcode ---;
    multi_assign                                :: proc(multi_handle : rawptr, sockfd : socket_t, sockp : rawptr) -> CURLMcode ---;
    pushheader_bynum                            :: proc(h : ^pushheaders, num : uint) -> cstring ---;
    pushheader_byname                           :: proc(h : ^pushheaders, name : cstring) -> cstring ---;
}

