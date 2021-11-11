execute as @s store result score @s nautstats_dx run data get entity @s Pos[0] 100.0
execute as @s store result score @s nautstats_dy run data get entity @s Pos[1] 100.0
execute as @s store result score @s nautstats_dz run data get entity @s Pos[2] 100.0

execute as @s run scoreboard players operation @s nautstats_dx -= @s nautstats_px
execute as @s run scoreboard players operation @s nautstats_dy -= @s nautstats_py
execute as @s run scoreboard players operation @s nautstats_dz -= @s nautstats_pz

execute as @s store result score @s nautstats_px run data get entity @s Pos[0] 100.0
execute as @s store result score @s nautstats_py run data get entity @s Pos[1] 100.0
execute as @s store result score @s nautstats_pz run data get entity @s Pos[2] 100.0