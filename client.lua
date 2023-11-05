local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    exports['qb-target']:AddTargetModel('prop_sapling_break_02', {
        options = {
            {
                id = 'kokaiinilehti',
                event = 'op-cocaine:client:kokapensas:kerays',
                icon = 'fas fa-money-check-alt',
                label = 'Kerää',
            },
        },
        distance = 1.8,
    })
end)

RegisterNetEvent('op-cocaine:client:kokapensas:kerays', function()
    local Pintta = QBCore.Functions.HasItem('CocaineFreshLeaf')
    if Pintta then
        QBCore.Functions.Progressbar('keraatkoksulehtia', 'Collect..', math.random(8500, 17500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base',
            flags = 50,
        }, {}, {}, function()
            QBCore.Functions.TriggerCallback('op-cocaine:server:kokapensas:kerays', function()
            end)
            ClearPedTasks(PlayerPedId())
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
        end, function()
            QBCore.Functions.Notify('Failed..', 'error')
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
            ClearPedTasks(GetPlayerPed(-1))
        end)
    else
        QBCore.Functions.Notify('You missed something..?', 'error')
    end
end)

RegisterNetEvent('op-cocaine:client:cocaineprocess:kuivata', function()
    local Pintta = QBCore.Functions.HasItem('DryCocaineLeaf')
    if Pintta then
        QBCore.Functions.Progressbar('keraatkoksulehtia', 'Käsittelet..', math.random(8500, 17500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base',
            flags = 50,
        }, {}, {}, function()
            QBCore.Functions.TriggerCallback('op-cocaine:server:cocaineprocess:kuivata', function()
            end)
            ClearPedTasks(PlayerPedId())
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
        end, function()
            QBCore.Functions.Notify('Failed..', 'error')
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
            ClearPedTasks(GetPlayerPed(-1))
        end)
    else
        QBCore.Functions.Notify('You missed something..?', 'error')
    end
end)

RegisterNetEvent('op-cocaine:client:cocaineprocess:HydroChloride', function()
    local Pintta = QBCore.Functions.HasItem('HydroChloride')
    if Pintta then
        QBCore.Functions.Progressbar('keraatkoksulehtia', 'Käsittelet..', math.random(8500, 17500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base',
            flags = 50,
        }, {}, {}, function()
            QBCore.Functions.TriggerCallback('op-cocaine:server:cocaineprocess:HydroChloride', function()
            end)
            ClearPedTasks(PlayerPedId())
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
        end, function()
            QBCore.Functions.Notify('Failed..', 'error')
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
            ClearPedTasks(GetPlayerPed(-1))
        end)
    else
        QBCore.Functions.Notify('You missed something..?', 'error')
    end
end)

RegisterNetEvent('op-cocaine:client:cocaineprocess:whitening', function()
    local Pintta = QBCore.Functions.HasItem('whiteningaine')
    if Pintta then
        QBCore.Functions.Progressbar('keraatkoksulehtia', 'Käsittelet..', math.random(8500, 17500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base',
            flags = 50,
        }, {}, {}, function()
            QBCore.Functions.TriggerCallback('op-cocaine:server:cocaineprocess:whitening', function()
            end)
            ClearPedTasks(PlayerPedId())
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
        end, function()
            QBCore.Functions.Notify('Failed..', 'error')
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
            ClearPedTasks(GetPlayerPed(-1))
        end)
    else
        QBCore.Functions.Notify('You missed something..?', 'error')
    end
end)

RegisterNetEvent('op-cocaine:client:cocaineprocess:pussitus', function()
    local Pintta = QBCore.Functions.HasItem('cocapussukka')
    if Pintta then
        QBCore.Functions.Progressbar('keraatkoksulehtia', 'Bagging..', math.random(8500, 17500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base',
            flags = 50,
        }, {}, {}, function()
            QBCore.Functions.TriggerCallback('op-cocaine:server:cocaineprocess:pussitus', function()
            end)
            ClearPedTasks(PlayerPedId())
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
        end, function()
            QBCore.Functions.Notify('Failed..', 'error')
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
            ClearPedTasks(GetPlayerPed(-1))
        end)
    else
        QBCore.Functions.Notify('You missed something..?', 'error')
    end
end)

