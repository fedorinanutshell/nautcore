scoreboard players operation nautdata_download nautmath_var -= 1 nautmath_var
data modify storage nauthack:nauthack nautdata.load prepend from storage nauthack:nauthack nautdata.loadbuffer[0]
data remove storage nauthack:nauthack nautdata.loadbuffer[0]

execute if score nautdata_download nautmath_var matches 2.. run function nauthack:nautdata/download_recursive