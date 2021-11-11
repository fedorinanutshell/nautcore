data modify storage nauthack:nauthack nautid.load set from storage nauthack:nauthack nautid.data
data modify storage nauthack:nauthack nautid.loadbuffer set value []

execute if score nautid_upload nautmath_var matches 2.. run function nauthack:nautid/upload_recursive