// Electronic Progression
import minetweaker.item.IIngredient;

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

//Tier 1 CPU
recipes.removeShaped(cpu1);
mods.buildcraft.AssemblyTable.addRecipe(cpu1, RFCPU,
  [micro1 * 4, pcb2, Silicon * 4]);

//Tier 2 CPU
recipes.removeShaped(cpu2);
mods.buildcraft.AssemblyTable.addRecipe(cpu2, RFCPU * 2,
  [micro2 * 4, pcb3, Silicon * 8]);

//Tier 3 CPU
recipes.removeShaped(cpu3);
mods.buildcraft.AssemblyTable.addRecipe(cpu3, RFCPU * 4,
  [micro3 * 4, pcb4, Silicon * 16]);

//Tier 1 Microchip
recipes.removeShaped(micro1);
recipes.addShaped(micro1, [
  [iron, null, iron],
  [<minecraft:redstone>, chipset0, <minecraft:redstone>],
  [iron, null, iron]
  ]);

//Tier 2 Microchip
recipes.removeShaped(micro2);
mods.buildcraft.IntegrationTable.addRecipe("micro2", micro2, 10000,
0, micro1, chipset2);

//Tier 3 Microchip
recipes.removeShaped(micro3);
mods.buildcraft.IntegrationTable.addRecipe("micro3", micro3, 100000 * 8,
0, micro2, chipset3);

//Arithmetic
recipes.removeShaped(arith);
recipes.addShaped(arith, [
  [iron, <minecraft:redstone>, iron],
  [trans, chipset0, trans],
  [iron, trans, iron]
  ]);

//Transistor
recipes.remove(trans);
recipes.addShaped(trans, [
  [iron, iron, iron],
  [gold, chipset0, gold],
  [null, redstone, null]
  ]);

//Cards

recipes.removeShaped(cardBase);
recipes.removeShaped(cardRedstone1);
recipes.removeShaped(cardRedstone2);
recipes.removeShaped(cardWireless);
recipes.removeShaped(cardInternet);
recipes.removeShaped(cardLinked);

recipes.addShaped(cardBase * 2, [[<ore:ingotIron>, null], [<ore:ingotIron>, pcb1]]);

mods.buildcraft.IntegrationTable.addRecipe("card2", cardRedstone1, RFCard,
0, cardBase, <minecraft:redstone>);
mods.buildcraft.IntegrationTable.addRecipe("card3", cardRedstone2, RFCard * 2,
0, cardBase, redstone);
mods.buildcraft.IntegrationTable.addRecipe("card6", cardWireless, RFCard * 2,
0, cardNetwork, micro3);
mods.buildcraft.IntegrationTable.addRecipe("card8", cardInternet, RFCard * 4,
0, cardNetwork, FluixCrystal);
mods.buildcraft.IntegrationTable.addRecipe("card9", cardLinked, RFCard * 8,
0, cardNetwork, FluixPearl);

//Motion Sensor
recipes.removeShaped(<OpenComputers:motionSensor>);
recipes.addShaped(<OpenComputers:motionSensor>, [
  [<Railcraft:part.plate:1>, <minecraft:daylight_detector>, <Railcraft:part.plate:1>],
  [<Forestry:thermionicTubes:9>, micro3, <Forestry:thermionicTubes:9>],
  [<Railcraft:part.plate:1>, pcb4, <Railcraft:part.plate:1>]
  ]);

// RAID
recipes.removeShaped(<OpenComputers:raid>);
recipes.addShaped(<OpenComputers:raid>, [
  [<Railcraft:part.plate:1>, dd, <Railcraft:part.plate:1>],
  [pcb2, dd, pcb2],
  [<Railcraft:part.plate:1>, dd, <Railcraft:part.plate:1>]
  ]);

//Assembler
recipes.removeShaped(<OpenComputers:assembler>);
recipes.addShaped(<OpenComputers:assembler>, [
  [<Railcraft:part.plate:1>, <Forestry:factory2:2>, <Railcraft:part.plate:1>],
  [pcb2, micro2, pcb2],
  [<Railcraft:part.plate:1>, <BuildCraft|Silicon:laserBlock>, <Railcraft:part.plate:1>]
  ]);

//Access Point
recipes.remove(<OpenComputers:accessPoint>);
recipes.addShaped(<OpenComputers:accessPoint>, [
  [<Railcraft:part.plate:3>, FluixCrystal, <Railcraft:part.plate:3>],
  [<OpenComputers:cable>, micro3, <OpenComputers:cable>],
  [<Railcraft:part.plate>, pcb4, <Railcraft:part.plate>]
  ]);

