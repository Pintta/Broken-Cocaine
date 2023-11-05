local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('op-cocaine:server:kokapensas:kerays', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    local T = math.random(1, 10)
    P.Functions.AddItem('CocaineFreshLeaf', T)
    TriggerClientEvent('inventory:client:ItemBox', L, QBCore.Shared.Items['CocaineFreshLeaf'], 'add')
end)

QBCore.Functions.CreateCallback('op-cocaine:server:cocaineprocess:kuivata', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    local T = math.random(3, 6)
    if P.Functions.RemoveItem('CocaineFreshLeaf', 10) then
        if P.Functions.RemoveItem('Soda', 1) then
            P.Functions.AddItem('DryCocaineLeaf', T)
            TriggerClientEvent('inventory:client:ItemBox', L, QBCore.Shared.Items['DryCocaineLeaf'], 'add')
        else
            TriggerEvent('QBCore:Notify', L, 'You cannot do that now..?', 'error', 3200)
            return
        end
    else
        TriggerEvent('QBCore:Notify', L, 'You dont have enought..?', 'error', 3200)
        return
    end
end)

QBCore.Functions.CreateCallback('op-cocaine:server:cocaineprocess:HydroChloride', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    local T = math.random(3, 6)
    if P.Functions.RemoveItem('DryCocaineLeaf', 10) then
        if P.Functions.RemoveItem('HydroChloride', 1) then
            P.Functions.AddItem('RawCocaine', T)
            TriggerClientEvent('inventory:client:ItemBox', L, QBCore.Shared.Items['RawCocaine'], 'add')
        else
            TriggerEvent('QBCore:Notify', L, 'You cannot do that now..?', 'error', 3200)
            return
        end
    else
        TriggerEvent('QBCore:Notify', L, 'You dont have enought..?', 'error', 3200)
        return
    end
end)

QBCore.Functions.CreateCallback('op-cocaine:server:cocaineprocess:whitening', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    local T = math.random(3, 6)
    if P.Functions.RemoveItem('RawCocaine', 20) then
        if P.Functions.RemoveItem('whiteningaine', 1) then
            P.Functions.AddItem('FreshCocaine', T)
            TriggerClientEvent('inventory:client:ItemBox', L, QBCore.Shared.Items['FreshCocaine'], 'add')
        else
            TriggerEvent('QBCore:Notify', L, 'You cannot do that now..?', 'error', 3200)
            return
        end
    else
        TriggerEvent('QBCore:Notify', L, 'You dont have enought..?', 'error', 3200)
        return
    end
end)

QBCore.Functions.CreateCallback('op-cocaine:server:cocaineprocess:pussitus', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    local T = math.random(3, 6)
    if P.Functions.RemoveItem('FreshCocaine', 1) then
        if P.Functions.RemoveItem('CocaineEmptyBag', 1) then
            P.Functions.AddItem('CocaineSample', T)
            TriggerClientEvent('inventory:client:ItemBox', L, QBCore.Shared.Items['CocaineSample'], 'add')
        else
            TriggerEvent('QBCore:Notify', L, 'You cannot do that now...?', 'error', 3200)
            return
        end
    else
        TriggerEvent('QBCore:Notify', L, 'You dont have enought..?', 'error', 3200)
        return
    end
end)

QBCore.Functions.CreateCallback('op-cocaine:server:cocaineprocess:smuggling', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    if P.Functions.RemoveItem('CocaineSample', 100) then
        if P.Functions.RemoveItem('JesseTape', 1) then
            P.Functions.AddItem('CocainePackage', 1)
            TriggerClientEvent('inventory:client:ItemBox', L, QBCore.Shared.Items['CocainePackage'], 'add')
        else
            TriggerEvent('QBCore:Notify', L, 'You cannot do that now...', 'error', 3200)
            return
        end
    else
        TriggerEvent('QBCore:Notify', L, 'You dont have enought..?', 'error', 3200)
        return
    end
end)

QBCore.Functions.CreateUseableItem('CocainePackage', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    local T = math.random(80, 100)
    local Tarvitset = QBCore.Functions.HasItem('weapon_knife')
    if Tarvitset then
        if P.Functions.RemoveItem('CocainePackage', 1) then
            P.Functions.AddItem('CocaineSample', T)
            TriggerClientEvent('inventory:client:ItemBox', L, QBCore.Shared.Items['CocaineSample'], 'add')
        else
            TriggerEvent('QBCore:Notify', L, 'You cannot do that now...', 'error', 3200)
            return
        end
    else
        TriggerEvent('QBCore:Notify', L, 'You dont have enought..?', 'error', 3200)
    end
end)

QBCore.Functions.CreateUseableItem('CocaineSample', function(source)
    local L = source
    local P = QBCore.Functions.GetPlayer(L)
    if P.Functions.RemoveItem('CocaineSample', 1) then
        TriggerClientEvent('qb-huumetehdas:client:kokaiini:annos', L)
    else
        TriggerEvent('QBCore:Notify', L, 'You cannot do that now..', 'error', 3200)
        return
    end
end)
