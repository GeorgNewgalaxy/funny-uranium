local util = require("util")

local unenriched_funny_uranium = util.table.deepcopy(data.raw["item"]["uranium-238"])
unenriched_funny_uranium.name = "unenriched-funny-uranium"

unenriched_funny_uranium.icon = nil
unenriched_funny_uranium.icon_size = nil
unenriched_funny_uranium.icon_mipmaps = nil

unenriched_funny_uranium.icons = {
    {
        icon = data.raw["item"]["uranium-238"].icon,
        icon_size = data.raw["item"]["uranium-238"].icon_size,
        icon_mipmaps = data.raw["item"]["uranium-238"].icon_mipmaps,
        tint = {r = 1.0, g = 0.1, b = 0.55, a = 1.0}
    }
}

local enriched_funny_uranium = util.table.deepcopy(data.raw["item"]["uranium-235"])
enriched_funny_uranium.name = "enriched-funny-uranium"

enriched_funny_uranium.icon = nil
enriched_funny_uranium.icon_size = nil
enriched_funny_uranium.icon_mipmaps = nil
enriched_funny_uranium.pictures = nil

enriched_funny_uranium.icons = {
    {
        icon = data.raw["item"]["uranium-235"].icon,
        icon_size = data.raw["item"]["uranium-235"].icon_size,
        icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
        tint = {r = 1.0, g = 0.1, b = 0.55, a = 1.0}
    }
}

local funny_nuclear_fuel = util.table.deepcopy(data.raw["item"]["nuclear-fuel"])
funny_nuclear_fuel.name = "funny-nuclear-fuel"

funny_nuclear_fuel.icon = nil
funny_nuclear_fuel.icon_size = nil
funny_nuclear_fuel.icon_mipmaps = nil
funny_nuclear_fuel.pictures = nil

funny_nuclear_fuel.fuel_value = "10GJ"
funny_nuclear_fuel.fuel_top_speed_multiplier = 1.5
funny_nuclear_fuel.fuel_acceleration_multiplier = 4.0

funny_nuclear_fuel.icon = "__funny-uranium__/funny_nuclear_fuel.png"
funny_nuclear_fuel.icon_size = 64

data:extend({unenriched_funny_uranium, enriched_funny_uranium, funny_nuclear_fuel})