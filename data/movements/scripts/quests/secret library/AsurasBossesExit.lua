local destination = {
	[64021] = {newPos = Position(32858, 32796, 11)},
	[64023] = {newPos = Position(32817, 32778, 11)},
	[64025] = {newPos = Position(32854, 32738, 10)},
	[64027] = {newPos = Position(32857, 32767, 10)},
	[64030] = {newPos = Position(32809, 32765, 10)}
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

