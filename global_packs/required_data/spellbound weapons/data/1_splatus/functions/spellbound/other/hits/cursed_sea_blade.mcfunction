playsound minecraft:entity.puffer_fish.blow_out player @a[distance=..20] ~ ~ ~ 1 .5
execute at @s run tag @s[type=wither] add spellbound_iscursed_wither
execute at @s run scoreboard players set @s[type=!pufferfish,type=!cod,type=!salmon,type=!tropical_fish] spellbound_curse_time 1
