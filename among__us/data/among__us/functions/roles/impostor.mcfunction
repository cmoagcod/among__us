title @a[tag=impostor] title {"text":"Tu es un imposteur !","bold":true,"color":"red"}
title @a[tag=impostor] actionbar ["",{"text":"Votre mate est: "},{"selector":"@a[limit=1,sort=furthest,tag=impostor]"}]

clear @a[tag=impostor]

item replace entity @a[tag=impostor] hotbar.8 with minecraft:written_book{pages:['["",{"text":"SABOTAGE","bold":true},{"text":"\\n--------\\n","color":"reset"},{"text":"Sabotage Caméras","clickEvent":{"action":"run_command","value":"/function cams"}},{"text":"\\n"},{"text":"Sabotage Lumières","clickEvent":{"action":"run_command","value":"/function among__us:opt/light"}},{"text":"\\n"},{"text":"Sabotage Communication","clickEvent":{"action":"run_command","value":"/function comms"}}]'],title:SABOTAGE,author:God,display:{Name:'[{"text":"SABOTAGE","bold":true,"color":"red"}]'}}

item replace entity @a[tag=impostor] hotbar.7 with minecraft:filled_map{map:0,display:{Name:'[{"text":"MAP","bold":true,"color":"green"}]'}}