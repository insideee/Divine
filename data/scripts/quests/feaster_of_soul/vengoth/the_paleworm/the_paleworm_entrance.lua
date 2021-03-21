local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 35010 then
			player:teleportTo({x = 33569, y = 31451, z = 10})
	end
	if item:getActionId() == 35011 then 
       if player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.TheUnwelcome.Killed) ~= 1 and 
			player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.TheDreadMaiden.Killed) ~= 1 and
			player:getStorageValue(Storage.Quest.FeasterOfSouls.Bosses.TheFearFeaster.Killed) ~= 1 then
			player:sendCancelMessage("You need first kill all bosses to access The Pale Worm.")
			player:teleportTo({x = 33572, y = 31451, z = 10})
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		else
			player:teleportTo({x = 33781, y = 31504, z = 14})
		end
	end
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(35010)
bounacEntrance:aid(35011)
bounacEntrance:register()