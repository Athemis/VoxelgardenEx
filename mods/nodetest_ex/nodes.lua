minetest.register_node("nodetest_ex:stone_with_tin", {
	description = "Tin Ore",
	tiles = {"default_stone.png^nodetest_ex_mineral_tin.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'default:tin_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nodetest_ex:tinblock", {
	description = "Tin Block",
	tiles = {"nodetest_ex_tin_block.png"},
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults(),
})