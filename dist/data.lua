local Items = require("migrations.items").items

local function main()
    local se_option = settings.startup["se-space-science-pack"] or nil

    --Add stacking recipes
    for name, item in pairs(Items) do
        if se_option and se_option.value and (se_option.value == "Remove" or se_option.value == "Replace") and name == "space-science-pack" then
            -- skip
            log("skipping stacking space-science-pack")
        else
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
                        log(name)
                        deadlock.add_stack(name, string.format("__DeadlockStackingForVanilla__/graphics/icons/%s", icon), tech, 64, item_type, 4)
                    end
                end
            end
        end
    end
end

main()
