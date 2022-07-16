package shaderc

import _c "core:c"

/* Macros */

target_env :: enum {
    vulkan,
    opengl,
    opengl_compat,
    webgpu,
    default = vulkan,
};

env_version :: enum {
    vulkan_1_0 = ((1 << 22)),
    vulkan_1_1 = ((1 << 22) | (1 << 12)),
    vulkan_1_2 = ((1 << 22) | (2 << 12)),
    vulkan_1_3 = ((1 << 22) | (3 << 12)),
    opengl_4_5 = 450,
    webgpu,
};

spirv_version :: enum {
    spirv_version_1_0 = 0x10000,
    spirv_version_1_1 = 0x10100,
    spirv_version_1_2 = 0x10200,
    spirv_version_1_3 = 0x10300,
    spirv_version_1_4 = 0x10400,
    spirv_version_1_5 = 0x10500,
    spirv_version_1_6 = 0x10600,
};

