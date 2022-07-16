package glslang

import _c "core:c"

/* Macros */

stage_t :: _c.int;
/*  <ENUM> :: enum { */
STAGE_VERTEX                 :: 0;
STAGE_TESSCONTROL            :: 1;
STAGE_TESSEVALUATION         :: 2;
STAGE_GEOMETRY               :: 3;
STAGE_FRAGMENT               :: 4;
STAGE_COMPUTE                :: 5;
STAGE_RAYGEN_NV              :: 6;
STAGE_INTERSECT_NV           :: 7;
STAGE_ANYHIT_NV              :: 8;
STAGE_CLOSESTHIT_NV          :: 9;
STAGE_MISS_NV                :: 10;
STAGE_CALLABLE_NV            :: 11;
STAGE_TASK_NV                :: 12;
STAGE_MESH_NV                :: 13;
STAGE_COUNT                  :: 14;
/* } */;

stage_mask_t :: _c.int;
/*  <ENUM> :: enum { */
STAGE_VERTEX_MASK                 :: (1 << STAGE_VERTEX);
STAGE_TESSCONTROL_MASK            :: (1 << STAGE_TESSCONTROL);
STAGE_TESSEVALUATION_MASK         :: (1 << STAGE_TESSEVALUATION);
STAGE_GEOMETRY_MASK               :: (1 << STAGE_GEOMETRY);
STAGE_FRAGMENT_MASK               :: (1 << STAGE_FRAGMENT);
STAGE_COMPUTE_MASK                :: (1 << STAGE_COMPUTE);
STAGE_RAYGEN_NV_MASK              :: (1 << STAGE_RAYGEN_NV);
STAGE_INTERSECT_NV_MASK           :: (1 << STAGE_INTERSECT_NV);
STAGE_ANYHIT_NV_MASK              :: (1 << STAGE_ANYHIT_NV);
STAGE_CLOSESTHIT_NV_MASK          :: (1 << STAGE_CLOSESTHIT_NV);
STAGE_MISS_NV_MASK                :: (1 << STAGE_MISS_NV);
STAGE_CALLABLE_NV_MASK            :: (1 << STAGE_CALLABLE_NV);
STAGE_TASK_NV_MASK                :: (1 << STAGE_TASK_NV);
STAGE_MESH_NV_MASK                :: (1 << STAGE_MESH_NV);
STAGE_MASK_COUNT                  :: 8193;
/* } */;

source_t :: _c.int;
/*  <ENUM> :: enum { */
SOURCE_NONE          :: 0;
SOURCE_GLSL          :: 1;
SOURCE_HLSL          :: 2;
SOURCE_COUNT         :: 3;
/* } */;

client_t :: _c.int;
/*  <ENUM> :: enum { */
CLIENT_NONE           :: 0;
CLIENT_VULKAN         :: 1;
CLIENT_OPENGL         :: 2;
CLIENT_COUNT          :: 3;
/* } */;

target_language_t :: _c.int;
/*  <ENUM> :: enum { */
TARGET_NONE          :: 0;
TARGET_SPV           :: 1;
TARGET_COUNT         :: 2;
/* } */;

target_client_version_t :: _c.int;
/*  <ENUM> :: enum { */
TARGET_VULKAN_1_0                   :: (1 << 22);
TARGET_VULKAN_1_1                   :: (1 << 22) | (1 << 12);
TARGET_VULKAN_1_2                   :: (1 << 22) | (2 << 12);
TARGET_VULKAN_1_3                   :: (1 << 22) | (3 << 12);
TARGET_OPENGL_450                   :: 450;
TARGET_CLIENT_VERSION_COUNT         :: 5;
/* } */;

target_language_version_t :: _c.int;
/*  <ENUM> :: enum { */
TARGET_SPV_1_0                        :: (1 << 16);
TARGET_SPV_1_1                        :: (1 << 16) | (1 << 8);
TARGET_SPV_1_2                        :: (1 << 16) | (2 << 8);
TARGET_SPV_1_3                        :: (1 << 16) | (3 << 8);
TARGET_SPV_1_4                        :: (1 << 16) | (4 << 8);
TARGET_SPV_1_5                        :: (1 << 16) | (5 << 8);
TARGET_SPV_1_6                        :: (1 << 16) | (6 << 8);
TARGET_LANGUAGE_VERSION_COUNT         :: 7;
/* } */;

executable_t :: _c.int;
/*  <ENUM> :: enum { */
EX_VERTEX_FRAGMENT         :: 0;
EX_FRAGMENT                :: 1;
/* } */;

