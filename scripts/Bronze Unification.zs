import mods.nei.NEI;

var bronze = <ore:ingotBronze>;
var bBronze = <ore:blockBronze>;


//AAARGH SO MUCH BRONZE EDITING
bronze.remove(<Forestry:ingotBronze>);
bronze.remove(<TConstruct:materials:13>);
bBronze.remove(<Forestry:resourceStorage:3>);
bBronze.remove(<TConstruct:MetalBlock:4>);
recipes.removeShapeless(<Forestry:ingotBronze>);
recipes.addShapeless(<ThermalFoundation:material:73>, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>]);
recipes.removeShaped(<TConstruct:materials:13>);	 
recipes.removeShaped(<TConstruct:materials:31>);
recipes.addShapeless(<TConstruct:materials:31>, [<ore:ingotBronze>]);
recipes.removeShaped(<TConstruct:MetalBlock:4>);
recipes.removeShaped(<Forestry:resourceStorage:3>); 
recipes.addShaped(<ThermalFoundation:material:73>, [
    [bronze, bronze, bronze],
    [bronze, bronze, bronze],
    [bronze, bronze, bronze]]);
furnace.remove(<Forestry:ingotBronze>);
furnace.addRecipe(<ThermalFoundation:material:73>, <bcadditions:dust:4>);
NEI.hide(<TConstruct:materials:13>);
NEI.hide(<Forestry:ingotBronze>);


//Set molten Bronze basin to Thermal Foundation Bronze Block
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:4>);
mods.tconstruct.Casting.addBasinRecipe(<ThermalFoundation:Storage:9>, <liquid:bronze.molten> * 1296, null, false, 20);

//Set molten Bronze ingot casting to Thermal Foundation Ingot
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:13>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:73>, <liquid:bronze.molten> * 144, <TConstruct:metalPattern:0>, false, 20);

//Set molten Bronze nugget casting to Thermal Foundation Nugget
mods.tconstruct.Casting.removeTableRecipe(<Railcraft:nugget:31>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:105>, <liquid:bronze.molten> * 16, <TConstruct:metalPattern:27>, false, 20);
