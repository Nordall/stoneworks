-- [MOD] StoneWorks [stoneworks] (1.2) by TumeniNodes

stoneworks = {}

--def subname from subnode
stoneworks.name = function(subnode)
	local mn = ""
	local nn = ""
	mn, nn = string.match(subnode, "([%a_]-)[:]([%a_]+)")
	print(nn, type(nn))
	return nn
end

--def description from subnode
stoneworks.name2desc = function(subnode)
	local s = stoneworks.name(subnode)
	print(s, type(s))
	s = s:gsub("_", " ")
	s = s:gsub("^%l", string.upper)
	s = s:gsub("(%s%l.-)", string.upper)
	return s
end

--set settings
stoneworks.arches_enabled = minetest.settings:get_bool("arches")
if stoneworks.arches_enabled == nil then
	stoneworks.arches_enabled = true
end
stoneworks.arches_wood_enabled = minetest.settings:get_bool("arches_wood")
if stoneworks.arches_wood_enabled == nil then
stoneworks.arches_wood_enabled = true
end
stoneworks.arches_ores_enabled = minetest.settings:get_bool("arches_ores")
if stoneworks.arches_ores_enabled == nil then
stoneworks.arches_ores_enabled = false
end
stoneworks.arches_stone_enabled = minetest.settings:get_bool("arches_stone")
if stoneworks.arches_stone_enabled == nil then
stoneworks.arches_stone_enabled = true
end
stoneworks.arches_darkage_enabled = minetest.settings:get_bool("arches_darkage")
if stoneworks.arches_darkage_enabled == nil then
stoneworks.arches_darkage_enabled = false
end
stoneworks.arches_bakedclay_enabled = minetest.settings:get_bool("arches_bakedclay")
if stoneworks.arches_bakedclay_enabled == nil then
stoneworks.arches_bakedclay_enabled = false
end

stoneworks.walls_enabled = minetest.settings:get_bool("walls")
if stoneworks.walls_enabled == nil then
	stoneworks.walls_enabled = true
end
stoneworks.walls_wood_enabled = minetest.settings:get_bool("walls_wood")
if stoneworks.walls_wood_enabled == nil then
stoneworks.walls_wood_enabled = true
end
stoneworks.walls_ores_enabled = minetest.settings:get_bool("walls_ores")
if stoneworks.walls_ores_enabled == nil then
stoneworks.walls_ores_enabled = false
end
stoneworks.walls_stone_enabled = minetest.settings:get_bool("walls_stone")
if stoneworks.walls_stone_enabled == nil then
stoneworks.walls_stone_enabled = true
end
stoneworks.walls_darkage_enabled = minetest.settings:get_bool("walls_darkage")
if stoneworks.walls_darkage_enabled == nil then
stoneworks.walls_darkage_enabled = false
end
stoneworks.walls_bakedclay_enabled = minetest.settings:get_bool("walls_bakedclay")
if stoneworks.walls_bakedclay_enabled == nil then
stoneworks.walls_bakedclay_enabled = false
end

dofile(minetest.get_modpath("stoneworks").."/hammer.lua")
dofile(minetest.get_modpath("stoneworks").."/api.lua")
dofile(minetest.get_modpath("stoneworks").."/arches.lua")
dofile(minetest.get_modpath("stoneworks").."/thinwalls.lua")
dofile(minetest.get_modpath("stoneworks").."/fences.lua")

