summon minecraft:armor_stand ~ ~ ~ {Tags:[post.seat], NoGravity:1, NoAI:1}
execute as @e[tag=post.seat, limit=1, sort=nearest] at @p run tp @s ~ ~ ~ ~ ~

execute as @e[tag=post.seat, limit=1, sort=nearest] at @s align xyz run function simplesit:summon
execute as @e[tag=post.seat, limit=1, sort=nearest] at @s run kill @s

tellraw @s [{"text":"Click on the saddle to sit down", "color":"aqua"}]
