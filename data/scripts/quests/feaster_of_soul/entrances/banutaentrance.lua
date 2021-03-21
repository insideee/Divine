local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 14518 then
		if player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.BrainHead.Killed) ~= 1 then
			player:sendCancelMessage("You need first kill Brain Head.")
			player:teleportTo({x = 32883, y = 32519, z = 7})
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		else
			player:teleportTo({x = 33615, y = 31414, z = 8})
			Position({x = 33615, y = 31414, z = 8})
		end
	end
	if item:getActionId() == 14519 then
		if player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.BrainHead.Killed) ~= 1 then
			player:sendCancelMessage("You need first kill Brain Head.")
			player:teleportTo({x = 32883, y = 32519, z = 7})
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		else	
		player:teleportTo({x = 33615, y = 31414, z = 8})
		Position({x = 33615, y = 31414, z = 8})
		end	
	end
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(14518)
bounacEntrance:aid(14519)
bounacEntrance:register()