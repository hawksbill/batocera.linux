// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
vec4 _oPosition1;
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0019;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _ps;
    out_vertex _TMP15;
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _r0019 = VertexCoord.x*MVPMatrix[0];
    _r0019 = _r0019 + VertexCoord.y*MVPMatrix[1];
    _r0019 = _r0019 + VertexCoord.z*MVPMatrix[2];
    _r0019 = _r0019 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0019;
    _TMP15._t1 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4(-_ps.x, -_ps.y, _ps.x, -_ps.y);
    _TMP15._t2 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _TMP15._t3 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4(-_ps.x, _ps.y, _ps.x, _ps.y);
    _TMP15._t4 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4(-2.00000000E+00*_ps.x, 0.00000000E+00, 2.00000000E+00*_ps.x, 0.00000000E+00);
    _TMP15._t5 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4(0.00000000E+00, -_ps.y, 0.00000000E+00, _ps.y);
    _TMP15._t6 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4(0.00000000E+00, -2.00000000E+00*_ps.y, 0.00000000E+00, 2.00000000E+00*_ps.y);
    _ret_0._texCoord = TexCoord.xy;
    _ret_0._t1 = _TMP15._t1;
    _ret_0._t2 = _TMP15._t2;
    _ret_0._t3 = _TMP15._t3;
    _ret_0._t4 = _TMP15._t4;
    _ret_0._t5 = _TMP15._t5;
    _ret_0._t6 = _TMP15._t6;
    gl_Position = _r0019;
    TEX0.xy = TexCoord.xy;
    TEX1 = _TMP15._t1;
    TEX2 = _TMP15._t2;
    TEX3 = _TMP15._t3;
    TEX4 = _TMP15._t4;
    TEX5 = _TMP15._t5;
    TEX6 = _TMP15._t6;
    return;
    TEX0.xy = _ret_0._texCoord;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
vec4 _ret_0;
bool _TMP20;
bool _TMP19;
bool _TMP18;
bool _TMP17;
bool _TMP16;
bool _TMP15;
bool _TMP14;
bool _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec3 _df0052;
vec3 _a0054;
vec3 _df0056;
vec3 _a0058;
vec3 _df0060;
vec3 _a0062;
vec3 _df0064;
vec3 _a0066;
vec3 _df0068;
vec3 _a0070;
vec3 _df0072;
vec3 _a0074;
vec3 _df0076;
vec3 _a0078;
vec3 _df0080;
vec3 _a0082;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _E;
    vec3 _sum;
    _TMP0 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _E = _TMP0.xyz;
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.xy);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xy);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX3.xy);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX4.xy);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX5.xy);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX6.zw);
    _a0054 = _TMP0.xyz - _TMP4.xyz;
    _df0052 = abs(_a0054);
    _TMP13 = _df0052.x < 2.00000003E-01 && _df0052.y < 2.00000003E-01 && _df0052.z < 2.00000003E-01;
    _a0058 = _TMP0.xyz - _TMP10.xyz;
    _df0056 = abs(_a0058);
    _TMP14 = _df0056.x < 2.00000003E-01 && _df0056.y < 2.00000003E-01 && _df0056.z < 2.00000003E-01;
    _a0062 = _TMP0.xyz - _TMP6.xyz;
    _df0060 = abs(_a0062);
    _TMP15 = _df0060.x < 2.00000003E-01 && _df0060.y < 2.00000003E-01 && _df0060.z < 2.00000003E-01;
    _a0066 = _TMP0.xyz - _TMP9.xyz;
    _df0064 = abs(_a0066);
    _TMP16 = _df0064.x < 2.00000003E-01 && _df0064.y < 2.00000003E-01 && _df0064.z < 2.00000003E-01;
    _a0070 = _TMP0.xyz - _TMP2.xyz;
    _df0068 = abs(_a0070);
    _TMP17 = _df0068.x < 2.00000003E-01 && _df0068.y < 2.00000003E-01 && _df0068.z < 2.00000003E-01;
    _a0074 = _TMP0.xyz - _TMP1.xyz;
    _df0072 = abs(_a0074);
    _TMP18 = _df0072.x < 2.00000003E-01 && _df0072.y < 2.00000003E-01 && _df0072.z < 2.00000003E-01;
    _a0078 = _TMP0.xyz - _TMP3.xyz;
    _df0076 = abs(_a0078);
    _TMP19 = _df0076.x < 2.00000003E-01 && _df0076.y < 2.00000003E-01 && _df0076.z < 2.00000003E-01;
    _a0082 = _TMP0.xyz - _TMP5.xyz;
    _df0080 = abs(_a0082);
    _TMP20 = _df0080.x < 2.00000003E-01 && _df0080.y < 2.00000003E-01 && _df0080.z < 2.00000003E-01;
    if (_TMP13 && _TMP14 && _TMP15 && _TMP16 && _TMP17 && _TMP18 && _TMP19 && _TMP20) { 
        _sum = (_TMP0.xyz + _TMP1.xyz + _TMP2.xyz + _TMP3.xyz + _TMP4.xyz + _TMP5.xyz + _TMP6.xyz + _TMP7.xyz + _TMP8.xyz + _TMP9.xyz + _TMP10.xyz + _TMP11.xyz + _TMP12.xyz)/1.30000000E+01;
        _E = _sum;
    } 
    _ret_0 = vec4(_E.x, _E.y, _E.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif