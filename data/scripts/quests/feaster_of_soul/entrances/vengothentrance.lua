local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 14530 then
		if  player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.UnazTheMean.Killed) ~= 1 or 
			player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.IrgixTheFlimsy.Killed) ~= 1 or
			player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.VokTheFreakish.Killed) ~= 1 then
			player:sendCancelMessage("You need first kill the Nightmare minibosses.")
			player:teleportTo({x = 32962, y = 31498, z = 7})
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		else
			player:teleportTo({x = 33650, y = 31445, z = 10})
			Position({x = 33650, y = 31445, z = 10})
		end
	end
	if item:getActionId() == 14531 then
		if  player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.UnazTheMean.Killed) ~= 1 or
			player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.IrgixTheFlimsy.Killed) ~= 1 or
			player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.VokTheFreakish.Killed) ~= 1 then
			player:sendCancelMessage("You need first kill the Nightmare minibosses.")
			player:teleportTo({x = 32963, y = 31498, z = 7})
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		else	
			player:teleportTo({x = 33650, y = 31445, z = 10})
			Position({x = 33650, y = 31445, z = 10})
		end	
	end
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(14530)
bounacEntrance:aid(14531)
bounacEntrance:register()