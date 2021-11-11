scoreboard players operation nautid_upload nautmath_var -= 1 nautmath_var
data modify storage nauthack:nauthack nautid.loadbuffer prepend from storage nauthack:nauthack nautid.load[0]
data remove storage nauthack:nauthack nautid.load[0]

execute if score nautid_upload nautmath_var matches 2.. run function nauthack:nautid/upload_recursive