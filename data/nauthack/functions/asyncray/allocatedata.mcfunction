scoreboard players add asyncray_maxid nautmath_var 1
scoreboard players operation @s asyncray_id = asyncray_maxid nautmath_var

data modify storage nauthack:nauthack asyncray.databuffer set value {}
execute store result storage nauthack:nauthack asyncray.databuffer.ID long 1.0 run scoreboard players get @s nautid_id
data modify storage nauthack:nauthack asyncray.databuffer.UUID set from entity @s UUID

data modify storage nauthack:nauthack asyncray.databuffer.args set from storage nauthack:nauthack asyncray.args
execute store result storage nauthack:nauthack asyncray.databuffer.asyncrayID long 1.0 run scoreboard players get @s asyncray_id
execute store result storage nauthack:nauthack asyncray.databuffer.ownerID long 1.0 run scoreboard players get @s nautid_id
execute store result storage nauthack:nauthack asyncray.databuffer.power double 0.01 run scoreboard players get asyncray_power nautmath_var
execute store result storage nauthack:nauthack asyncray.databuffer.speed double 0.01 run scoreboard players get asyncray_speed nautmath_var
execute store result storage nauthack:nauthack asyncray.databuffer.acceleration double 0.01 run scoreboard players get asyncray_acceleration nautmath_var

data modify storage nauthack:nauthack asyncray.data append from storage nauthack:nauthack asyncray.databuffer