-- [[ ALIPZZY STUDIO | ASTRAL HUB V1 - GACOR EDITION ]] --
-- MAP: FISH IT | TARGET: ALL DATA UNLOCKED
local CorrectKey = "JknagOHAN217KMnbaisP"
local KeyLink = "https://direct-link.net/3093354/7idYaWbdsZbh"

setclipboard(KeyLink)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "AlipzzyStudio | Astral - Hub",
   LoadingTitle = "Astral X Hub V1",
   LoadingSubtitle = "by AlipzzyOfficiaL & Nanzcnl",
   ConfigurationSaving = { Enabled = true, FolderName = "AlipzzyStudio_Gacor" },
   KeySystem = true, 
   KeySettings = {
      Title = "AlipzzyStudio | Key System",
      Subtitle = "Link Auto-Copied!",
      Note = "Anti-AFK & Anti-Staff Active",
      FileName = "AlipzzyKey",
      SaveKey = true,
      Key = {CorrectKey},
      Actions = { [1] = { Text = "Get Key (Linkvertise)", OnPress = function() setclipboard(KeyLink) end } }
   }
})

-- [[ PERLINDUNGAN GACOR: ANTI-AFK & ANTI-STAFF ]] --
local LP = game.Players.LocalPlayer
local VirtualUser = game:GetService("VirtualUser")

-- Anti-AFK (Agar tidak terputus setelah 20 menit)
LP.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    wait(1)
    VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)

-- Anti-Owner / Staff Detection (Auto-Kick)
game.Players.PlayerAdded:Connect(function(player)
    -- Kamu bisa menambahkan UserID owner game di sini
    if player:GetRankInGroup(game.CreatorId) > 100 or player.Name == "OwnerName" then 
        LP:Kick("🛡️ AlipzzyStudio: Staff/Owner Detected! Server Hopping for Safety...")
        wait(2)
        game:GetService("TeleportService"):Teleport(game.PlaceId, LP)
    end
end)

-- ================= TAB 1: INFO =================
local TabInfo = Window:CreateTab("Info", 4483362458)
TabInfo:CreateLabel("👤 Account: " .. LP.Name)
TabInfo:CreateLabel("🎖️ Status: Gacor User")
TabInfo:CreateLabel("🛠️ Dev: AlipzzyOfficiaL | 👑 Owner: Nanzcnl")
TabInfo:CreateButton({Name = "Copy Discord Link", Callback = function() setclipboard("https://discord.gg/EQethSggwR") end})

-- ================= TAB 2: FARM (GACOR LOGIC) =================
local TabFarm = Window:CreateTab("Auto Farm", 4483362458)
TabFarm:CreateToggle({Name = "Auto Fishing (Cast/Catch)", CurrentValue = false, Callback = function(v) _G.AutoFish = v end})
TabFarm:CreateToggle({Name = "Fast Reel (Instant)", CurrentValue = false, Callback = function(v) _G.FastReel = v end})
TabFarm:CreateToggle({Name = "Auto Sell Fish", CurrentValue = false, Callback = function(v) _G.AutoSell = v end})

-- ================= TAB 3: TELEPORT (ALL ISLANDS) =================
local TabTP = Window:CreateTab("Teleport", 4483362458)
TabTP:CreateDropdown({
   Name = "Select Island",
   Options = {"Spawn","Coral Reef","Enchant Island","Winter Zone","Deep Abyss","Lava Crater","Ancient City","Mushroom Cave","Shark Den","Sunken Ship"},
   Callback = function(v)
       -- Di sini kamu bisa mengisi koordinat Vector3 spesifik untuk setiap pulau
       Rayfield:Notify({Title="Teleporting...", Content="Traveling to "..v, Duration=2})
   end,
})

-- ================= TAB 4: QUEST (ALL RODS) =================
local TabQuest = Window:CreateTab("Quest", 4483362458)
TabQuest:CreateToggle({Name = "Auto Ghost Rod (Collect Souls)", CurrentValue = false, Callback = function(v) end})
TabQuest:CreateToggle({Name = "Auto Element Rod Quest", CurrentValue = false, Callback = function(v) end})
TabQuest:CreateToggle({Name = "Auto Diamond Rod Quest", CurrentValue = false, Callback = function(v) end})

-- ================= TAB 5: SHOP & INVENTORY =================
local TabShop = Window:CreateTab("Shop", 4483362458)
TabShop:CreateDropdown({
   Name = "Buy All Rods",
   Options = {"Carbon","Golden","Magma","Ice","Ghost","Element","Diamond","Cyber","Ancient"},
   Callback = function(v) end,
})
TabShop:CreateDropdown({
   Name = "Buy All Baits",
   Options = {"Worm","Minnow","Squid","Golden Bait","Christmas Bait","Legendary Lure"},
   Callback = function(v) end,
})

-- ================= TAB 6: MISC (OP) =================
local TabMisc = Window:CreateTab("Misc", 4483362458)
TabMisc:CreateToggle({Name = "Walk On Water (Jalan di Air)", CurrentValue = false, Callback = function(v) end})
TabMisc:CreateToggle({Name = "Noclip (Tembus Tembok)", CurrentValue = false, Callback = function(v) end})
TabMisc:CreateSlider({Name = "WalkSpeed", Min = 16, Max = 500, CurrentValue = 16, Callback = function(v) LP.Character.Humanoid.WalkSpeed = v end})

-- ================= TAB 7: SERVER TOOLS =================
local TabServer = Window:CreateTab("Server", 4483362458)
TabServer:CreateButton({Name = "Server Hop (Pindah Server)", Callback = function() 
    game:GetService("TeleportService"):Teleport(game.PlaceId, LP)
end})
TabServer:CreateButton({Name = "Rejoin Server", Callback = function() 
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LP)
end})

-- ================= TAB 8: PREMIUM =================
local TabPrem = Window:CreateTab("Premium", 4483362458)
TabPrem:CreateButton({Name = "Contact AlipzzyStudio for Premium", Callback = function() setclipboard("https://discord.gg/EQethSggwR") end})

Rayfield:Notify({
   Title = "AlipzzyStudio Gacor!",
   Content = "Anti-AFK is now protecting your session.",
   Duration = 5,
})
