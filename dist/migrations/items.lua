local Items = {}

Items.items = {
    -- inserters
    {item = "burner-inserter", tier = "deadlock-stacking-1", sub_group = "inserter"},
    {item = "inserter", tier = "deadlock-stacking-1", sub_group = "inserter"},
    {item = "long-handed-inserter", tier = "deadlock-stacking-1", sub_group = "inserter"},
    {item = "fast-inserter", tier = "fast-inserter", sub_group = "inserter"},
    {item = "filter-inserter", tier = "fast-inserter", sub_group = "inserter"},
    {item = "stack-inserter", tier = "stack-inserter", sub_group = "inserter"},
    {item = "stack-filter-inserter", tier = "stack-inserter", sub_group = "inserter"},
    -- pipe
    {item = "pipe", tier = "deadlock-stacking-1", sub_group = "pipe"},
    {item = "pipe-to-ground", tier = "deadlock-stacking-1", sub_group = "pipe"},
    -- ammo
    {item = "firearm-magazine", tier = "deadlock-stacking-1", sub_group = "ammo", type = "ammo"},
    {item = "piercing-rounds-magazine", tier = "military-2", sub_group = "ammo", type = "ammo"},
    {item = "uranium-rounds-magazine", tier = "uranium-ammo", sub_group = "ammo", type = "ammo"},
    {item = "grenade", tier = "military-2", sub_group = "ammo", type = "capsule"},
    {item = "cluster-grenade", tier = "military-4", sub_group = "ammo", type = "capsule"},
    {item = "stone-wall", tier = "stone-walls", sub_group = "ammo"},
    {item = "gate", tier = "gates", sub_group = "ammo"},
    -- belt
    {item = "transport-belt", tier = "deadlock-stacking-1", sub_group = "belt"},
    {item = "underground-belt", tier = "logistics", sub_group = "belt"},
    {item = "splitter", tier = "logistics", sub_group = "belt"},
    {item = "fast-underground-belt", tier = "logistics-2", sub_group = "belt"},
    {item = "fast-transport-belt", tier = "logistics-2", sub_group = "belt"},
    {item = "fast-splitter", tier = "logistics-2", sub_group = "belt"},
    {item = "express-transport-belt", tier = "logistics-3", sub_group = "belt"},
    {item = "express-underground-belt", tier = "logistics-3", sub_group = "belt"},
    {item = "express-splitter", tier = "logistics-3", sub_group = "belt"},
    -- rail
    {item = "rail", tier = "railway", sub_group = "transport", type = "rail-planner"},
    -- tile
    {item = "landfill", tier = "landfill", sub_group = "tile"},
    {item = "concrete", tier = "concrete", sub_group = "tile"},
    {item = "hazard-concrete", tier = "concrete", sub_group = "tile"},
    {item = "refined-concrete", tier = "concrete", sub_group = "tile"},
    {item = "refined-hazard-concrete", tier = "concrete", sub_group = "tile"},
    -- raw materials
    {item = "explosives", tier = "explosives", sub_group = "raw-material"},
    -- rocket parts
    {item = "rocket-control-unit", tier = "rocket-control-unit", sub_group = "rocket"},
    {item = "low-density-structure", tier = "low-density-structure", sub_group = "rocket"},
    {item = "rocket-fuel", tier = "rocket-fuel", sub_group = "rocket"},
    -- intermediates
    {item = "engine-unit", tier = "engine", sub_group = "intermediates"},
    {item = "electric-engine-unit", tier = "electric-engine", sub_group = "intermediates"},
    {item = "flying-robot-frame", tier = "robotics", sub_group = "intermediates"},
    -- production
    {item = "repair-pack", tier = "deadlock-stacking-1", sub_group = "production"},
    {item = "solar-panel", tier = "solar-energy", sub_group = "production"},
    {item = "accumulator", tier = "electric-energy-accumulators", sub_group = "production"},
    {item = "stone-furnace", tier = "deadlock-stacking-1", sub_group = "production"},
    {item = "steel-furnace", tier = "advanced-material-processing", sub_group = "production"},
    {item = "electric-furnace", tier = "advanced-material-processing-2", sub_group = "production"},
    -- module
    {item = "beacon", tier = "effect-transmission", sub_group = "module"},
    {item = "speed-module", tier = "speed-module", sub_group = "module", type = "module"},
    {item = "speed-module-2", tier = "speed-module-2", sub_group = "module", type = "module"},
    {item = "speed-module-3", tier = "speed-module-3", sub_group = "module", type = "module"},
    {item = "effectivity-module", tier = "effectivity-module", sub_group = "module", type = "module"},
    {item = "effectivity-module-2", tier = "effectivity-module-2", sub_group = "module", type = "module"},
    {item = "effectivity-module-3", tier = "effectivity-module-3", sub_group = "module", type = "module"},
    {item = "productivity-module", tier = "productivity-module", sub_group = "module", type = "module"},
    {item = "productivity-module-2", tier = "productivity-module-2", sub_group = "module", type = "module"},
    {item = "productivity-module-3", tier = "productivity-module-3", sub_group = "module", type = "module"},
    -- science
    {item = "automation-science-pack", tier = "deadlock-stacking-1", sub_group = "science", type = "tool"},
    {item = "logistic-science-pack", tier = "logistic-science-pack", sub_group = "science", type = "tool"},
    {item = "military-science-pack", tier = "military-science-pack", sub_group = "science", type = "tool"},
    {item = "chemical-science-pack", tier = "chemical-science-pack", sub_group = "science", type = "tool"},
    {item = "production-science-pack", tier = "production-science-pack", sub_group = "science", type = "tool"},
    {item = "utility-science-pack", tier = "utility-science-pack", sub_group = "science", type = "tool"},
    {item = "space-science-pack", tier = "space-science-pack", sub_group = "science", type = "tool"}
}

return Items
