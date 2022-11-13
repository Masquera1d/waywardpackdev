execute at @s run particle block white_concrete ~ ~ ~ 0 0 0 0 5 force @a[distance=..32]
execute at @s run particle end_rod ~ ~ ~ 0 0 0 .05 5 force @a[distance=..32]
execute at @s run playsound block.amethyst_cluster.break player @a[distance=..32] ~ ~ ~ 1 1.85

kill @s