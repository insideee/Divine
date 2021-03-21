local destination = {
	[6661] = Position(33535, 31446, 8), --primeira entrada
	[6662] = Position(33544, 31446, 8), --primeira saida
	[4601] = Position(33566, 31477, 8), --saida unaz
	[4603] = Position(33493, 31400, 8), --saida flimsy
	[6663] = Position(33483, 31452, 9), --descer -1
	[6664] = Position(33486, 31435, 8), --subir +1
	[6665] = Position(33542, 31412, 9), --segunda passagem
	[6666] = Position(33530, 31412, 9), --segunda passagem
	[6669] = Position(33551, 31439, 9), --terceira passagem
	[6670] = Position(33537, 31441, 9), --terceira passagem
	[6672] = Position(33572, 31465, 9), --quarta passagem
	[6673] = Position(33556, 31468, 9), --quarta passagem
	[4518] = Position(31914, 32355, 8), --jakundaf fenda
	[4605] = Position(33509, 31452, 9), --saida vok
	[14517] = Position(33220, 31705, 7), --saida edron
}

local teleport = MoveEvent()

function teleport.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local teleport = destination[item.actionid]
	if teleport then
		player:teleportTo(teleport)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		teleport:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

teleport:type("stepin")

for index, value in pairs(destination) do
	teleport:aid(index)
end

teleport:register()