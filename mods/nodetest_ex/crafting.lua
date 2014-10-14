minetest.register_craft({
	output = 'nodetest_ex:tin_ingot 9',
	recipe = {
		{'nodetest_ex:tinblock'},
	}
})

minetest.register_craft({
	output = 'nodetest_ex:bronze_ingot 9',
	recipe = {
		{'nodetest_ex:bronzeblock'},
	}
})

minetest.register_craft({
	output = 'default:tinblock',
	recipe = {
		{'nodetest_ex:tin_ingot', 'nodetest_ex:tin_ingot', 'nodetest_ex:tin_ingot'},
		{'nodetest_ex:tin_ingot', 'nodetest_ex:tin_ingot', 'nodetest_ex:tin_ingot'},
		{'nodetest_ex:tin_ingot', 'nodetest_ex:tin_ingot', 'nodetest_ex:tin_ingot'},
	}
})

minetest.register_craft({
	output = 'default:bronzeblock',
	recipe = {
		{'nodetest_ex:bronze_ingot', 'nodetest_ex:bronze_ingot', 'nodetest_ex:bronze_ingot'},
		{'nodetest_ex:bronze_ingot', 'nodetest_ex:bronze_ingot', 'nodetest_ex:bronze_ingot'},
		{'nodetest_ex:bronze_ingot', 'nodetest_ex:bronze_ingot', 'nodetest_ex:bronze_ingot'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "nodetest_ex:tin_ingot",
	recipe = "nodetest_ex:tin_lump",
})

minetest.register_craft({
	type = "shapeless",
	output = "nodetest_ex:bronze_ingot 3",
	recipe = {
		"nodetest_ex:tin_ingot",
		"default:copper_ingot",
		"default:copper_ingot",
	}
})