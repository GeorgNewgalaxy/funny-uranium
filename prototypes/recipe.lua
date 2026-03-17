local funny_uranium_enrichment = {
    enabled = false,
    name = "funny-uranium-enrichment",
    type = "recipe",

    icons = {
        {
            icon = data.raw["item"]["uranium-238"].icon,
            icon_size = data.raw["item"]["uranium-238"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-238"].icon_mipmaps,
            tint = {r = 1.0, g = 0.1, b = 0.55, a = 1.0},
            scale = 0.5,
            shift = {-8, -8}
        },
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            tint = {r = 1.0, g = 0.1, b = 0.55, a = 1.0},
            scale = 0.5,
            shift = {8, 8}
        }
    },

    ingredients = {{type = "item", name = "unenriched-funny-uranium", amount = 1}, {type = "fluid", name = "sulfuric-acid", amount = 20}},
    results = {{type = "item", name = "enriched-funny-uranium", amount = 1}},

    category = "crafting-with-fluid",

    energy_required = 4,
}

local funny_uranium_separation = {
    enabled = false,
    name = "funny-uranium-separation",
    type = "recipe",

    icons = {
        {
            icon = data.raw["item"]["uranium-238"].icon,
            icon_size = data.raw["item"]["uranium-238"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-238"].icon_mipmaps,
            tint = {r = 1.0, g = 0.1, b = 0.55, a = 1.0},
            scale = 0.4,
            shift = {-15, 0}
        },
        {
            icon = data.raw["item"]["uranium-238"].icon,
            icon_size = data.raw["item"]["uranium-238"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-238"].icon_mipmaps,
            scale = 0.4,
            shift = {12.99, 15}
        },
        {
            icon = data.raw["item"]["uranium-235"].icon,
            icon_size = data.raw["item"]["uranium-235"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-235"].icon_mipmaps,
            scale = 0.4,
            shift = {12.99, -15}
        },
        {
            icon = data.raw["item"]["uranium-ore"].icon,
            icon_size = data.raw["item"]["uranium-ore"].icon_size,
            icon_mipmaps = data.raw["item"]["uranium-ore"].icon_mipmaps,
            scale = 0.4,
        },
    },

    ingredients = {{type = "item", name = "uranium-ore", amount = 15}},
    results = {{type = "item", name = "uranium-238", amount = 1, probability = 0.993}, {type = "item", name = "uranium-235", amount = 1, probability = 0.01}, {type = "item", name = "unenriched-funny-uranium", amount = 1, probability = 0.002}},

    category = "centrifuging",

    energy_required = 15,

    group = "intermideate-products",

    group = "intermediate-products",
    subgroup = "raw-material",
}

local uranium_conversion = {
    enabled = false,
    name = "uranium-conversion",
    type = "recipe",

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

    ingredients = {{type = "item", name = "sulfur", amount = 2}, {type = "item", name = "uranium-235", amount = 5}, {type = "item", name = "enriched-funny-uranium", amount = 10}},
    results = {{type = "item", name = "uranium-235", amount = 3}, {type = "item", name = "unenriched-funny-uranium", amount = 11}},

    category = "centrifuging",

    energy_required = 45,

    group = "intermideate-products",

    group = "intermediate-products",
    subgroup = "raw-material",
}

local funny_nuclear_fuel = {
    enabled = false,
    name = "funny-nuclear-fuel",
    type = "recipe",

    icon = "__funny-uranium__/funny_nuclear_fuel.png",
    icon_size = 64,

    ingredients = {{type = "item", name = "enriched-funny-uranium", amount = 1}, {type = "item", name = "low-density-structure", amount = 1}, {type = "item", name = "nuclear-fuel", amount = 1}},
    results = {{type = "item", name = "funny-nuclear-fuel", amount = 1}},

    category = "centrifuging",

    energy_required = 60,
}

data:extend({funny_uranium_enrichment, funny_uranium_separation, uranium_conversion, funny_nuclear_fuel})