local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 14515 then
		if player:getLevel() < 250 then
			player:sendCancelMessage("You need at least level 250.")
			toPosition:sendMagicEffect(CONST_ME_POFF)
		else
			player:teleportTo({x = 31913, y = 32355, z = 8})
			Position({x = 31913, y = 32355, z = 8})
		end
	elseif item:getActionId() == 14516 then		
		player:teleportTo({x = 31913, y = 32355, z = 8})
		Position({x = 31913, y = 32355, z = 8})
	end	
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(14515)
bounacEntrance:aid(14516)
bounacEntrance:register()