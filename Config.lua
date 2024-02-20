Config = {}

-- Default notification style
Config.defaultNotificationStyle = {
    backgroundColor = "#141414", -- Grey background
    color = "#ffffff", -- White text
    border = "2px solid #094ed9", -- Blue border
    padding = "15px", -- Padding around the content
    fontFamily = "Arial, sans-serif", -- Font family
    borderRadius = "5px", -- Rounded corners
    boxShadow = "2px 2px 5px rgba(0, 0, 0, 0.3)" -- Box shadow
}

-- Default icon color
Config.defaultIconColor = "#094ed9" -- blue

-- Notification styles based on job
Config.notificationStyles = {
    LSPD = {
        border = "2px solid #094ed9", --  Blue border
        iconColor = "#094ed9" --  Blue
    },
    BCSO = {
        border = "2px solid #2e5930", -- Green border
        iconColor = "#2e5930" -- Green
    },
    sasp = {
        border = "2px solid #ffcc00", -- Yellow border
        iconColor = "#ffcc00" -- Yellow
    }
}
