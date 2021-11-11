data modify storage nauthack:nauthack nautid.datacopy set from storage nauthack:nauthack nautid.data
scoreboard players set nautid_searchsuccess nautmath_var 0 

function nauthack:nautid/search/uuid_recursive

execute store result score nautid_searchresult nautmath_var run data get storage nauthack:nauthack nautid.datacopy[0].ID