//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float player;
vec4 c;

void main()
{
    vec4 original=texture2D(gm_BaseTexture,v_vTexcoord);
    float blue=original.b;
    float alpha=original.a;
    
    if(abs(player - float(1)) < 0.00001){
        c=vec4(original.r,blue,blue*.2,alpha);
    }else if(abs(player - float(2)) < 0.00001){
        c=original;
    } else if(abs(player - float(3)) < 0.00001){
        if(original.r<float(1)){
            c=vec4(blue,blue,0,alpha);
        }else{
            c=vec4(blue,blue,original.b,alpha);
        }
    } else if(abs(player - float(4)) < 0.00001){
        
        if(original.r<float(1)){
            c=vec4(blue*.25,blue*.25,original.b*.25,alpha);
        }else{
            
            c=vec4(blue,blue,blue,alpha);
        }
    } else {
        c=original;
    }
    
    gl_FragColor=c;
}

