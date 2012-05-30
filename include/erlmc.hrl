
-define(DEFAULT_HOST, "localhost").
-define(DEFAULT_PORT, 11211).

%% Op codes
-define(OP_Get,       16#00).
-define(OP_Set,       16#01).
-define(OP_Add,       16#02).
-define(OP_Replace,   16#03).
-define(OP_Delete,    16#04).
-define(OP_Increment, 16#05).
-define(OP_Decrement, 16#06).
-define(OP_Quit,      16#07).
-define(OP_Flush,     16#08).
-define(OP_GetQ,      16#09).
-define(OP_Noop,      16#0A).
-define(OP_Version,   16#0B).
-define(OP_GetK,      16#0C).
-define(OP_GetKQ,     16#0D).
-define(OP_Append,    16#0E).
-define(OP_Prepend,   16#0F).
-define(OP_Stat,      16#10).

-record(request, {op_code, data_type=16#00, reserved=16#00, opaque=16#00, cas=16#00, extras = <<>>, key = <<>>, value = <<>>}).
-record(response, {op_code, data_type, status, opaque, cas, extras, key, value, key_size, extras_size, body_size}).