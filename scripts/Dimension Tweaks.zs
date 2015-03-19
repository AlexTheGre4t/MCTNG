// Removed Dimension Tweaks
furnace.addRecipe(<minecraft:glowstone_dust>, <minecraft:redstone>);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:netherrack>, <liquid:blood>, null, true, 20);
mods.tconstruct.Casting.addTableRecipe(<minecraft:nether_wart>, <liquid:blood>, <minecraft:wheat_seeds>, true, 20);

<ore:gemQuartz>.remove(<minecraft:quartz>);
<ore:blockQuartz>.remove(<minecraft:quartz_block>);
<ore:crystalNetherQuartz>.remove(<minecraft:quartz>);
<ore:dustNetherQuartz>.remove(<appliedenergistics2:item.ItemMultiMaterial:3>);
<ore:gemQuartz>.add(<appliedenergistics2:item.ItemMultiMaterial:0>);
<ore:blockQuartz>.add(<appliedenergistics2:tile.BlockQuartz>);
<ore:crystalNetherQuartz>.add(<appliedenergistics2:item.ItemMultiMaterial:0>);
<ore:dustNetherQuartz>.add(<appliedenergistics2:item.ItemMultiMaterial:2>);

recipes.remove(<chisel:laboratoryblock>);
recipes.addShaped(<chisel:laboratoryblock> * 8, [
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
  [<minecraft:stone>, <appliedenergistics2:tile.BlockQuartz>, <minecraft:stone>],
  [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
  ]);

recipes.remove(<Forestry:alveary:6>);
recipes.addShaped(<Forestry:alveary:6>, [
  [<ore:gemQuartz>, null, <ore:gemQuartz>],
  [<ore:gemQuartz>, <Forestry:alveary:*>, <ore:gemQuartz>],
  [<ore:gemQuartz>, null, <ore:gemQuartz>]
]);

recipes.addShaped(<ExtrabiomesXL:terrain_blocks1>, [
  [<minecraft:sand:1>, <minecraft:sand:1>],
  [<minecraft:sand:1>, <minecraft:sand:1>]
  ]);
