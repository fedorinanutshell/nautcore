#same as nauthack:nautid/setid, but uses arguments from nautid.databuffer

scoreboard players add nautid_maxid nautmath_var 1
scoreboard players operation @s nautid_id = nautid_maxid nautmath_var

execute store result storage nauthack:nauthack nautid.databuffer.ID int 1.0 run scoreboard players get @s nautid_id
data modify storage nauthack:nauthack nautid.databuffer.UUID set from entity @s UUID

data modify storage nauthack:nauthack nautid.data append from storage nauthack:nauthack nautid.databuffer

execute store result score @s nautid_uuid0 run data get entity @s UUID[0]
execute store result score @s nautid_uuid1 run data get entity @s UUID[1]
execute store result score @s nautid_uuid2 run data get entity @s UUID[2]
execute store result score @s nautid_uuid3 run data get entity @s UUID[3]