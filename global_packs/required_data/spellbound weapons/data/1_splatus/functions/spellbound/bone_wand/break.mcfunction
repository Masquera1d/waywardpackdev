particle minecraft:poof ~ ~ ~ .3 .3 .3 .02 2

particle block bone_block ~ ~ ~ .5 .5 .5 .2 10 force
fill ~ ~ ~ ~ ~ ~ air replace bone_block
playsound block.bone_block.break block @a[distance=..20] ~ ~ ~ 1 1
kill @s