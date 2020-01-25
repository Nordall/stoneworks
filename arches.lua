-- Register stoneworks arches.

if not stoneworks.arches_enabled then
	return
end

function stoneworks.register_arches(subname, images, groups, sounds,
	recipeitem)

	groups.arches = 1

	-- low wall; bottom part for use of arch with window
	minetest.register_node("stoneworks:arches_low_wall" .. subname, {
		description = "Stoneworks Arch Low Wall" .. subname,
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
				{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			}
		}
	})
	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:arches_low_wall" .. subname .. " 4",
		recipe = {
			{"", "", ""},
			{"", "stoneworks:hammer", ""},
			{recipeitem, recipeitem, recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	-- arch high/low
	minetest.register_node("stoneworks:arches_high" .. subname, {
		description = "Stoneworks Arch High "..subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.5, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, 0.5},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, 0.5},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, 0.5},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, 0.5},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, 0.5},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, 0.5},
				{0.375, -0.4375, -0.5, 0.5, -0.25, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, 0.5},
			}
		}
	})

	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:arches_high" .. subname .. " 4",
		recipe = {
			{recipeitem, "", recipeitem},
			{recipeitem, "stoneworks:hammer", recipeitem},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node(":stoneworks:arches_low" .. subname, {
		description = "Stoneworks Arch Low".. subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.125, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, 0.5},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, 0.5},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, 0.5},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, 0.5},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, 0.5},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, 0.5},
				{0.375, -0.4375, -0.5, 0.5, -0.25, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, 0.5},
			}
		}
	})
	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:arches_low" .. subname .. " 2",
		recipe = {"stoneworks:arches_high" .. subname},
	})

	-- arch high/low quad
	minetest.register_node("stoneworks:arches_high_quad" .. subname, {
		description = "Stoneworks Arch High Quad" .. subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.5, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, -0.0625},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, -0.0625},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, -0.1875},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, -0.1875},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, -0.3125},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, -0.3125},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, -0.375},
				{0.375, -0.4375, -0.5, 0.5, -0.25, -0.375},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, -0.4375},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, -0.4375},
				{0.0625, -0.125, 0.0625, 0.5, -0.0625, 0.5},
				{0.1875, -0.1875, 0.1875, 0.5, -0.125, 0.5},
				{-0.5, -0.3125, 0.3125, -0.3125, -0.1875, 0.5},
				{-0.5, -0.4375, 0.375, -0.375, -0.25, 0.5},
				{0.375, -0.4375, 0.375, 0.5, -0.25, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, -0.3125, 0.5},
				{0.3125, -0.3125, 0.3125, 0.5, -0.1875, 0.5},
				{0.4375, -0.5, 0.4375, 0.5, -0.3125, 0.5},
				{-0.5, -0.1875, 0.1875, -0.1875, -0.125, 0.5},
				{-0.5, -0.125, 0.0625, -0.0625, -0.0625, 0.5},
			}
		}
	})
	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:arches_high_quad" .. subname .. " 4",
		recipe = {
			{recipeitem, "", recipeitem},
			{"", "stoneworks:hammer", ""},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node("stoneworks:arches_low_quad" .. subname, {
		description = "Stoneworks Arch Low Quad" .. subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.125, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, -0.0625},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, -0.0625},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, -0.1875},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, -0.1875},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, -0.3125},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, -0.3125},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, -0.375},
				{0.375, -0.4375, -0.5, 0.5, -0.25, -0.375},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, -0.4375},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, -0.4375},
				{0.0625, -0.125, 0.0625, 0.5, -0.0625, 0.5},
				{0.1875, -0.1875, 0.1875, 0.5, -0.125, 0.5},
				{-0.5, -0.3125, 0.3125, -0.3125, -0.1875, 0.5},
				{-0.5, -0.4375, 0.375, -0.375, -0.25, 0.5},
				{0.375, -0.4375, 0.375, 0.5, -0.25, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, -0.3125, 0.5},
				{0.3125, -0.3125, 0.3125, 0.5, -0.1875, 0.5},
				{0.4375, -0.5, 0.4375, 0.5, -0.3125, 0.5},
				{-0.5, -0.1875, 0.1875, -0.1875, -0.125, 0.5},
				{-0.5, -0.125, 0.0625, -0.0625, -0.0625, 0.5},
			}
		}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:arches_low_quad" .. subname .." 2",
		recipe = {"stoneworks:arches_high_quad" .. subname},
	})

	-- arch high/low T
	minetest.register_node("Stoneworks:arches_high_T" .. subname, {
		description = "Stoneworks Arch High_T" .. subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.5, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, -0.0625},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, -0.0625},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, -0.1875},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, -0.1875},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, -0.3125},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, -0.3125},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, -0.375},
				{0.375, -0.4375, -0.5, 0.5, -0.25, -0.375},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, -0.4375},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, -0.4375},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, 0.5},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, 0.5},
				{-0.5, -0.3125, 0.3125, -0.3125, -0.1875, 0.5},
				{-0.5, -0.4375, 0.375, -0.375, -0.25, 0.5},
				{0.375, -0.4375, -0.5, 0.5, -0.25, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, -0.3125, 0.5},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{0.4375, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, -0.1875, 0.1875, -0.1875, -0.125, 0.5},
				{-0.5, -0.125, 0.0625, -0.0625, -0.0625, 0.5},
			}
		}
	})

	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:arches_high_T" .. subname .. " 4",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", "stoneworks:hammer", ""},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node(":stoneworks:arches_low_T" .. subname, {
		description = "Stoneworks Arch Low T" .. subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.125, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, -0.0625},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, -0.0625},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, -0.1875},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, -0.1875},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, -0.3125},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, -0.3125},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, -0.375},
				{0.375, -0.4375, -0.5, 0.5, -0.25, -0.375},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, -0.4375},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, -0.4375},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, 0.5},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, 0.5},
				{-0.5, -0.3125, 0.3125, -0.3125, -0.1875, 0.5},
				{-0.5, -0.4375, 0.375, -0.375, -0.25, 0.5},
				{0.375, -0.4375, -0.5, 0.5, -0.25, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, -0.3125, 0.5},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{0.4375, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, -0.1875, 0.1875, -0.1875, -0.125, 0.5},
				{-0.5, -0.125, 0.0625, -0.0625, -0.0625, 0.5},
			}
		}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:arches_low_T" .. subname .." 2",
		recipe = {"stoneworks:arches_high_T" .. subname},
	})

	-- arch high/low corner
	minetest.register_node("stoneworks:arches_high_corner" .. subname, {
		description = "Stoneworks Arch High Corner" .. subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.5, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, -0.0625},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, -0.0625},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, -0.1875},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, -0.1875},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, -0.3125},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, -0.375},
				{0.375, -0.4375, -0.5, 0.5, -0.25, -0.375},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, -0.4375},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, -0.4375},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, 0.5},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, 0.5},
				{-0.5, -0.3125, 0.3125, 0.5, -0.1875, 0.5},
				{-0.5, -0.4375, 0.375, 0.5, -0.25, 0.5},
				{0.375, -0.4375, -0.5, 0.5, -0.25, 0.5},
				{-0.5, -0.5, 0.4375, 0.5, -0.3125, 0.5},
				{0.375, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{0.4375, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, -0.1875, 0.1875, 0.5, -0.125, 0.5},
				{-0.5, -0.125, 0.0625, 0.5, -0.0625, 0.5},
			}
		}
	})

	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:arches_high_corner" .. subname .. " 4",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", "stoneworks:hammer", recipeitem},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node("stoneworks:arches_low_corner" .. subname, {
		description = "Stoneworks Arch Low Corner" .. subname,
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
				{-0.5, -0.0625, -0.5, 0.5, 0.125, 0.5},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, -0.0625},
				{-0.5, -0.125, -0.5, -0.0625, -0.0625, -0.0625},
				{-0.5, -0.1875, -0.5, -0.1875, -0.125, -0.1875},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, -0.1875},
				{0.3125, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{-0.5, -0.3125, -0.5, -0.3125, -0.1875, -0.3125},
				{-0.5, -0.4375, -0.5, -0.375, -0.25, -0.375},
				{0.375, -0.4375, -0.5, 0.5, -0.25, -0.375},
				{0.4375, -0.5, -0.5, 0.5, -0.3125, -0.4375},
				{-0.5, -0.5, -0.5, -0.4375, -0.3125, -0.4375},
				{0.0625, -0.125, -0.5, 0.5, -0.0625, 0.5},
				{0.1875, -0.1875, -0.5, 0.5, -0.125, 0.5},
				{-0.5, -0.3125, 0.3125, 0.5, -0.1875, 0.5},
				{-0.5, -0.4375, 0.375, 0.5, -0.25, 0.5},
				{0.375, -0.4375, -0.5, 0.5, -0.25, 0.5},
				{-0.5, -0.5, 0.4375, 0.5, -0.3125, 0.5},
				{0.375, -0.3125, -0.5, 0.5, -0.1875, 0.5},
				{0.4375, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, -0.1875, 0.1875, 0.5, -0.125, 0.5},
				{-0.5, -0.125, 0.0625, 0.5, -0.0625, 0.5},
			}
		}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:arches_low_corner" .. subname .. " 2",
		recipe = {"stoneworks:arches_high_corner" .. subname},
	})

