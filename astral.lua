-- [[ ASTRAL HUB - POWERED BY ALIPZZY STUDIO ]] --
local CorrectKey = "JknagOHAN217KMnbaisP"
local KeyLink = "https://direct-link.net/3093354/7idYaWbdsZbh"

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "AlipzzyStudio | Astral - Hub",
   LoadingTitle = "AlipzzyStudio Loading...",
   LoadingSubtitle = "by AlipzzyOfficiaL & Nanzcnl",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "AlipzzyStudioData"
   },
   KeySystem = true, 
   KeySettings = {
      Title = "AlipzzyStudio | Key System",
      Subtitle = "Dapatkan Key untuk melanjutkan",
      Note = "Klik tombol 'Get Key' di bawah untuk copy link",
      FileName = "AstralKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {CorrectKey},
      -- BAGIAN INI YANG MENAMPILKAN TOMBOL GET KEY --
      Actions = {
            [1] = {
                Text = "Get Key (Linkvertise)",
                Callback = function()
                    setclipboard(KeyLink)
                    Rayfield:Notify({
                        Title = "AlipzzyStudio",
                        Content = "Link Key berhasil dicopy ke clipboard!",
                        Duration = 5,
                        Image = 4483362458,
                    })
                end
            }
        }
   }
})

-- ================= TAB 1: INFO =================
local TabInfo = Window:CreateTab("Info", 4483362458)
local LP = game.Players.LocalPlayer

TabInfo:CreateSection("User Information")
TabInfo:CreateLabel("Welcome: " .. LP.DisplayName)
TabInfo:CreateLabel("Username: @" .. LP.Name)

TabInfo:CreateSection("Development Team")
TabInfo:CreateLabel("Developer: AlipzzyOfficiaL")
TabInfo:CreateLabel("Owner: Nanzcnl")

-- ================= TAB 2: FARM =================
local TabFarm = Window:CreateTab("Farm", 4483362458)
TabFarm:CreateToggle({
   Name = "Fishing Instant",
   CurrentValue = false,
   Callback = function(v) _G.InstantFish = v end,
})

-- ================= TAB 9: PREMIUM =================
local TabPremium = Window:CreateTab("Upgrade Premium", 4483362458)
TabPremium:CreateButton({
   Name = "Join Discord for Premium",
   Callback = function() setclipboard("https://discord.gg/EQethSggwR") end,
})

-- Notifikasi saat berhasil masuk
Rayfield:Notify({
   Title = "AlipzzyStudio",
   Content = "Astral Hub Loaded Successfully!",
   Duration = 5,
   Image = 4483362458,
})
