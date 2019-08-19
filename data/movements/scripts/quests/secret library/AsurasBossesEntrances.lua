local destination = {
	[64020] = {newPos = Position(32888, 32772, 9)},
	[64022] = {newPos = Position(32862, 32742, 11)},
	[64024] = {newPos = Position(32862, 32770, 11)},
	[64026] = {newPos = Position(32881, 32788, 11)},
	[64029] = {newPos = Position(32880, 32828, 11)}
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

