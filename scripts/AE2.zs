//Applied Energistics 2 Tweaks
import mods.nei.NEI;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
var RFPress = 1000000;

var silicon = <appliedenergistics2:item.ItemMultiMaterial:5>;
var siliconPress = <appliedenergistics2:item.ItemMultiMaterial:19>;
var logicPress = <appliedenergistics2:item.ItemMultiMaterial:15>;
var enginPress = <appliedenergistics2:item.ItemMultiMaterial:14>;
var calcPress = <appliedenergistics2:item.ItemMultiMaterial:13>;
var certusCrystal = <appliedenergistics2:item.ItemMultiMaterial:0>;
var chargedCrystal = <appliedenergistics2:item.ItemMultiMaterial:1>;
var certusDust = <appliedenergistics2:item.ItemMultiMaterial:2>;
var enderDust = <appliedenergistics2:item.ItemMultiMaterial:46>;
var certusCircuit = <appliedenergistics2:item.ItemMultiMaterial:16>;
var goldCircuit = <appliedenergistics2:item.ItemMultiMaterial:18>;
var diamondCircuit = <appliedenergistics2:item.ItemMultiMaterial:17>;
var siliconCircuit = <appliedenergistics2:item.ItemMultiMaterial:20>;
var certusProcessor = <appliedenergistics2:item.ItemMultiMaterial:23>;
var goldProcessor = <appliedenergistics2:item.ItemMultiMaterial:22>;
var diamondProcessor = <appliedenergistics2:item.ItemMultiMaterial:24>;
var pureFluix = <appliedenergistics2:item.ItemMultiMaterial:12>;
var crystalFluix = <appliedenergistics2:item.ItemMultiMaterial:7>;
var RFCard = 10000;
var RFMem = 300000;
var RFHDD = 500000;
var RFCPU = 4000000;
var HDD1 = <OpenComputers:item:5>;
var HDD2 = <OpenComputers:item:6>;
var HDD3 = <OpenComputers:item:7>;
var iron = <ore:ingotIron>;
var gold = <ore:ingotGold>;
var copper = <ore:ingotCopper>;
var tin = <ore:ingotTin>;
var diamond = <ore:gemDiamond>;
var emerald = <minecraft:emerald>;
var redstone = <minecraft:redstone>;
var glowstone = <minecraft:glowstone_dust>;
var glass = <ore:blockGlass>;
var FluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:7>;
var FluixPearl = <appliedenergistics2:item.ItemMultiMaterial:9>;
var Silicon = <appliedenergistics2:item.ItemMultiMaterial:5>;
var GPU1 = <OpenComputers:item:8>;
var GPU2 = <OpenComputers:item:9>;
var GPU3 = <OpenComputers:item:10>;
var Memory1 = <OpenComputers:item:1>;
var Memory2 = <OpenComputers:item:50>;
var Memory3 = <OpenComputers:item:2>;
var Memory4 = <OpenComputers:item:3>;
var Memory5 = <OpenComputers:item:38>;
var Memory6 = <OpenComputers:item:39>;
var cpu1 = <OpenComputers:item:29>;
var cpu2 = <OpenComputers:item:42>;
var cpu3 = <OpenComputers:item:43>;
var micro1 = <OpenComputers:item:24>;
var micro2 = <OpenComputers:item:25>;
var micro3 = <OpenComputers:item:26>;
var server1 = <OpenComputers:item:45>;
var server2 = <OpenComputers:item:46>;
var server3 = <OpenComputers:item:40>;
var chipset0 = <BuildCraft|Silicon:redstoneChipset:0>;
var chipset1 = <BuildCraft|Silicon:redstoneChipset:1>;
var chipset2 = <BuildCraft|Silicon:redstoneChipset:2>;
var chipset3 = <BuildCraft|Silicon:redstoneChipset:3>;
var chipset4 = <BuildCraft|Silicon:redstoneChipset:7>;
var Drone1 = <OpenComputers:item:83>;
var Drone2 = <OpenComputers:item:87>;
var graphics1 = <OpenComputers:item:8>;
var graphics2 = <OpenComputers:item:9>;
var graphics3 = <OpenComputers:item:10>;
var arith = <OpenComputers:item:27>;
var trans = <OpenComputers:item:23>;
var circuitboard = <OpenComputers:item:32>;
var dd = <OpenComputers:diskDrive>;
var MCUCase = <OpenComputers:item:82>;
var MCUCase2 = <OpenComputers:item:86>;
var DiskPlatter = <OpenComputers:item:19>;
var pcb1 = <Forestry:chipsets:0>;
var pcb2 = <Forestry:chipsets:1>;
var pcb3 = <Forestry:chipsets:2>;
var pcb4 = <Forestry:chipsets:3>;
var cardBase = <OpenComputers:item:33>;
var cardRedstone1 = <OpenComputers:item:66>;
var cardRedstone2 = <OpenComputers:item:12>;
var cardWireless = <OpenComputers:item:13>;
var cardInternet = <OpenComputers:item:44>;
var cardLinked = <OpenComputers:item:51>;
var cardNetwork = <OpenComputers:item:11>;
var abyssal = <Railcraft:tile.railcraft.brick.abyssal:2>;
var craftingUnit = <appliedenergistics2:tile.BlockCraftingUnit>;
var glassCable = <appliedenergistics2:item.ItemMultiPart:16>;
var case1 = <OpenComputers:case1>;
var case2 = <OpenComputers:case2>;
var case3 = <OpenComputers:case3>;
var comp1 = <appliedenergistics2:item.ItemMultiMaterial:35>;
var comp4 = <appliedenergistics2:item.ItemMultiMaterial:36>;
var comp16 = <appliedenergistics2:item.ItemMultiMaterial:37>;
var comp64 = <appliedenergistics2:item.ItemMultiMaterial:38>;
var quartzGlass = <appliedenergistics2:tile.BlockQuartzGlass>;
var componentBus3 = <OpenComputers:item:72>;
var formCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
var annCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
var illumPanel = <appliedenergistics2:item.ItemMultiPart:180>;

