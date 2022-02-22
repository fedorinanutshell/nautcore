function nauthack:freeray/getdata

execute store result score freeray_power nautmath_var run data get storage nauthack:nauthack freeray.databuffer.power 1.0
scoreboard players remove freeray_power nautmath_var 1
function #nauthack:freeray/effects
execute store result storage nauthack:nauthack freeray.databuffer.power double 1.0 run scoreboard players get freeray_power nautmath_var

function nauthack:freeray/storedata

execute if score freeray_power nautmath_var matches ..0 run function nauthack:freeray/endray