scoreboard players operation nautid_download nautmath_var -= 1 nautmath_var
data modify storage nauthack:nauthack nautid.load prepend from storage nauthack:nauthack nautid.loadbuffer[0]
data remove storage nauthack:nauthack nautid.loadbuffer[0]

execute if score nautid_download nautmath_var matches 2.. run function nauthack:nautid/download_recursive