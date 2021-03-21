local getOnline = TalkAction("!online")

function getOnline.onSay(player, words, param)
    local playerCount = Game.getPlayerCount() 
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, playerCount.." players online.")
    return false
end

getOnline:separator(" ")
getOnline:register()