scoreboard players operation nautstats_xbuffer nautmath_var = @s nautstats_dx
scoreboard players operation nautstats_ybuffer nautmath_var = @s nautstats_dy
scoreboard players operation nautstats_zbuffer nautmath_var = @s nautstats_dz

scoreboard players operation nautstats_xbuffer nautmath_var *= nautstats_xbuffer nautmath_var
scoreboard players operation nautstats_ybuffer nautmath_var *= nautstats_ybuffer nautmath_var
scoreboard players operation nautstats_zbuffer nautmath_var *= nautstats_zbuffer nautmath_var

scoreboard players operation nautstats_xyzbuffer nautmath_var = nautstats_xbuffer nautmath_var
scoreboard players operation nautstats_xyzbuffer nautmath_var += nautstats_zbuffer nautmath_var

scoreboard players operation nautstats_xzbuffer nautmath_var = nautstats_xyzbuffer nautmath_var

scoreboard players operation nautstats_xyzbuffer nautmath_var += nautstats_ybuffer nautmath_var

scoreboard players operation nautmath_sqrt_base nautmath_var = nautstats_xzbuffer nautmath_var
function nauthack:nautmath/sqrt
scoreboard players operation nautstats_xzspeed nautmath_var = nautmath_sqrt_result nautmath_var

scoreboard players operation nautmath_sqrt_base nautmath_var = nautstats_xyzbuffer nautmath_var
function nauthack:nautmath/sqrt
scoreboard players operation nautstats_xyzspeed nautmath_var = nautmath_sqrt_result nautmath_var