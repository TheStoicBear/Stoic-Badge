exports('policeBadge', function()
    -- Trigger the server event 'showPlayerInfo' without passing any parameters
    TriggerServerEvent('showPlayerInfo')

    -- Display the progress bar
    lib.progressBar({
        duration = 5000, -- Set the duration of the progress bar
        label = "Showing Player Badge", -- Label for the progress bar
        anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 }, -- Animation details
        prop = { model = 'prop_lspd_badge', pos = { x = 0.13, y = 0.023, z = -0.04 }, rot = { x = -90.0, y = -180.0, z = 300.0 }, bone = 28422 }, -- Prop details
        disable = { move = false, car = false, combat = false }, -- Actions to be disabled during the progress bar
    })
end)

exports('countyBadge', function()
    -- Trigger the server event 'showPlayerInfo' without passing any parameters
    TriggerServerEvent('showPlayerInfo')

    -- Display the progress bar
    lib.progressBar({
        duration = 5000, -- Set the duration of the progress bar
        label = "Showing Player Badge", -- Label for the progress bar
        anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 }, -- Animation details
        prop = { model = 'prop_bcso_badge', pos = { x = 0.13, y = 0.023, z = -0.04 }, rot = { x = -90.0, y = -180.0, z = 300.0 }, bone = 28422 }, -- Prop details
        disable = { move = false, car = false, combat = false }, -- Actions to be disabled during the progress bar
    })
end)


exports('stateBadge', function()
    -- Trigger the server event 'showPlayerInfo' without passing any parameters
    TriggerServerEvent('showPlayerInfo')

    -- Display the progress bar
    lib.progressBar({
        duration = 5000, -- Set the duration of the progress bar
        label = "Showing Player Badge", -- Label for the progress bar
        anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 }, -- Animation details
        prop = { model = 'prop_sahp_badge', pos = { x = 0.13, y = 0.023, z = -0.04 }, rot = { x = -90.0, y = -180.0, z = 300.0 }, bone = 28422 }, -- Prop details
        disable = { move = false, car = false, combat = false }, -- Actions to be disabled during the progress bar
    })
end)

exports('fibBadge', function()
    -- Trigger the server event 'showPlayerInfo' without passing any parameters
    TriggerServerEvent('showPlayerInfo')

    -- Display the progress bar
    lib.progressBar({
        duration = 5000, -- Set the duration of the progress bar
        label = "Showing Player Badge", -- Label for the progress bar
        anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 }, -- Animation details
        prop = { model = 'prop_fibb_badge', pos = { x = 0.13, y = 0.023, z = -0.04 }, rot = { x = -90.0, y = -180.0, z = 300.0 }, bone = 28422 }, -- Prop details
        disable = { move = false, car = false, combat = false }, -- Actions to be disabled during the progress bar
    })
end)
