local destination = {
	[64035] = {newPos = Position(32042, 31923, 15)},
	[64036] = {newPos = Position(32041, 32023, 14)},
	[64037] = {newPos = Position(32041, 31940, 15)}
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

