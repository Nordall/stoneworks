-- Walls:
-- Node will be called stoneworks:thin_wall_<subname>

function stoneworks.register_thin_wall(subname, groups, images, sounds,
	recipeitem)
	groups.thin_wall = 1
	minetest.register_node(":stoneworks:thin_wall_high" .. subname, {
		description = "Stoneworks Thin Wall High" .. subname,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		legacy_facedir_simple = true,
		groups = groups,
		is_ground_content = false,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
			}
		}
	})

	minetest.register_craft({
		type = "shape",
		output = "stoneworks:thin_wall_high" .. subname .." 4",
		recipe = {
			{"", "", "stoneworks:hammer"},
			{recipeitem, recipeitem, recipeitem},
			{"", "", ""},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})


	minetest.register_node(":stoneworks:thin_wall_low" .. subname, {
		description = "Stoneworks Thin Wall Low" .. subname,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		legacy_facedir_simple = true,
		groups = groups,
		is_ground_content = false,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.1875, 0.5, 0.125, 0.1875},
			}
		}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_low" .. subname .. " 2",
		recipe = {"stoneworks:thin_wall_high" .. subname},
	})

	minetest.register_node(":stoneworks:thin_wall_high_corner" .. subname, {
		description = "Stoneworks Thin Wall High Corner " .. subname,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		legacy_facedir_simple = true,
		groups = groups,
		is_ground_content = false,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.1875, 0.1875, 0.5, 0.1875},
				{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.1875},
			}
		}
	})

	minetest.register_craft({
		type = "shape",
		output = "stoneworks:thin_wall_high_corner" .. subname .." 4",
		recipe = {
			{"", "", "stoneworks:hammer"},
			{recipeitem, recipeitem, recipeitem},
			{"", "", ""},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})


minetest.register_node(":stoneworks:thin_wall_low_corner" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.1875, 0.5, 0.125, 0.1875},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.125, 0.5},
		}
	}
})
--TODO
minetest.register_node(":stoneworks:thin_wall_high_T" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.1875},
		}
	}
})

minetest.register_node(":stoneworks:thin_wall_high_low_T" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
			{-0.1875, -0.5, -0.5, 0.1875, 0.125, 0.1875},
		}
	}
})

minetest.register_node(":stoneworks:thin_wall_low_T" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.125, 0.1875},
			{-0.5, -0.5, -0.1875, 0.5, 0.125, 0.1875},
		}
	}
})

minetest.register_node(":stoneworks:thin_wall_high_quad" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875},
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5},
		}
	}
})

minetest.register_node(":stoneworks:thin_wall_high_low_quad" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.125, 0.1875},
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5},
		}
	}
})

minetest.register_node(":stoneworks:thin_wall_low_quad" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.125, 0.5},
			{-0.5, -0.5, -0.1875, 0.5, 0.125, 0.1875},
		}
	}
})

minetest.register_node(":stoneworks:thin_wall_high_arch" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.0625, -0.1875, 0.5, 0.5, 0.1875},
			{0.0625, -0.125, -0.1875, 0.5, -0.0625, 0.1875},
			{-0.5, -0.125, -0.1875, -0.0625, -0.0625, 0.1875},
			{-0.5, -0.1875, -0.1875, -0.1875, -0.125, 0.1875},
			{0.1875, -0.1875, -0.1875, 0.5, -0.125, 0.1875},
			{0.3125, -0.3125, -0.1875, 0.5, -0.1875, 0.1875},
			{-0.5, -0.3125, -0.1875, -0.3125, -0.1875, 0.1875},
			{-0.5, -0.4375, -0.1875, -0.375, -0.25, 0.1875},
			{0.375, -0.4375, -0.1875, 0.5, -0.25, 0.1875},
			{0.4375, -0.5, -0.1875, 0.5, -0.3125, 0.1875},
			{-0.5, -0.5, -0.1875, -0.4375, -0.3125, 0.1875},
		}
	}
})

minetest.register_node(":stoneworks:thin_wall_low_arch" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = groups,
	is_ground_content = false,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.0625, -0.1875, 0.5, 0.125, 0.1875},
			{0.0625, -0.125, -0.1875, 0.5, -0.0625, 0.1875},
			{-0.5, -0.125, -0.1875, -0.0625, -0.0625, 0.1875},
			{-0.5, -0.1875, -0.1875, -0.1875, -0.125, 0.1875},
			{0.1875, -0.1875, -0.1875, 0.5, -0.125, 0.1875},
			{0.3125, -0.3125, -0.1875, 0.5, -0.1875, 0.1875},
			{-0.5, -0.3125, -0.1875, -0.3125, -0.1875, 0.1875},
			{-0.5, -0.4375, -0.1875, -0.375, -0.25, 0.1875},
			{0.375, -0.4375, -0.1875, 0.5, -0.25, 0.1875},
			{0.4375, -0.5, -0.1875, 0.5, -0.3125, 0.1875},
			{-0.5, -0.5, -0.1875, -0.4375, -0.3125, 0.1875},
		}
	}
})
end
