-- Function to show a notification
local function showNotification(title, text, duration)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration
    })
end

-- Function to load the scripts
local function loadScripts()
    -- Check if the current game is Zombie Attack
    if game.PlaceId == 1240123653 then
        showNotification("Script Enabled", "You have joined a server where the script is available for use.", 5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Zombie-Attack-Gui/main/Zombie%20Attack%20V1.lua"))()
    elseif game.PlaceId == 286090429 then
        -- Check if the current game is Arsenal
        showNotification("Script Enabled", "You have joined a server where the script is available for use.", 5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/arsenal4.lua"))()
    elseif game.PlaceId == 155615604 then
        -- Check if the current game is Prison Life
        showNotification("Script Enabled", "You have joined a server where the script is available for use.", 5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/PrisonLife-Gui-V1/main/PrisonLifeGuiV1"))()
    elseif game.PlaceId == 5036207802 then
        -- Check if the current game is RB Battles Season 3
        showNotification("Script Enabled", "You have joined a server where the script is available for use.", 5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/AdvanceTech_RBBattles3.lua"))()
    elseif game.PlaceId == 8054462345 then
        -- Check if the current game is Michael Zombies
        showNotification("Script Enabled", "You have joined a server where the script is available for use.", 5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/femf2.lua"))()
    else
        -- Show notification for unsupported game and suggest supported games
        showNotification("Wrong Game", "You have joined a different game. This script is available for use in Zombie Attack, Arsenal, Prison Life, RB Battles Season 3, and Michael Zombies.", 10)
    end
end

-- Load scripts initially
loadScripts()

-- Listen for server teleportation
game:GetService("TeleportService").TeleportInitiated:Connect(function()
    -- Delay execution to allow the teleport to complete
    wait(1)
    -- Load scripts after teleportation
    loadScripts()
end)
