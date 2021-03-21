local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 35004 then
		player:teleportTo({x = 33741, y = 31470, z = 14})
	end
	if item:getActionId() == 35003 then	
			player:teleportTo({x = 33609, y = 31500, z = 10})
	end
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(35004)
bounacEntrance:aid(35003)
bounacEntrance:register()