local changecoin = Action() 

local config = {
    [2148] = {changeTo = 2152},
    [2152] = {changeBack = 2148, changeTo = 2160},
    [2160] = {changeBack = 2152}
}

function changecoin.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local coin = config[item:getId()]
    if coin.changeTo and item.type == 100 then
        item:remove()
        player:addItem(coin.changeTo, 1)
    elseif coin.changeBack then
        item:remove(1)
        player:addItem(coin.changeBack, 100)
    else
        return false
    end
    return true
end

changecoin:id(2148,2152,2160)
changecoin:register()