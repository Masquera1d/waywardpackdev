execute rotated as @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] positioned 0.0 0.0 0.0 run tp ^ ^ ^.25
#sexecute at @s run tp ~ ~2.5 ~
data modify storage 1_splatus:spellbound/motion Motion set from entity @s Pos
tp ~ ~ ~
data modify entity @s Motion set from storage 1_splatus:spellbound/motion Motion 
data remove storage 1_splatus:spellbound/motion Motion