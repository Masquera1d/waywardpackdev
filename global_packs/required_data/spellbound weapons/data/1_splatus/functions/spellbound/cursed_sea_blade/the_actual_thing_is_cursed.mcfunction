
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..10,type=!#1_splatus:spellbound/misc,type=!#1_splatus:spellbound/fish,predicate=!1_splatus:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.25
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..8,type=!#1_splatus:spellbound/misc,type=!#1_splatus:spellbound/fish,predicate=!1_splatus:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.25
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..6,type=!#1_splatus:spellbound/misc,type=!#1_splatus:spellbound/fish,predicate=!1_splatus:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.25
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..4,type=!#1_splatus:spellbound/misc,type=!#1_splatus:spellbound/fish,predicate=!1_splatus:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.25

execute at @s[tag=!spellbound_cursedfish_boom] run particle falling_water ~ ~ ~ 0 0 0 0 1 force @a[distance=..16]

execute at @s[tag=!spellbound_cursedfish_boom] unless entity @e[sort=nearest,limit=1,distance=..10,type=!#1_splatus:spellbound/misc,type=!#1_splatus:spellbound/fish,predicate=!1_splatus:holding/weapon/cursed_sea_blade] at @s at @p[scores={spellbound_curse=1..}] run tp @s ~ ~3 ~

execute at @s[tag=!spellbound_cursedfish_boom] if entity @e[sort=nearest,limit=1,distance=..3,type=!#1_splatus:spellbound/misc,type=!#1_splatus:spellbound/fish,predicate=!1_splatus:holding/weapon/cursed_sea_blade] if predicate 1_splatus:chance/2_percent run kill @s


execute as @s[tag=spellbound_cursedfish_boom] if predicate 1_splatus:chance/5_percent run kill @s