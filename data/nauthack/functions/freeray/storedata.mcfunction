#stores everything we need to store, always used after nauthack:asyncray/getdata

data modify storage nauthack:nauthack nautdata.load[0] set from storage nauthack:nauthack freeray.databuffer

scoreboard players operation nautdata_download nautmath_var = @s freeray_id
function nauthack:nautdata/download

data modify storage nauthack:nauthack freeray.data set from storage nauthack:nauthack nautdata.load