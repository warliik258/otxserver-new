function onSay(player, words, param)
    if not player:getGroup():getAccess() then
        return true
    end

    if player:getAccountType() < ACCOUNT_TYPE_GOD then
        return false
    end

    local specs = Game.getSpectators(player:getPosition(), false, false, 7, 7, 7, 7)
    local orig = player:getPosition()
    local isRemoved = false

    for i = 1, #specs do
        local spectator = specs[i]
        if spectator:isCreature() and tostring(spectator:getId()) == param then
            spectator:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            spectator:remove()
            isRemoved = true
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, string.format("Creature with ID %s has been removed successfully.", param))
        end
    end

    if not isRemoved then
        orig:sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Removing creature failed.")
    end
end