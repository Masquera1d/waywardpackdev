//This is where you import necessary... imports?
	
	




//This is to remove the recipes; This needs to go at the TOP of the script, before any new recipies are added.

	
	


//This is to add all the new custom recipes.





//Things other than recipes?

	<tag:blocks:twilightforest:portal/decoration>.clear();

	for flower in <tag:blocks:botania:mystical_flowers>.idElements {
		 <tag:blocks:twilightforest:portal/decoration>.add(<block:${flower as string}>);
	}

		
		
		