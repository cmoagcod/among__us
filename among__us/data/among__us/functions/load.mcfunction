tellraw @a {"text":"§8§l > §6§l[among__us] §8§l< §7Datapack (re)loaded !"}
scoreboard objectives add carrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add bookUsed minecraft.used:minecraft.written_book
scoreboard objectives add killCd dummy
scoreboard objectives add buzzCd dummy
scoreboard objectives add count dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add voteTimer dummy
scoreboard objectives add vote dummy
scoreboard objectives add o2 dummy
scoreboard objectives add o2Time dummy
scoreboard objectives add o2Cd dummy

scoreboard objectives setdisplay list vote
scoreboard objectives setdisplay belowName vote

bossbar add o2 {"text":"Oxygène:","color":"red","bold":true}
bossbar set minecraft:o2 players @a
bossbar set minecraft:o2 style progress
bossbar set minecraft:o2 color red
bossbar set minecraft:o2 max 30

bossbar add tasksbar {"text":"Quêtes complétés:","color":"green","bold":true}
bossbar set minecraft:tasksbar players @a
bossbar set minecraft:tasksbar style notched_20
bossbar set minecraft:tasksbar color green
bossbar set minecraft:tasksbar max 35

team add blue
team modify blue color blue
team add green
team modify green color green
team add gray
team modify gray color gray
team add pink
team modify pink color light_purple
team add purpule
team modify purpule color dark_purple
team add red
team modify red color red
team add black
team modify black color black
team add white
team modify white color white
team add yellow
team modify yellow color yellow
team add gold
team modify gold color gold