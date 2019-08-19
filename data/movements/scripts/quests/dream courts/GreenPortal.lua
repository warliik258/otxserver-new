local destination = {
	[64032] = {newPos = Position(32055, 32002, 13)},
	[64033] = {newPos = Position(32016, 32038, 13)},
	[64034] = {newPos = Position(33695, 32190, 5)}
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

