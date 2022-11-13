
summon item ~ ~ ~ {Tags:["spellbound_item_blowgun"],Item:{id:"minecraft:bow",Count:1b,tag:{SpellboundBlowgun:1,SpellboundItem:1,display:{Name:'{"translate":"Blowgun","color":"#588025","italic":false}',Lore:['{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},CustomModelData:47032}}}
data modify entity @e[distance=..3,sort=nearest,limit=1,tag=spellbound_item_blowgun] Item.tag.Damage set from entity @s Item.tag.Damage


particle flash ~ ~ ~ 0 0 0 0 3 force @a[distance=..32]
particle poof ~ ~.2 ~ .3 .3 .3 .15 12 force @a[distance=..64]
#particle lava ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]


playsound minecraft:block.bamboo.fall block @a[distance=..20] ~ ~ ~ 2.00 .5
playsound minecraft:entity.illusioner.cast_spell block @a[distance=..20] ~ ~ ~ 2.00 .9
playsound block.respawn_anchor.set_spawn master @a[distance=..20] ~ ~ ~ 2.00 1.25

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:bamboo"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:cobblestone"}}]


kill @s