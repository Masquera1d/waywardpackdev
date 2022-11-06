

//This is to remove the recipes; This needs to go at the TOP of the script, before any new recipies are added.

craftingTable.remove(<item:immersive_armors:prismarine_helmet>);
craftingTable.remove(<item:immersive_armors:prismarine_chestplate>);
craftingTable.remove(<item:immersive_armors:prismarine_leggings>);
craftingTable.remove(<item:immersive_armors:prismarine_boots>);
craftingTable.remove(<item:immersive_armors:warrior_helmet>);
craftingTable.remove(<item:immersive_armors:warrior_chestplate>);
craftingTable.remove(<item:immersive_armors:warrior_leggings>);
craftingTable.remove(<item:immersive_armors:warrior_boots>);
craftingTable.remove(<item:immersive_armors:heavy_helmet>);
craftingTable.remove(<item:immersive_armors:heavy_chestplate>);
craftingTable.remove(<item:immersive_armors:heavy_leggings>);
craftingTable.remove(<item:immersive_armors:heavy_boots>);
craftingTable.remove(<item:immersive_armors:robe_helmet>);
craftingTable.remove(<item:immersive_armors:robe_chestplate>);
craftingTable.remove(<item:immersive_armors:robe_leggings>);
craftingTable.remove(<item:immersive_armors:robe_boots>);
craftingTable.remove(<item:immersive_armors:slime_helmet>);
craftingTable.remove(<item:immersive_armors:slime_chestplate>);
craftingTable.remove(<item:immersive_armors:slime_leggings>);
craftingTable.remove(<item:immersive_armors:slime_boots>);
craftingTable.remove(<item:immersive_armors:steampunk_helmet>);
craftingTable.remove(<item:immersive_armors:steampunk_chestplate>);
craftingTable.remove(<item:immersive_armors:steampunk_leggings>);
craftingTable.remove(<item:immersive_armors:steampunk_boots>);


