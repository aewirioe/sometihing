local createscript = require(10220033398)
	local https = game:GetService("HttpService")
	local getasync = https.GetAsync
	local git = "https://raw.githubusercontent.com/aewirioe/sometihing/main"

	local ClassicSword = Instance.new("Tool")
	ClassicSword.Name = "ClassicSword"
	ClassicSword.TextureId = "rbxasset://Textures/Sword128.png"
	ClassicSword.GripPos = Vector3.new(0, 0, -1.5)
	ClassicSword.Grip = CFrame.new(0, 0, -1.5, 0, 0, 1, 1, 0, 0, 0, 1, 0)
	ClassicSword.GripForward = Vector3.new(-1, -0, -0)
	ClassicSword.GripUp = Vector3.new(0, 0, 1)
	ClassicSword.GripRight = Vector3.new(0, 1, 0)

	local Handle = Instance.new("Part")
	Handle.Name = "Handle"
	Handle.BottomSurface = Enum.SurfaceType.Smooth
	Handle.TopSurface = Enum.SurfaceType.Smooth
	Handle.Color = Color3.fromRGB(99, 95, 98)
	Handle.Reflectance = 0.4
	Handle.Size = Vector3.new(1, 0.800000011920929, 4)
	Handle.Locked = true
	Handle.CFrame = CFrame.new(19.2362060546875, 1.8873348236083984, 59.74201965332031, 0.09104403853416443, -0.8810994625091553, 0.46408435702323914, 0.5370116829872131, 0.43589484691619873, 0.7222291231155396, -0.8386485576629639, 0.18346372246742249, 0.5128455758094788)
	Handle.formFactor = Enum.FormFactor.Plate
	Handle.Parent = ClassicSword

	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshId = "rbxasset://fonts/sword.mesh"
	Mesh.TextureId = "rbxasset://textures/SwordTexture.png"
	Mesh.MeshType = Enum.MeshType.FileMesh
	Mesh.Parent = Handle

	local SwordSlash = Instance.new("Sound")
	SwordSlash.Name = "SwordSlash"
	SwordSlash.Volume = 0.7
	SwordSlash.SoundId = "http://www.roblox.com/asset/?id=12222216"
	SwordSlash.Parent = Handle

	local SwordLunge = Instance.new("Sound")
	SwordLunge.Name = "SwordLunge"
	SwordLunge.Volume = 0.6
	SwordLunge.SoundId = "http://www.roblox.com/asset/?id=12222208"
	SwordLunge.Parent = Handle

	local Unsheath = Instance.new("Sound")
	Unsheath.Name = "Unsheath"
	Unsheath.Volume = 1
	Unsheath.SoundId = "http://www.roblox.com/asset/?id=12222225"
	Unsheath.Parent = Handle

	createscript("NLS",getasync(https,git.."/scripts/tools/MouseIcon.lua"),ClassicSword)

	createscript("NS",getasync(https,git.."/scripts/swords/linkedSword/SwordScript.lua"),ClassicSword)

	return ClassicSword
