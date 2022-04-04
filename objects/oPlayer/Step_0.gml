/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78E50F93
/// @DnDArgument : "code" "/// @desc Core Player Logic$(13_10)$(13_10)//Get player inputs$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)//Calculate movement$(13_10)var _move = key_right - key_left;$(13_10)$(13_10)hsp = _move * walksp;$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)if (place_meeting(x,y+1,oWall)) && (key_jump)$(13_10){$(13_10)	vsp = -jumpsp$(13_10) }$(13_10)$(13_10)//Horizontal collision$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y,oWall))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)//Vertical collision$(13_10)if (place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)	while (!place_meeting(x,y+sign(vsp),oWall))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)		}$(13_10)	vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)//Animation$(13_10)if (!place_meeting(x,y+1,oWall))$(13_10){$(13_10)	sprite_index = Oswald_idle;$(13_10)	image_speed = 0;$(13_10)	if (vsp > 0) image_index = 1 ; else image_index = 0;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_speed = 1;$(13_10)	if (hsp == 0)$(13_10)	{$(13_10)		sprite_index = Oswald_idle;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		sprite_index = Oswald_walk;$(13_10)   	}$(13_10)}$(13_10)$(13_10)if (hsp != 0) $(13_10){$(13_10)	image_xscale = sign(hsp) * 4;$(13_10)}"
/// @desc Core Player Logic

//Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -jumpsp
 }

//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
		}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = Oswald_idle;
	image_speed = 0;
	if (vsp > 0) image_index = 1 ; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = Oswald_idle;
	}
	else
	{
		sprite_index = Oswald_walk;
   	}
}

if (hsp != 0) 
{
	image_xscale = sign(hsp) * 4;
}