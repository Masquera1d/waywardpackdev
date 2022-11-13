
tellraw @s [{"translate": " "}]


execute if score spellbound_dyes spellbound_count matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"text":"Determines whether players can change Crucible's default red color to other dye colors in cauldrons"}]}},{"translate":"Dyable Crucibles: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/dye_disable"}}]
execute if score spellbound_dyes spellbound_count matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"text":"Determines whether players can change Crucible's default red color to other dye colors in cauldrons"}]}},{"translate":"Dyable Crucibles: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/dye_enable"}}]


#execute if score spellbound_tip spellbound_count matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"text":"The tips that display when using Bone Wand, Windswept Sword and Evokers Wrath"}]}},{"translate":"Weapon Tips: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/tip_disable"}}]
#execute if score spellbound_tip spellbound_count matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"text":"The tips that display when using Bone Wand, Windswept Sword and Evokers Wrath"}]}},{"translate":"Weapon Tips: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/tip_enable"}}]

tellraw @s [{"translate": " "}]






tellraw @s [{"translate": " "}]





tellraw @s [{"translate": "\n","color": "yellow"},{"translate":"<-- Page 1","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/menus/settings1"}},{"translate":"    - 2/2 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"}]


tellraw @s [{"translate": " "}]
