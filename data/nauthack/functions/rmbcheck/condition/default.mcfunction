execute if entity @s[nbt={SelectedItem: {id: "minecraft:totem_of_undying"}}] run scoreboard players set rmbcheck_check nautmath_var 1
execute if entity @s[nbt={SelectedItem: {id: "minecraft:totem_of_undying"}}] run data modify storage nauthack:nauthack rmbcheck.id set value {default: true}