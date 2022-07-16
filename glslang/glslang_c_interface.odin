package glslang

import _c "core:c"

/* Macros */

shader_t :: shader_s;

shader_s :: struct {};

program_t :: program_s;

program_s :: struct {};

limits_t :: struct {
    non_inductive_for_loops                  : _c.bool,
    while_loops                              : _c.bool,
    do_while_loops                           : _c.bool,
    general_uniform_indexing                 : _c.bool,
    general_attribute_matrix_vector_indexing : _c.bool,
    general_varying_indexing                 : _c.bool,
    general_sampler_indexing                 : _c.bool,
    general_variable_indexing                : _c.bool,
    general_constant_matrix_vector_indexing  : _c.bool,
};

limits_s :: struct {
    non_inductive_for_loops                  : _c.bool,
    while_loops                              : _c.bool,
    do_while_loops                           : _c.bool,
    general_uniform_indexing                 : _c.bool,
    general_attribute_matrix_vector_indexing : _c.bool,
    general_varying_indexing                 : _c.bool,
    general_sampler_indexing                 : _c.bool,
    general_variable_indexing                : _c.bool,
    general_constant_matrix_vector_indexing  : _c.bool,
};

resource_t :: struct {
    max_lights                                    : _c.int,
    max_clip_planes                               : _c.int,
    max_texture_units                             : _c.int,
    max_texture_coords                            : _c.int,
    max_vertex_attribs                            : _c.int,
    max_vertex_uniform_components                 : _c.int,
    max_varying_floats                            : _c.int,
    max_vertex_texture_image_units                : _c.int,
    max_combined_texture_image_units              : _c.int,
    max_texture_image_units                       : _c.int,
    max_fragment_uniform_components               : _c.int,
    max_draw_buffers                              : _c.int,
    max_vertex_uniform_vectors                    : _c.int,
    max_varying_vectors                           : _c.int,
    max_fragment_uniform_vectors                  : _c.int,
    max_vertex_output_vectors                     : _c.int,
    max_fragment_input_vectors                    : _c.int,
    min_program_texel_offset                      : _c.int,
    max_program_texel_offset                      : _c.int,
    max_clip_distances                            : _c.int,
    max_compute_work_group_count_x                : _c.int,
    max_compute_work_group_count_y                : _c.int,
    max_compute_work_group_count_z                : _c.int,
    max_compute_work_group_size_x                 : _c.int,
    max_compute_work_group_size_y                 : _c.int,
    max_compute_work_group_size_z                 : _c.int,
    max_compute_uniform_components                : _c.int,
    max_compute_texture_image_units               : _c.int,
    max_compute_image_uniforms                    : _c.int,
    max_compute_atomic_counters                   : _c.int,
    max_compute_atomic_counter_buffers            : _c.int,
    max_varying_components                        : _c.int,
    max_vertex_output_components                  : _c.int,
    max_geometry_input_components                 : _c.int,
    max_geometry_output_components                : _c.int,
    max_fragment_input_components                 : _c.int,
    max_image_units                               : _c.int,
    max_combined_image_units_and_fragment_outputs : _c.int,
    max_combined_shader_output_resources          : _c.int,
    max_image_samples                             : _c.int,
    max_vertex_image_uniforms                     : _c.int,
    max_tess_control_image_uniforms               : _c.int,
    max_tess_evaluation_image_uniforms            : _c.int,
    max_geometry_image_uniforms                   : _c.int,
    max_fragment_image_uniforms                   : _c.int,
    max_combined_image_uniforms                   : _c.int,
    max_geometry_texture_image_units              : _c.int,
    max_geometry_output_vertices                  : _c.int,
    max_geometry_total_output_components          : _c.int,
    max_geometry_uniform_components               : _c.int,
    max_geometry_varying_components               : _c.int,
    max_tess_control_input_components             : _c.int,
    max_tess_control_output_components            : _c.int,
    max_tess_control_texture_image_units          : _c.int,
    max_tess_control_uniform_components           : _c.int,
    max_tess_control_total_output_components      : _c.int,
    max_tess_evaluation_input_components          : _c.int,
    max_tess_evaluation_output_components         : _c.int,
    max_tess_evaluation_texture_image_units       : _c.int,
    max_tess_evaluation_uniform_components        : _c.int,
    max_tess_patch_components                     : _c.int,
    max_patch_vertices                            : _c.int,
    max_tess_gen_level                            : _c.int,
    max_viewports                                 : _c.int,
    max_vertex_atomic_counters                    : _c.int,
    max_tess_control_atomic_counters              : _c.int,
    max_tess_evaluation_atomic_counters           : _c.int,
    max_geometry_atomic_counters                  : _c.int,
    max_fragment_atomic_counters                  : _c.int,
    max_combined_atomic_counters                  : _c.int,
    max_atomic_counter_bindings                   : _c.int,
    max_vertex_atomic_counter_buffers             : _c.int,
    max_tess_control_atomic_counter_buffers       : _c.int,
    max_tess_evaluation_atomic_counter_buffers    : _c.int,
    max_geometry_atomic_counter_buffers           : _c.int,
    max_fragment_atomic_counter_buffers           : _c.int,
    max_combined_atomic_counter_buffers           : _c.int,
    max_atomic_counter_buffer_size                : _c.int,
    max_transform_feedback_buffers                : _c.int,
    max_transform_feedback_interleaved_components : _c.int,
    max_cull_distances                            : _c.int,
    max_combined_clip_and_cull_distances          : _c.int,
    max_samples                                   : _c.int,
    max_mesh_output_vertices_nv                   : _c.int,
    max_mesh_output_primitives_nv                 : _c.int,
    max_mesh_work_group_size_x_nv                 : _c.int,
    max_mesh_work_group_size_y_nv                 : _c.int,
    max_mesh_work_group_size_z_nv                 : _c.int,
    max_task_work_group_size_x_nv                 : _c.int,
    max_task_work_group_size_y_nv                 : _c.int,
    max_task_work_group_size_z_nv                 : _c.int,
    max_mesh_view_count_nv                        : _c.int,
    maxDualSourceDrawBuffersEXT                   : _c.int,
    limits                                        : limits_t,
};

