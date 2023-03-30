local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")
 
local player = Players.LocalPlayer 
local playerGui = player:WaitForChild("PlayerGui")
 
local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
textLabel.Font = Enum.Font.GothamSemibold
textLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
textLabel.Text = "Loading AdvanceTech | Arsenal | V3"
textLabel.TextSize = 18
textLabel.Parent = screenGui
local loadingRing = Instance.new("ImageLabel")
loadingRing.Size = UDim2.new(0, 256, 0, 256)
loadingRing.BackgroundTransparency = 1
loadingRing.AnchorPoint = Vector2.new(0.5, 0.5)
loadingRing.Position = UDim2.new(0.5, 0, 0.5, 0)
loadingRing.Parent = screenGui

ReplicatedFirst:RemoveDefaultLoadingScreen()
 
local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(loadingRing, tweenInfo, {Rotation = 360})
tween:Play()
 
wait(3)
textLabel.Text = "ERROR Trying to find Script"
wait(3)
textLabel.Text = "Looks like You Are Using a old version of our script (V3)"
wait(5)
textLabel.Text = "Looking lastest Version"
wait(3)
textLabel.Text = "lastest Version Found!"
wait(4)
textLabel.Text = "AdvanceTech | Arsenal | V4 | is Now Being Loaded"

wait(4) 
if not game:IsLoaded() then
	game.Loaded:Wait()
end
screenGui:Destroy()

