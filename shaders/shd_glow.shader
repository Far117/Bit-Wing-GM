attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_texcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position.xyz, 1.0);
    
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;

uniform sampler2D s_multitex;
uniform float glow_boost;

void main()
{

vec4 color1 = texture2D(gm_BaseTexture,v_texcoord);
vec4 color2 = texture2D(s_multitex,v_texcoord);
color2 *= glow_boost;
//color1.rgb = (color1.rgb * 0.5) + 0.5; //soft dream lighting
vec3 blendcolor = (color1.rgb + color2.rgb) - (color1.rgb * color2.rgb); //screen blending pixel = (src + dst) - (src * dst)
//vec3 blendcolor = color1.rgb + color2.rgb; //additive blending (pixel = src + dst)

gl_FragColor = vec4(blendcolor, color1.a);
}