//This is to add all the new custom recipes.

	//Prismarine

		craftingTable.addShaped("prismarinehelmet", <item:immersive_armors:prismarine_helmet>, [
			[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:prismarine_crystals>, <item:waywards_custom_mod:prismarine_armor_plating>], 
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:air>, <item:waywards_custom_mod:prismarine_armor_plating>]]);

		craftingTable.addShaped("prismarinechestplate", <item:immersive_armors:prismarine_chestplate>, [
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:air>, <item:waywards_custom_mod:prismarine_armor_plating>], 
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:heart_of_the_sea>, <item:waywards_custom_mod:prismarine_armor_plating>], 
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:waywards_custom_mod:prismarine_armor_plating>, <item:waywards_custom_mod:prismarine_armor_plating>]]);

		craftingTable.addShaped("prismarineleggings", <item:immersive_armors:prismarine_leggings>, [
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:prismarine_crystals>, <item:waywards_custom_mod:prismarine_armor_plating>], 
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:air>, <item:waywards_custom_mod:prismarine_armor_plating>], 
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:air>, <item:waywards_custom_mod:prismarine_armor_plating>]]);

		craftingTable.addShaped("prismarineboots", <item:immersive_armors:prismarine_boots>, [
			[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
			[<item:minecraft:prismarine_crystals>, <item:minecraft:air>, <item:minecraft:prismarine_crystals>], 
			[<item:waywards_custom_mod:prismarine_armor_plating>, <item:minecraft:air>, <item:waywards_custom_mod:prismarine_armor_plating>]]);


	//Warrior

		smithing.addRecipe("warrior_helmet", <item:immersive_armors:warrior_helmet>, <item:minecraft:leather_helmet>, <item:minecraft:iron_helmet>);

		smithing.addRecipe("warrior_chestplate", <item:immersive_armors:warrior_chestplate>, <item:minecraft:leather_chestplate>, <item:minecraft:iron_chestplate>);

		smithing.addRecipe("warrior_leggings", <item:immersive_armors:warrior_leggings>, <item:minecraft:leather_leggings>, <item:minecraft:iron_leggings>);

		smithing.addRecipe("warrior_boots", <item:immersive_armors:warrior_boots>, <item:minecraft:leather_boots>, <item:minecraft:iron_boots>);


	//Heavy

		smithing.addRecipe("heavy_helmet", <item:immersive_armors:heavy_helmet>, <item:alloyed:steel_helmet>, <item:minecraft:iron_helmet>);

		smithing.addRecipe("heavy_chestplate", <item:immersive_armors:heavy_chestplate>, <item:alloyed:steel_chestplate>, <item:minecraft:iron_chestplate>);

		smithing.addRecipe("heavy_leggings", <item:immersive_armors:heavy_leggings>, <item:alloyed:steel_leggings>, <item:minecraft:iron_leggings>);

		smithing.addRecipe("heavy_boots", <item:immersive_armors:heavy_boots>, <item:alloyed:steel_boots>, <item:minecraft:iron_boots>);


	//Robe

		smithing.addRecipe("robe_helmet", <item:immersive_armors:robe_helmet>, <item:botania:manaweave_helmet>, <item:botania:rune_fire>);

		smithing.addRecipe("robe_chestplate", <item:immersive_armors:robe_chestplate>, <item:botania:manaweave_chestplate>, <item:botania:rune_fire>);

		smithing.addRecipe("robe_leggings", <item:immersive_armors:robe_leggings>, <item:botania:manaweave_leggings>, <item:botania:rune_fire>);

		smithing.addRecipe("robe_boots", <item:immersive_armors:robe_boots>, <item:botania:manaweave_boots>, <item:botania:rune_fire>);


	//Slime

		craftingTable.addShaped("slimehelmet", <item:immersive_armors:slime_helmet>, [
			[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
			[<item:minecraft:slime_ball>, <item:minecraft:slime_block>, <item:minecraft:slime_ball>], 
			[<item:minecraft:slime_ball>, <item:minecraft:air>, <item:minecraft:slime_ball>]]);

		craftingTable.addShaped("slimechestplate", <item:immersive_armors:slime_chestplate>, [
			[<item:minecraft:slime_block>, <item:minecraft:air>, <item:minecraft:slime_block>], 
			[<item:minecraft:slime_ball>, <item:minecraft:slime_block>, <item:minecraft:slime_ball>], 
			[<item:minecraft:slime_ball>, <item:minecraft:slime_ball>, <item:minecraft:slime_ball>]]);

		craftingTable.addShaped("slimeleggings", <item:immersive_armors:slime_leggings>, [
			[<item:minecraft:slime_block>, <item:minecraft:slime_block>, <item:minecraft:slime_block>], 
			[<item:minecraft:slime_ball>, <item:minecraft:air>, <item:minecraft:slime_ball>], 
			[<item:minecraft:slime_ball>, <item:minecraft:air>, <item:minecraft:slime_ball>]]);

		craftingTable.addShaped("slimeboots", <item:immersive_armors:slime_boots>, [
			[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
			[<item:minecraft:slime_ball>, <item:minecraft:air>, <item:minecraft:slime_ball>], 
			[<item:minecraft:slime_block>, <item:minecraft:air>, <item:minecraft:slime_block>]]);


	//Steampunk

		craftingTable.addShaped("steampunkhelmet", <item:immersive_armors:steampunk_helmet>, [
			[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
			[<item:create:electron_tube>, <item:minecraft:air>, <item:minecraft:air>], 
			[<item:minecraft:glass>, <item:create:brass_ingot>, <item:minecraft:glass>]]);

		craftingTable.addShaped("steampunkchestplate", <item:immersive_armors:steampunk_chestplate>, [
			[<item:create:brass_ingot>, <item:minecraft:air>, <item:create:brass_ingot>], 
			[<item:minecraft:compass>, <item:create:brass_ingot>, <item:minecraft:clock>], 
			[<item:create:brass_ingot>, <item:create:cogwheel>, <item:create:brass_ingot>]]);

		craftingTable.addShaped("steampunkleggings", <item:immersive_armors:steampunk_leggings>, [
			[<item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>], 
			[<item:create:cogwheel>, <item:minecraft:air>, <item:create:cogwheel>], 
			[<item:create:brass_ingot>, <item:minecraft:air>, <item:create:brass_ingot>]]);

		craftingTable.addShaped("steampunkboots", <item:immersive_armors:steampunk_boots>, [
			[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
			[<item:create:cogwheel>, <item:minecraft:air>, <item:create:cogwheel>], 
			[<item:create:brass_ingot>, <item:minecraft:air>, <item:create:brass_ingot>]]);