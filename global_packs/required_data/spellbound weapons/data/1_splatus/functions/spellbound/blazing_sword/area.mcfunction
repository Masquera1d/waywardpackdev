scoreboard players add @s spellbound_count 1

execute if score @s spellbound_count matches 1 align zyx run tp @s ~.5 ~.5 ~.5


execute if predicate 1_splatus:chance/2_percent run function 1_splatus:spellbound/blazing_sword/extinguish



execute if score @s spellbound_count matches 1 run function 1_splatus:spellbound/blazing_sword/place_fire
#execute if score @s NUM matches 1 run function 1_splatus:spellbound/blazing_sword/extinguish
execute if score @s spellbound_count matches 200.. run function 1_splatus:spellbound/blazing_sword/extinguish

