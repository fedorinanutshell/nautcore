scoreboard players add freeray_maxid nautmath_var 1
scoreboard players operation @s freeray_id = freeray_maxid nautmath_var

data modify storage nauthack:nauthack freeray.databuffer set value {}
execute store result storage nauthack:nauthack freeray.databuffer.ID long 1.0 run scoreboard players get @s nautid_id
data modify storage nauthack:nauthack freeray.databuffer.UUID set from entity @s UUID

data modify storage nauthack:nauthack freeray.databuffer.args set from storage nauthack:nauthack freeray.args
execute store result storage nauthack:nauthack freeray.databuffer.freerayID long 1.0 run scoreboard players get @s freeray_id
execute store result storage nauthack:nauthack freeray.databuffer.ownerID long 1.0 run scoreboard players get @s nautid_id
execute store result storage nauthack:nauthack freeray.databuffer.power long 1.0 run scoreboard players get freeray_power nautmath_var

data modify storage nauthack:nauthack freeray.data append from storage nauthack:nauthack freeray.databuffer