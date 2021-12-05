scoreboard players operation nautdata_upload nautmath_var = @s rmbcheck_id
data modify storage nauthack:nauthack nautdata.buffer set from storage nauthack:nauthack rmbcheck.data
function nauthack:nautdata/upload

execute store result score rmbcheck_getbuffer_ownerid nautmath_var run data get storage nauthack:nauthack nautdata.load[0].ownerID

execute if score rmbcheck_getbuffer_ownerid nautmath_var = rmbcheck_get_ownerid nautmath_var run tag @s add rmbcheck_found