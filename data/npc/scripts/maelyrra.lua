local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
    npcHandler:onThink()
end
local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if (msgcontains(msg, "mission")) then
	npcHandler:say("Are you sure you want that?", cid)
	elseif msgcontains(msg, "yes") and (player:getStorageValue(Storage.MaelyrraShields) == -1) then
	npcHandler:say("Ok! Take this.", cid)
	player:setStorageValue(Storage.MaelyrraShields, 1)
	player:addItem(29211, 1)
	player:addItem(29213, 1)
	player:addItem(29212, 1)
	else
	npcHandler:say({"You already done this mission!"}, cid)
	end
	end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
