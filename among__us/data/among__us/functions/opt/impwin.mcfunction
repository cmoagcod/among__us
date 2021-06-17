clear @a[tag=player]
title @a[tag=player] title {"text":"Les imposteurs ont gagnés !","color":"red"}
tp @a[tag=player] @e[type=armor_stand,nbt={CustomName:'{"text":"Spawn"}'},limit=1]
tag @a[tag=player] remove player