tag @a[tag=!player] remove crewmate
tag @a[tag=!player] remove impostor
tag @a[tag=!player] remove canKill
tag @a[tag=!player] remove hasBuzzed
tag @a[tag=!player] remove dead
gamemode adventure @a[tag=player,tag=!dead]

execute store result score crewmates count if entity @a[tag=crewmate,tag=!dead]
execute store result score impostors count if entity @a[tag=impostor,tag=!dead]

execute if score @a[limit=1,tag=player] o2 matches 1 run scoreboard players add @a o2Cd 1
scoreboard players add @a[scores={o2Cd=20..}] o2Time 1
scoreboard players reset @a[scores={o2Cd=20..}] o2Cd

execute as @e[type=armor_stand,nbt={CustomName:'{"text":"admin"}'}] at @e[type=armor_stand,nbt={CustomName:'{"text":"admin"}'}] run item replace entity @a[distance=2..,tag=player] hotbar.1 with minecraft:air
execute as @e[type=armor_stand,nbt={CustomName:'{"text":"admin"}'}] at @e[type=armor_stand,nbt={CustomName:'{"text":"admin"}'}] if score coms count matches 0 run item replace entity @a[distance=..2,tag=player] hotbar.1 with minecraft:filled_map{map:1,display:{Name:'[{"text":"Admin MAP","bold":true,"color":"green"}]'}}

scoreboard players remove @a voteTimer 1
scoreboard players remove @a[scores={buzzCd=1..}] buzzCd 1

function among__us:opt/onbuzz
function among__us:opt/report
function among__us:opt/vent
function among__us:opt/colors
function among__us:opt/kill
function among__us:opt/timer
function among__us:opt/dead
function among__us:opt/vote

execute if score impostors count matches 100 run function among__us:opt/crewwin
execute if score crewmates count matches 100 run function among__us:opt/impwin
execute if score @a[tag=player,limit=1] o2Time matches 45 run function among__us:opt/impwin

execute store result bossbar minecraft:o2 value run scoreboard players get @a[limit=1,tag=player] o2Time
execute store result bossbar minecraft:tasksbar value run scoreboard players get tasks count

execute if score tasks count matches 35.. run function among__us:opt/crewwin

scoreboard players reset @a sneak
scoreboard players reset @a bookUsed