resource_s :: struct {
    max_lights                                    : _c.int,
    max_clip_planes                               : _c.int,
    max_texture_units                             : _c.int,
    max_texture_coords                            : _c.int,
    max_vertex_attribs                            : _c.int,
    max_vertex_uniform_components                 : _c.int,
    max_varying_floats                            : _c.int,
    max_vertex_texture_image_units                : _c.int,
    max_combined_texture_image_units              : _c.int,
    max_texture_image_units                       : _c.int,
    max_fragment_uniform_components               : _c.int,
    max_draw_buffers                              : _c.int,
    max_vertex_uniform_vectors                    : _c.int,
    max_varying_vectors                           : _c.int,
    max_fragment_uniform_vectors                  : _c.int,
    max_vertex_output_vectors                     : _c.int,
    max_fragment_input_vectors                    : _c.int,
    min_program_texel_offset                      : _c.int,
    max_program_texel_offset                      : _c.int,
    max_clip_distances                            : _c.int,
    max_compute_work_group_count_x                : _c.int,
    max_compute_work_group_count_y                : _c.int,
    max_compute_work_group_count_z                : _c.int,
    max_compute_work_group_size_x                 : _c.int,
    max_compute_work_group_size_y                 : _c.int,
    max_compute_work_group_size_z                 : _c.int,
    max_compute_uniform_components                : _c.int,
    max_compute_texture_image_units               : _c.int,
    max_compute_image_uniforms                    : _c.int,
    max_compute_atomic_counters                   : _c.int,
    max_compute_atomic_counter_buffers            : _c.int,
    max_varying_components                        : _c.int,
    max_vertex_output_components                  : _c.int,
    max_geometry_input_components                 : _c.int,
    max_geometry_output_components                : _c.int,
    max_fragment_input_components                 : _c.int,
    max_image_units                               : _c.int,
    max_combined_image_units_and_fragment_outputs : _c.int,
    max_combined_shader_output_resources          : _c.int,
    max_image_samples                             : _c.int,
    max_vertex_image_uniforms                     : _c.int,
    max_tess_control_image_uniforms               : _c.int,
    max_tess_evaluation_image_uniforms            : _c.int,
    max_geometry_image_uniforms                   : _c.int,
    max_fragment_image_uniforms                   : _c.int,
    max_combined_image_uniforms                   : _c.int,
    max_geometry_texture_image_units              : _c.int,
    max_geometry_output_vertices                  : _c.int,
    max_geometry_total_output_components          : _c.int,
    max_geometry_uniform_components               : _c.int,
    max_geometry_varying_components               : _c.int,
    max_tess_control_input_components             : _c.int,
    max_tess_control_output_components            : _c.int,
    max_tess_control_texture_image_units          : _c.int,
    max_tess_control_uniform_components           : _c.int,
    max_tess_control_total_output_components      : _c.int,
    max_tess_evaluation_input_components          : _c.int,
    max_tess_evaluation_output_components         : _c.int,
    max_tess_evaluation_texture_image_units       : _c.int,
    max_tess_evaluation_uniform_components        : _c.int,
    max_tess_patch_components                     : _c.int,
    max_patch_vertices                            : _c.int,
    max_tess_gen_level                            : _c.int,
    max_viewports                                 : _c.int,
    max_vertex_atomic_counters                    : _c.int,
    max_tess_control_atomic_counters              : _c.int,
    max_tess_evaluation_atomic_counters           : _c.int,
    max_geometry_atomic_counters                  : _c.int,
    max_fragment_atomic_counters                  : _c.int,
    max_combined_atomic_counters                  : _c.int,
    max_atomic_counter_bindings                   : _c.int,
    max_vertex_atomic_counter_buffers             : _c.int,
    max_tess_control_atomic_counter_buffers       : _c.int,
    max_tess_evaluation_atomic_counter_buffers    : _c.int,
    max_geometry_atomic_counter_buffers           : _c.int,
    max_fragment_atomic_counter_buffers           : _c.int,
    max_combined_atomic_counter_buffers           : _c.int,
    max_atomic_counter_buffer_size                : _c.int,
    max_transform_feedback_buffers                : _c.int,
    max_transform_feedback_interleaved_components : _c.int,
    max_cull_distances                            : _c.int,
    max_combined_clip_and_cull_distances          : _c.int,
    max_samples                                   : _c.int,
    max_mesh_output_vertices_nv                   : _c.int,
    max_mesh_output_primitives_nv                 : _c.int,
    max_mesh_work_group_size_x_nv                 : _c.int,
    max_mesh_work_group_size_y_nv                 : _c.int,
    max_mesh_work_group_size_z_nv                 : _c.int,
    max_task_work_group_size_x_nv                 : _c.int,
    max_task_work_group_size_y_nv                 : _c.int,
    max_task_work_group_size_z_nv                 : _c.int,
    max_mesh_view_count_nv                        : _c.int,
    maxDualSourceDrawBuffersEXT                   : _c.int,
    limits                                        : limits_t,
};

