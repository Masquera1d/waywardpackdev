//This is to remove the recipes; This needs to go at the TOP of the script, before any new recipies are added.

	craftingTable.remove(<item:sophisticatedbackpacks:backpack>);
	craftingTable.removeByName("sophisticatedbackpacks:iron_backpack");
	craftingTable.removeByName("sophisticatedbackpacks:gold_backpack");
	craftingTable.removeByName("sophisticatedbackpacks:diamond_backpack");
	craftingTable.remove(<item:sophisticatedbackpacks:netherite_backpack>);
	craftingTable.remove(<item:sophisticatedbackpacks:magnet_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:compacting_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:feeding_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:inception_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:smelting_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:smoking_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:blasting_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:stonecutter_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:stack_upgrade_tier_1>);
	craftingTable.remove(<item:sophisticatedbackpacks:stack_upgrade_tier_2>);
	craftingTable.remove(<item:sophisticatedbackpacks:stack_upgrade_tier_3>);
	craftingTable.remove(<item:sophisticatedbackpacks:stack_upgrade_tier_4>);
	craftingTable.remove(<item:sophisticatedbackpacks:tool_swapper_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:pump_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:advanced_pump_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:xp_pump_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:advanced_magnet_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:advanced_feeding_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:advanced_pickup_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:auto_smelting_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:auto_smoking_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:auto_blasting_upgrade>);
	craftingTable.remove(<item:sophisticatedbackpacks:battery_upgrade>);
	craftingTable.remove(<item:sophisticatedstorage:shulker_box>);


//This is to add all the new custom recipes.

	//Backpacks

		craftingTable.addShaped("backpack", <item:sophisticatedbackpacks:backpack>, [
		[<item:minecraft:iron_ingot>, <item:minecraft:leather>, <item:minecraft:iron_ingot>], 
		[<item:minecraft:string>, <item:minecraft:shulker_box>, <item:minecraft:string>], 
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

		craftingTable.addShaped("iron_backpack", <item:sophisticatedbackpacks:iron_backpack>, [
		[<item:twilightforest:ironwood_ingot>, <item:twilightforest:ironwood_ingot>, <item:twilightforest:ironwood_ingot>], 
		[<item:alloyed:steel_ingot>, <item:sophisticatedbackpacks:backpack>, <item:alloyed:steel_ingot>], 
		[<item:quark:bonded_leather>, <item:quark:bonded_leather>, <item:quark:bonded_leather>]]);

		craftingTable.addShaped("gold_backpack", <item:sophisticatedbackpacks:gold_backpack>, [
		[<item:create:golden_sheet>, <item:create:golden_sheet>, <item:create:golden_sheet>], 
		[<item:minecraft:blaze_rod>, <item:sophisticatedbackpacks:iron_backpack>, <item:minecraft:blaze_rod>], 
		[<item:nourished_nether:hoglin_hide>, <item:nourished_nether:hoglin_hide>, <item:nourished_nether:hoglin_hide>]]);

		craftingTable.addShaped("diamond_backpack", <item:sophisticatedbackpacks:diamond_backpack>, [
		[<item:minecraft:diamond>, <item:quark:diamond_heart>, <item:minecraft:diamond>], 
		[<item:minecraft:diamond>, <item:sophisticatedbackpacks:gold_backpack>, <item:minecraft:diamond>], 
		[<item:nourished_nether:hoglin_hide_block>, <item:nourished_nether:hoglin_hide_block>, <item:nourished_nether:hoglin_hide_block>]]);


	//Backpack Upgrades

		craftingTable.addShaped("magnet_upgrade", <item:sophisticatedbackpacks:magnet_upgrade>, [
		[<item:minecraft:ender_pearl>, <item:minecraft:iron_ingot>, <item:minecraft:ender_pearl>], 
		[<item:minecraft:iron_ingot>, <item:sophisticatedbackpacks:pickup_upgrade>, <item:minecraft:iron_ingot>], 
		[<item:minecraft:redstone>, <item:artifacts:universal_attractor>, <item:minecraft:lapis_lazuli>]]);
		
		