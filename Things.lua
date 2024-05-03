local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

local Window = OrionLib:MakeWindow({Name = "DestHub Beta", HidePremium = false, IntroEnabled = true, IntroText = "DestHub Beta Testing", SaveConfig = true, ConfigFolder = "DestroyerHub"})


local TabBeta = Window:MakeTab({
        Name = "Beta",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})


PlayerCount = TabBeta:AddLabel("Players:[" .. #game.Players:GetPlayers() .. "]")



if game.Players.PlayerAdded:Connect(function()
PlayerCount:Set("Players:[" .. #game.Players:GetPlayers() .. "]")
end
elseif game.Player.PlayerRemoving:Connect(function()
PlayerCount:Set("Players:[" .. #game.Players:GetPlayers() .. "]")
end