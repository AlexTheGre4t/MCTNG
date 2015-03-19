//HarvestCraft Tweaks

// CREDIT: Vexatos for removing bees

import minetweaker.item.IIngredient;

//HarvestCraft items
var Apiary = <harvestcraft:apiary>;
var Beehive = <harvestcraft:beehive>;
var Waxcomb = <harvestcraft:waxcombItem>;
var Honeycomb = <harvestcraft:honeycombItem>;
var Beeswax = <harvestcraft:beeswaxItem>;
var BeeQueen = <harvestcraft:queenbeeItem>;
var Grub = <harvestcraft:grubItem>;
var Jelly = <harvestcraft:royaljellyItem>;
var Honey = <harvestcraft:honeyItem>;

var itemsDisable = [
<harvestcraft:market>, // Market
<harvestcraft:epicbaconItem>,
Apiary, // Bee stuff
Beehive,
Beeswax,
BeeQueen,
Grub,
Jelly,
Waxcomb,
Honeycomb,
Honey
] as IIngredient[];

for i, item in itemsDisable {
recipes.remove(item);
//mods.asietweaks.CreativeTab.hide(item);
}

// No more epic bacon
<ore:foodEpicbacon>.remove(<harvestcraft:epicbaconItem>);

//Hardcoded Honeycomb recipe
recipes.removeShapeless(<harvestcraft:honeycombchocolatebarItem>);
recipes.addShapeless(<harvestcraft:honeycombchocolatebarItem>,
[<ore:toolSaucepan>, <ore:foodChocolatebar>, <ore:materialHoneycomb>]);

//Honey
<ore:dropHoney>.remove(Honey);
<ore:foodHoneydrop>.remove(Honey);
<ore:honeyEqualssugar>.add(<Forestry:honeyDrop>);
<ore:honeyEqualssugar>.remove(Honey);

//Honeycombs
var oreHoneycomb = <ore:materialHoneycomb>;
oreHoneycomb.add(<Forestry:beeCombs:0>);
oreHoneycomb.remove(Honeycomb);

//Beeswax
var oreHCWax = <ore:materialPressedwax>;
oreHCWax.add(<Forestry:beeswax>);oreHCWax.remove(Beeswax);
