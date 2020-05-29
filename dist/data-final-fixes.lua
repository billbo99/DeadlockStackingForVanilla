local Items = require("migrations.items").items
local rusty_locale = require("rusty-locale.locale")
local rusty_recipes = require("rusty-locale.recipes")
local Func = require("utils.func")

local function reskin_prototype(proto, product_name, extra_icon)
    if Items[product_name] then
        local icon = string.format("stacked-%s.png", product_name)
        proto.icons = {
            {
                icon = string.format("__DeadlockStackingForVanilla__/graphics/icons/%s", icon),
                icon_size = 64,
                icon_mipmaps = 4
            }
        }
        if extra_icon then
            table.insert(proto.icons, extra_icon)
        end
    else
        -- log("product_name not found to reskin .. " .. product_name)
    end
end

local function FixLocalisedNames()
    for recipe_name, recipe_table in pairs(data.raw.recipe) do
        if Func.starts_with(recipe_name, "deadlock-stacks-unstack-") then
            local product = rusty_recipes.get_main_product(recipe_table)
            if product then
                local product_locale = rusty_locale.of(product.name, product.type)
                local deadlock_item_name = string.format("deadlock-stack-%s", product.name)
                local stack_recipe = string.format("deadlock-stacks-stack-%s", product.name)
                local unstack_recipe = string.format("deadlock-stacks-unstack-%s", product.name)

                if data.raw.item[deadlock_item_name] then
                    data.raw.item[deadlock_item_name].localised_name[2] = product_locale.name
                end
                if data.raw.recipe[stack_recipe] then
                    data.raw.recipe[stack_recipe].localised_name[2] = product_locale.name
                end
                if data.raw.recipe[unstack_recipe] then
                    data.raw.recipe[unstack_recipe].localised_name[2] = product_locale.name
                end

                if settings.startup["stack_reskin_icons"].value then
                    reskin_prototype(data.raw.item[deadlock_item_name], product.name, nil)
                    reskin_prototype(
                        data.raw.recipe[stack_recipe],
                        product.name,
                        {
                            icon = "__deadlock-beltboxes-loaders__/graphics/icons/square/arrow-d-64.png",
                            scale = 0.25,
                            icon_size = 64
                        }
                    )
                    reskin_prototype(
                        data.raw.recipe[unstack_recipe],
                        product.name,
                        {
                            icon = "__deadlock-beltboxes-loaders__/graphics/icons/square/arrow-u-64.png",
                            scale = 0.25,
                            icon_size = 64
                        }
                    )
                end
            end
        end
    end
end

FixLocalisedNames()
