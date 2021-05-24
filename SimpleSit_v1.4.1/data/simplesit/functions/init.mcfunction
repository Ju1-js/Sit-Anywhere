team add simplesit
team modify simplesit collisionRule never

scoreboard objectives add simplesneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add simplelay dummy

scoreboard objectives add SimpleSit trigger
scoreboard objectives add SimpleLay trigger
scoreboard objectives add SimpleLayMsg trigger

scoreboard objectives add jus1w trigger
tellraw @a ["",{"text":"[","color":"#009FD3"},{"text":"Simple","color":"gold"},{"text":"Sit","color":"yellow"},{"text":"] ","color":"#009FD3"},{"text":"V-1.4.1 ","color":"green"},{"text":"Successfully Loaded.","color":"light_purple"}]