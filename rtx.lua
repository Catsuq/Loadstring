local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib("Chillz's Enhancer v0.1", "DarkTheme")


--Enhancer
local EnhancerTab = Window:NewTab("Enhancer")
local EnhancerSection = EnhancerTab:NewSection("Enhancer Lighting")

EnhancerSection:NewButton("Morning (6am)", "Reser ur character", function()
    
    
    
    -- Shader, Morning Realistic (6pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 2.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255
lighting.GlobalShadows = true
lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 6.2
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.3
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.4
colorc.Contrast = 0.9
colorc.Contrast = 0.9
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(49, 87, 120)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277
--End
    
    
    
    
end)

EnhancerSection:NewButton("Morning (8am)", "Reser ur character", function()
    -- Shader, Morning Realistic (8pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 2.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255
lighting.GlobalShadows = true
lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 8
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.3
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.3
colorc.Contrast = 0.5
colorc.Contrast = 0.5
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(255, 229, 150)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277
--End
end)


EnhancerSection:NewButton("Afternoon (2pm)", "Reser ur character", function()
    -- Shader, Day Realistic (2pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 2.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255
lighting.GlobalShadows = true
lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 13
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.3
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.1
colorc.Contrast = 0.5
colorc.Contrast = 0.5
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(255, 255, 226)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277
--End
end)


EnhancerSection:NewButton("Evening (5pm)", "Reser ur character", function()
    -- Shader, Evening Realistic (5pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 2.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255
lighting.GlobalShadows = true
lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 17
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.3
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.35
colorc.Contrast = 0.5
colorc.Contrast = 0.5
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(247, 154, 67)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277
--End
end)


EnhancerSection:NewButton("Night (8pm)", "Reser ur character", function()
    -- Shader, Night Realistic (8pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 5.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255
lighting.GlobalShadows = true
lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 20
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.7
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.2
colorc.Contrast = 0.5
colorc.Contrast = 0.8
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(255, 255, 226)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277
--End
end)



--Materials
local MaterialTab = Window:NewTab("Material Enhancer")
local MaterialSection = MaterialTab:NewSection("Materials")

MaterialSection:NewButton("Reflection", "Reser ur character", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") or v:IsA("UnionOperation") then
            if not v.Parent:FindFirstChild("Humanoid") then
                pcall(function()
                    v.Reflectance = 0.15
                end)
            end
        end
    end
end)

--Remover
local RemoverTab = Window:NewTab("Remover")
local RemoverSection = RemoverTab:NewSection("Remove some Modification by Enhancer.")

RemoverSection:NewButton("Remove Reflection", "Remove Reflections in Workspace.", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") or v:IsA("UnionOperation") then
            if not v.Parent:FindFirstChild("Humanoid") then
                pcall(function()
                    if v.Reflectance > 0 then
                        v.Reflectance = 0
                    end
                end)
            end
        end
    end
end)

RemoverSection:NewButton("Clear All Lighting", "Remove every items in Lighting.", function()
    for i,v in pairs(game.Lighting:GetChildren()) do
        v:Destroy()
    end
end)
