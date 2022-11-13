execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:enchanted_book",Count:1b}}
execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run data modify entity @e[distance=..2,type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:enchanted_book"}}] Item.tag.StoredEnchantments set from entity @s Item.tag.Enchantments


summon item ~ ~ ~ {Tags:["spellbound_item_moonlight_edge"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:47046,SpellboundItem:1,SpellboundMoonlightEdge:1,display:{Name:'{"translate":"Moonlight Edge","color":"#9d64ed","italic":false}',Lore:['{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},Enchantments:[{id:"unbreaking",lvl:1s}]}}}
data modify entity @e[distance=..3,sort=nearest,limit=1,tag=spellbound_item_moonlight_edge] Item.tag.Damage set from entity @s Item.tag.Damage

particle flash ~ ~ ~ 0 0 0 0 3 force @a[distance=..32]
particle poof ~ ~.2 ~ .3 .3 .3 .15 12 force @a[distance=..64]
particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]
playsound minecraft:entity.vex.hurt block @a[distance=..20] ~ ~ ~ 2.00 .75

playsound minecraft:entity.allay.item_thrown block @a[distance=..20] ~ ~ ~ 1 .5


playsound minecraft:block.amethyst_block.chime block @a[distance=..20] ~ ~ ~ 2.00 .5
playsound minecraft:block.amethyst_block.chime block @a[distance=..20] ~ ~ ~ 2.00 .5
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 .5
playsound minecraft:block.amethyst_block.step block @a[distance=..20] ~ ~ ~ 2.00 1
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 .5
playsound minecraft:block.amethyst_block.step block @a[distance=..20] ~ ~ ~ 2.00 .5
#playsound minecraft:entity.stray.death block @a[distance=..20] ~ ~ ~ 2.00 1.35
playsound minecraft:entity.illusioner.cast_spell block @a[distance=..20] ~ ~ ~ 2.00 .9
playsound block.respawn_anchor.set_spawn master @a[distance=..20] ~ ~ ~ 2.00 1.25

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:golden_apple"}}]



kill @s