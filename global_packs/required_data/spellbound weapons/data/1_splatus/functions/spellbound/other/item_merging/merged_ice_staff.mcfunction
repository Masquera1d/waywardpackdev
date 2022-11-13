summon item ~ ~ ~ {Item:{id:"minecraft:fishing_rod",Count:1b,tag:{CustomModelData:47008,SpellboundItem:1,SpellboundIceStaff:1,display:{Name:'{"translate":"Ice Staff","color":"#1c99ff","italic":false}',Lore:['{"translate":"Shoot ice blocks that freeze your","color":"#8acaff","italic":true}','{"translate":"enemies in place","color":"#8acaff","italic":true}','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}','{"translate":"","color":"gray","italic":false}','{"translate":"When In Main Hand:","color": "gray","italic":false}','{"translate":" 4 Attack Damage","color":"dark_green","italic":false}','{"translate":" 3 Second Default Charge Time","color":"dark_green","italic":false}','{"translate":" 1 Second Freeze Time","color":"dark_green","italic":false}']},StoreDamage:64f}}}
particle poof ~ ~.2 ~ .3 .3 .3 .15 12 force @a[distance=..64]
particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]
particle flash ~ ~ ~ 0 0 0 0 3 force @a[distance=..32]

playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.25
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.25
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.5
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 .8
playsound minecraft:entity.stray.death block @a[distance=..20] ~ ~ ~ 2.00 1.35
playsound minecraft:entity.illusioner.cast_spell block @a[distance=..20] ~ ~ ~ 2.00 .9
playsound block.respawn_anchor.set_spawn master @a[distance=..20] ~ ~ ~ 2.00 1.25
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:packed_ice"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:ice"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:blue_ice"}}]



kill @s