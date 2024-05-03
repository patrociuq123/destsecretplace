local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

local Window = OrionLib:MakeWindow({Name = "DestHub Beta", HidePremium = false, IntroEnabled = true, IntroText = "DestHub Beta Testing", SaveConfig = true, ConfigFolder = "DestroyerHub"})


local TabBeta = Window:MakeTab({
        Name = "Beta",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})


TabMisc:AddTextbox({
	Name = "WalkSpeed",
	Default = "Number",
	TextDisappear = false,
	Callback = function(Value)
SpeedSet = Value
	end	  
})

TabMisc:AddButton({
	Name = "Set Speed",
	Callback = function()
local player = game.Players.LocalPlayer
local novaVelocidade = SpeedSet

if player then
    local character = player.Character or player.CharacterAdded:Wait()
    if character then
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = novaVelocidade
    end
end
  	end    
})
