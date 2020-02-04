-- Register stoneworks' fences

minetest.register_node("stoneworks:highironfence", {
	description = "StoneWorks high ironfence",
	drawtype = "nodebox",
	tiles = {"stoneworks_ironfence_side.png", "stoneworks_ironfence_side.png",
		"stoneworks_ironfence_side.png", "stoneworks_ironfence_side.png",
		"stoneworks_ironfence.png", "stoneworks_ironfence.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 0.5, 0},
		}
	}
})

minetest.register_craft({
    type = "shaped",
    output = "stoneworks:highironfence 8",
    recipe = {
        {"default:iron_lump","default:steel_ingot", "default:iron_lump"},
        {"default:iron_lump","default:steel_ingot", "default:iron_lump"},
        {"default:iron_lump","default:steel_ingot", "default:iron_lump"}
    },
})

minetest.register_node("stoneworks:lowironfence", {
	description = "StoneWorks low ironfence",
	drawtype = "nodebox",
	tiles = {"stoneworks_ironfence_side.png", "stoneworks_ironfence_side.png",
		"stoneworks_ironfence_side.png", "stoneworks_ironfence_side.png",
		"stoneworks_ironfence.png", "stoneworks_ironfence.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.875, -0.0625, 0.5, -0.5, 0},
		}
	}
})

minetest.register_craft({
    type = "shaped",
    output = "stoneworks:lowironfence 4",
    recipe = {
        {"","", ""},
        {"","", ""},
        {"default:iron_lump","default:steel_ingot", "default:iron_lump"}
    },
})

minetest.register_node("stoneworks:highlowironfence", {
	description = "StoneWorks Highlow ironfence",
	drawtype = "nodebox",
	tiles = {"stoneworks_ironfence_side.png", "stoneworks_ironfence_side.png",
		"stoneworks_ironfence_side.png", "stoneworks_ironfence_side.png",
		"stoneworks_ironfence.png", "stoneworks_ironfence.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.875, -0.0625, 0.5, 1, 0},
		}
	}
})

minetest.register_craft({
    type = "shaped",
    output = "stoneworks:highlowironfence 6",
    recipe = {
        {"","", ""},
        {"default:iron_lump","default:steel_ingot", "default:iron_lump"},
        {"default:iron_lump","default:steel_ingot", "default:iron_lump"}
    },
})

