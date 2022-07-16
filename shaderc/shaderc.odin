package shaderc

import _c "core:c"

/* Macros */

shader_kind :: enum {
    vertex_shader,
    fragment_shader,
    compute_shader,
    geometry_shader,
    tess_control_shader,
    tess_evaluation_shader,
    glsl_vertex_shader          = vertex_shader,
    glsl_fragment_shader        = fragment_shader,
    glsl_compute_shader         = compute_shader,
    glsl_geometry_shader        = geometry_shader,
    glsl_tess_control_shader    = tess_control_shader,
    glsl_tess_evaluation_shader = tess_evaluation_shader,
    glsl_infer_from_source,
    glsl_default_vertex_shader,
    glsl_default_fragment_shader,
    glsl_default_compute_shader,
    glsl_default_geometry_shader,
    glsl_default_tess_control_shader,
    glsl_default_tess_evaluation_shader,
    spirv_assembly,
    raygen_shader,
    anyhit_shader,
    closesthit_shader,
    miss_shader,
    intersection_shader,
    callable_shader,
    glsl_raygen_shader          = raygen_shader,
    glsl_anyhit_shader          = anyhit_shader,
    glsl_closesthit_shader      = closesthit_shader,
    glsl_miss_shader            = miss_shader,
    glsl_intersection_shader    = intersection_shader,
    glsl_callable_shader        = callable_shader,
    glsl_default_raygen_shader,
    glsl_default_anyhit_shader,
    glsl_default_closesthit_shader,
    glsl_default_miss_shader,
    glsl_default_intersection_shader,
    glsl_default_callable_shader,
    task_shader,
    mesh_shader,
    glsl_task_shader            = task_shader,
    glsl_mesh_shader            = mesh_shader,
    glsl_default_task_shader,
    glsl_default_mesh_shader,
};

source_language :: enum {
    glsl,
    hlsl,
};

profile :: enum {
    none,
    core,
    compatibility,
    es,
};

optimization_level :: enum {
    zero,
    size,
    performance,
};

limit :: enum {
    limit_max_lights,
    limit_max_clip_planes,
    limit_max_texture_units,
    limit_max_texture_coords,
    limit_max_vertex_attribs,
    limit_max_vertex_uniform_components,
    limit_max_varying_floats,
    limit_max_vertex_texture_image_units,
    limit_max_combined_texture_image_units,
    limit_max_texture_image_units,
    limit_max_fragment_uniform_components,
    limit_max_draw_buffers,
    limit_max_vertex_uniform_vectors,
    limit_max_varying_vectors,
    limit_max_fragment_uniform_vectors,
    limit_max_vertex_output_vectors,
    limit_max_fragment_input_vectors,
    limit_min_program_texel_offset,
    limit_max_program_texel_offset,
    limit_max_clip_distances,
    limit_max_compute_work_group_count_x,
    limit_max_compute_work_group_count_y,
    limit_max_compute_work_group_count_z,
    limit_max_compute_work_group_size_x,
    limit_max_compute_work_group_size_y,
    limit_max_compute_work_group_size_z,
    limit_max_compute_uniform_components,
    limit_max_compute_texture_image_units,
    limit_max_compute_image_uniforms,
    limit_max_compute_atomic_counters,
    limit_max_compute_atomic_counter_buffers,
    limit_max_varying_components,
    limit_max_vertex_output_components,
    limit_max_geometry_input_components,
    limit_max_geometry_output_components,
    limit_max_fragment_input_components,
    limit_max_image_units,
    limit_max_combined_image_units_and_fragment_outputs,
    limit_max_combined_shader_output_resources,
    limit_max_image_samples,
    limit_max_vertex_image_uniforms,
    limit_max_tess_control_image_uniforms,
    limit_max_tess_evaluation_image_uniforms,
    limit_max_geometry_image_uniforms,
    limit_max_fragment_image_uniforms,
    limit_max_combined_image_uniforms,
    limit_max_geometry_texture_image_units,
    limit_max_geometry_output_vertices,
    limit_max_geometry_total_output_components,
    limit_max_geometry_uniform_components,
    limit_max_geometry_varying_components,
    limit_max_tess_control_input_components,
    limit_max_tess_control_output_components,
    limit_max_tess_control_texture_image_units,
    limit_max_tess_control_uniform_components,
    limit_max_tess_control_total_output_components,
    limit_max_tess_evaluation_input_components,
    limit_max_tess_evaluation_output_components,
    limit_max_tess_evaluation_texture_image_units,
    limit_max_tess_evaluation_uniform_components,
    limit_max_tess_patch_components,
    limit_max_patch_vertices,
    limit_max_tess_gen_level,
    limit_max_viewports,
    limit_max_vertex_atomic_counters,
    limit_max_tess_control_atomic_counters,
    limit_max_tess_evaluation_atomic_counters,
    limit_max_geometry_atomic_counters,
    limit_max_fragment_atomic_counters,
    limit_max_combined_atomic_counters,
    limit_max_atomic_counter_bindings,
    limit_max_vertex_atomic_counter_buffers,
    limit_max_tess_control_atomic_counter_buffers,
    limit_max_tess_evaluation_atomic_counter_buffers,
    limit_max_geometry_atomic_counter_buffers,
    limit_max_fragment_atomic_counter_buffers,
    limit_max_combined_atomic_counter_buffers,
    limit_max_atomic_counter_buffer_size,
    limit_max_transform_feedback_buffers,
    limit_max_transform_feedback_interleaved_components,
    limit_max_cull_distances,
    limit_max_combined_clip_and_cull_distances,
    limit_max_samples,
};

