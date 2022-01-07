#this is the default way you create a new asynchronous ray in this data-pack

#arguments will control behaviour of a ray
data modify storage nauthack:nauthack asyncray.args set value {default: true}
scoreboard players set asyncray_power nautmath_var 16384
scoreboard players set asyncray_speed nautmath_var 40
scoreboard players set asyncray_acceleration nautmath_var 4

function nauthack:asyncray/startray