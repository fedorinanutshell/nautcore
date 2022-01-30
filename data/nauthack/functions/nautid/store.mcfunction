data modify storage nauthack:nauthack nautid.databuffer set value {}
execute store result storage nauthack:nauthack nautid.databuffer.ID int 1.0 run scoreboard players get @s nautid_id
data modify storage nauthack:nauthack nautid.databuffer.UUID set from entity @s UUID

data modify storage nauthack:nauthack nautid.data append from storage nauthack:nauthack nautid.databuffer