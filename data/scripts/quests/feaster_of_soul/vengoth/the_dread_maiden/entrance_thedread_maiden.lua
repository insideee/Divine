local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 35005 then
			player:teleportTo({x = 33558, y = 31524, z = 10})
	end
	if item:getActionId() == 35006 then
		player:teleportTo({x = 33746, y = 31506, z = 14})
	end
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(35005)
bounacEntrance:aid(35006)
bounacEntrance:register()