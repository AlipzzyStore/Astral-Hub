-- [[ ASTRAL HUB V30 | DELTA OPTIMIZED ]] --
local LP = game.Players.LocalPlayer
local NetFolder = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.2.0"):WaitForChild("net")

-- Fungsi Universal Remote
local function FireNet(name, args)
    local remote = NetFolder:FindFirstChild("RE/" .. name)
    if remote then remote:FireServer(unpack(args or {})) end
end

local function InvokeNet(name, args)
    local remote = NetFolder:FindFirstChild("RF/" .. name)
    if remote then return remote:InvokeServer(unpack(args or {})) end
end

-- [[ LOAD GUI - MENGGUNAKAN SOURCE YANG LEBIH STABIL ]] --
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Astral Hub | Fish It",
   LoadingTitle = "ASTRAL HUB V30",
   LoadingSubtitle = "Delta Mobile Support",
   ConfigurationSaving = { Enabled = false }, -- Matikan config biar ga berat di Delta
   KeySystem = false -- Matikan dulu untuk testing agar langsung muncul
})

-- ================= TAB: AUTO FARM =================
local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
   Name = "Blatant Auto Fish",
   CurrentValue = false,
   Callback = function(v)
      _G.Auto = v
      task.spawn(function()
          while _G.Auto do
              FireNet("EquipToolFromHotbar", {1})
              InvokeNet("ChargeFishingRod")
              FireNet("CastLine")
              task.wait(0.2)
              InvokeNet("RequestFishingMinigameStarted", {[-1.233184814453125, 0.5, 1769879353.189754]})
              FireNet("FishingCompleted")
              task.wait(0.5)
          end
      end)
   end,
})

-- ================= TAB: WORLD =================
local TabWorld = Window:CreateTab("World", 4483362458)
TabWorld:CreateButton({
   Name = "Radiant Weather",
   Callback = function() InvokeNet("PurchaseWeatherEvent", {"Radiant"}) end,
})

Rayfield:Notify({Title = "Astral Hub", Content = "Script Loaded Successfully!", Duration = 5})
