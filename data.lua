local Items = require("migrations.items").items

local function main()
    local se_option = settings.startup["se-space-science-pack"] or nil

    --Add stacking recipes
    for name, item in pairs(Items) do
        local skip = false
        if item.mod_exclude and #item.mod_exclude > 0 then
            for k, v in pairs(item.mod_exclude) do
                log(v)
                if mods[v] then
                    skip = true
                end
            end
        end

        if se_option and se_option.value and (se_option.value == "Remove" or se_option.value == "Replace") and name == "space-science-pack" then
            log("skipping stacking space-science-pack")
            skip = true
        end

        if not skip then
            local key = string.format("stack_%s", item.sub_group)
            if settings.startup[key] and settings.startup[key].value then
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
                        log("DeadlockStackingForVanilla adding stacked version of " .. name)
                        local icon_path = string.format("__DeadlockStackingForVanilla__/graphics/icons/%s", icon)
                        deadlock.add_stack(name, icon_path, tech, 64, item_type, 4)
                    end
                end
            end
        end
    end
end

main()
