execute if score @a[limit=1] voteTimer matches 200 run title @a title "Il reste 10 secondes"
execute if score @a[limit=1] voteTimer matches 100 run title @a title "Il reste 5 secondes"
execute if score @a[limit=1] voteTimer matches 1 run title @a subtitle "Fin des votes."
execute if score @a[limit=1] voteTimer matches 1 run tp @a[tag=player] @e[type=armor_stand,nbt={CustomName:'{"text":"Lobby"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1 run function among__us:roles/impostor
execute if score @a[limit=1] voteTimer matches 1 run function among__us:roles/crewmate
execute if score @a[limit=1] voteTimer matches 1 run scoreboard players reset @a killCd

execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=blue] @e[type=armor_stand,nbt={CustomName:'{"text":"blue"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=green] @e[type=armor_stand,nbt={CustomName:'{"text":"green"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=gray] @e[type=armor_stand,nbt={CustomName:'{"text":"gray"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=pink] @e[type=armor_stand,nbt={CustomName:'{"text":"pink"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=purpule] @e[type=armor_stand,nbt={CustomName:'{"text":"purpule"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=red] @e[type=armor_stand,nbt={CustomName:'{"text":"red"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=black] @e[type=armor_stand,nbt={CustomName:'{"text":"black"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=white] @e[type=armor_stand,nbt={CustomName:'{"text":"white"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=yellow] @e[type=armor_stand,nbt={CustomName:'{"text":"yellow"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 1.. run tp @a[team=gold] @e[type=armor_stand,nbt={CustomName:'{"text":"gold"}'},limit=1]
execute if score @a[limit=1] voteTimer matches 2.. run clear @a