tag @a[tag=!player] remove crewmate
tag @a[tag=!player] remove impostor
tag @a[tag=!player] remove canKill
tag @a[tag=!player] remove dead
gamemode adventure @a[tag=player, tag=!player]

execute store result score crewmates count if entity @a[tag=crewmate]
execute store result score impostors count if entity @a[tag=impostor,tag=!dead]

function among__us:opt/report
function among__us:opt/timer
function among__us:opt/kill
function among__us:opt/dead

execute if score impostors count matches 0 run function among__us:opt/crewwin
execute if score crewmates count matches ..2 run function among__us:opt/impwin