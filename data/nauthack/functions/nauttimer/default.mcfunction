#from nauthack:nauttimer

execute if data storage nauthack:nauthack nauttimer.datacopy[0].args.default run tellraw @a {"text": "Triggered Default Timer #", "color": "white", "bold": true, "extra": [{"nbt": "nauttimer.datacopy[0].id", "storage": "nauthack:nauthack", "color": "black"}]}