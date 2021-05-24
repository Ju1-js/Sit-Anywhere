scoreboard players enable @a SimpleSit
scoreboard players enable @a SimpleLay

execute as @e[tag=seat] at @s unless entity @a[distance=..1.1] run tp @s 0 -2280 0

execute as @a at @s unless block ~ ~ ~ water unless block ~ ~-1 ~ water unless block ~ ~-0.4 ~ air if score @s SimpleSit matches 1.. run function simplesit:sit
execute as @a at @s if block ~ ~-0.4 ~ air if score @s SimpleSit matches 1.. run tellraw @s [{"text":"You can't sit in the air", "color":"red"}]
execute as @a at @s if score @s SimpleSit matches 1.. run scoreboard players set @s SimpleSit 0

execute as @a at @a if score @s SimpleLay matches 1.. run function simplesit:laydetect

execute as @e[tag=seat] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

function simplesit:enabler