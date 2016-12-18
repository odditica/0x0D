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

//THIS IS WHAT YOU CAME HERE FOR, ISN'T IT?

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
const float fadeX = 16. * 2.;
const float fadeY = 9. * 2.;
const float pW = .0015625;
const float pH = .0027;
const float tPi = 6.28318530718;
uniform float time;

void main()
{
    vec2 coords = v_vTexcoord; 
    float dist = distance(coords, vec2(.5, .5));
    float val = - dist / 6.;
    vec4 col = texture2D( gm_BaseTexture, coords);
    coords.x = mix(coords.x - col.r / 1280. + col.b / 1280., .5, val);
    coords.y = mix(coords.y, .5, val);
    
    vec4 col2;
    if (coords.x <= 0. || coords.y <= 0. || coords.x >= 1. || coords.y >= 1.){ 
       gl_FragColor = vec4(0., 0., 0., 0.);
    }else{
       col2 = v_vColour * (1. + sin(mod(coords.y * 50. - time * 2., tPi)) * .1) * (texture2D( gm_BaseTexture, vec2(coords.x, coords.y)));  
       
       vec4 boxBlur = vec4(0., 0., 0., 0.);
       for (int _y = -2; _y <= 2; _y++) {
           for (int _x = -2; _x <= 2; _x++){
               boxBlur += texture2D( gm_BaseTexture, vec2(coords.x + float(_x) * pW, coords.y + float(_y) * pH)) * .2;
           }
       }
       
       col2 = ((col2 * 25. + boxBlur * (.8 - .05 * sin(time))) * (1. - min(.4, (((sin(coords.y * 1200.) / 1.4) + 1.) / 5.)) - min(1., dist / 1.6)));           
       gl_FragColor = col2 * ((min(coords.y * fadeY, 1.)) * min(coords.x * fadeX, 1.) * (min((1. * fadeX) - coords.x * fadeX , 1.)) * (min((1. * fadeY) - coords.y * fadeY , 1.))); 
    }
}
