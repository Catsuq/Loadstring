-- Original script by YellowGreg, modified by MMSVon, Wspboy12, and ShadowClark
-- Created in 5/7/2023 7:17 PM

-- Settings for improving performance
local decalsYeeted = true -- Setting this to true will remove decals and improve FPS
local gameDescendants = game:GetDescendants()
local workspace = game.Workspace
local lighting = workspace:FindFirstChild("Lighting")
local terrain = workspace:FindFirstChild("Terrain")

-- Disable unnecessary features to improve performance
terrain.WaterWaveSize = 0
terrain.WaterWaveSpeed = 0
terrain.WaterReflectance = 0
terrain.WaterTransparency = 0

lighting.GlobalShadows = false
lighting.FogEnd = 9e9
lighting.Brightness = 0

settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

-- Iterate through all parts, meshparts, and unions to optimize their appearance
for i, descendant in ipairs(gameDescendants) do
    if descendant:IsA("BasePart") then
        descendant.Material = Enum.Material.Plastic
        descendant.Reflectance = 0
    elseif descendant:IsA("Decal") and decalsYeeted then
        descendant.Transparency = 1
    elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
        descendant.Lifetime = NumberRange.new(0)
    end
end

-- Check if the device is a 64-bit mobile device
local is64Bit = system.getInfo("architectureInfo") == "ARM64"

if is64Bit then
    -- Set the graphics settings to their lowest values
    graphics.setDrawMode("forceRender")
    application:setBackgroundColor(0, 0, 0)
    application:setLogicalDimensions(320, 480)
    application:setOrientation("portrait")
    graphics.setConstantAdjustment("stripTexture", true)
    graphics.setConstantAdjustment("textureWrap", true)
    graphics.setConstantAdjustment("shader", true)
    graphics.setDepthBuffer( "off" )
    graphics.setBlendMode( "replace" )
    graphics.setLighting( "off" )
    graphics.setMaterialTexture( "normal", nil )
    graphics.setMaterialTexture( "specular", nil )
    graphics.setMaterialTexture( "emission", nil )
    graphics.setMaterialTexture( "environment", nil )
    graphics.setMaterialTexture( "reflection", nil )
    graphics.setMaterialTexture( "fresnel", nil )
    graphics.setMaterialTexture( "ambient", nil )
    graphics.setMaterialTexture( "diffuse", nil )
    graphics.setMaterialTexture( "roughness", nil )
    graphics.setMaterialTexture( "metalness", nil )
    graphics.setMaterialTexture( "opacity", nil )
end
