local function roomIsOccupied(centerPosition,
		rangeX, rangeY)
	local spectators = Game.getSpectators(centerPosition, false, true,
		rangeX,
		rangeX, rangeY, rangeY)
	if #spectators ~= 0 then
		return true
	end
	return false
end

local config = {
	daily = true,
}

local destination = {
	[4600] ={
		bossName = 'unaz the mean',
		storage = 284702,
		killed = 284712,
		playerPosition = Position(33564, 31492, 8),
		bossPosition = Position(33580, 31491, 8),
		centerPosition = Position(33572, 31496, 8),
		rangeX = 5, rangeY = 5,
	}, -- entrada
	[4602] ={
		bossName = 'irgix the flimsy',
		storage = 284703,
		killed = 284713,
		playerPosition = Position(33469, 31396, 8),
		bossPosition = Position(33469, 31407, 8),
		centerPosition = Position(33467, 31400, 8),
		rangeX = 5, rangeY = 5,
	},
	[4604] ={
		bossName = 'vok the freakish',
		storage = 284704,
		killed = 284714,
		playerPosition = Position(33508, 31484, 9),
		bossPosition = Position(33508, 31495, 9),
		centerPosition = Position(33509, 31490, 9),
		rangeX = 5, rangeY = 5,
	},
}

local boss = MoveEvent()

function boss.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local boss = destination[item.uid] or destination[item:getActionId()]
	if not boss then
		return true
	end


	if config.daily and player:getStorageValue(boss.storage) > os.time() then
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:sendCancelMessage("You are not ready from last battle.")
		return true
	end

	if roomIsOccupied(boss.centerPosition, boss.rangeX, boss.rangeY) then
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:sendCancelMessage("There's already someone inside.")
		return true
	end

	player:setStorageValue(boss.storage, os.time() + 20*60*60) 
	player:setStorageValue(boss.killed, 1) 
	player:teleportTo(boss.playerPosition)
	boss.playerPosition:sendMagicEffect(CONST_ME_TELEPORT)

	local monster = Game.createMonster(boss.bossName, boss.bossPosition)
	if not monster then
		return true
	end


	return true
end

boss:type("stepin")

for index, value in pairs(destination) do
	boss:aid(index)
end

boss:register()