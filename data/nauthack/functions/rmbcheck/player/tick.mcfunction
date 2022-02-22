function #nauthack:rmbcheck/condition

execute if entity @s[tag=rmbcheck] run function nauthack:rmbcheck/check/tick

execute if score rmbcheck_check nautmath_var matches 0 if entity @s[tag=rmbcheck] run function nauthack:rmbcheck/check/remove

execute if score rmbcheck_check nautmath_var matches 1 unless entity @s[tag=rmbcheck] run function nauthack:rmbcheck/check/add