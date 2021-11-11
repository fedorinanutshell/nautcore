execute store result score nautid_searchbuffer_uuid0 nautmath_var run data get storage nauthack:nauthack nautid.datacopy[0].UUID[0]
execute store result score nautid_searchbuffer_uuid1 nautmath_var run data get storage nauthack:nauthack nautid.datacopy[0].UUID[1]
execute store result score nautid_searchbuffer_uuid2 nautmath_var run data get storage nauthack:nauthack nautid.datacopy[0].UUID[2]
execute store result score nautid_searchbuffer_uuid3 nautmath_var run data get storage nauthack:nauthack nautid.datacopy[0].UUID[3]

execute if score nautid_search_uuid0 nautmath_var = nautid_searchbuffer_uuid0 nautmath_var if score nautid_search_uuid1 nautmath_var = nautid_searchbuffer_uuid1 nautmath_var if score nautid_search_uuid2 nautmath_var = nautid_searchbuffer_uuid2 nautmath_var if score nautid_search_uuid3 nautmath_var = nautid_searchbuffer_uuid3 nautmath_var run scoreboard players set nautid_searchsuccess nautmath_var 1

execute if score nautid_success nautmath_var matches 0 run data remove storage nauthack:nauthack nautid.datacopy[0]

execute if score nautid_success nautmath_var matches 0 run function nauthack:nautid/search/uuid_recursive