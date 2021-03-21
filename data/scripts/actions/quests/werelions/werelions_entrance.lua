local bounacEntrance = Action()
function bounacEntrance.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 6644 then
		if player:getLevel() < 100 then
			player:sendCancelMessage("You need at least level 100.")
			toPosition:sendMagicEffect(CONST_ME_POFF)
		else
			player:teleportTo({x = 33091, y = 32280, z = 12})
			Position({x = 33091, y = 32280, z = 12})
		end
	elseif item:getActionId() == 6645 then		
		player:teleportTo({x = 33093, y = 32315, z = 11})
		Position({x = 33093, y = 32315, z = 11})
		
	end	
	return true
end
bounacEntrance:aid(6644)
bounacEntrance:aid(6645)
bounacEntrance:register()