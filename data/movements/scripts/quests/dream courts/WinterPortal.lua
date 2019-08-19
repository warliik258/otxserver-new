local destination = {
	[64042] = {newPos = Position(33675, 32148, 7)},
	[64043] = {newPos = Position(32354, 31249, 3)},
	[64044] = {newPos = Position(32066, 31950, 13)},
	[64045] = {newPos = Position(33688, 32112, 5)}
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	local teleport = destination[item.actionid]
	if not teleport then
		return
	end
		player:teleportTo(teleport.newPos)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
end

