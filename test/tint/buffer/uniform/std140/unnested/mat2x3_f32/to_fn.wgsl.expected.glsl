#version 310 es

layout(binding = 0, std140)
uniform u_block_std140_1_ubo {
  vec3 inner_col0;
  uint tint_pad_0;
  vec3 inner_col1;
} v_1;
void a(mat2x3 m) {
}
void b(vec3 v) {
}
void c(float f_1) {
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  a(mat2x3(v_1.inner_col0, v_1.inner_col1));
  b(mat2x3(v_1.inner_col0, v_1.inner_col1)[1u]);
  b(mat2x3(v_1.inner_col0, v_1.inner_col1)[1u].zxy);
  c(mat2x3(v_1.inner_col0, v_1.inner_col1)[1u].x);
  c(mat2x3(v_1.inner_col0, v_1.inner_col1)[1u].zxy.x);
}
