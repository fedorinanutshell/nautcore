execute as @e unless score @s nautid_id matches 0.. run function nauthack:nautid/setid

execute as @e[tag = !nautid_ownerupdated] if data entity @s Owner run function nauthack:nautid/update/owner
execute as @e[type = #nauthack:nautid/owners] run function nauthack:nautid/update/owned