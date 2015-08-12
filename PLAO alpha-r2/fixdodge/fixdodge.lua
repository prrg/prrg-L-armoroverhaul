 -- code by the_real_bob_ross
 -- find standalone on: http://www.nexusmods.com/payday2/mods/45/?
function PlayerManager:body_armor_skill_multiplier()
	local multiplier = 1
	multiplier = multiplier + self:upgrade_value("player", "tier_armor_multiplier", 1) - 1
	multiplier = multiplier + self:upgrade_value("player", "passive_armor_multiplier", 1) - 1
	multiplier = multiplier + self:upgrade_value("player", "armor_multiplier", 1) - 1
	multiplier = multiplier + self:team_upgrade_value("armor", "multiplier", 1) - 1
	multiplier = multiplier + self:get_hostage_bonus_multiplier("armor") - 1
multiplier = multiplier + (self:upgrade_value("player", "perk_armor_loss_multiplier", 1) - 1)/2
return multiplier
	end


function PlayerManager:skill_dodge_chance(running, crouching, on_zipline, override_armor, detection_risk)
	local chance = self:upgrade_value("player", "passive_dodge_chance", 0)
	chance = chance + self:upgrade_value("player", "tier_dodge_chance", 0)
	chance = chance - (self:upgrade_value("player", "perk_armor_loss_multiplier", 1) - 1)
	if running then
		chance = chance + self:upgrade_value("player", "run_dodge_chance", 0)
	end
	if crouching then
		chance = chance + self:upgrade_value("player", "crouch_dodge_chance", 0)
	end
	if on_zipline then
		chance = chance + self:upgrade_value("player", "on_zipline_dodge_chance", 0)
	end
	local detection_risk_add_dodge_chance = managers.player:upgrade_value("player", "detection_risk_add_dodge_chance")
	chance = chance + self:get_value_from_risk_upgrade(detection_risk_add_dodge_chance, detection_risk)
	chance = chance + self:upgrade_value("player", tostring(override_armor or managers.blackmarket:equipped_armor(true)) .. "_dodge_addend", 0)
	return chance
end