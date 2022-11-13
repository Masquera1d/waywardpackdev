
summon item ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"translate":"Crucible","color":"#EB3868","italic":false}',Lore:['{"translate":"Color: Red","color":"gray","italic":false}','{"translate":"Spellbound Weapons","color":"#676E75","italic":true}']},CrucibleDye:1,CustomModelData:47042,SpellboundItem:1,SpellboundCrucible:1,Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}


particle flash ~ ~ ~ 0 0 0 0 20 force @a[distance=..32]
particle poof ~ ~.12 ~ .3 .3 .3 .3 32 force @a[distance=..64]
particle end_rod ~ ~.15 ~ 0 0 0 .5 100 force @a[distance=..128]


particle flash ~ ~.12 ~ 0 0 0 .2 1 force @a[distance=..64]

playsound minecraft:item.trident.thunder block @a[distance=..128] ~ ~ ~ 6 .9
playsound minecraft:block.beacon.activate block @a[distance=..128] ~ ~ ~ 6 1.5
playsound minecraft:entity.illusioner.cast_spell block @a[distance=..128] ~ ~ ~ 6 .9
playsound block.respawn_anchor.set_spawn block @a[distance=..128] ~ ~ ~ 6 1.25
playsound minecraft:block.conduit.attack.target block @a[distance=..128] ~ ~ ~ 6 .5



kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:redstone"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}]



kill @s