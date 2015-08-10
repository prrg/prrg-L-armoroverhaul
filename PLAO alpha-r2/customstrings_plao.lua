 -- Code by Melting Terminal
local text_original = LocalizationManager.text
local testAllStrings = false  --Set to true to show all string ID's, false to return to normal.
function LocalizationManager:text(string_id, ...)
return string_id == "bm_armor_level_1" and "Casual Clothing" -- Two-piece Suit
or string_id == "bm_armor_level_5" and "Flak Jacket" -- idem
or string_id == "bm_armor_level_6" and "Tactical Vest" -- Combined Tactical Vest
or string_id == "bm_armor_level_7" and "Modded Tactical Vest" -- Improved Combined Tactical Vest
or string_id == "bm_menu_armors" and "Clothing" -- Armors (tab)
or string_id == "bm_menu_dodge" and "Dodge (%)" -- Dodge (value)
or string_id == "menu_inventory" and "Blackmarket" --Inventory (menu)
or testAllStrings == true and string_id
or text_original(self, string_id, ...)
end