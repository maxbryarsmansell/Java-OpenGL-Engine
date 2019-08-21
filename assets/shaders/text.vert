#version 330 core

layout(location = 0) in vec2 a_Position;
layout(location = 1) in vec2 a_Texcoord;
layout(location = 2) in vec4 a_Colour;

out vec2 v_Texcoord;
out vec4 v_Colour;

uniform mat4 u_ViewProjection;
uniform mat4 u_Transform;

void main()
{
	v_Texcoord = a_Texcoord;
	v_Colour = a_Colour;
	
	gl_Position = u_ViewProjection * u_Transform * vec4(a_Position, 0.0, 1.0);
}