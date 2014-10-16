
-- Animals 

dofile(minetest.get_modpath("mobs_simple").."/chicken.lua")
dofile(minetest.get_modpath("mobs_simple").."/rat.lua")
dofile(minetest.get_modpath("mobs_simple").."/sheep.lua")
dofile(minetest.get_modpath("mobs_simple").."/clownfish.lua")
dofile(minetest.get_modpath("mobs_simple").."/fish_blue_white.lua")

-- Monsters

dofile(minetest.get_modpath("mobs_simple").."/dirt_monster.lua")
dofile(minetest.get_modpath("mobs_simple").."/dungeon_master.lua")
dofile(minetest.get_modpath("mobs_simple").."/oerkki.lua")
dofile(minetest.get_modpath("mobs_simple").."/sand_monster.lua")
dofile(minetest.get_modpath("mobs_simple").."/stone_monster.lua")
dofile(minetest.get_modpath("mobs_simple").."/tree_monster.lua")

minetest.register_craftitem("mobs_simple:meat_raw", {
	description = "Raw Meat",
	inventory_image = "mobs_meat_raw.png",
})

minetest.register_craftitem("mobs_simple:meat", {
	description = "Meat",
	inventory_image = "mobs_meat.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs_simple:meat",
	recipe = "mobs_simple:meat_raw",
	cooktime = 5,
})


if minetest.setting_get("log_mods") then
	minetest.log("action", "mobs loaded")
end
