local bounacEntrance = MoveEvent()
function bounacEntrance.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 35008 then
			player:teleportTo({x = 33611, y = 31529, z = 10})
	end
	if item:getActionId() == 35009 then
		player:teleportTo({x = 33745, y = 31537, z = 14})
	end
	return true
end

bounacEntrance:type("stepin")

bounacEntrance:aid(35008)
bounacEntrance:aid(35009)
bounacEntrance:register()