//BuildCraft
import minetweaker.item.IIngredient;

var IronPickaxe = <TConstruct:pickaxe>.withTag({
  InfiTool: {
    Head: 2,
    Damage: 0
  }
  });

var PipeSealant = <BuildCraft|Transport:pipeWaterproof>;
var pcb1 = <Forestry:chipsets:0>;
var pcb2 = <Forestry:chipsets:1>;
var pcb3 = <Forestry:chipsets:2>;
var pcb4 = <Forestry:chipsets:3>;
var micro1 = <BuildCraft|Silicon:redstoneChipset:1>;
var micro2 = <BuildCraft|Silicon:redstoneChipset:2>;
var micro3 = <BuildCraft|Silicon:redstoneChipset:3>;
var micro4 = <BuildCraft|Silicon:redstoneChipset:4>;
var micro5 = <BuildCraft|Silicon:redstoneChipset:5>;
var CPU1 = <OpenComputers:item:29>;
var CPU2 = <OpenComputers:item:42>;
var CPU3 = <OpenComputers:item:43>;
var Memory1 = <OpenComputers:item:1>;
var Memory2 = <OpenComputers:item:50>;
var Memory3 = <OpenComputers:item:2>;
var Memory4 = <OpenComputers:item:3>;
var Memory5 = <OpenComputers:item:38>;
var Memory6 = <OpenComputers:item:39>;
var marker = <BuildCraft|Builders:markerBlock>;

var itemsDisable = [
<BuildCraft|Silicon:redstoneChipset:4>,
<BuildCraft|Builders:fillerBlock>,
<BuildCraft|Builders:builderBlock>,
<BuildCraft|Builders:architectBlock>,
<BuildCraft|Builders:libraryBlock>,
<BuildCraft|Silicon:requester>,
<BuildCraft|Silicon:zonePlan>,
<BuildCraft|Factory:pumpBlock>,
<BuildCraft|Factory:miningWellBlock>,
<BuildCraft|Factory:blockHopper>,
<BuildCraft|Factory:machineBlock>
] as IIngredient[];

for i, item in itemsDisable {
  recipes.remove(item);
}

recipes.addShaped(<BuildCraft|Silicon:requester>, [
  [<Railcraft:part.plate>, <minecraft:piston>, <Railcraft:part.plate>],
  [<ore:gearIron>, <minecraft:chest>, <ore:gearIron>],
  [<Railcraft:part.plate>, pcb3, <Railcraft:part.plate>]
  ]);

recipes.addShaped(<BuildCraft|Silicon:zonePlan>, [
  [<Railcraft:part.plate:1>, <minecraft:map>, <Railcraft:part.plate:1>],
  [<Forestry:thermionicTubes:5>, micro3, <Forestry:thermionicTubes:5>],
  [<Railcraft:part.plate:1>, pcb4, <Railcraft:part.plate:1>]
  ]);

recipes.addShaped(<BuildCraft|Builders:fillerBlock>, [
  [marker, <minecraft:piston>, marker],
  [<ore:gearGold>, <minecraft:chest>, <ore:gearGold>],
  [<minecraft:crafting_table>, pcb4, <minecraft:crafting_table>]
  ]);

recipes.addShaped(<BuildCraft|Builders:builderBlock>, [
  [marker, <minecraft:piston>, marker],
  [<ore:gearDiamond>, <minecraft:chest>, <ore:gearDiamond>],
  [<minecraft:crafting_table>, pcb4, <minecraft:crafting_table>]
  ]);

recipes.addShaped(<BuildCraft|Builders:architectBlock>, [
  [marker, <minecraft:piston>, marker],
  [<ore:gearDiamond>, <BuildCraft|Builders:blueprintItem>, <ore:gearDiamond>],
  [<minecraft:crafting_table>, pcb4, <minecraft:crafting_table>]
  ]);

recipes.addShaped(<BuildCraft|Factory:pumpBlock>, [
  [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <ore:gearIron>, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <BuildCraft|Factory:tankBlock>, <minecraft:iron_ingot>]
  ]);

recipes.addShaped(<BuildCraft|Factory:machineBlock>, [
  [<ore:gearIron>, <minecraft:redstone>, <ore:gearIron>],
  [<ore:gearGold>, <ore:gearDiamond>, <ore:gearGold>],
  [<ore:gearDiamond>, IronPickaxe, <ore:gearDiamond>]
  ]);

recipes.addShaped(<BuildCraft|Factory:miningWellBlock>, [
  [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <ore:gearIron>, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, IronPickaxe, <minecraft:iron_ingot>]
]);

recipes.addShaped(<BuildCraft|Factory:blockHopper>, [
  [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <minecraft:chest>, <minecraft:iron_ingot>],
  [null, <minecraft:iron_ingot>, null]
]);

recipes.addShapeless(<BuildCraft|Builders:libraryBlock>, [
  <BuildCraft|Builders:blueprintItem>, <minecraft:bookshelf>,
  <ore:gearIron>, <minecraft:redstone>
]);
