execute as @a[tag=canKill, tag=impostor] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"KILL","bold":true,"color":"red"}]'},Enchantments:[{}]}
execute as @a[tag=!canKill, tag=impostor, scores={killCd=0..100}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"KILL","bold":true,"color":"gray"}]'},Damage:23}
execute as @a[tag=!canKill, tag=impostor, scores={killCd=100}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"KILL","bold":true,"color":"gray"}]'},Damage:22}
execute as @a[tag=!canKill, tag=impostor, scores={killCd=200}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"KILL","bold":true,"color":"gray"}]'},Damage:17}
execute as @a[tag=!canKill, tag=impostor, scores={killCd=300}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"KILL","bold":true,"color":"gray"}]'},Damage:12}
execute as @a[tag=!canKill, tag=impostor, scores={killCd=400}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"KILL","bold":true,"color":"gray"}]'},Damage:7}
execute as @a[tag=!canKill, tag=impostor, scores={killCd=500}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"KILL","bold":true,"color":"gray"}]'},Damage:5}

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"KILL","bold":true,"color":"red"}]'}}}}] at @s if score @s carrotStick matches 1.. run tag @p[tag=crewmate, limit=1, distance=..6] add dead
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"KILL","bold":true,"color":"red"}]'}}}}] at @s if score @s carrotStick matches 1.. run tp @p[tag=crewmate, limit=1, distance=..6]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"KILL","bold":true,"color":"red"}]'}}}}] at @s if score @s carrotStick matches 1.. run tag @s remove canKill
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"KILL","bold":true,"color":"red"}]'}}}}] at @s if score @s carrotStick matches 1.. run tag @s add killCooldown

tag @a[scores={killCd=600..}] add canKill
scoreboard players reset @a[scores={killCd=600..}] killCd

scoreboard players reset @a carrotStick