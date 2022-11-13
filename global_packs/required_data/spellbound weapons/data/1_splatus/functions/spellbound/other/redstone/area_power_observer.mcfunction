
# power it

scoreboard players add @s spellbound_count 1

execute if score @s spellbound_count matches 1 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=up,powered=true] replace observer[facing=up,powered=false]
execute if score @s spellbound_count matches 1 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=east,powered=true] replace observer[facing=east,powered=false]
execute if score @s spellbound_count matches 1 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=north,powered=true] replace observer[facing=north,powered=false]
execute if score @s spellbound_count matches 1 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=south,powered=true] replace observer[facing=south,powered=false]
execute if score @s spellbound_count matches 1 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=west,powered=true] replace observer[facing=west,powered=false]
execute if score @s spellbound_count matches 1 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=down,powered=true] replace observer[facing=down,powered=false]


execute if score @s spellbound_count matches 4 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=up,powered=false] replace observer[facing=up,powered=true]
execute if score @s spellbound_count matches 4 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=east,powered=false] replace observer[facing=east,powered=true]
execute if score @s spellbound_count matches 4 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=north,powered=false] replace observer[facing=north,powered=true]
execute if score @s spellbound_count matches 4 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=south,powered=false] replace observer[facing=south,powered=true]
execute if score @s spellbound_count matches 4 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=west,powered=false] replace observer[facing=west,powered=true]
execute if score @s spellbound_count matches 4 run fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 observer[facing=down,powered=false] replace observer[facing=down,powered=true]


execute if score @s spellbound_count matches 4 run kill @s