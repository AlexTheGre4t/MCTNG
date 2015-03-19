import mods.nei.NEI;

var bronze = <ore:ingotBronze>;


//AAARGH SO MUCH BRONZE EDITING
bronze.remove(<Forestry:ingotBronze>);
bronze.remove(<TConstruct:materials:13>);
recipes.removeShapeless(<Forestry:ingotBronze>);
recipes.addShaped(<ThermalFoundation:material:73>,
	[[<ore:ingotCopper>, <ore:ingotCopper>, null],
	 [<ore:ingotCopper>, <ore:ingotTin>, null],
	 [null, null, null]]);
recipes.removeShaped(<TConstruct:materials:13>);	 
recipes.removeShaped(<TConstruct:materials:31>);
recipes.addShapeless(<TConstruct:materials:31>, [<ore:ingotBronze>]);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:73>, <liquid:bronze.molten> * 144, <TConstruct:metalPattern:0>, false, 20);
recipes.removeShaped(<TConstruct:MetalBlock:4>);
NEI.hide(<TConstruct:materials:13>);
NEI.hide(<Forestry:ingotBronze>);
