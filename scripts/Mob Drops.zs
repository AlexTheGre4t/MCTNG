//Mob Recipe Changes

mods.tconstruct.Casting.addBasinRecipe(<Railcraft:tile.railcraft.brick.bloodstained:2>, <liquid:blood> * 16, <minecraft:stone>, false, 20);

recipes.removeShaped(<TConstruct:heartCanister:0>);
recipes.addShaped(<TConstruct:heartCanister:0>, [
  [null, <ore:ingotTin>, null],
  [<ore:ingotTin>, <ore:ingotSilver>, <ore:ingotTin>],
  [null, <ore:ingotTin>, null]
  ]);

val pork = <minecraft:porkchop>;
recipes.removeShaped(<TConstruct:MeatBlock>);
recipes.addShaped(<TConstruct:MeatBlock>, [
  [<minecraft:porkchop>, <minecraft:porkchop>, <minecraft:porkchop>],
  [<minecraft:porkchop>, <minecraft:porkchop>, <minecraft:porkchop>],
  [<minecraft:porkchop>, <minecraft:porkchop>, <minecraft:porkchop>]
  ]);

recipes.removeShaped(<Forestry:adventurerBag>);
recipes.addShaped(<Forestry:adventurerBag>, [
  [<minecraft:string>, <minecraft:wool:*>, <minecraft:string>],
  [<minecraft:lead>, <minecraft:chest>, <minecraft:lead>],
  [<minecraft:string>, <minecraft:wool>, <minecraft:string>]
  ]);

recipes.removeShaped(<Forestry:vialCatalyst>);
recipes.addShaped(<Forestry:vialCatalyst>, [
  [<Forestry:waxCapsule>, <Forestry:waxCapsule>, <Forestry:waxCapsule>],
  [<Forestry:fertilizerCompound>, <ore:ingotTin>, <Forestry:fertilizerCompound>],
  [null, null, null]
  ]);

recipes.removeShapeless(<harvestcraft:stockItem>);
recipes.addShaped(<harvestcraft:stockItem>, [
  [<harvestcraft:potItem>, <minecraft:wheat_seeds>, null],
  [<harvestcraft:mixingbowlItem>, null, null],
  [null, null, null]
  ]);

recipes.removeShapeless(<harvestcraft:spidereyesoupItem>);
recipes.removeShapeless(<minecraft:fermented_spider_eye>);
