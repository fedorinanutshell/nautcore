#there are some funny functions I thought would be revolutionary in world of data-packs

data modify storage nauthack:nauthack bundle.copy set from entity @s SelectedItem.tag.Items
data remove storage nauthack:nauthack bundle.copy[0]
item modify entity @s weapon.mainhand nauthack:bundle/copy