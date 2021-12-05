data modify storage nauthack:nauthack nautdata.load set from storage nauthack:nauthack nautdata.buffer
data modify storage nauthack:nauthack nautdata.loadbuffer set value []

execute if score nautdata_upload nautmath_var matches 2.. run function nauthack:nautdata/upload_recursive