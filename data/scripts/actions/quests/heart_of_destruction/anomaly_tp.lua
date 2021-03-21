local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 14323 then
		if player:getStorageValue(Storage.anomalyTp) ~= 1 then
			player:sendCancelMessage("You need do something first.")
			player:teleportTo({x = 32105, y = 31329, z = 12})
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		else
			player:teleportTo({x = 32244, y = 31253, z = 14})
		end
	end
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(14323)
bounacEntrance:register()