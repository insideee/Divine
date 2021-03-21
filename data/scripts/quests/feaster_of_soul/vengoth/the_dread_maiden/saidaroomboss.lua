local paleWormExit = MoveEvent()

function paleWormExit.onStepIn(creature, item, position, fromPosition)
	if creature:isPlayer() == false then
		return true
	end
	position:sendMagicEffect(CONST_ME_TELEPORT)
	creature:teleportTo(Position(33558, 31524, 10))
	creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

paleWormExit:type("stepin")
paleWormExit:aid(48662)

paleWormExit:register() 