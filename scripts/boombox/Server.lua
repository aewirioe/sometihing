local Tool = script.Parent
local Handle = Tool:WaitForChild("Handle")
local Remote = Tool:WaitForChild("Remote")
local Sound = Handle:WaitForChild("Sound")

function onUnequip()
	Sound:Stop()
end

function onActivate()
	Remote:FireClient(getPlayer(), "ChooseSong")
end

function getPlayer()
	return game:GetService("Players"):GetPlayerFromCharacter(Tool.Parent)
end

function playSong(id)
	local last = "rbxassetid://"
	local numid = tonumber(id)
	local current = numid
	if numid == nil then
		last = ""
		current = id
	end

	pcall(function()
		if Sound then
			Sound:Destroy()
		end
	end)
	Sound = Instance.new'Sound'
	Sound.Parent = Handle
	Sound.Volume = 1
	Sound.Looped = true
	Sound.PlayOnRemove = false
	Sound.SoundId = last..current
	Sound:Play()
end

function onRemote(player, func, ...)
	if player ~= getPlayer() then return end
	
	if func == "Activate" then
		onActivate(...)
	end
	
	if func == "PlaySong" then
		playSong(...)
	end
end

Remote.OnServerEvent:connect(onRemote)
Tool.Unequipped:connect(onUnequip)
