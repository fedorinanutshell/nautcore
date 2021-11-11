scoreboard players operation nautid_upload nautmath_var = @s nautid_id
function nauthack:nautid/upload

execute store result score rmbcheck_getbuffer_ownerid nautmath_var run data get storage nauthack:nauthack nautid.load[0].rmbcheck_ownerID

execute if score rmbcheck_getbuffer_ownerid nautmath_var = rmbcheck_get_ownerid nautmath_var run tag @s add rmbcheck_found