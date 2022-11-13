kill @e[distance=..3,type=area_effect_cloud,tag=spellbound_firestaff_area]
execute if entity @s[type=fireball] run particle flame ~ ~ ~ 0 0 0 .05 10 force @a[distance=..64]
execute if entity @s[type=dragon_fireball] run particle dragon_breath ~ ~ ~ 0 0 0 .05 20 force @a[distance=..64]
particle large_smoke ~ ~ ~ .3 .3 .3 .1 50 force @a[distance=..128]
particle poof ~ ~ ~ .8 .8 .8 .05 3 force @a[distance=..128]
playsound block.fire.extinguish player @a[distance=..40] ~ ~ ~ 2.5 0.9
playsound block.fire.extinguish player @a[distance=..40] ~ ~ ~ 2.5 0.9
playsound block.fire.extinguish player @a[distance=..40] ~ ~ ~ 2.5 2
kill @s
data merge entity @s {Fire:-1,HasVisualFire:false}