optimization_level_t :: _c.int;
/*  <ENUM> :: enum { */
OPT_NO_GENERATION         :: 0;
OPT_NONE                  :: 1;
OPT_SIMPLE                :: 2;
OPT_FULL                  :: 3;
OPT_LEVEL_COUNT           :: 4;
/* } */;

texture_sampler_transform_mode_t :: _c.int;
/*  <ENUM> :: enum { */
TEX_SAMP_TRANS_KEEP                                   :: 0;
TEX_SAMP_TRANS_UPGRADE_TEXTURE_REMOVE_SAMPLER         :: 1;
TEX_SAMP_TRANS_COUNT                                  :: 2;
/* } */;

messages_t :: _c.int;
/*  <ENUM> :: enum { */
MSG_DEFAULT_BIT                         :: 0;
MSG_RELAXED_ERRORS_BIT                  :: (1 << 0);
MSG_SUPPRESS_WARNINGS_BIT               :: (1 << 1);
MSG_AST_BIT                             :: (1 << 2);
MSG_SPV_RULES_BIT                       :: (1 << 3);
MSG_VULKAN_RULES_BIT                    :: (1 << 4);
MSG_ONLY_PREPROCESSOR_BIT               :: (1 << 5);
MSG_READ_HLSL_BIT                       :: (1 << 6);
MSG_CASCADING_ERRORS_BIT                :: (1 << 7);
MSG_KEEP_UNCALLED_BIT                   :: (1 << 8);
MSG_HLSL_OFFSETS_BIT                    :: (1 << 9);
MSG_DEBUG_INFO_BIT                      :: (1 << 10);
MSG_HLSL_ENABLE_16BIT_TYPES_BIT         :: (1 << 11);
MSG_HLSL_LEGALIZATION_BIT               :: (1 << 12);
MSG_HLSL_DX9_COMPATIBLE_BIT             :: (1 << 13);
MSG_BUILTIN_SYMBOL_TABLE_BIT            :: (1 << 14);
MSG_ENHANCED                            :: (1 << 15);
MSG_COUNT                               :: 32769;
/* } */;

reflection_options_t :: _c.int;
/*  <ENUM> :: enum { */
REFLECTION_DEFAULT_BIT                     :: 0;
REFLECTION_STRICT_ARRAY_SUFFIX_BIT         :: (1 << 0);
REFLECTION_BASIC_ARRAY_SUFFIX_BIT          :: (1 << 1);
REFLECTION_INTERMEDIATE_IOO_BIT            :: (1 << 2);
REFLECTION_SEPARATE_BUFFERS_BIT            :: (1 << 3);
REFLECTION_ALL_BLOCK_VARIABLES_BIT         :: (1 << 4);
REFLECTION_UNWRAP_IO_BLOCKS_BIT            :: (1 << 5);
REFLECTION_ALL_IO_VARIABLES_BIT            :: (1 << 6);
REFLECTION_SHARED_STD140_SSBO_BIT          :: (1 << 7);
REFLECTION_SHARED_STD140_UBO_BIT           :: (1 << 8);
REFLECTION_COUNT                           :: 257;
/* } */;

profile_t :: _c.int;
/*  <ENUM> :: enum { */
BAD_PROFILE                   :: 0;
NO_PROFILE                    :: (1 << 0);
CORE_PROFILE                  :: (1 << 1);
COMPATIBILITY_PROFILE         :: (1 << 2);
ES_PROFILE                    :: (1 << 3);
PROFILE_COUNT                 :: 9;
/* } */;

shader_options_t :: _c.int;
/*  <ENUM> :: enum { */
SHADER_DEFAULT_BIT                  :: 0;
SHADER_AUTO_MAP_BINDINGS            :: (1 << 0);
SHADER_AUTO_MAP_LOCATIONS           :: (1 << 1);
SHADER_VULKAN_RULES_RELAXED         :: (1 << 2);
SHADER_COUNT                        :: 5;
/* } */;

resource_type_t :: _c.int;
/*  <ENUM> :: enum { */
RESOURCE_TYPE_SAMPLER         :: 0;
RESOURCE_TYPE_TEXTURE         :: 1;
RESOURCE_TYPE_IMAGE           :: 2;
RESOURCE_TYPE_UBO             :: 3;
RESOURCE_TYPE_SSBO            :: 4;
RESOURCE_TYPE_UAV             :: 5;
RESOURCE_TYPE_COUNT           :: 6;
/* } */;

