
execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:enchanted_book",Count:1b}}
execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run data modify entity @e[distance=..2,type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:enchanted_book"}}] Item.tag.StoredEnchantments set from entity @s Item.tag.Enchantments

summon item ~ ~ ~ {Tags:["spellbound_item_magmus_bow"],Item:{id:"minecraft:bow",Count:1b,tag:{CustomModelData:47040,SpellboundItem:1,SpellboundMagmusCharger:1,display:{Name:'{"translate":"Magmus Charger","color":"#cc081f","italic":false}',Lore:['{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},StoreDamage:64f}}}
data modify entity @e[distance=..3,sort=nearest,limit=1,tag=spellbound_item_magmus_bow] Item.tag.Damage set from entity @s Item.tag.Damage


particle flash ~ ~ ~ 0 0 0 0 3 force @a[distance=..32]
particle poof ~ ~.2 ~ .3 .3 .3 .15 12 force @a[distance=..64]
particle lava ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]
playsound minecraft:block.fire.extinguish block @a[distance=..20] ~ ~ ~ 2.00 1.05
playsound minecraft:entity.wither_skeleton.death block @a[distance=..20] ~ ~ ~ 2.00 1.75
playsound minecraft:entity.illusioner.cast_spell block @a[distance=..20] ~ ~ ~ 2.00 .9
playsound block.respawn_anchor.set_spawn master @a[distance=..20] ~ ~ ~ 2.00 1.25

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:fire_charge"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}]


kill @s