local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Local Player") -- Creates the window

local b = w:CreateFolder("Open/Minimize") -- Creates the folder(U will put here your buttons,etc)

b:Box("Walkspeed","number",function(a) -- "number" or "string"
 game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()
setpropvalue(game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"), "WalkSpeed", a)
end)
end)

b:Box("JumpPower","number",function(a) -- "number" or "string"
 game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("JumpPower"):Connect(function()
setpropvalue(game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"), "JumpPower", a)
end)
end)

local infjumpenabled = false

game:GetService("UserInputService").JumpRequest:Connect(function()
	if infjumpenabled then
		game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState("Jumping")
	end
end)


b:Toggle("Infinite Jump",function(a)
     	infjumpenabled = a

end)
b:Button("Fly (F)",function()
repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 50

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.50+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 50
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "f" then        
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end)



b:Button("Noclip (B)",function()
loadstring(game:HttpGet("https://pastebin.com/raw/8MySbHzS", true))()

end)

wait (2)












local w = library:CreateWindow("Main") -- Creates the window

local b = w:CreateFolder("ESP") -- Creates the folder(U will put here your buttons,etc)


local ESPEnabled = false
local DistanceEnabled = true
local TracersEnabled = true

pcall(function()
	
	Camera = game:GetService("Workspace").CurrentCamera
	RunService = game:GetService("RunService")
	camera = workspace.CurrentCamera
	Bottom = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)

	function GetPoint(vector3)
		local vector, onScreen = camera:WorldToScreenPoint(vector3)
		return {Vector2.new(vector.X,vector.Y),onScreen,vector.Z}
	end
	
	function MakeESP(model)
		local CurrentParent = model.Parent
	
		local TopL = Drawing.new("Line")
		local BottomL = Drawing.new("Line")
		local LeftL = Drawing.new("Line")
		local RightL = Drawing.new("Line")
		local Tracer = Drawing.new("Line")
		local Display = Drawing.new("Text")

        coroutine.resume(coroutine.create(function()
			while model.Parent == CurrentParent do
				
				local Distance = (Camera.CFrame.Position - model.HumanoidRootPart.Position).Magnitude
                local GetP = GetPoint(model.Head.Position)
                local headps = model.Head.CFrame
                
				if ESPEnabled and GetP[2] then
					
                    -- Calculate Cords
                    local topright = headps * CFrame.new(3,0.5, 0)
                    local topleft = headps * CFrame.new(-3,0.5, 0)
                    local bottomleft = headps * CFrame.new(-3,-7,0)
                    local bottomright = headps * CFrame.new(3,-7,0)
					topright = GetPoint(topright.p)[1]
					topleft = GetPoint(topleft.p)[1]
					bottomleft = GetPoint(bottomleft.p)[1]
					bottomright = GetPoint(bottomright.p)[1]

                    local teamcolor = game:GetService("Players")[model.Name].TeamColor.Color or Color3.fromRGB(0,0,0)
                    TopL.Color, BottomL.Color, RightL.Color, LeftL.Color = teamcolor, teamcolor, teamcolor, teamcolor
                    TopL.From, BottomL.From, RightL.From, LeftL.From = topleft, bottomleft, topright, topleft
                    TopL.To, BottomL.To, RightL.To, LeftL.To = topright, bottomright, bottomright, bottomleft
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = true, true, true, true
				else
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = false, false, false, false
                end
                
				if ESPEnabled and TracersEnabled and GetP[2] then
					Tracer.Color = game:GetService("Players")[model.Name].TeamColor.Color or Color3.fromRGB(0,0,0)
					Tracer.From = Bottom
					Tracer.To = GetPoint(headps.p)[1]
					Tracer.Thickness = 1.5
					Tracer.Visible = true
				else
					Tracer.Visible = false
                end
                
				if ESPEnabled and DistanceEnabled and GetP[2] then
					Display.Visible = true
					Display.Position = GetPoint(headps.p + Vector3.new(0,0.5,0))[1]
					Display.Center = true
					Display.Text = tostring(math.floor(Distance)).." studs"
				else
					Display.Visible = false
                end
                
				RunService.RenderStepped:Wait()
			end
	
			TopL:Remove()
			BottomL:Remove()
			RightL:Remove()
			LeftL:Remove()
			Tracer:Remove()
			Display:Remove()
        
        end))
    end
    
	for _, Player in next, game:GetService("Players"):GetChildren() do
		if Player.Name ~= game.Players.LocalPlayer.Name then
			MakeESP(Player.Character)
			Player.CharacterAdded:Connect(function()
				delay(0.5, function()
					MakeESP(Player.Character)
				end)
			end)
		end	
	end
	
	game:GetService("Players").PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            delay(0.5, function()
                MakeESP(player.Character)
            end)
		end)
	end)
	