//Server Rack
recipes.removeShaped(<OpenComputers:serverRack>);
recipes.addShaped(<OpenComputers:serverRack>, [
  [<Railcraft:part.plate:1>, micro2, <Railcraft:part.plate:1>],
  [pcb3, <minecraft:chest>, <minecraft:iron_bars>],
  [<OpenComputers:switch>, <Railcraft:part.plate:1>, <OpenComputers:powerDistributor>]
  ]);

//Switch
recipes.removeShaped(<OpenComputers:switch>);
recipes.addShaped(<OpenComputers:switch>, [
  [<Railcraft:part.plate>, <minecraft:redstone_torch>, <Railcraft:part.plate>],
  [<OpenComputers:cable>, micro2, <OpenComputers:cable>],
  [<Railcraft:part.plate>, pcb3, <Railcraft:part.plate>]
  ]);

//Power Distributor
recipes.removeShaped(<OpenComputers:powerDistributor>);
recipes.addShaped(<OpenComputers:powerDistributor>, [
  [<Railcraft:part.plate>, <OpenComputers:cable>, <Railcraft:part.plate>],
  [<OpenComputers:cable>, micro1, <OpenComputers:cable>],
  [<Railcraft:part.plate>, pcb2, <Railcraft:part.plate>]
  ]);

//Power Convertor
recipes.removeShaped(<OpenComputers:powerConverter>);
recipes.addShaped(<OpenComputers:powerConverter>, [
  [<Railcraft:part.plate>, <OpenComputers:cable>, <Railcraft:part.plate>],
  [<Railcraft:part.plate:3>, micro1, <Railcraft:part.plate:3>],
  [<Railcraft:part.plate>, pcb2, <Railcraft:part.plate>]
  ]);

//Disk Drive
recipes.removeShaped(<OpenComputers:diskDrive>);
recipes.addShaped(<OpenComputers:diskDrive>, [
  [<Railcraft:part.plate>, micro1, <Railcraft:part.plate>],
  [<ore:craftingPiston>, <Railcraft:part.plate>, null],
  [<Railcraft:part.plate>, pcb2, <Railcraft:part.plate>]
  ]);

//Adapter
recipes.removeShaped(<OpenComputers:adapter>);
recipes.addShaped(<OpenComputers:adapter>, [
  [<Railcraft:part.plate>, <OpenComputers:cable>, <Railcraft:part.plate>],
  [<minecraft:redstone>, micro1, <minecraft:redstone>],
  [<Railcraft:part.plate>, pcb2, <Railcraft:part.plate>]
  ]);

//Charger
recipes.removeShaped(<OpenComputers:charger>);
recipes.addShaped(<OpenComputers:charger>, [
  [<Railcraft:part.plate>, <Railcraft:part.plate:3>, <Railcraft:part.plate>],
  [<OpenComputers:capacitor>, pcb4, <OpenComputers:capacitor>],
  [<Railcraft:part.plate>, <Railcraft:part.plate:3>, <Railcraft:part.plate>]
  ]);

//Screen T1
recipes.removeShaped(<OpenComputers:screen1>);
recipes.addShaped(<OpenComputers:screen1>, [
  [<Railcraft:part.plate>, <ore:ingotIron>, <Railcraft:part.plate>],
  [<minecraft:glowstone_dust>, <Forestry:thermionicTubes:1>, <ore:blockGlass>],
  [<Railcraft:part.plate>, pcb2, <Railcraft:part.plate>]
  ]);

//Screen T2
recipes.removeShaped(<OpenComputers:screen2>);
recipes.addShaped(<OpenComputers:screen2>, [
  [<Railcraft:part.plate:1>, <ore:ingotGold>, <Railcraft:part.plate:1>],
  [<minecraft:glowstone_dust>, <Forestry:thermionicTubes:4>, <ore:blockGlass>],
  [<Railcraft:part.plate:1>, pcb3, <Railcraft:part.plate:1>]
  ]);

//Screen T3
recipes.removeShaped(<OpenComputers:screen3>);
recipes.addShaped(<OpenComputers:screen3>, [
  [<Railcraft:part.plate:1>, <ore:gemDiamond>, <Railcraft:part.plate:1>],
  [<minecraft:glowstone_dust>, <Forestry:thermionicTubes:5>, <ore:blockGlass>],
  [<Railcraft:part.plate:1>, pcb4, <Railcraft:part.plate:1>]
  ]);

