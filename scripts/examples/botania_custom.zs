//This is where you import necessary... imports?
	
	import crafttweaker.api.recipe.SmithingRecipeManager;




//This is to remove the recipes; This needs to go at the TOP of the script, before any new recipies are added.

	craftingTable.remove(<item:botania:terrasteel_helmet>);
	craftingTable.remove(<item:botania:terrasteel_chestplate>);
	craftingTable.remove(<item:botania:terrasteel_leggings>);
	craftingTable.remove(<item:botania:terrasteel_boots>);
	craftingTable.remove(<item:botania:fertilizer>);
	


//This is to add all the new custom recipes.

	//Armor

		smithing.addRecipe("terrasteel_helmet", <item:botania:terrasteel_helmet>, <item:minecraft:netherite_helmet>, <item:waywards_custom_mod:terrasteel_helmet_core>);

		smithing.addRecipe("terrasteel_chestplate", <item:botania:terrasteel_chestplate>, <item:minecraft:netherite_chestplate>, <item:waywards_custom_mod:terrasteel_chestplate_core>);

		smithing.addRecipe("terrasteel_leggings", <item:botania:terrasteel_leggings>, <item:minecraft:netherite_leggings>, <item:waywards_custom_mod:terrasteel_leggings_core>);

		smithing.addRecipe("terrasteel_boots", <item:botania:terrasteel_boots>, <item:minecraft:netherite_boots>, <item:waywards_custom_mod:terrasteel_boots_core>);
		


	//Misc. Items

	//ManaInfusionRecipeManager.addRecipe(name as string, output as IItemStack, input as IIngredient, mana as int, catalyst as BlockIngredient, group as string, function as RecipeFunctionSingle) as void

	<recipetype:botania:mana_infusion>.addRecipe("mana_infusion_test_catalyst", <item:botania:fertilizer>, <item:minecraft:bone_meal>, 200);
		