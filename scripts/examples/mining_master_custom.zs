

//This is to remove the recipes; This needs to go at the TOP of the script, before any new recipies are added.

craftingTable.remove(<item:miningmaster:gem_forge>); 


//This is to add all the new custom recipes.

	// Enchanted Books

		smithing.addRecipe("leechingbook", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "miningmaster:leeching" as string}]}), <item:miningmaster:spirit_garnet>, <item:minecraft:book>);

		smithing.addRecipe("stonebreakerbook", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "miningmaster:stonebreaker" as string}]}), <item:miningmaster:power_pyrite>, <item:minecraft:book>);

		smithing.addRecipe("freezingbook", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "miningmaster:freezing" as string}]}), <item:miningmaster:ice_sapphire>, <item:minecraft:book>);

		smithing.addRecipe("runnerbook", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "miningmaster:runner" as string}]}), <item:miningmaster:haste_peridot>, <item:minecraft:book>);

		smithing.addRecipe("heartfeltbook", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "miningmaster:heartfelt" as string}]}), <item:miningmaster:heart_rhodonite>, <item:minecraft:book>);

		smithing.addRecipe("smeltingbook", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "miningmaster:smelting" as string}]}), <item:miningmaster:fire_ruby>, <item:minecraft:book>);