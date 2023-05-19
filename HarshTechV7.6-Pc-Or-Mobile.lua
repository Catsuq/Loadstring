local ScreenGui = Instance.new("ScreenGui")
local AFText = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

AFText.Name = "AFText"
AFText.Parent = ScreenGui
AFText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AFText.BackgroundTransparency = 1.000
AFText.Position = UDim2.new(0.276162716, 0, 0, 0)
AFText.Size = UDim2.new(0, 777, 0, 30)
AFText.Font = Enum.Font.FredokaOne
AFText.Text = "HarshTechV7.6 Made By AdvanceFalling Team (AF Team)"
AFText.TextColor3 = Color3.fromRGB(0, 0, 0)
AFText.TextSize = 25.000

local function script()
	local script = Instance.new('Script', AFText)

	local r = {
		Color3.fromRGB(254, 0, 0),
		Color3.fromRGB(255, 127, 0),
		Color3.fromRGB(255, 221, 1),
		Color3.fromRGB(0, 200, 0),
		Color3.fromRGB(0, 160, 199),
		Color3.fromRGB(0, 55, 230),
		Color3.fromRGB(129, 16, 210)
	}
	local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)

	local i = 1
	while true do
		local tween = game:GetService("TweenService"):Create(script.Parent, info, { TextColor3 = r[i] })
		tween:Play()
		tween.Completed:Wait()
		wait(0.1)
		i = (i % #r) + 1
	end
end

coroutine.wrap(script)()

local Chose = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Original = Instance.new("TextButton")
local PC = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

Chose.Name = "Chose"
Chose.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = Chose
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 300, 0, 300)
Frame.ClipsDescendants = true
Frame.Active = true

TextLabel.Name = "TextLabel"
TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0, 0)
TextLabel.Size = UDim2.new(1, 0, 0.15, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Choose a Version"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 30
TextLabel.TextWrapped = true

Original.Name = "Original"
Original.Parent = Frame
Original.AnchorPoint = Vector2.new(0.5, 0)
Original.BackgroundColor3 = Color3.fromRGB(16, 88, 233)
Original.Position = UDim2.new(0.5, 0, 0.25, 0)
Original.Size = UDim2.new(0.7, 0, 0.1, 0)
Original.Font = Enum.Font.GothamSemibold
Original.Text = "Original Version"
Original.TextColor3 = Color3.fromRGB(255, 255, 255)
Original.TextScaled = true
Original.TextSize = 24
Original.TextWrapped = true

PC.Name = "PC"
PC.Parent = Frame
PC.AnchorPoint = Vector2.new(0.5, 0)
PC.BackgroundColor3 = Color3.fromRGB(16, 88, 233)
PC.Position = UDim2.new(0.5, 0, 0.4, 0)
PC.Size = UDim2.new(0.7, 0, 0.1, 0)
PC.Font = Enum.Font.GothamSemibold
PC.Text = "PC Version"
PC.TextColor3 = Color3.fromRGB(255, 255, 255)
PC.TextScaled = true
PC.TextSize = 24
PC.TextWrapped = true

TextLabel_2.Name = "TextLabel_2"
TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.5, 0, 0.6, 0)
TextLabel_2.Size = UDim2.new(1, 0, 0.15, 0)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = "Choose the version that suits your needs"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 18
TextLabel_2.TextWrapped = true

TextLabel_3.Name = "TextLabel_3"
TextLabel_3.Parent = Frame
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.5, 0, 0.8, 0)
TextLabel_3.Size = UDim2.new(1, 0, 0.15, 0)
TextLabel_3.Font = Enum.Font.GothamSemibold
TextLabel_3.Text = "Made by: AdvanceFalling Team"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 18
TextLabel_3.TextWrapped = true

-- Animation
local tweenService = game:GetService("TweenService")
local curve = Enum.EasingStyle.Quart
local direction = Enum.EasingDirection.Out

local frameIn = {
	Size = UDim2.new(0, 300, 0, 300),
	Position = UDim2.new(0.5, 0, 0.5, 0),
}

local frameOut = {
	Size = UDim2.new(0, 0, 0, 0),
	Position = UDim2.new(0.5, 0, -0.5, 0),
}

local textIn = {
	TextTransparency = 0,
}

local textOut = {
	TextTransparency = 1,
}

function animateIn()
	local frameTween = tweenService:Create(Frame, TweenInfo.new(0.5, curve, direction), frameIn)
	local textTween = tweenService:Create(TextLabel, TweenInfo.new(0.5, curve, direction), textIn)

	frameTween:Play()
	textTween:Play()
end

function animateOut()
	local frameTween = tweenService:Create(Frame, TweenInfo.new(0.5, curve, direction), frameOut)
	local textTween = tweenService:Create(TextLabel, TweenInfo.new(0.5, curve, direction), textOut)

	frameTween:Play()
	textTween:Play()

	frameTween.Completed:Connect(function()
		Chose:Destroy()
	end)
end

local dragging
local dragInput
local dragStart
local startPos

local function updateInput(input)
	local delta = input.Position - dragStart
	Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		updateInput(input)
	end
end)

Original.MouseButton1Click:Connect(function()
	animateOut()
	wait(0.5) -- Adjust the delay if needed
	loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/HarshTechV7.5%20Original.lua"))()
end)

PC.MouseButton1Click:Connect(function()
	animateOut()
	wait(0.5) -- Adjust the delay if needed
	loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/Loadstring/main/HarshTech7.5-Pc.lua"))()
end)

animateIn()

