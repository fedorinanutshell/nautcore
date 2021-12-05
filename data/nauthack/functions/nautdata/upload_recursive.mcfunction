scoreboard players operation nautdata_upload nautmath_var -= 1 nautmath_var
data modify storage nauthack:nauthack nautdata.loadbuffer prepend from storage nauthack:nauthack nautdata.load[0]
data remove storage nauthack:nauthack nautdata.load[0]

execute if score nautdata_upload nautmath_var matches 2.. run function nauthack:nautdata/upload_recursive