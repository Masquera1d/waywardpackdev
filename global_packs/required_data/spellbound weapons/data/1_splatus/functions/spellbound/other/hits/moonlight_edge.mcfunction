### MOONLIGHT 
playsound minecraft:block.amethyst_cluster.place player @a[distance=..20] ~ ~ ~ 1 .9
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ .5 1.92
execute unless score @s spellbound_fallspeed matches ..-20 positioned ~ ~1 ~ run summon minecraft:marker ^ ^ ^2 {Tags:["spellbound_moonlight_edge_beam","spellbound_marker"],CustomName:'{"translate":"Moonlight Edge Small Beam"}'}
tag @s add spellbound_player_usingbeam