uniform_kind :: enum {
    image,
    sampler,
    texture,
    buffer,
    storage_buffer,
    unordered_access_view,
};

compiler :: struct {};

compiler_t :: ^compiler;

compile_options :: struct {};

compile_options_t :: ^compile_options;

include_result :: struct {
    source_name        : cstring,
    source_name_length : uint,
    content            : cstring,
    content_length     : uint,
    user_data          : rawptr,
};

include_type :: enum {
    relative,
    standard,
};

compilation_result :: struct {};

include_resolve_fn :: (proc(user_data : rawptr, requested_source : cstring, type : _c.int, requesting_source : cstring, include_depth : uint) -> ^include_result);

include_result_release_fn :: proc(user_data : rawptr, include_result : ^include_result);

compilation_result_t :: ^compilation_result;


/***** shaderc *****/
foreign import shaderc "shaderc.lib"

/* Procedures */
@(link_prefix="shaderc")
foreign shaderc {
	compiler_initialize                                                                                                            :: proc() -> compiler_t ---;
	compiler_release                                                                                                               :: proc(compiler_t) ---;
	compile_options_initialize                                                                                                     :: proc() -> compile_options_t ---;
	compile_options_clone                                                                                                          :: proc(options : compile_options_t) -> compile_options_t ---;
	compile_options_release                                                                                                        :: proc(options : compile_options_t) ---;
	compile_options_add_macro_definition                                                                                           :: proc(options : compile_options_t, name : cstring, name_length : uint, value : cstring, value_length : uint) ---;
	compile_options_set_source_language                                                                                            :: proc(options : compile_options_t, lang : source_language) ---;
	compile_options_set_generate_debug_info                                                                                        :: proc(options : compile_options_t) ---;
	compile_options_set_optimization_level                                                                                         :: proc(options : compile_options_t, level : optimization_level) ---;
	compile_options_set_forced_version_profile                                                                                     :: proc(options : compile_options_t, version : _c.int, profile : profile) ---;
	compile_options_set_include_callbacks                                                                                          :: proc(options : compile_options_t, resolver : include_resolve_fn, result_releaser : include_result_release_fn, user_data : rawptr) ---;
	compile_options_set_suppress_warnings                                                                                          :: proc(options : compile_options_t) ---;
	compile_options_set_target_env                                                                                                 :: proc(options : compile_options_t, target : target_env, version : u32) ---;
	compile_options_set_target_spirv                                                                                               :: proc(options : compile_options_t, version : spirv_version) ---;
	compile_options_set_warnings_as_errors                                                                                         :: proc(options : compile_options_t) ---;
	compile_options_set_limit                                                                                                      :: proc(options : compile_options_t, limit : limit, value : _c.int) ---;
	compile_options_set_auto_bind_uniforms                                                                                         :: proc(options : compile_options_t, auto_bind : _c.bool) ---;
	compile_options_set_auto_combined_image_sampler                                                                                :: proc(options : compile_options_t, upgrade : _c.bool) ---;
	compile_options_set_hlsl_io_mapping                                                                                            :: proc(options : compile_options_t, hlsl_iomap : _c.bool) ---;
	compile_options_set_hlsl_offsets                                                                                               :: proc(options : compile_options_t, hlsl_offsets : _c.bool) ---;
	compile_options_set_binding_base                                                                                               :: proc(options : compile_options_t, kind : uniform_kind, base : u32) ---;
	compile_options_set_binding_base_for_stage                                                                                     :: proc(options : compile_options_t, shader_kind : shader_kind, kind : uniform_kind, base : u32) ---;
	compile_options_set_auto_map_locations                                                                                         :: proc(options : compile_options_t, auto_map : _c.bool) ---;
	compile_options_set_hlsl_register_set_and_binding_for_stage                                                                    :: proc(options : compile_options_t, shader_kind : shader_kind, reg : cstring, set : cstring, binding : cstring) ---;
	compile_options_set_hlsl_register_set_and_binding                                                                              :: proc(options : compile_options_t, reg : cstring, set : cstring, binding : cstring) ---;
	compile_options_set_hlsl_functionality1                                                                                        :: proc(options : compile_options_t, enable : _c.bool) ---;
	compile_options_set_hlsl_16bit_types                                                                                           :: proc(options : compile_options_t, enable : _c.bool) ---;
	compile_options_set_invert_y                                                                                                   :: proc(options : compile_options_t, enable : _c.bool) ---;
	compile_options_set_nan_clamp                                                                                                  :: proc(options : compile_options_t, enable : _c.bool) ---;
	compile_into_spv                                                                                                               :: proc(compiler : compiler_t, source_text : cstring, source_text_size : uint, shader_kind : shader_kind, input_file_name : cstring, entry_point_name : cstring, additional_options : compile_options_t) -> compilation_result_t ---;
	compile_into_spv_assembly                                                                                                      :: proc(compiler : compiler_t, source_text : cstring, source_text_size : uint, shader_kind : shader_kind, input_file_name : cstring, entry_point_name : cstring, additional_options : compile_options_t) -> compilation_result_t ---;
	compile_into_preprocessed_text                                                                                                 :: proc(compiler : compiler_t, source_text : cstring, source_text_size : uint, shader_kind : shader_kind, input_file_name : cstring, entry_point_name : cstring, additional_options : compile_options_t) -> compilation_result_t ---;
	assemble_into_spv                                                                                                              :: proc(compiler : compiler_t, source_assembly : cstring, source_assembly_size : uint, additional_options : compile_options_t) -> compilation_result_t ---;
	result_release                                                                                                                 :: proc(result : compilation_result_t) ---;
	result_get_length                                                                                                              :: proc(result : compilation_result_t) -> uint ---;
	result_get_num_warnings                                                                                                        :: proc(result : compilation_result_t) -> uint ---;
	result_get_num_errors                                                                                                          :: proc(result : compilation_result_t) -> uint ---;
	result_get_compilation_status                                                                                                  :: proc(compilation_result_t) -> compilation_status ---;
	get_spv_version                                                                                                                :: proc(version : ^_c.uint, revision : ^_c.uint) ---;
	parse_version_profile                                                                                                          :: proc(str : cstring, version : ^_c.int, profile : ^profile) -> _c.bool ---;
	result_get_bytes                                                                                                               :: proc(result : compilation_result_t) -> cstring ---;
	result_get_error_message                                                                                                       :: proc(result : compilation_result_t) -> cstring ---;
}

