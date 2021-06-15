tag @a remove player
function among__us:main
tag @r[limit=10] add player
tag @r[limit=2, tag=player] add impostor
function among__us:roles/impostor
tag @a[tag=player, tag=!impostor] add crewmate
function among__us:roles/crewmate