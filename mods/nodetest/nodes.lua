-- mods/default/nodes.lua

minetest.register_node("nodetest:desert_sandstone", {
	description = "Desert Sandstone",
	tiles = {"nodetest_desert_sandstone.png"},
	is_ground_content = true,
	groups = {crumbly=2, cracky=2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias("default:desertsandstone", "nodetest:desert_sandstone")
minetest.register_alias("default:desert_sandstone", "nodetest:desert_sandstone")

minetest.register_node("nodetest:rock", {
	description = "Rock",
	tiles = {"nodetest_rock.png"},
	inventory_image = "nodetest_rock_item.png",
	wield_image = "nodetest_rock_item.png",
	is_ground_content = true,
	groups = {cracky=3, stone=2, stone_hard=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nodetest:papyrus_roots", {
	description = "Papyrus Roots",
	tiles = {"nodetest_papyrus_roots.png"},
	paramtype = "light",
	is_ground_content = true,
	liquids_pointable = true,
	after_dig_node = function(pos, node, metadata, digger)
			node.name = "default:papyrus"
			default.dig_up(pos, node, digger)
		end,
	groups = {snappy=3, flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_alias("default:papyrus_roots", "nodetest:papyrus_roots")

--
-- Horizontal trees
--

minetest.register_node("nodetest:tree_horizontal", {
	description = "Tree",
	tiles = {
		"default_tree.png", 
		"default_tree.png",
		"default_tree.png^[transformR90", 
		"default_tree.png^[transformR90", 
		"default_tree_top.png", 
		"default_tree_top.png" 
	},
	paramtype2 = "facedir",
	groups = {tree_horizontal=1, choppy=2, flammable=1},
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		default.rotate_horizontal(pos)
	end,
})
minetest.register_alias("default:tree_horizontal", "nodetest:tree_horizontal")

minetest.register_node("nodetest:jungletree_horizontal", {
	description = "Jungle Tree",
		tiles = {
		"default_jungletree.png", 
		"default_jungletree.png",
		"default_jungletree.png^[transformR90", 
		"default_jungletree.png^[transformR90", 
		"default_jungletree_top.png", 
		"default_jungletree_top.png" 
	},
	paramtype2 = "facedir",
	groups = {tree_horizontal=1, choppy=2, flammable=1},
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		default.rotate_horizontal(pos)
	end,
})
minetest.register_alias("default:jungletree_horizontal", "nodetest:jungletree_horizontal")

minetest.register_node("nodetest:seedling", {
	description = "Seedling",
	drawtype = "torchlike",
	tiles = {"nodetest_seedling.png"},
	inventory_image = "nodetest_seedling.png",
	wield_image = "nodetest_seedling.png",
	paramtype = "light",
	waving = 1,
	walkable = false,
	buildable_to = true,
	is_ground_content = true,
	groups = {snappy=3, dig_immediate=3, flammable=3, attached_node=1, dissolve=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
	},
})

minetest.register_node("nodetest:bonfire", {
	description = "Bonfire",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {
		{name="nodetest_bonfire_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	inventory_image = "nodetest_bonfire.png",
	wield_image = "nodetest_bonfire.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	drop = "default:coal_lump",
	damage_per_second = 1,
	light_source = LIGHT_MAX-1,
	groups = {snappy=3, attached_node=1},
	sounds = default.node_sound_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 0, 0.375},
	},
})
