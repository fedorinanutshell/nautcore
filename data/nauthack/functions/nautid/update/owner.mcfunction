scoreboard players operation nautid_upload nautmath_var = @s nautid_id
function nauthack:nautid/upload

data modify storage nauthack:nauthack nautid.databuffer set from storage nauthack:nauthack nautid.load[0]
function nauthack:nautid/databuffer/getowner
data modify storage nauthack:nauthack nautid.load[0] set from storage nauthack:nauthack nautid.databuffer

scoreboard players operation nautid_download nautmath_var = @s nautid_id
function nauthack:nautid/download

data modify storage nauthack:nauthack nautid.data set from storage nauthack:nauthack nautid.load

tag @s add nautid_ownerupdated