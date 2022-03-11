#from nauthack:nautremote/condition

execute at @s if predicate nauthack:entity/stepping/remote unless score nautremote_default_disable nautmath_var matches 1 run scoreboard players set nautremote_remote nautmath_var 1