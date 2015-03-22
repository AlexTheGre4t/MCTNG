//Fixing oredict unification for Lead Ingots

import mods.nei.NEI;


val TFingot = <ThermalFoundation:material:67>;
val RCIngot = <Railcraft:ingot:3>;

var leadIngot = <ore:ingotLead>;
var leadNugget = <ore:nuggetLead>;
var leadBlock = <ore:blockLead>;
var leadDust = <ore:dustLead>;

leadIngot.remove(RCIngot);

furnace.remove(RCIngot);
furnace.addRecipe(TFingot, leadDust);

NEI.hide(RCIngot);
NEI.hide(<Railcraft:tile.railcraft.cube:11>);
NEI.hide(<Railcraft:nugget:4>);

leadBlock.remove(<Railcraft:tile.railcraft.cube:11>);
leadNugget.remove(<Railcraft:nugget:4>);

recipes.removeShaped(<Railcraft:tile.railcraft.cube:11>);
recipes.removeShapeless(<Railcraft:nugget:4>);
recipes.removeShapeless(<Railcraft:ingot:3>);

recipes.removeShaped(<Railcraft:tile.railcraft.stair:41>);
recipes.addShapedMirrored(<Railcraft:tile.railcraft.stair:41>, [
	[<ThermalFoundation:Storage:3>, null, null],
	[<ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>, null],
	[<ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>]]);

recipes.removeShaped(<Railcraft:tile.railcraft.slab:41>);
recipes.addShaped(<Railcraft:tile.railcraft.slab:41>, [
	[<ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>],
	[null, null, null],
	[null, null, null]]);

recipes.addShaped(<Railcraft:tile.railcraft.slab:41>, [
	[null, null, null],
	[<ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>],
	[null, null, null]]);

recipes.addShaped(<Railcraft:tile.railcraft.slab:41>, [
	[null, null, null],
	[null, null, null],
	[<ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>, <ThermalFoundation:Storage:3>]]);

recipes.removeShaped(<Railcraft:ingot:3>);
recipes.addShaped(<ThermalFoundation:material:67>, [
	[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
	[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
	[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]]);

recipes.removeShaped(<Railcraft:tile.railcraft.cube:11>);
recipes.addShaped(<ThermalFoundation:Storage:3>, [
    [leadIngot, leadIngot, leadIngot],
    [leadIngot, leadIngot, leadIngot],
    [leadIngot, leadIngot, leadIngot]]);

// TiC nugget casting crashes client to desktop. Need to find something else. 
// commenting out for now.
mods.tconstruct.Casting.removeTableRecipe(<Railcraft:nugget:4>);
// mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:99>, <liquid:lead.molten> * 16, <TConstruct:metalPattern:27>, false, 20);

mods.tconstruct.Casting.removeBasinRecipe(<Railcraft:tile.railcraft.cube:11>);
mods.tconstruct.Casting.addBasinRecipe(<ThermalFoundation:Storage:3>, <liquid:lead.molten> * 1296, null, false, 20);

mods.tconstruct.Casting.removeTableRecipe(<Railcraft:ingot:3>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:67>, <liquid:lead.molten> * 144, <TConstruct:metalPattern:0>, false, 20);
