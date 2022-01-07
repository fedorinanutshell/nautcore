#loads data of the ray

scoreboard players operation nautdata_upload nautmath_var = @s asyncray_id
data modify storage nauthack:nauthack nautdata.buffer set from storage nauthack:nauthack asyncray.data
function nauthack:nautdata/upload

data modify storage nauthack:nauthack asyncray.databuffer set from storage nauthack:nauthack nautdata.load[0]