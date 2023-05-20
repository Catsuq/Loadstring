local function loadScripts()
    -- Check if the current game is Zombie Attack
    if game.PlaceId == 1240123653 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Zombie-Attack-Gui/main/Zombie%20Attack%20V1.lua"))()
    end

    -- Check if the current game is Arsenal
    if game.PlaceId == 286090429 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/arsenal4.lua"))()
    end

    -- Check if the current game is Prison Life
    if game.PlaceId == 155615604 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/PrisonLife-Gui-V1/main/PrisonLifeGuiV1"))()
    end

    -- Check if the current game is RB Battles Season 3
    if game.PlaceId == 5036207802 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/AdvanceTech_RBBattles3.lua"))()
    end

    -- Check if the current game is Michael Zombies
    if game.PlaceId == 8054462345 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/femf2.lua"))()
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
