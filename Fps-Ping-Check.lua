-- Create a ScreenGui to hold the UI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a TextLabel to display the FPS and ping
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.new(0, 0, 0)
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 18
textLabel.Parent = screenGui

-- Function to update the text label with FPS and ping values
local function updateStats()
    local stats = game:GetService("Stats")
    local fps = stats:GetFPS()
    local ping = stats:GetPing()

    textLabel.Text = "FPS: " .. fps .. " | Ping: " .. ping .. "ms"
end

-- Run the updateStats function every second
while true do
    updateStats()
    wait(1)
end
