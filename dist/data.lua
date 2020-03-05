local Items = require("migrations.items").items

local function main()
    --Add stacking recipes
    for name, item in pairs(Items) do
        if settings.startup[string.format("stack_%s", item.sub_group)] and settings.startup[string.format("stack_%s", item.sub_group)].value then
            local icon
            local tech = item.tier
            local item_type = item.type or "item"
            if not item.icon then
                icon = string.format("stacked-%s.png", name)
            else
                icon = item.icon
            end
            if data.raw[item_type][name] then
                if not data.raw.item["deadlock-stack-" .. name] then
                    deadlock.add_stack(name, string.format("__DeadlockStackingForVanilla__/graphics/icons/%s", icon), tech, 64, item_type, 4)
                end
            end
        end
    end
end

main()
