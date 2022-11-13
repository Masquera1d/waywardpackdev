

#flame

execute as @s[tag=spellbound_blowgun_arrow_raycast_flame] run function 1_splatus:spellbound/blowgun/boom


#drop
execute as @s[tag=!spellbound_blowgun_arrow_raycast_infinity] run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b}}
execute as @s[tag=!spellbound_blowgun_arrow_raycast_infinity] as @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:arrow",Count:1b}}] at @s run function 1_splatus:spellbound/blowgun/drop_arrow_motion
kill @s