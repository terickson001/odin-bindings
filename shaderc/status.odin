package shaderc

import _c "core:c"

/* Macros */

compilation_status :: enum {
    success              = 0,
    invalid_stage        = 1,
    compilation_error    = 2,
    internal_error       = 3,
    null_result_object   = 4,
    invalid_assembly     = 5,
    validation_error     = 6,
    transformation_error = 7,
    configuration_error  = 8,
};

