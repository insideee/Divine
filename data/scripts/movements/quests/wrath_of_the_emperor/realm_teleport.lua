local realmTeleport = MoveEvent()

function realmTeleport.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	--TODO check why has this hasBlessing here
	local realm = Position(33028, 31086, 13)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:teleportTo(realm)
	realm:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

realmTeleport:type("stepin")
realmTeleport:aid(8028)
realmTeleport:register()