input_t :: struct {
    language                          : source_t,
    stage                             : stage_t,
    client                            : client_t,
    client_version                    : target_client_version_t,
    target_language                   : target_language_t,
    target_language_version           : target_language_version_t,
    code                              : cstring,
    default_version                   : _c.int,
    default_profile                   : profile_t,
    force_default_version_and_profile : _c.int,
    forward_compatible                : _c.int,
    messages                          : messages_t,
    resource                          : ^resource_t,
};

input_s :: struct {
    language                          : source_t,
    stage                             : stage_t,
    client                            : client_t,
    client_version                    : target_client_version_t,
    target_language                   : target_language_t,
    target_language_version           : target_language_version_t,
    code                              : cstring,
    default_version                   : _c.int,
    default_profile                   : profile_t,
    force_default_version_and_profile : _c.int,
    forward_compatible                : _c.int,
    messages                          : messages_t,
    resource                          : ^resource_t,
};

spv_options_t :: struct {
    generate_debug_info : _c.bool,
    strip_debug_info    : _c.bool,
    disable_optimizer   : _c.bool,
    optimize_size       : _c.bool,
    disassemble         : _c.bool,
    validate            : _c.bool,
};

spv_options_s :: struct {
    generate_debug_info : _c.bool,
    strip_debug_info    : _c.bool,
    disable_optimizer   : _c.bool,
    optimize_size       : _c.bool,
    disassemble         : _c.bool,
    validate            : _c.bool,
};


/***** glslangd *****/
foreign import glslangd "glslangd.lib"

/* Procedures */
@(link_prefix="glslang")
foreign glslangd {
	initialize_process                                                             :: proc() -> _c.int ---;
	finalize_process                                                               :: proc() ---;
	shader_delete                                                                  :: proc(shader : ^shader_t) ---;
	shader_shift_binding                                                           :: proc(shader : ^shader_t, res : resource_type_t, base : _c.uint) ---;
	shader_shift_binding_for_set                                                   :: proc(shader : ^shader_t, res : resource_type_t, base : _c.uint, set : _c.uint) ---;
	shader_set_options                                                             :: proc(shader : ^shader_t, options : _c.int) ---;
	shader_set_glsl_version                                                        :: proc(shader : ^shader_t, version : _c.int) ---;
	shader_create                                                                  :: proc(input : ^input_t) -> ^shader_t ---;
	shader_preprocess                                                              :: proc(shader : ^shader_t, input : ^input_t) -> _c.int ---;
	shader_parse                                                                   :: proc(shader : ^shader_t, input : ^input_t) -> _c.int ---;
	shader_get_preprocessed_code                                                   :: proc(shader : ^shader_t) -> cstring ---;
	shader_get_info_log                                                            :: proc(shader : ^shader_t) -> cstring ---;
	program_delete                                                                 :: proc(program : ^program_t) ---;
	program_add_shader                                                             :: proc(program : ^program_t, shader : ^shader_t) ---;
	shader_get_info_debug_log                                                      :: proc(shader : ^shader_t) -> cstring ---;
	program_create                                                                 :: proc() -> ^program_t ---;
	program_link                                                                   :: proc(program : ^program_t, messages : _c.int) -> _c.int ---;
	program_add_source_text                                                        :: proc(program : ^program_t, stage : stage_t, text : cstring, len : uint) ---;
	program_set_source_file                                                        :: proc(program : ^program_t, stage : stage_t, file : cstring) ---;
	program_map_io                                                                 :: proc(program : ^program_t) -> _c.int ---;
	program_get_info_log                                                           :: proc(program : ^program_t) -> cstring ---;
	program_get_info_debug_log                                                     :: proc(program : ^program_t) -> cstring ---;
}

