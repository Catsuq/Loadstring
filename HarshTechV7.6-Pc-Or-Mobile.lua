local ScreenGui = Instance.new("ScreenGui")
local AFText = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

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

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = AFText

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
local UICornerFrame = Instance.new("UICorner")
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

UICornerFrame.CornerRadius = UDim.new(0, 10)
UICornerFrame.Parent = Frame

TextLabel.Name = "TextLabel"
TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0, 20)
TextLabel.Size = UDim2.new(0, 250, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Choose an option"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000

Original.Name = "Original"
Original.Parent = Frame
Original.AnchorPoint = Vector2.new(0.5, 0)
Original.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Original.BorderSizePixel = 0
Original.Position = UDim2.new(0.5, 0, 0, 100)
Original.Size = UDim2.new(0, 200, 0, 50)
Original.Font = Enum.Font.SourceSans
Original.Text = "Original"
Original.TextColor3 = Color3.fromRGB(255, 255, 255)
Original.TextSize = 24.000

PC.Name = "PC"
PC.Parent = Frame
PC.AnchorPoint = Vector2.new(0.5, 0)
PC.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PC.BorderSizePixel = 0
PC.Position = UDim2.new(0.5, 0, 0, 200)
PC.Size = UDim2.new(0, 200, 0, 50)
PC.Font = Enum.Font.SourceSans
PC.Text = "PC"
PC.TextColor3 = Color3.fromRGB(255, 255, 255)
PC.TextSize = 24.000

TextLabel_2.Name = "TextLabel"
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0, 260)
TextLabel_2.Size = UDim2.new(0, 300, 0, 40)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Made by AdvanceFalling Team"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000

TextLabel_3.Name = "TextLabel"
TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 300, 0, 20)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "HarshTech Chooser"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000

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

