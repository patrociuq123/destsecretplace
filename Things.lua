local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

local Window = OrionLib:MakeWindow({Name = "DestHub Beta", HidePremium = false, IntroEnabled = true, IntroText = "DestHub Beta Testing", SaveConfig = true, ConfigFolder = "DestroyerHub"})


local TabBeta = Window:MakeTab({
        Name = "Beta",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})


TabBeta:AddLabel("Players: 0")



-- Definindo a label inicialmente com 0 jogadores
local Label = script.Parent:WaitForChild("PlayersLabel")
Label.Text = "Players in Game: 0"

-- Função para atualizar a label com a contagem de jogadores
local function UpdatePlayerCount()
    local players = game:GetService("Players"):GetPlayers()
    Label.Text = "Players in Game: " .. #players
end

-- Chamando a função inicialmente e configurando-a para ser chamada sempre que a quantidade de jogadores mudar
UpdatePlayerCount()
game:GetService("Players").PlayerAdded:Connect(UpdatePlayerCount)
game:GetService("Players").PlayerRemoving:Connect(UpdatePlayerCount)


