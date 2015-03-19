//RailCraft Changes

import minetweaker.item.IIngredient;

var BlastFurnace = <Railcraft:tile.railcraft.machine.alpha:12>;
var Smoker = <Railcraft:tile.railcraft.machine.alpha:5>;
var DetectorTrain = <Railcraft:tile.railcraft.detector:12>;
var AbyssalBrick = <Railcraft:tile.railcraft.brick.abyssal>;

var itemsDisable = [
  BlastFurnace, Smoker, DetectorTrain
] as IIngredient[];

for i, item in itemsDisable {
  recipes.remove(item);
}

recipes.addShaped(DetectorTrain, [
  [AbyssalBrick, AbyssalBrick, AbyssalBrick],
  [AbyssalBrick, <minecraft:stone_pressure_plate>, AbyssalBrick],
  [AbyssalBrick, AbyssalBrick, AbyssalBrick]
]);

recipes.addShaped(BlastFurnace * 2, [
  [<minecraft:obsidian>, <Railcraft:part.plate>, <minecraft:obsidian>],
  [<Railcraft:part.plate>, null, <Railcraft:part.plate>],
  [<minecraft:obsidian>, <Railcraft:part.plate>, <minecraft:obsidian>]
]);

recipes.addShaped(Smoker, [
  [null, <minecraft:torch>, null],
  [<minecraft:redstone>, <minecraft:cauldron>, <minecraft:redstone>]
]);

recipes.remove(<Railcraft:part.gear:0>);
recipes.remove(<Railcraft:part.gear:1>);
recipes.remove(<Railcraft:part.gear:2>);

<ore:gearIron>.remove(<Railcraft:part.gear:1>);

recipes.addShaped(<Railcraft:part.gear:2>, [
  [null, <ore:ingotSteel>, null],
  [<ore:ingotSteel>, <ore:gearIron>, <ore:ingotSteel>],
  [null, <ore:ingotSteel>, null]
]);

recipes.addShaped(<Railcraft:part.gear:0>, [
  [null, <ore:nuggetGold>, null],
  [<ore:nuggetGold>, <ore:gearIron>, <ore:nuggetGold>],
  [null, <ore:nuggetGold>, null]
]);

mods.railcraft.RockCrusher.removeRecipe(<Railcraft:tile.railcraft.machine.alpha:7>);
mods.railcraft.RockCrusher.removeRecipe(<Railcraft:tile.railcraft.machine.alpha:12>);
mods.railcraft.RockCrusher.removeRecipe(<Railcraft:tile.railcraft.machine.alpha>);
mods.railcraft.RockCrusher.removeRecipe(<Railcraft:tile.railcraft.machine.alpha:2>);
