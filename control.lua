local Items = require("migrations.items").items
local Func = require("utils.func")

script.on_configuration_changed(
    function(e)
        -- e.mod_changes
        -- e.mod_startup_settings_changed
        -- e.migration_applied
        log("on_configuration_changed")
        if e.mod_startup_settings_changed or e.mod_changes["DeadlockStackingForVanilla"] then
            for index, force in pairs(game.forces) do
                local recipes = force.recipes

                for _, item in pairs(Items) do
                    if force.technologies[item.tier] and force.technologies[item.tier].researched then
                        local tech = force.technologies[item.tier]
                        for _, effect in pairs(tech.prototype.effects) do
                            if effect.type == "unlock-recipe" and Func.starts_with(effect.recipe, "deadlock") then
                                recipes[effect.recipe].enabled = true
                                recipes[effect.recipe].reload()
                            end
                        end
                    end
                end
            end
        end
    end
)
