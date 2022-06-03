execute store result score neoray_reference nautmath_var run data get entity @s data.neoray.ownerID
execute as @e if score @s neoid = neoray_reference nautmath_var run tag @s add neoray_owner

function #nauthack:neoray/endings

tag @e remove neoray_owner
kill @s