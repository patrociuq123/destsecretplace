local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

local Window = OrionLib:MakeWindow({Name = "DestHub Beta", HidePremium = false, IntroEnabled = true, IntroText = "DestHub Beta Testing", SaveConfig = true, ConfigFolder = "DestroyerHub"})


local TabBeta = Window:MakeTab({
        Name = "Beta",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})

local TextBox = TabBeta:AddTextbox({
    Name = "Teleporter",
    Default = "Username",
    TextDisappear = false,
    Callback = function(Value)
        TargetUser = Value
    end	  
})

local Button = TabBeta:AddButton({
    Name = "Teleport",
    Callback = function()
        -- Encontrar o jogador com o nome inserido na TextBox
        local Player = game.Players:FindFirstChild(TargetUser)
        if Player then
            -- Teleportar para o jogador encontrado
            game.Players.LocalPlayer.Character:MoveTo(Player.Character.HumanoidRootPart.Position)
        else
            print("Jogador não encontrado.")
        end
    end    
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