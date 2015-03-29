//Fixing oredict unification for Tin Ingots

import mods.nei.NEI;


val TFingot = <ThermalFoundation:material:65>;
val FIngot = <Forestry:ingotTin>;
val RCIngot = <Railcraft:ingot:2>;
val TicIngot = <TConstruct:materials:10>;

var tinIngot = <ore:ingotTin>;
var tinNugget = <ore:nuggetTin>;
var tinBlock = <ore:blockTin>;
var tinDust = <ore:dustTin>;

val TFblock = <ThermalFoundation:Storage:1>;
val FBlock = <Forestry:resourceStorage:2>;
val RCBlock = <Railcraft:tile.railcraft.cube:10>;
val TicBlock = <TConstruct:MetalBlock:5>;

tinIngot.remove(FIngot);
tinIngot.remove(RCIngot);
tinIngot.remove(TicIngot);

NEI.hide(FIngot);
NEI.hide(RCIngot);
NEI.hide(TicIngot);
NEI.hide(<Railcraft:tile.railcraft.cube:10>);
NEI.hide(<TConstruct:MetalBlock:5>);
NEI.hide(<TConstruct:materials:21>);
NEI.hide(<Railcraft:nugget:3>);

tinBlock.remove(FBlock);
tinBlock.remove(RCBlock);
tinBlock.remove(TicBlock);

tinNugget.remove(<TConstruct:materials:21>);
tinNugget.remove(<Railcraft:nugget:3>);

furnace.remove(FIngot);
furnace.remove(TicIngot);
furnace.addRecipe(TFingot, tinDust);
furnace.addRecipe(TFingot, <TConstruct:GravelOre:3>);

recipes.removeShaped(<Railcraft:tile.railcraft.cube:10>);
recipes.removeShaped(<TConstruct:MetalBlock:5>);
recipes.removeShaped(<TConstruct:materials:10>);
recipes.removeShapeless(FIngot);

recipes.removeShapeless(<Railcraft:ingot:2>);
recipes.removeShaped(<Railcraft:tile.railcraft.stair:40>);
recipes.addShaped(<Railcraft:tile.railcraft.stair:40>, [
	[<ThermalFoundation:Storage:1>, null, null],
	[<ThermalFoundation:Storage:1>, <ThermalFoundation:Storage:1>, null],
	[<ThermalFoundation:Storage:1>, <ThermalFoundation:Storage:1>, <ThermalFoundation:Storage:1>]]);

recipes.removeShaped(<Railcraft:tile.railcraft.slab:40>);
recipes.addShaped(<Railcraft:tile.railcraft.slab:40>, [
	[<ThermalFoundation:Storage:1>, <ThermalFoundation:Storage:1>, <ThermalFoundation:Storage:1>],
	[null, null, null],
	[null, null, null]]);

recipes.removeShaped(<Railcraft:ingot:2>);
recipes.addShaped(<ThermalFoundation:material:65>, [
	[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>],
	[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>],
	[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>]]);

recipes.removeShaped(<Forestry:resourceStorage:2>);
recipes.addShaped(<ThermalFoundation:Storage:1>, [
    [tinIngot, tinIngot, tinIngot],
    [tinIngot, tinIngot, tinIngot],
    [tinIngot, tinIngot, tinIngot]]);

furnace.remove(<TConstruct:materials:21>);
furnace.addRecipe(<ThermalFoundation:material:97>, <TConstruct:oreBerries:3>);

mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:5>);
mods.tconstruct.Casting.addBasinRecipe(<ThermalFoundation:Storage:1>, <liquid:tin.molten> * 1296, null, false, 20);

mods.tconstruct.Casting.removeTableRecipe(TicIngot);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:65>, <liquid:tin.molten> * 144, <TConstruct:metalPattern:0>, false, 20);

mods.tconstruct.Casting.removeTableRecipe(<Railcraft:nugget:3>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:97>, <liquid:tin.molten> * 16, <TConstruct:metalPattern:27>, false, 20);
