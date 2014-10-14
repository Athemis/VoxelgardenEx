minetest.register_ore({
	ore_type       = "scatter",
	ore            = "nodetest_ex:stone_with_tin",
	wherein        = "default:stone",
	clust_scarcity = 14*14*14,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -63,
	height_max     = 2,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "nodetest_ex:stone_with_tin",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -1024,
	height_max     = -64,
	flags          = "absheight",
})