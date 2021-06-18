tag @a remove player
tag @a remove dead
gamemode adventure @a
function among__us:main
execute as @e[type=armor_stand,nbt={CustomName:'{"text":"Spawn"}'}] at @e[type=armor_stand,nbt={CustomName:'{"text":"Spawn"}'}] run tag @r[limit=10, distance=..20] add player
tp @a[limit=10, tag=player] @e[type=armor_stand,nbt={CustomName:'{"text":"Lobby"}'}, limit=1]
tag @r[limit=2, tag=player] add impostor
function among__us:roles/impostor
tag @a[tag=player, tag=!impostor] add crewmate
function among__us:roles/crewmate
scoreboard players set @a killCd 600
scoreboard players set @a buzzCd 600
scoreboard players reset @a tasks

team join blue @r[tag=player,limit=1]
team join green @r[tag=player,limit=1]
team join gray @r[tag=player,limit=1]
team join pink @r[tag=player,limit=1]
team join purpule @r[tag=player,limit=1]
team join red @r[tag=player,limit=1]
team join black @r[tag=player,limit=1]
team join white @r[tag=player,limit=1]
team join yellow @r[tag=player,limit=1]
team join gold @r[tag=player,limit=1]