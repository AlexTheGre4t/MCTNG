//Copper Ingot Unification

import mods.nei.NEI;

NEI.hide(<Forestry:ingotCopper>);
NEI.hide(<Railcraft:ingot:1>);
NEI.hide(<TConstruct:materials:9>);
NEI.hide(<TConstruct:materials:20>);
NEI.hide(<Railcraft:nugget:2>);
var copper = <ore:ingotCopper>;

//Destroy the oredict for these ingots
copper.remove(<Forestry:ingotCopper>);
copper.remove(<Railcraft:ingot:1>);
copper.remove(<TConstruct:materials:9>);



//Fix nugget recipes
furnace.remove(<Forestry:ingotCopper>);
furnace.addRecipe(<ThermalFoundation:material:64>, <bcadditions:dust:49>);
recipes.removeShapeless(<Railcraft:nugget:2>);
furnace.remove(<Railcraft:nugget:2>);
furnace.addRecipe(<ThermalFoundation:material:96> * 2, <Railcraft:tile.railcraft.ore:9>);
recipes.removeShaped(<TConstruct:materials:20>);

//Fix some nugget incompatibilities
recipes.removeShaped(<Railcraft:ingot:1>);
recipes.removeShaped(<TConstruct:materials:9>);
recipes.removeShaped(<Forestry:ingotCopper>);
furnace.remove(<TConstruct:materials:20>);
//set oreberries to make TF nuggets
furnace.addRecipe(<ThermalFoundation:material:96>, <TConstruct:oreBerries:2>); 

//Set molten copper basin to Thermal Foundation Copper Block
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:3>);
mods.tconstruct.Casting.addBasinRecipe(<ThermalFoundation:Storage:0>, <liquid:copper.molten> * 1296, null, false, 20);

//Set molten copper ingot casting to Thermal Foundation Ingot
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:9>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:64>, <liquid:copper.molten> * 144, <TConstruct:metalPattern:0>, false, 20);

//Set molten copper nugget casting to Thermal Foundation Nugget
mods.tconstruct.Casting.removeTableRecipe(<Railcraft:nugget:2>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:96>, <liquid:copper.molten> * 16, <TConstruct:metalPattern:27>, false, 20);



