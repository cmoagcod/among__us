execute as @a at @s if data entity @s {SelectedItem:{id:carrot_on_a_stick,tag:{'[{"text":"KILL","bold":true,"color":"red"}]'}}} if score @s carrotStick matches 1.. run tag @p[tag=crewmate, limit=1, distance=..6] add dead
execute as @a at @s if data entity @s {SelectedItem:{id:carrot_on_a_stick,tag:{'[{"text":"KILL","bold":true,"color":"red"}]'}}} if score @s carrotStick matches 1.. run tp @p[tag=crewmate, limit=1, distance=..6]
execute as @a at @s if data entity @s {SelectedItem:{id:carrot_on_a_stick,tag:{'[{"text":"KILL","bold":true,"color":"red"}]'}}} if score @s carrotStick matches 1.. run tag @s remove canKill
execute as @a at @s if data entity @s {SelectedItem:{id:carrot_on_a_stick,tag:{'[{"text":"KILL","bold":true,"color":"red"}]'}}} if score @s carrotStick matches 1.. run tag @s add killCooldown

scoreboard players set @a carrotStick 0