lib.addCommand('flashbadge', {
    help = 'Used to Flash your badge.',
    restricted = false, -- Adjust as needed
    params = {} -- No parameters needed for this command
}, function(source, args, rawCommand)
    TriggerEvent('showPlayerInfo')
end)

lib.addCommand('set-badgenumber', {
    help = 'Set the BadgeNumber for the player.',
    restricted = true,
    params = {
        {
            name = 'badgeNumber',
            help = 'The badge number to set.',
            type = 'string'  -- Change the type to string
        }
    }
}, function(source, args, rawCommand)
    local badgeNumber = args.badgeNumber

    if badgeNumber then
        local player = NDCore.getPlayer(source)
        player.setMetadata('BadgeNumber', badgeNumber)
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Badge Number Set',
            description = 'Your badge number has been set to ' .. badgeNumber,
            type = 'success',
            style = {
                backgroundColor = "#141414", -- Grey background
                color = "#ffffff", -- White text
                border = "2px solid #00d123", -- Blue border
                padding = "15px", -- Padding around the content
                fontFamily = "Arial, sans-serif", -- Font family
                borderRadius = "5px", -- Rounded corners
                boxShadow = "2px 2px 5px rgba(0, 0, 0, 0.3)" -- Box shadow
            },
            icon = "fa-solid fa-clipboard",
            iconColor = "#00d123",
            duration = 5000
        })
    else
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Invalid Badge Number',
            description = 'Please provide a valid badge number.',
            type = 'error',
            duration = 5000
        })
    end
end)

RegisterServerEvent('showPlayerInfo') -- Define the server event
AddEventHandler('showPlayerInfo', function()
    local source = source -- Retrieve the source player ID
    local playerData = NDCore.getPlayer(source)
    local job = playerData.getData('job')
    local fullname = playerData.getData('fullname')
    local badgeNumber = playerData.getMetadata('BadgeNumber')
    local jobInfo = playerData.getData('jobInfo')

    -- Import configurations from config.lua
    local defaultNotificationStyle = Config.defaultNotificationStyle
    local defaultIconColor = Config.defaultIconColor
    local notificationStyles = Config.notificationStyles

    -- Determine notification style and icon color based on job
    local notificationStyle = defaultNotificationStyle
    local iconColor = defaultIconColor

    -- Adjust notification style and icon color based on job
    if notificationStyles[job] then
        notificationStyle.border = notificationStyles[job].border
        iconColor = notificationStyles[job].iconColor
    end

    -- Construct the notification data for badge number
    local badgeNotificationData = {
        title = "Badge Number # " .. (badgeNumber or 'N/A'), -- Badge number or N/A if not available
        type = 'inform', -- Notification type
        style = notificationStyle, -- Notification style
        icon = "fa-solid fa-id-badge", -- Icon for the notification
        iconColor = iconColor, -- Icon color
        duration = 5000 -- Duration of the notification
    }

    -- Construct the notification data for job label
    local jobLabelNotificationData = {
        title = jobInfo.label or 'Job Label Unavailable', -- Job label or unavailable message
        type = 'inform', -- Notification type
        style = notificationStyle, -- Notification style
        icon = "fa-solid fa-id-badge", -- Icon for the notification
        iconColor = iconColor, -- Icon color
        duration = 5000 -- Duration of the notification
    }

    -- Construct the notification data for rank name
    local rankNameNotificationData = {
        title = jobInfo.rankName or 'Rank Name Unavailable', -- Rank name or unavailable message
        type = 'inform', -- Notification type
        style = notificationStyle, -- Notification style
        icon = "fa-solid fa-id-badge", -- Icon for the notification
        iconColor = iconColor, -- Icon color
        duration = 5000 -- Duration of the notification
    }

    -- Construct the notification data for fullname
    local fullnameNotificationData = {
        title = fullname or 'Name Unavailable', -- Fullname or unavailable message
        type = 'inform', -- Notification type
        style = notificationStyle, -- Notification style
        icon = "fa-solid fa-id-badge", -- Icon for the notification
        iconColor = iconColor, -- Icon color
        duration = 5000 -- Duration of the notification
    }

    -- Iterate through players and send notifications
    for _, player in ipairs(GetPlayers()) do
        local sourcePos = GetEntityCoords(GetPlayerPed(source))
        local targetPos = GetEntityCoords(GetPlayerPed(player))
        local distance = #(sourcePos - targetPos)

        if distance <= 10.0 then
            -- Send notifications to the player
            TriggerClientEvent('ox_lib:notify', player, badgeNotificationData)
            TriggerClientEvent('ox_lib:notify', player, jobLabelNotificationData)
            TriggerClientEvent('ox_lib:notify', player, rankNameNotificationData)
            TriggerClientEvent('ox_lib:notify', player, fullnameNotificationData)
        end
    end
end)

