scoreboard players enable @a neomenu
execute as @a if score @s neomenu matches 1.. run function nauthack:neomenu/menu

scoreboard players enable @a neomenu_info
execute as @a if score @s neomenu_info matches 1.. run function nauthack:neomenu/info

scoreboard players enable @a neomenu_player
execute as @a if score @s neomenu_player matches 1.. run function nauthack:neomenu/player