//Hologram T1
recipes.removeShaped(<OpenComputers:hologram1>);
recipes.addShaped(<OpenComputers:hologram1>, [
  [micro2, <minecraft:glass>, micro2],
  [pcb4, <Forestry:thermionicTubes:11>, pcb4],
  [<Railcraft:part.plate>, <BuildCraft|Silicon:laserBlock>, <Railcraft:part.plate>]
  ]);

//Hologram T2
recipes.removeShaped(<OpenComputers:hologram2>);
recipes.addShaped(<OpenComputers:hologram2>, [
  [micro3, <minecraft:glass>, micro3],
  [pcb4, <Forestry:thermionicTubes:11>, pcb4],
  [<Railcraft:part.plate:1>, <BuildCraft|Silicon:laserBlock>, <Railcraft:part.plate:1>]
  ]);

//Capacitor
recipes.removeShaped(<OpenComputers:capacitor>);
recipes.addShaped(<OpenComputers:capacitor>, [
  [<Railcraft:part.plate>, micro1, <Railcraft:part.plate>],
  [<minecraft:redstone>, <minecraft:piston>, <minecraft:redstone>],
  [<Railcraft:part.plate>, pcb3, <Railcraft:part.plate>]
  ]);

//Computer Case T1
recipes.removeShaped(<OpenComputers:case1>);
recipes.addShaped(<OpenComputers:case1>, [
  [<Railcraft:part.plate>, pcb2, <Railcraft:part.plate>],
  [pcb2, micro1, pcb2],
  [<Railcraft:part.plate>, <minecraft:chest>, <Railcraft:part.plate>]
  ]);

//Computer Case T2
recipes.removeShaped(<OpenComputers:case2>);
recipes.addShaped(<OpenComputers:case2>, [
  [<Railcraft:part.plate>, micro1, <Railcraft:part.plate>],
  [pcb3, micro2, pcb3],
  [<Railcraft:part.plate>, <minecraft:chest>, <Railcraft:part.plate>]
  ]);

//Computer Case T3
recipes.removeShaped(<OpenComputers:case3>);
recipes.addShaped(<OpenComputers:case3>, [
  [<Railcraft:part.plate>, micro2, <Railcraft:part.plate>],
  [pcb4, micro3, pcb4],
  [<Railcraft:part.plate>, <minecraft:chest>, <Railcraft:part.plate>]
  ]);

//Keyboard
recipes.removeShaped(<OpenComputers:keyboard>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:keyboard>, 5000,
  [<OpenComputers:item:20> * 8]);

//Drone T1
recipes.removeShaped(<OpenComputers:item:83>);
mods.buildcraft.AssemblyTable.addRecipe(Drone1, RFCard * 2,
  [pcb3 * 2, micro2 * 2, micro1 * 2, MCUCase,
  <minecraft:compass>]);

//Server T1, T2, T3
recipes.removeShaped(server1);
recipes.removeShaped(server2);
recipes.removeShaped(server3);
mods.buildcraft.AssemblyTable.addRecipe(server1, RFCard,
  [pcb2 * 2, micro2, <minecraft:chest>]);

mods.buildcraft.AssemblyTable.addRecipe(server2, RFCard * 2,
  [pcb3 * 2, micro3, <minecraft:chest>]);

mods.buildcraft.AssemblyTable.addRecipe(server3, RFCard * 4,
  [pcb4 * 2, micro3 * 2, <minecraft:chest>]);

//LUA BIOS
recipes.removeShaped(<OpenComputers:eeprom:0>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:eeprom:0>, RFMem / 5,
  [micro1, <minecraft:redstone>, <minecraft:paper>]);

//HDD T1, 2 & 3
recipes.removeShaped(HDD1);
mods.buildcraft.AssemblyTable.addRecipe(HDD1, RFHDD,
  [micro1, pcb2, DiskPlatter]);
recipes.removeShaped(HDD2);
mods.buildcraft.AssemblyTable.addRecipe(HDD2, RFHDD * 2,
  [micro2, pcb3, DiskPlatter * 2]);
recipes.removeShaped(HDD3);
mods.buildcraft.AssemblyTable.addRecipe(HDD3, RFHDD * 4,
  [micro3, pcb4, DiskPlatter * 4]);

