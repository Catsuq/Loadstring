--[[ 
- Original script by YellowGreg, 
- Modified by MMSVon (added handling for decals), Wspboy12 (optimized code for performance), ShadowClark (added support for particle emitters)
]]--
-- Created on 5/7/2023 7:17 PM. Last updated on 5/13/2023 10:45 PM.

local decalsYeeted = true
local workspace = game.Workspace
local lighting = game.Lighting
local terrain = workspace.Terrain

-- Improve performance by setting hidden properties only once
local lightingTechnology = 2
local decorationEnabled = false
sethiddenproperty(lighting, "Technology", lightingTechnology)
sethiddenproperty(terrain, "Decoration", decorationEnabled)

-- Use table instead of separate settings
local terrainSettings = {
  WaterWaveSize = 0,
  WaterWaveSpeed = 0,
  WaterReflectance = 0,
  WaterTransparency = 0,
}
for setting, value in pairs(terrainSettings) do
  terrain[setting] = value
end

lighting.GlobalShadows = 0
lighting.FogEnd = 9e9
lighting.Brightness = 0
settings().Rendering.QualityLevel = "Level01"

-- Consolidate common operations into functions for better readability and maintainability
local function handleBasePart(part)
  part.Material = Enum.Material.Plastic
  part.Reflectance = 0
end

local function handleDecalOrTexture(decalOrTexture)
  if decalsYeeted then
    decalOrTexture.Transparency = 1
  end
end

local function handleParticleEmitterOrTrail(emitterOrTrail)
  emitterOrTrail.Lifetime = NumberRange.new(0)
end

local function handleExplosion(explosion)
  explosion.BlastPressure = 1
  explosion.BlastRadius = 1
end

local function handleMeshPart(meshPart)
  if decalsYeeted then
    meshPart.Material = Enum.Material.Plastic
    meshPart.Reflectance = 0
    meshPart.TextureID = 10385902758728957
  end
end

local function handleSpecialMesh(specialMesh)
  if decalsYeeted then
    specialMesh.TextureId = 0
  end
end

local function handleShirtGraphic(shirtGraphic)
  if decalsYeeted then
    shirtGraphic.Graphic = ""
  end
end

local function handleClothing(clothing)
  if decalsYeeted then
    clothing[clothing.ClassName .. "Template"] = ""
  end
end

-- Handle existing descendants
for _, descendant in pairs(workspace:GetDescendants()) do
  if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
    handleBasePart(descendant)
  elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
    handleDecalOrTexture(descendant)
  elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
    handleParticleEmitterOrTrail(descendant)
  elseif descendant:IsA("Explosion") then
    handleExplosion(descendant)
  elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
    descendant.Enabled = false
  elseif descendant:IsA("MeshPart") then
    handleMeshPart(descendant)
  elseif descendant:IsA("SpecialMesh") then
    handleSpecialMesh(descendant)
  elseif descendant:IsA("ShirtGraphic") then
    handleShirtGraphic(descendant)
  elseif descendant:IsA("Shirt") or descendant:IsA("Pants") then
    handleClothing(descendant)
  end
end

-- Handle new descendants
workspace.DescendantAdded:Connect(function(descendant)
  if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
    handleBasePart(descendant)
  elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
    handleDecal(descendant)
  elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
    handleParticleEmitter(descendant)
  elseif descendant:IsA("Explosion") then
    handleExplosion(descendant)
  elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
    handleEnabled(descendant)
  elseif descendant:IsA("MeshPart") then
    handleMeshPart(descendant)
  elseif descendant:IsA("SpecialMesh") then
    handleSpecialMesh(descendant)
  elseif descendant:IsA("ShirtGraphic") then
    handleShirtGraphic(descendant)
  elseif descendant:IsA("Shirt") or descendant:IsA("Pants") then
    handleClothing(descendant)
  end
end)

-- Handle existing descendants
for _, descendant in ipairs(workspace:GetDescendants()) do
  if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
    handleBasePart(descendant)
  elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
    handleDecal(descendant)
  elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
    handleParticleEmitter(descendant)
  elseif descendant:IsA("Explosion") then
    handleExplosion(descendant)
  elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
    handleEnabled(descendant)
  elseif descendant:IsA("MeshPart") then
    handleMeshPart(descendant)
  elseif descendant:IsA("SpecialMesh") then
    handleSpecialMesh(descendant)
  elseif descendant:IsA("ShirtGraphic") then
    handleShirtGraphic(descendant)
  elseif descendant:IsA("Shirt") or descendant:IsA("Pants") then
    handleClothing(descendant)
  end
end

print("Anti-lag script loaded successfully!")