end

--register arches according to settings
--params: subname, images, groups, sound, recipeitem
if stoneworks.arches_wood_enabled then
	for idx, value in ipairs(stoneworks.nodes["default_wood"]) do
		stoneworks.register_arches(stoneworks.subname(value),
			stoneworks.node2file(value),
			{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
			default.node_sound_wood_defaults(),
			value)
	end
end
if stoneworks.arches_ores_enabled then
	for idx, value in ipairs(stoneworks.nodes["default_ores"]) do
		stoneworks.register_arches(stoneworks.subname(value),
			stoneworks.node2file(value),
			{cracky = 1},
			default.node_sound_stone_defaults(),
			value)
	end
end
if stoneworks.arches_stone_enabled then
	for idx, value in ipairs(stoneworks.nodes["default_stone"]) do
		stoneworks.register_arches(stoneworks.subname(value),
			stoneworks.node2file(value),
			{cracky = 2},
			default.node_sound_stone_defaults(),
			value)
	end
end
if stoneworks.arches_darkage_enabled then
	for idx, value in ipairs(stoneworks.nodes["darkage"]) do
		stoneworks.register_arches(stoneworks.subname(value),
			stoneworks.node2file(value),
			{cracky = 2},
			default.node_sound_stone_defaults(),
			value)
	end
end