end)


b:Toggle("Enabled",function(t)
    ESPEnabled = t

end)

b:Toggle("Tracers",function(t)
TracersEnabled = t
end)


b:Toggle("Distance",function(t)
DistanceEnabled = t
end)



local b = w:CreateFolder("Aimbot") -- Creates the folder(U will put here your buttons,etc)

local aimbotsettings = {
    enabled = false,
    freeforall = false,
    radius = 2500,
    wallcheck = true
}

local players = game:GetService("Players")
local client = players.LocalPlayer
local inputservice = game:GetService("UserInputService")
local mouse = client:GetMouse()
local runservice = game:GetService("RunService")
local aim = false

function GetMouse()
    return Vector2.new(mouse.X, mouse.Y)
end

inputservice.InputBegan:Connect(function(key)
    if key.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = true
    end
end)

inputservice.InputEnded:Connect(function(key)
    if key.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = false
    end
end)

function FreeForAll(targetplayer)
    if aimbotsettings.freeforall == false then
        if client.Team == targetplayer.Team then return false
        else return true end
    else return true end
end

function NotObstructing(destination, ignore)
    if aimbotsettings.wallcheck then
        Origin = workspace.CurrentCamera.CFrame.p
        CheckRay = Ray.new(Origin, destination- Origin)
        Hit = workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    else
        return true
    end
end

function GetClosestToCuror()
    MousePos = GetMouse()
    Radius = aimbotsettings.radius
    Closest = math.huge
    Target = nil
    for _,v in pairs(game:GetService("Players"):GetPlayers()) do
        if FreeForAll(v) then
            if v.Character:FindFirstChild("Head") and v ~= game.Players.LocalPlayer then
                Point,OnScreen = workspace.CurrentCamera:WorldToViewportPoint(v.Character.Head.Position)
                clientchar = client.Character
                if OnScreen and NotObstructing(v.Character.Head.Position,{clientchar,v.Character}) then
                    Distance = (Vector2.new(Point.X,Point.Y) - MousePos).magnitude
                    if Distance < math.min(Radius,Closest) then
                        Closest = Distance
                        Target = v
                    end
                end
            end
        end
    end
    return Target
end 

runservice.RenderStepped:Connect(function()
    if aimbotsettings.enabled == false or aim == false then return end
    ClosestPlayer = GetClosestToCuror()
    if ClosestPlayer then
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p,ClosestPlayer.Character.Head.CFrame.p)
    end
end)

 aimbotsettings.wallcheck = false


b:Toggle("Aimlock (Right Click)",function(t)
    aimbotsettings.enabled = t

end)


b:Toggle("WallCheck",function(t)

    aimbotsettings.wallcheck = t
end)

b:Toggle("Free For All",function(t)
    aimbotsettings.freeforall = t
end)
















