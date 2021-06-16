tag @a remove player
function among__us:main
execute as @e[type=armor_stand,nbt={CustomName:'{"text":"Lobby"}'}] at @e[type=armor_stand,nbt={CustomName:'{"text":"Lobby"}'}] run tag @r[limit=10, distance=..20] add player
tp @a[limit=10, tag=player] @e[type=armor_stand,nbt={CustomName:'{"text":"Spawn"}'}, limit=1]
tag @r[limit=2, tag=player] add impostor
function among__us:roles/impostor
tag @a[tag=player, tag=!impostor] add crewmate
function among__us:roles/crewmate