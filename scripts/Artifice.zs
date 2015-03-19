//Artifice Tweaks

recipes.remove(<Artifice:tile.artifice.scaffold:0>);
recipes.remove(<Artifice:tile.artifice.scaffold:1>);
recipes.remove(<Artifice:tile.artifice.scaffold:2>);
recipes.remove(<Artifice:tile.artifice.scaffold:3>);
recipes.remove(<Artifice:tile.artifice.reinforced:0>);
recipes.remove(<Artifice:tile.artifice.reinforced:1>);
recipes.remove(<Artifice:tile.artifice.reinforced:2>);
recipes.remove(<Artifice:tile.artifice.reinforced:3>);
recipes.remove(<Artifice:tile.artifice.glasswall:0>);
recipes.remove(<Artifice:tile.artifice.glasswall:1>);
recipes.remove(<Artifice:tile.artifice.glasswall:2>);
recipes.remove(<Artifice:tile.artifice.glasswall:3>);

recipes.addShaped(<Artifice:tile.artifice.scaffold:0> * 4, [
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [<ore:stickWood>, null, <ore:stickWood>],
  [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped(<Artifice:tile.artifice.scaffold:1> * 4, [
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [<ore:stickWood>, <ore:ingotIron>, <ore:stickWood>],
  [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped(<Artifice:tile.artifice.scaffold:2> * 4, [
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
  [<ore:stickWood>, null, <ore:stickWood>],
  [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped(<Artifice:tile.artifice.scaffold:3> * 4, [
  [<ore:ingotIron>, <ore:ingotSteel>, <ore:ingotSteel>],
  [<ore:stickWood>, null, <ore:stickWood>],
  [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped(<Artifice:tile.artifice.reinforced:0> * 4, [
  [<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>],
  [<minecraft:stonebrick:*>, <minecraft:clay_ball>, <minecraft:stonebrick:*>],
  [<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>]
]);

recipes.addShaped(<Artifice:tile.artifice.reinforced:1> * 4, [
  [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
  [<minecraft:brick>, <minecraft:clay_ball>, <minecraft:brick>],
  [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]
]);

recipes.addShaped(<Artifice:tile.artifice.reinforced:2> * 4, [
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
  [<minecraft:obsidian>, <minecraft:clay_ball>, <minecraft:obsidian>],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
]);

recipes.addShaped(<Artifice:tile.artifice.reinforced:3> * 4, [
  [<minecraft:obsidian>, <ore:ingotSteel>, <minecraft:obsidian>],
  [<ore:ingotSteel>, <minecraft:clay_ball>, <ore:ingotSteel>],
  [<minecraft:obsidian>, <ore:ingotSteel>, <minecraft:obsidian>]
]);

recipes.addShaped(<Artifice:tile.artifice.glasswall:0> * 4, [
  [<minecraft:stonebrick:*>, <ore:blockGlass>, <minecraft:stonebrick:*>],
  [<ore:blockGlass>, <minecraft:clay_ball>, <ore:blockGlass>],
  [<minecraft:stonebrick:*>, <ore:blockGlass>, <minecraft:stonebrick:*>]
]);

recipes.addShaped(<Artifice:tile.artifice.glasswall:1> * 4, [
  [<minecraft:brick>, <ore:blockGlass>, <minecraft:brick>],
  [<ore:blockGlass>, <minecraft:clay_ball>, <ore:blockGlass>],
  [<minecraft:brick>, <ore:blockGlass>, <minecraft:brick>]
]);

recipes.addShaped(<Artifice:tile.artifice.glasswall:2> * 4, [
  [<minecraft:obsidian>, <ore:blockGlass>, <minecraft:obsidian>],
  [<ore:blockGlass>, <minecraft:clay_ball>, <ore:blockGlass>],
  [<minecraft:obsidian>, <ore:blockGlass>, <minecraft:obsidian>]
]);

recipes.addShaped(<Artifice:tile.artifice.glasswall:3> * 4, [
  [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>],
  [<ore:blockGlass>, <minecraft:clay_ball>, <ore:blockGlass>],
  [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]
]);
