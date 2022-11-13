

execute at @s[tag=!spellbound_evoker_area_sneak] unless block ~ ~ ~ water run function 1_splatus:spellbound/other/loop_to_ground
execute at @s run summon evoker_fangs ~ ~ ~
execute at @s run data modify entity @e[sort=nearest,limit=1,type=evoker_fangs] Owner set from entity @s Owner
kill @s

