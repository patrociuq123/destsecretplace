local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

local Window = OrionLib:MakeWindow({Name = "DestHub Beta", HidePremium = false, IntroEnabled = true, IntroText = "DestHub Beta Testing", SaveConfig = true, ConfigFolder = "DestroyerHub"})


local TabBeta = Window:MakeTab({
        Name = "Beta",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})


TabBeta:AddLabel("Players: 0")



local Players = game:GetService("Players")
local PlayersLabel = script.Parent -- Assumindo que o objeto que mostra a quantidade de jogadores tem o script como pai

-- Função para atualizar a quantidade de jogadores
local function UpdatePlayerCount()
    local playerCount = #Players:GetPlayers()
    PlayersLabel.Text = "Quantidade de jogadores: " .. playerCount
end

-- Atualize a quantidade de jogadores inicialmente e defina um evento para atualizá-la periodicamente
UpdatePlayerCount()
Players.PlayerAdded:Connect(UpdatePlayerCount)
Players.PlayerRemoving:Connect(UpdatePlayerCount)