b:Label("Rage",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 


b:Button("Silent AIm",function()

local CurrentCamera = workspace.CurrentCamera
local Players = game.GetService(game, "Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
end)


b:Bind("Knife Teleport",Enum.KeyCode.R,function() --Default bind



local Player = game.Players.LocalPlayer

 
 

   for i ,v in ipairs( game.Players:GetPlayers() ) do
 
       if Player.Character ~= nil and v ~= Player and (v.TeamColor ~= Player.TeamColor or  v.TeamColor == "Bright blue") and v.Character ~= nil and v.Character:FindFirstChild("Gun") then
while v.Character:FindFirstChild("Gun") ~= nil and  Player.Character:FindFirstChild("Gun") ~= nil  do
               Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame + (v.Character.HumanoidRootPart.CFrame.LookVector * -1)
Camera.CoordinateFrame  = CFrame.new(Camera.CoordinateFrame.p , v.Character.HumanoidRootPart.CFrame.p)
mouse1press()
               wait()
           end
 
 
       end    
 
   end
wait()

end)

local w = library:CreateWindow("GunMods") -- Creates the window


local b = w:CreateFolder("Toggles") -- Creates the folder(U will put here your buttons,etc)

b:Toggle("Wallbang",function(Value) --wallbang fix
if toggle5 == false
then toggle5 = true
    
    shared.WB = false
shared.Key = 't'

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
    if Key == shared.Key then
        shared.WB = not shared.WB
    end
end)

local mt = getrawmetatable(game)
local nc = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
   
    if Method == 'FindPartOnRayWithIgnoreList' and shared.WB then
        table.insert(Arguments[2], game.GetService(game, 'Workspace').Map)
       
        return nc(self, unpack(Arguments))
    end
   
    return nc(self,...)
end)

    else
        toggle5 = false
        
        shared.WB = true
shared.Key = 't'

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
    if Key == shared.Key then
        shared.WB = not shared.WB
    end
end)

local mt = getrawmetatable(game)
local nc = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
   
    if Method == 'FindPartOnRayWithIgnoreList' and shared.WB then
        table.insert(Arguments[2], game.GetService(game, 'Workspace').Map)
       
        return nc(self, unpack(Arguments))
    end
   
    return nc(self,...)
end)

end
end)




b:Toggle("No Recoil",function(t)
	NoRecoilVar = t

end)

b:Toggle("Automatic",function(t)
	AutomaticModeVar = t

end)

b:Toggle("No Spread",function(t)
	NoSpreadVar = t

end)



b:Button("Infinite Ammo",function()
local env = getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Client)


while wait() do
   env.ammocount = 420
   env.ammocount2 = 420
   env.ammocount4 = 420
   env.ammocount4 = 420
   env.currentspread = 0
   env.recoil = 0
   env.mode = "automatic"
   env.inducefalldamage = function(...) return nil end
end

end)

b:Button("Auto Tp Ammo Box",function()
game.StarterGui:SetCore("SendNotification", {
Title = "Arsenal GUI V3";
Text = "Ammo Box Will Auto Teleport to you!";
Icon = "";
Duration = 5;
})

function Ammo() --make more efficient add more constant tp
	wait(1)
		for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v.Name == "DeadAmmo" then
				v.CFrame =  player.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
				v.TextureID = 1
				v.Transparency = 1
			end
		end
	end


while wait() do 
	Ammo()
	wait(.1)
	Ammo()
end
end)







local NoRecoilVar = false
local AutomaticModeVar = false
local NoSpreadVar = false

local a
local b
for i,v in next, getgc() do
  if (type(v) == 'function') and (debug.getinfo(v).name == 'firebullet') then
     a = getfenv(v);
     b = v
  end
end

game:GetService("RunService").Heartbeat:Connect(function()
	if InfAmmoVar then
		debug.setupvalue(b,5,420)
	end
	if InfAmmoVar or NoSpreadVar or AutomaticModeVar or NoRecoilVar then
		a.DISABLED = false
		a.DISABLED2 = false
	end
	if NoSpreadVar then
		a.currentspread = 0
	end
	if NoRecoilVar then
		a.recoil = 0
	end
	if AutomaticModeVar then
		a.mode = "automatic"
	end
end)





local w = library:CreateWindow("Kill All Scripts") -- Creates the window

local b = w:CreateFolder("Open") -- Creates the folder(U will put here your buttons,etc)

b:Label("Kill All Tool",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 



b:Button("Bruh Hub",function()
    loadstring(game:HttpGet("https://bruh.keshsenpai.com/.lua"))()

end)


b:Button("Kill All (WORKS)",function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MisterGunXD/yes/main/rolve%3C3.lua", true))()  
end)