mods.buildcraft.AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:13>, RFPress,
	[<minecraft:iron_block>]);

mods.buildcraft.AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:14>, RFPress,
	[<minecraft:iron_block>]);

mods.buildcraft.AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:15>, RFPress,
	[<minecraft:iron_block>]);

mods.buildcraft.AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:19>, RFPress,
	[<minecraft:iron_block>]);


//ME Controller
recipes.remove(<appliedenergistics2:tile.BlockController>);
recipes.addShaped(<appliedenergistics2:tile.BlockController>, [
	[abyssal, crystalFluix, abyssal],
	[cardNetwork, cpu3, Memory6],
	[abyssal, componentBus3, abyssal]
	]);

//Remove all Autocrafting
var disableCrafting = [
<appliedenergistics2:tile.BlockCraftingUnit:*>,
<appliedenergistics2:tile.BlockCraftingStorage:*>,
<appliedenergistics2:tile.BlockCraftingMonitor:*>,
<appliedenergistics2:tile.BlockMolecularAssembler:*>,
<appliedenergistics2:tile.BlockCraftingStorage:*>,

] as IItemStack[];

for i, item in disableCrafting {
	recipes.remove(item);
	NEI.hide(item);
}

//Make Storage Components more pricey
recipes.remove(comp1);
recipes.addShaped(comp1, [
	[redstone, <ore:gemQuartz>, redstone],
	[<ore:gemQuartz>, DiskPlatter, <ore:gemQuartz>],
	[redstone, <ore:gemQuartz>, redstone]
	]);

recipes.remove(comp4);
recipes.addShaped(comp4, [
	[redstone, HDD1, redstone],
	[comp1, quartzGlass, comp1],
	[redstone, comp1, redstone]
	]);

recipes.remove(comp16);
recipes.addShaped(comp16, [
	[glowstone, HDD2, glowstone],
	[comp4, quartzGlass, comp4],
	[glowstone, comp4, glowstone]
	]);

recipes.remove(comp64);
recipes.addShaped(comp64, [
	[glowstone, HDD3, glowstone],
	[comp16, quartzGlass, comp16],
	[glowstone, comp16, glowstone]
	]);


//Remove Import, Export & Storage bus, ME Drive
// recipes.remove(<appliedenergistics2:tile.BlockDrive>);  -- reenabled per conversation on BC Forums
recipes.remove(<appliedenergistics2:item.ItemMultiPart:260>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:240>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:220>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:340>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:480>);
// NEI.hide(<appliedenergistics2:tile.BlockDrive>);
NEI.hide(<appliedenergistics2:item.ItemMultiPart:260>);
NEI.hide(<appliedenergistics2:item.ItemMultiPart:240>);
NEI.hide(<appliedenergistics2:item.ItemMultiPart:220>);
NEI.hide(<appliedenergistics2:item.ItemMultiPart:340>);
NEI.hide(<appliedenergistics2:item.ItemMultiPart:480>);

//Change Puddle Recipes
var DisableSeeds = [
<appliedenergistics2:item.ItemCrystalSeed:*>

] as IItemStack[];
for i, item in DisableSeeds {
	recipes.remove(item);
	NEI.hide(item);
}
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:7>, [redstone, chargedCrystal, glowstone]);

