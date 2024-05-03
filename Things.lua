local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

local Window = OrionLib:MakeWindow({Name = "DestHub Beta", HidePremium = false, IntroEnabled = true, IntroText = "DestHub Beta Testing", SaveConfig = true, ConfigFolder = "DestroyerHub"})


local TabBeta = Window:MakeTab({
        Name = "Beta",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})



TabBeta:AddTextbox({
	Name = "Kill Player Rob",
	Default = "UserHere",
	TextDisappear = true,
	Callback = function(Value)
KillPlr = Value
end	  
})


TabBeta:AddButton({
	Name = "Kill Player",
	Callback = function()
game:GetService("ReplicatedStorage").rob:FireServer()
    wait(4)

        local Player = game.Players:FindFirstChild(KillPlr)
        if Player then
            game.Players.LocalPlayer.Character:MoveTo(Player.Character.HumanoidRootPart.Position)
end    
})