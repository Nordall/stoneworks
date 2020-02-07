-- Register Stoneworks Thin Walls.

if not stoneworks.walls_enabled then
	return
end

stoneworks.register_thin_walls = function(image, groups, sounds,
	recipeitem)

	groups.thin_wall = 1

	local subname = stoneworks.name(recipeitem)
	local desc = stoneworks.name2desc(recipeitem)

    -- wall high/low
	minetest.register_node(":stoneworks:thin_wall_high_"..subname, {
		description = "Stoneworks Thin Wall High "..desc,
		drawtype = "nodebox",
		tiles = {image},
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
		type = "shaped",
		output = "stoneworks:thin_wall_high_" .. subname .." 4",
		recipe = {
			{"", "", "stoneworks:hammer"},
			{recipeitem, recipeitem, recipeitem},
			{"", "", ""},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node(":stoneworks:thin_wall_low_" .. subname, {
		description = "Stoneworks Thin Wall Low " .. desc,
		drawtype = "nodebox",
		tiles = {image},
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
		output = "stoneworks:thin_wall_low_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_high_" .. subname},
	})

    -- wall high/low corner
	minetest.register_node(":stoneworks:thin_wall_high_corner_" .. subname, {
		description = "Stoneworks Thin Wall High Corner " .. desc,
		drawtype = "nodebox",
		tiles = {image},
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
		type = "shaped",
		output = "stoneworks:thin_wall_high_corner_" .. subname .." 4",
		recipe = {
			{recipeitem, "", "stoneworks:hammer"},
			{recipeitem, recipeitem, ""},
			{"", "", ""},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

    minetest.register_node(":stoneworks:thin_wall_low_corner_" .. subname, {
	    description = "Stoneworks Thin Wall Low Corner ".. desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_low_corner_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_high_corner_" .. subname},
	})

    -- wall high/high-low/low T
    minetest.register_node(":stoneworks:thin_wall_high_T_" .. subname, {
	    description = "Stoneworks Thin Wall High T "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:thin_wall_high_T_" .. subname .." 4",
		recipe = {
			{"", "", "stoneworks:hammer"},
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, ""},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

    minetest.register_node(":stoneworks:thin_wall_high_low_T_" .. subname, {
	    description = "Stoneworks Thin Wall High Low T "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_high_low_T_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_high_T_" .. subname},
	})


    minetest.register_node(":stoneworks:thin_wall_low_T" .. subname, {
	    description = "Stoneworks Thin Wall Low T "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_low_T_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_high_low_T_" .. subname},
	})

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_high_T_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_low_T_" .. subname},
	})

    -- wall high/high-low/low quad
    minetest.register_node(":stoneworks:thin_wall_high_quad_" .. subname, {
	    description = "Stoneworks Thin Wall High Quad "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:thin_wall_high_quad_" .. subname .." 4",
		recipe = {
			{"", recipeitem, "stoneworks:hammer"},
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, ""},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

    minetest.register_node(":stoneworks:thin_wall_high_low_quad_" .. subname, {
	    description = "Stoneworks Thin Wall High Low Quad "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

    	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_high_low_quad_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_high_quad_" .. subname},
	})

    minetest.register_node(":stoneworks:thin_wall_low_quad_" .. subname, {
	    description = "Stoneworks Thin Wall Low Quad "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

    	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_low_quad_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_high_low_quad_" .. subname},
	})

    	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_high_quad_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_low_quad_" .. subname},
	})

    -- wall high/low arch
    minetest.register_node(":stoneworks:thin_wall_high_arch_" .. subname, {
	    description = "Stoneworks Thin Wall High Arch "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:thin_wall_high_arch_" .. subname .." 4",
		recipe = {
			{"", recipeitem, "stoneworks:hammer"},
			{recipeitem, "", recipeitem},
			{"", "", ""},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

    minetest.register_node(":stoneworks:thin_wall_low_arch_" .. subname, {
	    description = "Stoneworks Thin Wall Low Arch "..desc,
	    drawtype = "nodebox",
	    tiles = {image},
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

    	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_low_arch_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_high_arch_" .. subname},
	})

    	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:thin_wall_high_arch_" .. subname .. " 1",
		recipe = {"stoneworks:thin_wall_low_arch_" .. subname},
	})

end

-- register thin walls according to settings
-- params: image, groups, sound, recipeitem
if stoneworks.walls_wood_enabled then
	for idx, value in ipairs(stoneworks.nodes["default_wood"]) do
		stoneworks.register_thin_walls(value[2], {snappy = 2, choppy = 2,
			oddly_breakable_by_hand = 2, flammable = 3},
			default.node_sound_wood_defaults(), value[1])
	end
end
if stoneworks.walls_ores_enabled then
	for idx, value in ipairs(stoneworks.nodes["default_ores"]) do
		stoneworks.register_thin_walls(value[2], {cracky = 1},
			default.node_sound_stone_defaults(), value[1])
	end
end
if stoneworks.walls_stone_enabled then
	for idx, value in ipairs(stoneworks.nodes["default_stone"]) do
		stoneworks.register_thin_walls(value[2], {cracky = 2},
			default.node_sound_stone_defaults(), value[1])
	end
end
if stoneworks.walls_darkage_enabled then
    if minetest.registered_nodes["darkage:basalt"] then
	    for idx, value in ipairs(stoneworks.nodes["darkage"]) do
		    stoneworks.register_thin_walls(value[2], {cracky = 2},
				default.node_sound_stone_defaults(), value[1])
	    end
    end
end
if stoneworks.walls_bakedclay_enabled then
    if minetest.registered_nodes["bakedclay:black"] then
	    for idx, value in ipairs(stoneworks.nodes["bakedclay"]) do
		    stoneworks.register_thin_walls(value[2], {crumbly = 2},
				default.node_sound_stone_defaults(), value[1])
	    end
    end
end
for idx, value in ipairs(stoneworks.nodes["custom"]) do
	if value[1] == nil or value[2] == nil then
		return
	else
		stoneworks.register_thin_walls(value[2], {cracky = 2},
			default.node_sound_stone_defaults(), value[1])
	end
end