//Disable some blocks
var disableEverythingBasically = [
<appliedenergistics2:tile.BlockVibrationChamber>,
<appliedenergistics2:tile.BlockEnergyCell:*>,
<appliedenergistics2:tile.BlockSpatialPylon>,
<appliedenergistics2:tile.BlockSpatialIOPort>,
<appliedenergistics2:tile.BlockQuantumLinkChamber>,
<appliedenergistics2:tile.BlockQuantumRing>,
<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>,
<appliedenergistics2:tile.BlockSkyCompass>,
<appliedenergistics2:tile.BlockDenseEnergyCell:*>,
<appliedenergistics2:tile.BlockEnergyAcceptor:*>,
<appliedenergistics2:item.ToolMassCannon:*>,
<appliedenergistics2:item.ToolWirelessTerminal:*>,
<appliedenergistics2:tile.BlockInscriber>,


] as IItemStack[];
for i, item in disableEverythingBasically {
	recipes.remove(item);
	NEI.hide(item);
}

//ME Terminal
recipes.remove(<appliedenergistics2:item.ItemMultiPart:380>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:380>, [
	[null, graphics2, null],
	[formCore, illumPanel, annCore],
	[null, micro2, null]
	]);

var interface = <appliedenergistics2:tile.BlockInterface>;
//ME Interface
recipes.remove(interface);
recipes.addShaped(<appliedenergistics2:tile.BlockInterface>, [
	[iron, glass, iron],
	[formCore, Memory3, annCore],
	[iron, glass, iron]
	]);

//Storage Housing
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:39>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:39>, [
	[quartzGlass, redstone, quartzGlass],
	[redstone, cardBase, redstone],
	[iron, iron, iron]
	]);

//Storage Cells
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.1k>);
recipes.addShaped(<appliedenergistics2:item.ItemBasicStorageCell.1k>, [
	[quartzGlass, redstone, quartzGlass],
	[redstone, comp1, redstone],
	[iron, iron, iron]
	]);

recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.4k>);
recipes.addShaped(<appliedenergistics2:item.ItemBasicStorageCell.4k>, [
	[quartzGlass, redstone, quartzGlass],
	[redstone, comp4, redstone],
	[iron, iron, iron]
	]);

recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.16k>);
recipes.addShaped(<appliedenergistics2:item.ItemBasicStorageCell.16k>, [
	[quartzGlass, redstone, quartzGlass],
	[redstone, comp16, redstone],
	[iron, iron, iron]
	]);

recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.64k>);
recipes.addShaped(<appliedenergistics2:item.ItemBasicStorageCell.64k>, [
	[quartzGlass, redstone, quartzGlass],
	[redstone, comp64, redstone],
	[iron, iron, iron]
	]);

//Change Processor recipes from Inscriber to Integration Table

mods.buildcraft.AssemblyTable.addRecipe(certusProcessor, 1000,
	[certusCircuit, pcb2, siliconCircuit]);

mods.buildcraft.AssemblyTable.addRecipe(goldProcessor, 10000,
	[goldCircuit, pcb3, siliconCircuit]);

mods.buildcraft.AssemblyTable.addRecipe(diamondProcessor, 100000,
	[diamondCircuit, pcb4, siliconCircuit]);

//Remove Inscriber processor and circuit recipes in favour of BC Integration and Assembly table.
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:16>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:18>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:17>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:20>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:23>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:22>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:24>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:13>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:14>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:15>);
mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:19>);

//Add New Printed Circuit Recipes in Assembly Table
mods.buildcraft.AssemblyTable.addRecipe(certusCircuit, 10000,
	[redstone, certusCrystal]);

mods.buildcraft.AssemblyTable.addRecipe(goldCircuit, 10000,
	[redstone, gold]);

mods.buildcraft.AssemblyTable.addRecipe(diamondCircuit, 10000,
	[redstone, diamond]);

mods.buildcraft.AssemblyTable.addRecipe(siliconCircuit, 10000,
	[silicon]);


//Remove Pure Fluix
var orePureFluix = <ore:crystalPureFluix>;
orePureFluix.remove(<appliedenergistics2:item.ItemMultiMaterial:12>);

//Fix IO Port Recipe
recipes.remove(<appliedenergistics2:tile.BlockIOPort>);
recipes.addShaped(<appliedenergistics2:tile.BlockIOPort>, [
	[glass, glass, glass],
	[dd, glassCable, dd],
	[iron, goldProcessor, iron]
	]);
