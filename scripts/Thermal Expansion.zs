//Editing Thermal Expansion Stuff
import mods.nei.NEI;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

var ironAxe = <TConstruct:hatchet>.withTag({
  InfiTool: {
    Head: 2,
    Damage: 0
  }
  });

var frame = <ThermalExpansion:Frame:0>;
var iron = <ore:ingotIron>;
var gold = <ore:ingotGold>;
var copper = <ore:ingotCopper>;
var tin = <ore:ingotTin>;
var diamond = <ore:gemDiamond>;
var emerald = <minecraft:emerald>;
var redstone = <minecraft:redstone>;
var glowstone = <minecraft:glowstone_dust>;
var glass = <ore:blockGlass>;


//Remove everything "Resonant"
recipes.removeShaped(<ThermalExpansion:Cell:4>);
recipes.removeShaped(<ThermalExpansion:Frame:8>);
recipes.removeShaped(<ThermalExpansion:Frame:9>);
recipes.removeShaped(<ThermalExpansion:Strongbox:4>);
recipes.removeShaped(<ThermalExpansion:satchel:4>);
recipes.removeShaped(<ThermalExpansion:Tank:4>);
recipes.removeShaped(<ThermalExpansion:capacitor:5>);
recipes.removeShaped(<ThermalExpansion:Cell:4>);

//Remove all but basic machine frame
recipes.removeShaped(<ThermalExpansion:Frame:1>);
recipes.removeShaped(<ThermalExpansion:Frame:2>);
recipes.removeShaped(<ThermalExpansion:Frame:3>);

//Remove all machine recipes to be re-enabled with a unified recipes, no tiers.
recipes.remove(<ThermalExpansion:Machine:*>);

//Redstone Furnace
recipes.addShaped(<ThermalExpansion:Machine:0>, [
  [null, redstone, null],
  [<minecraft:brick_block>, frame, <minecraft:brick_block>],
  [<ore:gearCopper>, <ThermalExpansion:material:1>, <ore:gearCopper>]
  ]);

//Machine Frame
recipes.removeShaped(frame);
recipes.addShaped(frame, [
  [iron, glass, iron],
  [glass, <Forestry:chipsets:3>, glass],
  [iron, glass, iron]
  ]);

//Pulverizer
recipes.addShaped(<ThermalExpansion:Machine:1>, [
  [null, <minecraft:piston>, null],
  [<minecraft:flint>, frame, <minecraft:flint>],
  [<ore:gearCopper>, <ThermalExpansion:material:1>, <ore:gearCopper>]
  ]);

//Sawmill
recipes.addShaped(<ThermalExpansion:Machine:2>, [
  [null, ironAxe, null],
  [<ore:plankWood>, frame, <ore:plankWood>],
  [<ore:gearCopper>, <ThermalExpansion:material:1>, <ore:gearCopper>]
  ]);

//Induction Smelter
recipes.addShaped(<ThermalExpansion:Machine:3>, [
  [null, <minecraft:bucket>, null],
  [<ore:ingotInvar>, frame, <ore:ingotInvar>],
  [<ore:gearInvar>, <ThermalExpansion:material:1>, <ore:gearInvar>]
  ]);

//Magma Crucible
recipes.addShaped(<ThermalExpansion:Machine:4>, [
  [null, <bcadditions:KEBT1>, null],
  [<bcadditions:heatPlating>, frame, <bcadditions:heatPlating>],
  [<ore:gearInvar>, <ThermalExpansion:material:1>, <ore:gearInvar>]
  ]);

//Fluid Transposer
recipes.addShaped(<ThermalExpansion:Machine:5>, [
  [null, <minecraft:bucket>, null],
  [glass, frame, glass],
  [<ore:gearCopper>, <ThermalExpansion:material:1>, <ore:gearCopper>]
  ]);

//Remove all other machines from NEI.

var DisableOtherMachines = [
<ThermalExpansion:Machine:6>,
<ThermalExpansion:Machine:8>,
<ThermalExpansion:Machine:9>,
<ThermalExpansion:Machine:10>,
<ThermalExpansion:Machine:11>,

] as IItemStack[];
for i, item in DisableOtherMachines {
	NEI.hide(item);
}

//Remove everything else :D
var DisableSomeStuff = [
<ThermalExpansion:Cell:1>,
<ThermalExpansion:Cell:2>,
<ThermalExpansion:Cell:3>,
<ThermalExpansion:Cell:4>,
<ThermalExpansion:Dynamo:0>,
<ThermalExpansion:Dynamo:1>,
<ThermalExpansion:Dynamo:2>,
<ThermalExpansion:Dynamo:3>,
<ThermalExpansion:Dynamo:4>,
<ThermalExpansion:Plate:0>,
<ThermalExpansion:Plate:1>,
<ThermalExpansion:Plate:2>,
<ThermalExpansion:Plate:3>,
<ThermalExpansion:augment:*>,
<ThermalExpansion:capacitor:0>,
<ThermalExpansion:capacitor:1>,
<ThermalExpansion:capacitor:2>,
<ThermalExpansion:capacitor:3>,
<ThermalExpansion:capacitor:4>,
<ThermalExpansion:capacitor:5>,
<ThermalExpansion:satchel:1>,
<ThermalExpansion:satchel:2>,
<ThermalExpansion:satchel:3>,
<ThermalExpansion:satchel:4>,

] as IItemStack[];
for i, item in DisableSomeStuff {
  recipes.remove(item);
  NEI.hide(item);
}

//Pneumatic Servo
recipes.removeShaped(<ThermalExpansion:material:0>);
recipes.addShaped(<ThermalExpansion:material:0>, [
  [null, redstone, null],
  [redstone, <Forestry:chipsets:2>, redstone],
  [null, redstone, null]
  ]);
