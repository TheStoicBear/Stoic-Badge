# Stoic-Badge

Stoic-Badge is a resource designed to manage badge numbers for players and display relevant player information.

------------------------------------

## Features

- **Set Badge Number**: Admins can set the badge number for players using the `set-badgenumber` command.
- **Display Player Information**: Server can show player information such as job label, rank name, fullname, and badge number to nearby players using the `showPlayerInfo` event. 
  - This is used to show your information from NDFramework to other player either via /flashbagde command or ox_inventory items.

------------------------------------

## Commands

### set-badgenumber
- **Description**: Set the BadgeNumber for the player.
- **Permission**: Restricted
- **Parameters**:
  - `badgeNumber` (string): The badge number to set. Examples [1K02 - 101 - K1K02]

------------------------------------

## Functionality

The `set-badgenumber` command allows administrators to assign a badge number to players, which is useful for identification purposes. When a badge number is set, players receive a notification confirming the update.

The `showPlayerInfo` event enables the server to broadcast player information such as job label, rank name, fullname, and badge number to nearby players. This feature enhances immersion and role-playing dynamics within the server environment.

------------------------------------

## ox_inventory Installation
- Download and unzip `Stoic-Badge`
- Rename `Stoic-Badge-main` to `Stoic-Badge`
- Navigate to `Stoic-Badge/images` & copy said `.png`'s from this folder to;
  - `ox_inventory/web/images`
- Then Navigate to `ox_inventory/data/items.lua` and add the following to the end.

------------------------------------

## ox_inventory items.lua
Special thanks to
# agimir
For the prop setup and anims for showbadge anim and progression bar.
```lua
    -- BADGES: Police
    ['badge_fib'] = { -- idea: Player uses item to show badge prop
        label = 'FIB Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            export = 'Stoic-Badge.fibBadge',
        }
    },

    ['badge_bcso'] = { -- idea: Player uses item to show badge prop
        label = 'BCSO Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            export = 'Stoic-Badge.countyBadge',
        }
    },

    ['badge_sahp'] = { -- idea: Player uses item to show badge prop
        label = 'SAHP Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            export = 'Stoic-Badge.stateBadge',
        }
    },

    ['badge_lspd'] = { -- idea: Player uses item to show badge prop
        label = 'LSPD Badge',
        weight = 444,
        consume = 0,
        description = "For official use by FIB Agents only",
        client = {
            export = 'Stoic-Badge.policeBadge'
        }
    }
```
------------------------------------

## NON-inventory Installation
- Download and unzip `Stoic-Badge`
- Rename `Stoic-Badge-main` to `Stoic-Badge`
- Navigate to your `server.cfg` and `ensure Stoic-Badge`


------------------------------------


# Configuration Guide for Notification Styles

This guide explains how to configure the notification styles and colors in your Lua script.

## Configuration Options

### Default Notification Style (`Config.defaultNotificationStyle`)

- `backgroundColor`: Specifies the background color of the notification box. It is set to a grey background `#141414`.
- `color`: Sets the text color inside the notification box. The default is white text `#ffffff`.
- `border`: Defines the border style of the notification box. It is set to a blue border `2px solid #094ed9`.
- `padding`: Specifies the padding around the content inside the notification box. It is set to `15px`.
- `fontFamily`: Determines the font family used for text inside the notification box. It is set to `Arial, sans-serif`.
- `borderRadius`: Sets the degree of rounded corners for the notification box. It is set to `5px`.
- `boxShadow`: Adds a shadow effect to the notification box. The shadow has a `2px` offset horizontally and vertically, with a `5px` blur radius, and the color is a transparent black `rgba(0, 0, 0, 0.3)`.

### Default Icon Color (`Config.defaultIconColor`)

- `defaultIconColor`: Sets the default color for icons used in notifications. It is set to a blue color `#094ed9`.

### Notification Styles Based on Job (`Config.notificationStyles`)

The `notificationStyles` table allows you to define specific border styles and icon colors for different job categories.

#### Example:

- For the LSPD job:
  - `border`: Defines a blue border `2px solid #094ed9`.
  - `iconColor`: Sets the icon color to blue `#094ed9`.

- For the BCSO job:
  - `border`: Defines a green border `2px solid #2e5930`.
  - `iconColor`: Sets the icon color to green `#2e5930`.

- For the sasp job:
  - `border`: Defines a yellow border `2px solid #ffcc00`.
  - `iconColor`: Sets the icon color to yellow `#ffcc00`.

## Jobs Explained
- Ensure to match the job names in your configuration with the ones in your `ND_Characters`.

## Copyable Configuration

```lua
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
```
