data modify storage nauthack:nauthack nautid.databuffer.ownerUUID set from entity @s Owner
execute store result score nautid_search_uuid0 nautmath_var run data get entity @s Owner[0]
execute store result score nautid_search_uuid1 nautmath_var run data get entity @s Owner[1]
execute store result score nautid_search_uuid2 nautmath_var run data get entity @s Owner[2]
execute store result score nautid_search_uuid3 nautmath_var run data get entity @s Owner[3]

function nauthack:nautid/search/uuid

execute store result storage nauthack:nauthack nautid.databuffer.ownerID int 1.0 run scoreboard players get nautid_searchresult nautmath_var