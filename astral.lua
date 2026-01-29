-- [[ ASTRAL HUB - FISH IT OPTIMIZED ]] --
local CorrectKey = "JknagOHAN217KMnbaisP"
local KeyLink = "https://direct-link.net/3093354/7idYaWbdsZbh"

-- Memanggil Library Rayfield (Lebih Stabil di Mobile/Delta)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Astral - Hub | Fish It",
   LoadingTitle = "Loading Astral Hub...",
   LoadingSubtitle = "by AlipzzyOfficiaL & Nanzcnl",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "AstralHubData"
   },
   KeySystem = true, -- Mengaktifkan Key System Bawaan agar Aman & Ringan
   KeySettings = {
      Title = "Astral - Hub | Key System",
      Subtitle = "Ambil Key di Linkvertise",
      Note = "Link sudah ada di tombol 'Get Key'",
      FileName = "AstralKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {CorrectKey}
   }
})

-- Tombol Get Key (Muncul di UI Key)
Rayfield:SetClipboard(KeyLink)

-- ================= TAB 1: INFO =================
local TabInfo = Window:CreateTab("Info", 4483362458) -- Icon ID
local SectionInfo = TabInfo:CreateSection("User Stats")

local LP = game.Players.LocalPlayer
local AvatarImg = "https://www.roblox.com/headshot-thumbnail/image?userId="..LP.UserId.."&width=420&height=420&format=png"

TabInfo:CreateLabel("Welcome, " .. LP.DisplayName .. " (@" .. LP.Name .. ")")
TabInfo:CreateLabel("Developer: AlipzzyOfficiaL")
TabInfo:CreateLabel("Owner: Nanzcnl")

-- Fitur Deteksi Rod (Placeholder - Sesuaikan dengan Nama Folder Tool di game)
local RodLabel = TabInfo:CreateLabel("Current Rod: Detecting...")
task.spawn(function()
    while task.wait(2) do
        local tool = LP.Character:FindFirstChildOfClass("Tool") or LP.Backpack:FindFirstChildOfClass("Tool")
        if tool then RodLabel:Set("Current Rod: " .. tool.Name) end
    end
end)

TabInfo:CreateButton({
   Name = "Copy Discord Link",
   Callback = function() setclipboard("https://discord.gg/EQethSggwR") end,
})

-- ================= TAB 2: FARM =================
local TabFarm = Window:CreateTab("Farm", 4483362458)
TabFarm:CreateToggle({
   Name = "Fishing Instant",
   CurrentValue = false,
   Callback = function(Value) _G.InstantFish = Value end,
})
TabFarm:CreateSlider({
   Name = "Reel Delay",
   Min = 0, Max = 10, CurrentValue = 1, Flag = "Slider1",
   Callback = function(Value) _G.ReelDelay = Value end,
})
TabFarm:CreateButton({ Name = "Blatant V1", Callback = function() end })
TabFarm:CreateButton({ Name = "Blatant V2", Callback = function() end })

-- ================= TAB 3: TELEPORT =================
local TabTP = Window:CreateTab("Teleport", 4483362458)
local PlayerDropdown = TabTP:CreateDropdown({
   Name = "Select Player",
   Options = {"Loading..."},
   Callback = function(Option) _G.SelectedPlayer = Option end,
})

-- Update Player List
task.spawn(function()
    while task.wait(5) do
        local tbl = {}
        for _, v in pairs(game.Players:GetPlayers()) do table.insert(tbl, v.Name) end
        PlayerDropdown:Refresh(tbl)
    end
end)

TabTP:CreateButton({ Name = "Teleport to Player", Callback = function() 
    local target = game.Players:FindFirstChild(_G.SelectedPlayer)
    if target then LP.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame end
end})

-- ================= TAB 4-8 (PLACEHOLDERS) =================
local TabEvent = Window:CreateTab("Event", 4483362458)
local TabQuest = Window:CreateTab("Quest", 4483362458)
local TabShop = Window:CreateTab("Shop", 4483362458)
local TabMisc = Window:CreateTab("Misc", 4483362458)
local TabWebhook = Window:CreateTab("Webhook", 4483362458)

-- Isi Misc Dasar
TabMisc:CreateToggle({
   Name = "Walk on Water",
   CurrentValue = false,
   Callback = function(v) 
        if v then -- Logic jalan di air
        end
   end,
})
TabMisc:CreateButton({ Name = "Noclip (Soon)", Callback = function() end })

-- ================= TAB 9: PREMIUM =================
local TabPremium = Window:CreateTab("Premium", 4483362458)
TabPremium:CreateButton({
   Name = "Upgrade to Premium (Discord)",
   Callback = function() setclipboard("https://discord.gg/EQethSggwR") end,
})

Rayfield:Notify({
   Title = "Astral Hub Loaded",
   Content = "Enjoy Scripting, "..LP.Name,
   Duration = 5,
   Image = 4483362458,
})
