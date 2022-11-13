execute if score @s spellbound_cooldown matches 60..199 as @e[distance=0.1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] at @s run function 1_splatus:spellbound/other/hits/end_excalibur
execute if score @s spellbound_cooldown matches 60..199 unless entity @e[distance=0.1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] positioned ^ ^ ^3.5 run function 1_splatus:spellbound/other/hits/end_excalibur
scoreboard players set @s spellbound_cooldown 0
