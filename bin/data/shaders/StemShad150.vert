#version 150
uniform mat4 modelViewProjectionMatrix;

in vec4 position;


uniform vec2 XYoffset;
uniform vec2 XYScale;

void main()
{
    vec4 temppos= position;
    temppos.x = XYoffset.x + XYScale.x*temppos.x;
    temppos.y = XYoffset.y + XYScale.y*temppos.y;
    
    gl_Position = modelViewProjectionMatrix*temppos;
} 
