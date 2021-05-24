scoreboard players enable @a SimpleSit
scoreboard players enable @a SimpleLay

execute as @e[tag=seat] at @s unless entity @a[distance=..1.1] run tp @s 0 -2280 0

execute as @a at @s unless block ~ ~ ~ water unless block ~ ~-1 ~ water unless block ~ ~-0.4 ~ air if score @s SimpleSit matches 1.. run function simplesit:sit
execute as @a at @s if block ~ ~-0.4 ~ air if score @s SimpleSit matches 1.. run tellraw @s [{"text":"You can't sit in the air", "color":"red"}]
execute as @a at @s if score @s SimpleSit matches 1.. run scoreboard players set @s SimpleSit 0

execute as @a at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:barrier
execute as @a at @a unless entity @e[type=item_frame,limit=1,sort=nearest,distance=..2] if score @s SimpleLay matches 1.. run function simplesit:laydetect
execute as @a at @s if score @s simplesneak matches 1.. run scoreboard players set @s SimpleLay 0
execute as @a at @s if score @s simplesneak matches 1.. run scoreboard players set @s simplesneak 0

execute as @e[tag=seat] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

function simplesit:enabler

scoreboard players add @a c200 1
execute as @a at @s if score @s c200 matches 200.. if score @s SimpleLay matches 1.. run function simplesit:laymsg