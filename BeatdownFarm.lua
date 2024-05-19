



        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
        
                    local Window = OrionLib:MakeWindow({
                Name = " Destroyer Hub | Beatdown Slap Farm ",
                HidePremium = false,
                IntroEnabled = true,
                IntroText = "Destroyer Beatdown",
                SaveConfig = true,
                ConfigFolder = "DestroyerHubAdmin"
            })

            -- Tab
            local TabAdminPanel = Window:MakeTab({
                Name = "Farm",
                Icon = "rbxassetid://4483345998",
                PremiumOnly = false
            })

 


TabAdminPanel:AddButton({
              Name = "Destroyer Hub Script ",
              Callback = function()
setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/Usehsbd/DestroyerHub/main/DestHubPublic"))()')
           end
            })

TabAdminPanel:AddLabel("sorryy but the script got patched ;( ")


