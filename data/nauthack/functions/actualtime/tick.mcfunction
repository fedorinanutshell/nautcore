scoreboard players add actualtime_tick nautmath_var 1
execute if score actualtime_tick nautmath_var matches 20 run function nauthack:actualtime/second

execute as @a[tag = actualtime_display] run title @s actionbar {"text": "Time: ", "color": "white", "bold": true, "extra": [{"score": {"name": "actualtime_day", "objective": "nautmath_var"}, "color": "gold"}, {"text": "d:", "color": "black", "bold": false}, {"score": {"name": "actualtime_hour", "objective": "nautmath_var"}, "color": "gold"}, {"text": "h:", "color": "black", "bold": false}, {"score": {"name": "actualtime_minute", "objective": "nautmath_var"}, "color": "gold"}, {"text": "m:", "color": "black", "bold": false}, {"score": {"name": "actualtime_second", "objective": "nautmath_var"}, "color": "gold"}, {"text": "s:", "color": "black", "bold": false}, {"score": {"name": "actualtime_tick", "objective": "nautmath_var"}, "color": "gold"}, {"text": "t", "color": "black", "bold": false}]}