//Disable Robots

var itemsDisable = [
<OpenComputers:item:49>, <OpenComputers:item:63>,
<OpenComputers:item:64>, <OpenComputers:item:65>,
<OpenComputers:item:57>, <OpenComputers:item:62>,
<OpenComputers:item:58>, <OpenComputers:item:59>,
<OpenComputers:item:54>, <OpenComputers:item:78>,
<OpenComputers:item:55>, <OpenComputers:item:79>,
<OpenComputers:item:56>, <OpenComputers:item:80>,
<OpenComputers:item:14>, <OpenComputers:item:52>,
<OpenComputers:item:35>, <OpenComputers:item:15>,
<OpenComputers:item:34>, <OpenComputers:item:53>,
<OpenComputers:item:76>, <OpenComputers:item:61>,
<OpenComputers:item:77>, <OpenComputers:item:36>,
<OpenComputers:item:67>, <OpenComputers:item:75>,
] as IIngredient[];

for i, item in itemsDisable {
  recipes.remove(item);
}

//Memory T1 - 6 (3.5)
recipes.removeShaped(Memory1);
recipes.removeShaped(Memory2);
recipes.removeShaped(Memory3);
recipes.removeShaped(Memory4);
recipes.removeShaped(Memory5);
recipes.removeShaped(Memory6);
mods.buildcraft.AssemblyTable.addRecipe(Memory1, RFMem * 1,
  [micro1 * 1, pcb1, Silicon * 2]);

mods.buildcraft.AssemblyTable.addRecipe(Memory2, RFMem * 2,
  [micro1 * 2, pcb2, Silicon * 4]);

mods.buildcraft.AssemblyTable.addRecipe(Memory3, RFMem * 3,
  [micro2 * 1, pcb2, Silicon * 8]);

mods.buildcraft.AssemblyTable.addRecipe(Memory4, RFMem * 4,
  [micro2 * 2, pcb3, Silicon * 12]);

mods.buildcraft.AssemblyTable.addRecipe(Memory5, RFMem * 5,
  [micro3 * 1, pcb4, Silicon * 16]);

mods.buildcraft.AssemblyTable.addRecipe(Memory6, RFMem * 6,
  [micro3 * 2, pcb4, Silicon * 24]);


//Microcontroller Case T1 & 2
recipes.removeShaped(MCUCase);
recipes.removeShaped(MCUCase2);

mods.buildcraft.AssemblyTable.addRecipe(MCUCase, RFCard,
  [<OpenComputers:case1>]);

mods.buildcraft.AssemblyTable.addRecipe(MCUCase2, RFCard * 2,
  [<OpenComputers:case2>]);

//Computer Cable
recipes.removeShaped(<OpenComputers:cable>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:cable> * 8, 5000,
  [<minecraft:gold_ingot>, <minecraft:stone> * 4]);

mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:cable> * 2, 5000,
  [<ore:ingotCopper>, <minecraft:stone> * 4]);

//GPU T1
recipes.removeShaped(GPU1);
mods.buildcraft.AssemblyTable.addRecipe(GPU1, RFCard * 2,
  [micro1, cardBase, <ore:dyeWhite>]);
mods.buildcraft.AssemblyTable.addRecipe(GPU1, RFCard * 2,
  [micro1, cardBase, <ore:dyeBlack>]);

//GPU T2
recipes.removeShaped(GPU2);
mods.buildcraft.AssemblyTable.addRecipe(GPU2, RFCard * 4,
  [micro2, cardBase, <ore:dyeRed>]);

mods.buildcraft.AssemblyTable.addRecipe(GPU2, RFCard * 4,
  [micro2, cardBase, <ore:dyeGreen>]);

mods.buildcraft.AssemblyTable.addRecipe(GPU2, RFCard * 4,
  [micro2, cardBase, <ore:dyeBlue>]);

//GPU T3
recipes.removeShaped(GPU3);
mods.buildcraft.AssemblyTable.addRecipe(GPU3, RFCard * 8,
  [micro3, cardBase, <ore:dyeRed>]);

mods.buildcraft.AssemblyTable.addRecipe(GPU3, RFCard * 8,
  [micro3, cardBase, <ore:dyeGreen>]);

mods.buildcraft.AssemblyTable.addRecipe(GPU3, RFCard * 8,
  [micro3, cardBase, <ore:dyeBlue>]);
