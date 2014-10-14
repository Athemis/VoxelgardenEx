mobapi:register_mob("mobs_simple:rat", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "mobs_rat.x",
	textures = {"mobs_rat.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "mobs_simple:rat")
			self.object:remove()
		end
	end,
})
mobapi:register_spawn("mobs_simple:rat", {"default:dirt_with_grass", "default:stone"}, 20, -1, 7000, 1, 31000)

minetest.register_craftitem("mobs_simple:rat_cooked", {
	description = "Cooked Rat",
	inventory_image = "mobs_cooked_rat.png",
	
	on_use = minetest.item_eat(3),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs_simple:rat_cooked",
	recipe = "mobs_simple:rat",
	cooktime = 5,
})

minetest.register_craftitem("mobs_simple:rat", {
	description = "Rat",
	inventory_image = "mobs_rat_inventory.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "mobs_simple:rat")
			itemstack:take_item()
		end
		return itemstack
	end,
})