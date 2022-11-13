recipe take @s 1_splatus:electric_staff
advancement revoke @s only 1_splatus:electric_staff
clear @s knowledge_book{CustomModelData:47007} 1
give @s fishing_rod{CustomModelData:47010,SpellboundElectricStaff:1,display:{Name:'{"translate":"Electric Staff","color":"#d2ff1c","italic":false}',Lore:['{"translate":"Casts a line of electricity that fires","color":"#e7ff85","italic":true}','{"translate":"instantly and can go through walls","color":"#e7ff85","italic":true}','{"translate":"","color":"gray","italic":false}','{"translate":"When In Main Hand:","color": "gray","italic":false}','{"translate":" 6 Attack Damage","color":"dark_green","italic":false}','{"translate":" 3 Second Default Charge Time","color":"dark_green","italic":false}','{"translate":" 4 Second Glow Time","color":"dark_green","italic":false}']},StoreDamage:64f}
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:47007}}]}] run function 1_splatus:spellbound/electric_staff/crafted

