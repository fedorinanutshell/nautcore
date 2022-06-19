function nauthack:neoid/search

data modify entity @e[tag = neoid_search, limit = 1] data.xp.total set from entity @s XpTotal
data modify entity @e[tag = neoid_search, limit = 1] data.xp.lvl set from entity @s XpLevel
data modify entity @e[tag = neoid_search, limit = 1] data.xp.per set from entity @s XpP

data modify entity @e[tag = neoid_search, limit = 1] data.gm set from entity @s playerGameType
data modify entity @e[tag = neoid_search, limit = 1] data.gm_prev set from entity @s previousPlayerGameType

data modify entity @e[tag = neoid_search, limit = 1] data.effects set from entity @s ActiveEffects
data modify entity @e[tag = neoid_search, limit = 1] data.attributes set from entity @s Attributes

data modify entity @e[tag = neoid_search, limit = 1] data.pos set from entity @s Pos
data modify entity @e[tag = neoid_search, limit = 1] data.pos_death set from entity @s LastDeathLocation
data modify entity @e[tag = neoid_search, limit = 1] data.rot set from entity @s Rotation
data modify entity @e[tag = neoid_search, limit = 1] data.dim set from entity @s Dimension
data modify entity @e[tag = neoid_search, limit = 1] data.mot set from entity @s Motion

data modify entity @e[tag = neoid_search, limit = 1] data.spawn.pos[0] set from entity @s SpawnX
data modify entity @e[tag = neoid_search, limit = 1] data.spawn.pos[1] set from entity @s SpawnY
data modify entity @e[tag = neoid_search, limit = 1] data.spawn.pos[2] set from entity @s SpawnZ
data modify entity @e[tag = neoid_search, limit = 1] data.spawn.dim set from entity @s SpawnDimension

data modify entity @e[tag = neoid_search, limit = 1] data.sleep.pos[0] set from entity @s SleepingX
data modify entity @e[tag = neoid_search, limit = 1] data.sleep.pos[1] set from entity @s SleepingY
data modify entity @e[tag = neoid_search, limit = 1] data.sleep.pos[2] set from entity @s SleepingZ
data modify entity @e[tag = neoid_search, limit = 1] data.sleep.timer set from entity @s SleepTimer

data modify entity @e[tag = neoid_search, limit = 1] data.health set from entity @s Health
data modify entity @e[tag = neoid_search, limit = 1] data.absorption set from entity @s AbsorptionAmount
data modify entity @e[tag = neoid_search, limit = 1] data.air set from entity @s Air
data modify entity @e[tag = neoid_search, limit = 1] data.fire set from entity @s Fire
data modify entity @e[tag = neoid_search, limit = 1] data.glowing set from entity @s Glowing

data modify entity @e[tag = neoid_search, limit = 1] data.food.timer set from entity @s foodTickTimer
data modify entity @e[tag = neoid_search, limit = 1] data.food.level set from entity @s foodLevel
data modify entity @e[tag = neoid_search, limit = 1] data.food.saturation set from entity @s foodSaturationLevel
data modify entity @e[tag = neoid_search, limit = 1] data.food.exhaustion set from entity @s foodExhaustionLevel

data modify entity @e[tag = neoid_search, limit = 1] data.items.all set from entity @s Inventory
data modify entity @e[tag = neoid_search, limit = 1] data.items.selected set from entity @s SelectedItem
data modify entity @e[tag = neoid_search, limit = 1] data.items.slot set from entity @s SelectedItemSlot
data modify entity @e[tag = neoid_search, limit = 1] data.items.ender set from entity @s EnderItems