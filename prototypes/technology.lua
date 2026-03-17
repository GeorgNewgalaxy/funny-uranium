local util = require("util")

local funny_uranium_processing = {
    type = "technology",
    name = "funny-uranium-processing",
    
    icon = nil,
    icon_size = nil,
    icon_mipmaps = nil,
    
    icons = {
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            tint = {r = 1.0, g = 0.1, b = 0.55, a = 1.0},
            scale = 4 
        }
    },
    
    effects = {
        {
            type = "unlock-recipe",
            recipe = "funny-uranium-separation"
        },
        {
            type = "unlock-recipe",
            recipe = "funny-uranium-enrichment"
        },
        {
            type = "unlock-recipe",
            recipe = "funny-nuclear-fuel"
        }
    },
    
    prerequisites = {"uranium-processing", "space-science-pack"},
    
    unit = {
        count = 2000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 60
    }
}

local uranium_conversion = {
    type = "technology",
    name = "uranium-conversion",
    
    icon = nil,
    icon_size = nil,
    icon_mipmaps = nil,
    
    icons = {
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            scale = 0.4,
            shift = {-15, 0}
        },
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            scale = 0.4,
            shift = {0, -15}
        },
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            scale = 0.4,
            shift = {15, 0}
        },
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            scale = 0.4,
            shift = {0, 15}
        },
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            tint = {r = 1.0, g = 0.1, b = 0.55, a = 1.0},
            scale = 0.45,
            shift = {0, 0}
        },
    },
    
    effects = {
        {
            type = "unlock-recipe",
            recipe = "uranium-conversion"
        },
    },
    
    prerequisites = {"funny-uranium-processing"},
    
    unit = {
        count = 5000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 60
    }
}

data:extend({funny_uranium_processing, uranium_conversion})