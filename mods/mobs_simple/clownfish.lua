mobapi:register_mob("mobs_simple:clownfish", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "mobs_clownfish.b3d",
	textures = {"mobs_clownfish.png"},
	makes_footstep_sound = false,
	walk_velocity = 2,
	armor = 2,
	drops = {},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	air_damage = 1,
	light_damage = 0,
	
	animation = {
		speed_normal = 15,
		stand_start = 1,
		stand_end = 80,
		walk_start = 81,
		walk_end = 155,
	},
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "mobs_simple:clownfish")
			self.object:remove()
		end
	end,
})
mobapi:register_spawn("mobs_simple:clownfish", {"default:water_flowing","default:water_source"}, {"default:water_flowing","default:water_source"}, 20, -1, 1, 3, 0)

minetest.register_craftitem("mobs_simple:clownfish", {
	description = "Clownfish",
	inventory_image = "mobs_clownfish_inventory.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "mobs_simple:clownfish")
			itemstack:take_item()
		end
		return itemstack
	end,
})