RegisterNetEvent('op-cocaine:client:cocaineprocess:smuggling', function()
    local Pintta = QBCore.Functions.HasItem('weapon_knife')
    if Pintta then
        QBCore.Functions.Progressbar('keraatkoksulehtia', 'You tear it..', math.random(8500, 17500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'amb@prop_human_bum_bin@base',
            anim = 'base',
            flags = 50,
        }, {}, {}, function()
            QBCore.Functions.TriggerCallback('op-cocaine:server:cocaineprocess:smuggling', function()
            end)
            ClearPedTasks(PlayerPedId())
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
        end, function()
            QBCore.Functions.Notify('Failed..', 'error')
            StopAnimTask(GetPlayerPed(-1), 'amb@prop_human_bum_bin@base', 'base', 1.0)
            ClearPedTasks(GetPlayerPed(-1))
        end)
    else
        QBCore.Functions.Notify('You missed something..?', 'error')
    end
end)

CreateThread(function()
    exports['qb-target']:AddTargetModel('v_ret_ml_tableb', {
        options = {
            {
                id = '1',
                event = 'op-cocaine:client:cocaineprocess:kuivata',
                icon = 'fas fa-circle-xmark',
                label = 'Valmistus',
            }, {
                id = '2',
                event = 'op-cocaine:client:cocaineprocess:HydroChloride',
                icon = 'fas fa-circle-xmark',
                label = 'Processing Step 1',
            }, {
                id = '3',
                event = 'op-cocaine:client:cocaineprocess:whitening',
                icon = 'fas fa-circle-xmark',
                label = 'Processing Step 2',
            }, {
                id = '4',
                event = 'op-cocaine:client:cocaineprocess:pussitus',
                icon = 'fas fa-circle-xmark',
                label = 'Bagging',
            }, {
                id = '5',
                event = 'op-cocaine:client:cocaineprocess:smuggling',
                icon = 'fas fa-circle-xmark',
                label = 'Package',
            },
        },
        distance = 1.8,
    })
end)

local function HuumeVahinko()
    local ped = PlayerPedId()
    local vahinkomittari = math.random(0, 100)
    if GetEntityHealth(ped) - vahinkomittari > 0 then
        SetEntityHealth(ped, GetEntityHealth(ped) - vahinkomittari)
        QBCore.Functions.Notify('Hakeudu hoitoon välittämästi..', 'error')
    elseif GetEntityHealth(ped) ~= 0 then
        SetEntityHealth(ped, 0)
        QBCore.Functions.Notify('Olipa tujua kamaa..', 'error')
    end
end

local function HuumeVaikutus()
    StartScreenEffect("DrugsTrevorClownsFightIn", 3.0, 0)
    Wait(3000)
    StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
    Wait(3000)
    StartScreenEffect("DrugsTrevorClownsFightOut", 3.0, 0)
    StopScreenEffect("DrugsTrevorClownsFight")
    StopScreenEffect("DrugsTrevorClownsFightIn")
    StopScreenEffect("DrugsTrevorClownsFightOut")
end

RegisterNetEvent('qb-huumetehdas:client:kokaiini:annos', function()
    QBCore.Functions.Progressbar('cocainesample', 'Käytät..', math.random(3500, 8500), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_suicide",
        anim = "pill",
        flags = 49,
    }, {}, {}, function()
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        HuumeVaikutus()
        QBCore.Functions.Progressbar('movefeeling', 'Vaikutus..', math.random(6500, 18500), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            Wait(2000)
            HuumeVahinko()
        end, function()
            StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
            QBCore.Functions.Notify('Failed..', 'error')
        end)
        ClearPedBloodDamage(PlayerPedId())
    end, function()
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify('Failed..', 'error')
    end)
end)