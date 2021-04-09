-- Register stoneworks arches.

if not stoneworks.arches_enabled then
	return
end

stoneworks.register_arches = function(image, groups, sounds, recipeitem)

	groups.arches = 1

	local subname = stoneworks.name(recipeitem)
	local desc = stoneworks.name2desc(recipeitem)

	-- low wall; bottom part for use of arch with window
	minetest.register_node("stoneworks:arches_low_wall_"..subname, {
		description = "Stoneworks Arches Low Wall "..desc,
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
				{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			}
		}
	})

	minetest.register_craft({
		type = "shaped",
		output = "stoneworks:arches_low_wall_" .. subname .. " 3",
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
	minetest.register_node(":stoneworks:arches_high_" .. subname, {
		description = "Stoneworks Arches High "..desc,
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
		output = "stoneworks:arches_high_" .. subname .. " 6",
		recipe = {
			{recipeitem, "", recipeitem},
			{recipeitem, "stoneworks:hammer", recipeitem},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node(":stoneworks:arches_low_" .. subname, {
		description = "Stoneworks Arches Low "..desc,
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
		output = "stoneworks:arches_low_" .. subname .. " 2",
		recipe = {"stoneworks:arches_high_" .. subname},
	})

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:arches_high_" .. subname .. " 1",
		recipe = {"stoneworks:arches_low_" .. subname,
				"stoneworks:arches_low_" .. subname},
	})


	-- arch high/low quad
	minetest.register_node(":stoneworks:arches_high_quad_" .. subname, {
		description = "Stoneworks Arch High Quad " .. desc,
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
		output = "stoneworks:arches_high_quad_" .. subname .. " 6",
		recipe = {
			{recipeitem, "", recipeitem},
			{"", "stoneworks:hammer", ""},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node("stoneworks:arches_low_quad_" .. subname, {
		description = "Stoneworks Arches Low Quad "..desc,
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
		output = "stoneworks:arches_low_quad_" .. subname .." 2",
		recipe = {"stoneworks:arches_high_quad_" .. subname},
	})

	minetest.register_craft({
		type = "shapeless",
		output = "stoneworks:arches_high_quad_" .. subname .. " 1",
		recipe = {"stoneworks:arches_low_quad_" .. subname,
				"stoneworks:arches_low_quad_" .. subname},
	})

	-- arch high/low T
	minetest.register_node("stoneworks:arches_high_T_" .. subname, {
		description = "Stoneworks Arches High T "..desc,
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
		output = "stoneworks:arches_high_T_" .. subname .. " 6",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", "stoneworks:hammer", ""},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node(":stoneworks:arches_low_T_" .. subname, {
		description = "Stoneworks Arches Low T "..desc,
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
		output = "stoneworks:arches_low_T_" .. subname .." 2",
		recipe = {"stoneworks:arches_high_T_" .. subname},
	})

	minetest.register_craft({
	type = "shapeless",
	output = "stoneworks:arches_high_T_" .. subname .. " 1",
	recipe = {"stoneworks:arches_low_T_" .. subname,
			"stoneworks:arches_low_T_" .. subname},
	})


	-- arch high/low corner
	minetest.register_node("stoneworks:arches_high_corner_" .. subname, {
		description = "Stoneworks Arches High Corner "..desc,
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
		output = "stoneworks:arches_high_corner_" .. subname .. " 6",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", "stoneworks:hammer", recipeitem},
			{recipeitem, "", recipeitem},
		},
		replacements = {
			{"stoneworks:hammer", "stoneworks:hammer"},
		},
	})

	minetest.register_node("stoneworks:arches_low_corner_" .. subname, {
		description = "Stoneworks Arches Low Corner "..desc,
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
		output = "stoneworks:arches_low_corner_" .. subname .. " 2",
		recipe = {"stoneworks:arches_high_corner_" .. subname},
	})

	minetest.register_craft({
	type = "shapeless",
	output = "stoneworks:arches_high_corner_" .. subname .. " 1",
	recipe = {"stoneworks:arches_low_corner_" .. subname,
			"stoneworks:arches_low_corner" .. subname},
	})


end


-- register arches according to settings
-- params: image, groups, sound, recipeitem
if stoneworks.arches_wood_enabled then
	for idx, val in ipairs(stoneworks.nodes["default_wood"]) do
		local rec = val[1]
		local img = val[2]
		stoneworks.register_arches(img,
			{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2,
			flammable = 3},
			default.node_sound_wood_defaults(), rec)
	end
end
if stoneworks.arches_ores_enabled then
	for idx, val in ipairs(stoneworks.nodes["default_ores"]) do
		local rec = val[1]
		local img = val[2]
		stoneworks.register_arches(img, {cracky = 1},
			default.node_sound_stone_defaults(), rec)
	end
end
if stoneworks.arches_stone_enabled then
	for idx, val in ipairs(stoneworks.nodes["default_stone"]) do
		local rec = val[1]
		local img = val[2]
		stoneworks.register_arches(img, {cracky = 2},
			default.node_sound_stone_defaults(), rec)
	end
end
if stoneworks.arches_darkage_enabled then
	-- is darkage installed?
    if minetest.registered_nodes["darkage:basalt"] then
	    for idx, val in ipairs(stoneworks.nodes["darkage"]) do
			local rec = val[1]
			local img = val[2]
		    stoneworks.register_arches(img, {cracky = 2},
				default.node_sound_stone_defaults(), rec)
	    end
    end
end
if stoneworks.arches_bakedclay_enabled then
	--is bakedclay installed
    if minetest.registered_nodes["bakedclay:black"] then
	    for idx, val in ipairs(stoneworks.nodes["bakedclay"]) do
			local rec = val[1]
			local img = val[2]
		    stoneworks.register_arches(img, {crumbly = 2},
				default.node_sound_stone_defaults(), rec)
	    end
    end
end
for idx, val in ipairs(stoneworks.nodes["custom"]) do
	-- is custom nodes empty?
	if val[1] == nil or val[2] == nil then
		return
	else
		stoneworks.register_arches(val[2], {cracky = 2},
			default.node_sound_stone_defaults(), val[1])
	end
end

