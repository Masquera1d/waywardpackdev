//This is where you import necessary... imports?




//This is to remove the recipes; This needs to go at the TOP of the script, before any new recipies are added.

	craftingTable.remove(<item:waywards_custom_mod:terrasteel_helmet_core>); 
	craftingTable.remove(<item:waywards_custom_mod:terrasteel_chestplate_core>); 
	craftingTable.remove(<item:waywards_custom_mod:terrasteel_leggings_core>); 
	craftingTable.remove(<item:waywards_custom_mod:terrasteel_boots_core>); 
	craftingTable.remove(<item:waywards_custom_mod:prismarine_armor_plating>); 
	


//This is to add all the new custom recipes.

	craftingTable.addShaped("terrasteelhelmcore", <item:waywards_custom_mod:terrasteel_helmet_core>, [
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>], 
		[<item:botania:terrasteel_ingot>, <item:botania:rune_spring>, <item:botania:terrasteel_ingot>], 
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>]]);

	craftingTable.addShaped("terrasteelchestcore", <item:waywards_custom_mod:terrasteel_chestplate_core>, [
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>], 
		[<item:botania:terrasteel_ingot>, <item:botania:rune_summer>, <item:botania:terrasteel_ingot>], 
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>]]);

	craftingTable.addShaped("terrasteellegscore", <item:waywards_custom_mod:terrasteel_leggings_core>, [
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>], 
		[<item:botania:terrasteel_ingot>, <item:botania:rune_autumn>, <item:botania:terrasteel_ingot>], 
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>]]);

	craftingTable.addShaped("terrasteelbootscore", <item:waywards_custom_mod:terrasteel_boots_core>, [
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>], 
		[<item:botania:terrasteel_ingot>, <item:botania:rune_winter>, <item:botania:terrasteel_ingot>], 
		[<item:botania:livingwood_twig>, <item:botania:terrasteel_ingot>, <item:botania:livingwood_twig>]]);

	craftingTable.addShaped("prismarinearmorplating", <item:waywards_custom_mod:prismarine_armor_plating> * 8, [
		[<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>], 
		[<item:minecraft:prismarine_shard>, <item:botania:rune_water>, <item:minecraft:prismarine_shard>], 
		[<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>]]);
		

// Trying to fix chest recipes

	craftingTable.addShaped("chest", <item:minecraft:chest>, [
		[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], 
		[<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>], 
		[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);