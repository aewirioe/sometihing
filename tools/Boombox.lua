local boombox = Instance.new("Tool")
boombox.Name = "boombox"
boombox.TextureId = "http://www.roblox.com/asset/?id=212303004 "
boombox.GripPos = Vector3.new(1, -1.25, 0)
boombox.Grip = CFrame.new(1, -1.25, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
boombox.GripForward = Vector3.new(1, -0, -0)
boombox.GripRight = Vector3.new(0, 0, 1)

local Remote = Instance.new("RemoteEvent")
Remote.Name = "Remote"
Remote.Parent = boombox

local Handle = Instance.new("Part")
Handle.Name = "Handle"
Handle.BottomSurface = Enum.SurfaceType.Smooth
Handle.CanCollide = false
Handle.TopSurface = Enum.SurfaceType.Smooth
Handle.Size = Vector3.new(3.200000047683716, 1.600000023841858, 1.2000000476837158)
Handle.CFrame = CFrame.new(32.433494567871094, 0.8000030517578125, 64.04656982421875)
Handle.formFactor = Enum.FormFactor.Custom
Handle.Parent = boombox

local Mesh = Instance.new("SpecialMesh")
Mesh.Scale = Vector3.new(4, 4, 4)
Mesh.MeshId = "http://www.roblox.com/asset/?id=212302951  "
Mesh.TextureId = "http://www.roblox.com/asset/?id=212303049  "
Mesh.MeshType = Enum.MeshType.FileMesh
Mesh.Parent = Handle

local Sound = Instance.new("Sound")
Sound.EmitterSize = 0
Sound.Volume = 1
Sound.Looped = true
Sound.MinDistance = 0
Sound.RollOffMinDistance = 0
Sound.Parent = Handle

return boombox
