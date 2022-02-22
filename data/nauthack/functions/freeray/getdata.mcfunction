#loads data of the ray

scoreboard players operation nautdata_upload nautmath_var = @s freeray_id
data modify storage nauthack:nauthack nautdata.buffer set from storage nauthack:nauthack freeray.data
function nauthack:nautdata/upload

data modify storage nauthack:nauthack freeray.databuffer set from storage nauthack:nauthack nautdata.load[0]