#mainly for optimization, if a entity marked with "spellbound_marker" exists these will all run

#these are for markers, a good chunk of the datapack still uses area of effect clouds as invisibile entities /:

execute as @s[type=marker,tag=spellbound_blowgun_arrow_raycast] run function 1_splatus:spellbound/blowgun/dart

execute as @s[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_posY run data get entity @s Pos[1]

execute as @s[type=marker,tag=spellbound_crucible_the_light_is_coming] run function 1_splatus:spellbound/crucible/the_light_is_coming_down

execute as @s[type=marker,tag=spellbound_magmus_charger_arrow_area_max] run function 1_splatus:spellbound/magmus_charger/raycast_step

execute as @s[type=marker,tag=spellbound_windswept_sand] run function 1_splatus:spellbound/windswept_sword/sand

execute as @s[type=marker,tag=spellbound_electricity] run function 1_splatus:spellbound/electric_staff/electricity

execute as @s[type=marker,tag=spellbound_crucible_releasedenergy] at @s run function 1_splatus:spellbound/crucible/energy

execute as @s[type=marker,tag=spellbound_echo_wand_area2] at @s run function 1_splatus:spellbound/echo_wand/area2

execute as @s[type=marker,tag=spellbound_echo_wand_area] at @s run function 1_splatus:spellbound/echo_wand/area

execute as @s[type=marker,tag=spellbound_ice_staff_snow] at @s run function 1_splatus:spellbound/ice_staff/snow

execute as @s[type=marker,tag=spellbound_sand_wind] at @s run function 1_splatus:spellbound/windswept_sword/wind

execute as @s[type=marker,tag=spellbound_dusties] at @s run function 1_splatus:spellbound/withering_sword/dusties_homing

execute as @s[type=marker,tag=spellbound_watergush] at @s run function 1_splatus:spellbound/golden_ocean_edge/gush

execute as @s[tag=spellbound_hammervector] unless entity @p[distance=..32,gamemode=!spectator] run kill @s