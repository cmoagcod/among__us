tag @a remove player
function among__us:main
tag @r[limit=10] add player
tag @r[limit=2, tag=player] add impostor
title @a[tag=impostor] title {"text":"Tu es un imposteur !","bold":true,"color":"red"}
tag @a[tag=player, tag=!impostor] add crewmate
title @a[tag=crewmate] title {"text":"Tu es un crewmate !","bold":true,"color":"blue"}