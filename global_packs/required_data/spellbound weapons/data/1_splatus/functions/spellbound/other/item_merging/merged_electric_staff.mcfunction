summon item ~ ~ ~ {Item:{id:"minecraft:fishing_rod",Count:1b,tag:{CustomModelData:47010,SpellboundItem:1,SpellboundElectricStaff:1,display:{Name:'{"translate":"Electric Staff","color":"#d2ff1c","italic":false}',Lore:['{"translate":"Casts a line of electricity that fires","color":"#e7ff85","italic":true}','{"translate":"instantly and can go through walls","color":"#e7ff85","italic":true}','{"translate":"","color":"gray","italic":false}','{"translate":"When In Main Hand:","color": "gray","italic":false}','{"translate":" 6 Attack Damage","color":"dark_green","italic":false}','{"translate":" 3 Second Default Charge Time","color":"dark_green","italic":false}','{"translate":" 4 Second Glow Time","color":"dark_green","italic":false}']},StoreDamage:64f}}}
particle poof ~ ~.2 ~ .3 .3 .3 .15 12 force @a[distance=..64]
particle flash ~ ~ ~ 0 0 0 0 3 force @a[distance=..32]
particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]
playsound minecraft:entity.lightning_bolt.thunder block @a[distance=..20] ~ ~ ~ 2.00 2
playsound minecraft:entity.illusioner.cast_spell block @a[distance=..20] ~ ~ ~ 2.00 .9
playsound block.respawn_anchor.set_spawn master @a[distance=..20] ~ ~ ~ 2.00 1.25
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:glowstone"}}]
kill @s
