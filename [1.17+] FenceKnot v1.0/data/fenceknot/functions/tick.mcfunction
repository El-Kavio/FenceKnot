scoreboard players enable @a FenceKnot
scoreboard players enable @a Switch_FK
execute as @a unless entity @s[scores={FenceKnot=0..}] run scoreboard players add @a FenceKnot 0
execute as @a unless entity @s[scores={Switch_FK=0..}] run scoreboard players add @a Switch_FK 0

execute at @a[scores={FenceKnot=1}] unless entity @e[type=minecraft:leash_knot,distance=..0.8] if block ~ ~ ~ #minecraft:fences run summon minecraft:leash_knot
execute at @a[scores={Switch_FK=1}] unless entity @e[type=minecraft:leash_knot,distance=..0.8] if block ~ ~ ~ #minecraft:fences run summon minecraft:leash_knot

execute as @a[scores={FenceKnot=1}] run scoreboard players set @s FenceKnot 0
execute as @a[scores={Switch_FK=2}] run scoreboard players set @s Switch_FK 0

