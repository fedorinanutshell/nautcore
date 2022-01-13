#this is the default way you create a new asynchronous ray in this data-pack

#arguments will control behaviour of a ray
data modify storage nauthack:nauthack asyncray.args set value {nauthack_default: true, nauthack_collision: true}
scoreboard players set asyncray_power nautmath_var 65536
scoreboard players set asyncray_speed nautmath_var 128
scoreboard players set asyncray_acceleration nautmath_var 16

function nauthack:asyncray/startray