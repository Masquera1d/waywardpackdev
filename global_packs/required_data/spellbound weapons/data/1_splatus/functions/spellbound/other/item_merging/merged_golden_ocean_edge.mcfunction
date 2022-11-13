execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:enchanted_book",Count:1b}}
execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run data modify entity @e[distance=..2,type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:enchanted_book"}}] Item.tag.StoredEnchantments set from entity @s Item.tag.Enchantments


summon item ~ ~ ~ {Tags:["spellbound_item_golden_sea_blade"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:47045,SpellboundItem:1,SpellboundGoldenOceanEdge:1,display:{Name:'{"translate":"Golden Sea Blade","color":"#e5ff70","italic":false}',Lore:['{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},Enchantments:[{id:"unbreaking",lvl:1s}]}}}

#-------
#math time! this will translate the durability
#golden sword max durability = 32
#iron sword max durability = 250
#250 / 32 = 7.8125
#ironsword is 7.8125x more durability than golden sword 

#also HAHAHHAHAHHA not being used anyore, golden ocean edge will always go to max duability when crafted
#execute as @e[distance=..3,sort=nearest,limit=1,tag=spellbound_item_golden_sea_blade] store result entity @s Item.tag.Damage int 7.8125 run data get entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_sword"}},limit=1,sort=nearest] Item.tag.Damage
#-------

playsound minecraft:block.conduit.ambient.short block @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:block.conduit.ambient.short block @a[distance=..20] ~ ~ ~ 1 2


particle flash ~ ~ ~ 0 0 0 0 3 force @a[distance=..32]
particle poof ~ ~.2 ~ .3 .3 .3 .15 12 force @a[distance=..64]
particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]
particle falling_water ~ ~.12 ~ .5 .5 .5 .08 30 force @a[distance=..64]
playsound minecraft:entity.dolphin.swim block @a[distance=..20] ~ ~ ~ 2.00 .5
playsound minecraft:entity.zombie.converted_to_drowned block @a[distance=..20] ~ ~ ~ 2.00 .75
#playsound minecraft:entity.stray.death block @a[distance=..20] ~ ~ ~ 2.00 1.35
playsound minecraft:entity.illusioner.cast_spell block @a[distance=..20] ~ ~ ~ 2.00 .9
playsound block.respawn_anchor.set_spawn master @a[distance=..20] ~ ~ ~ 2.00 1.25

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:golden_sword"}}]

kill @s