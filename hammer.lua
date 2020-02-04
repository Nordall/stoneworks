--[[

    Stonework's stonemason hammer serves as recipe ingredient
    to help making recipes easily distinctable and reasonable
    and nicer.

]]

minetest.register_craftitem("stoneworks:hammer", {
    description = "Stonemason Hammer",
    inventory_image = "stonemason_hammer_inv.png"
})

minetest.register_craft({
    type = "shaped",
    output = "stoneworks:hammer",
    recipe = {
        {"default:steel_ingot", "", ""},
        {"default:steel_ingot", "", ""},
        {"default:stick", "", ""},
    }
})
