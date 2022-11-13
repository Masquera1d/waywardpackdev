
tellraw @s[tag=spellbound_unlocked_MoonlightEdge] [{"translate": "\n","color": "yellow"},{"translate":"Moonlight Edge","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"translate":""}]}},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items onto the ground to craft this weapon\n"},{"translate":"item.minecraft.diamond_sword"},{"text":" + "},{"translate":"item.minecraft.amethyst_shard"},{"text":" + "},{"translate":"item.minecraft.ender_pearl"},{"text":" + "},{"translate":"item.minecraft.golden_apple"}]}},{"translate":" "}]
tellraw @s[tag=!spellbound_unlocked_MoonlightEdge] [{"translate": "\n","color": "yellow"},{"translate":"Moonlight Edge","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"translate":""}]}},{"translate":": "},{"translate":"Locked","color":"gray","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Recipe unlocks after getting a "},{"translate":"item.minecraft.diamond_sword"}]}},{"translate":" "}]


tellraw @s[tag=spellbound_unlocked_GoldenSeaBlade] [{"translate": "\n","color": "yellow"},{"translate":"Golden Sea Blade","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"translate":""}]}},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items onto the ground to craft this weapon\n"},{"translate":"item.minecraft.golden_sword"},{"text":" + "},{"translate":"item.minecraft.heart_of_the_sea"}]}},{"translate":" "}]
tellraw @s[tag=!spellbound_unlocked_GoldenSeaBlade] [{"translate": "\n","color": "yellow"},{"translate":"Golden Sea Blade","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"translate":""}]}},{"translate":": "},{"translate":"Locked","color":"gray","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Recipe unlocks after getting a "},{"translate":"item.minecraft.heart_of_the_sea"}]}},{"translate":" "}]


tellraw @s[tag=spellbound_unlocked_Blowgun] [{"translate": "\n","color": "yellow"},{"translate":"Blowgun","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"translate":""}]}},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items onto the ground to craft this weapon\n"},{"translate":"block.minecraft.bamboo"},{"text":" + "},{"translate":"block.minecraft.cobblestone"}]}},{"translate":" "}]
tellraw @s[tag=!spellbound_unlocked_Blowgun] [{"translate": "\n","color": "yellow"},{"translate":"Blowgun","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"translate":""}]}},{"translate":": "},{"translate":"Locked","color":"gray","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Recipe unlocks after getting a "},{"translate":"block.minecraft.bamboo"}]}},{"translate":" "}]




tellraw @s [{"translate":""},{"translate":"\n              ","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]}},{"translate":"    - 1/2 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"},{"translate":"Page 2 -->","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/trigger spellbound_recipes set 2"}},{"text": "\n"}]
#tellraw @s [{"translate":"\n<-- Page 3","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:ultris/boss_settings3"}},{"translate":"    - 4/5 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"},{"translate":"Page 5 -->\n","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:ultris/boss_settings5"}}]


playsound entity.experience_orb.pickup player @s