-- [[ ALIPZZY STUDIO | ASTRAL HUB V24 - OFFICIAL BRANDING ]] --
local LP = game.Players.LocalPlayer
local NetFolder = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.2.0"):WaitForChild("net")

-- Fungsi Universal Remote (RE) & Invoke (RF)
local function FireNet(name, args)
    local remote = NetFolder:FindFirstChild("RE/" .. name)
    if remote then remote:FireServer(unpack(args or {})) end
end

local function InvokeNet(name, args)
    local remote = NetFolder:FindFirstChild("RF/" .. name)
    if remote then return remote:InvokeServer(unpack(args or {})) end
end

-- [[ LOAD ASTRAL HUB GUI ENGINE ]] --
local AstralEngine = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = AstralEngine:CreateWindow({
   Name = "Astral Hub | Fish It - V29",
   LoadingTitle = "ASTRAL HUB: SUPREME",
   LoadingSubtitle = "by AlipzzyOfficiaL & Nanzcnl",
   ConfigurationSaving = { Enabled = true, FolderName = "AstralHub_Data" },
   KeySystem = true,
   KeySettings = {
      Title = "Astral Hub | Key System",
      Subtitle = "Link Auto-Copied!",
      Key = {"JknagOHAN217KMnbaisP"},
      Actions = { [1] = { Text = "Get Key", OnPress = function() setclipboard("https://direct-link.net/3093354/7idYaWbdsZbh") end } }
   }
})

-- ================= TAB: BLATANT (V1 & V2) =================
local TabBlatant = Window:CreateTab("Blatant Mode", 4483362458)

TabBlatant:CreateSection("Blatant V1: God Speed")
TabBlatant:CreateToggle({
   Name = "Instant Catch (No Delay)",
   CurrentValue = false,
   Callback = function(v)
      _G.Blatant = v
      task.spawn(function()
          while _G.Blatant do
              FireNet("EquipToolFromHotbar", {1})
              InvokeNet("ChargeFishingRod")
              FireNet("CastLine")
              -- Koordinat Presisi
              InvokeNet("RequestFishingMinigameStarted", {[-1.233184814453125, 0.5, 1769879353.189754]})
              FireNet("FishingCompleted")
              task.wait(0.05)
          end
      end)
   end,
})

TabBlatant:CreateSection("Blatant V2: World Chaos")
TabBlatant:CreateToggle({
   Name = "Auto TP Best Spots (Infinite)",
   CurrentValue = false,
   Callback = function(v)
       _G.AutoTP = v
       local Spots = {
           Vector3.new(542, 25, -1200),  -- Enchant Island
           Vector3.new(-1500, -500, 2000), -- Deep Abyss
           Vector3.new(2000, 50, 3000)   -- Lava Crater
       }
       local i = 1
       task.spawn(function()
           while _G.AutoTP do
               if LP.Character then
                   LP.Character.HumanoidRootPart.CFrame = CFrame.new(Spots[i])
                   i = i % #Spots + 1
               end
               task.wait(8)
           end
       end)
   end,
})

-- ================= TAB: FARM (LEGIT MODE) =================
local TabLegit = Window:CreateTab("Legit Farm", 4483362458)

TabLegit:CreateToggle({
   Name = "Safe Auto Fishing",
   CurrentValue = false,
   Callback = function(v)
      _G.Legit = v
      task.spawn(function()
          while _G.Legit do
              InvokeNet("UpdateFishingRadar", {true})
              FireNet("EquipToolFromHotbar", {1})
              InvokeNet("ChargeFishingRod")
              FireNet("CastLine")
              task.wait(2.5) -- Meniru gerakan manusia
              InvokeNet("RequestFishingMinigameStarted", {[-1.233184814453125, 0.5, 1769879353.189754]})
              task.wait(1)
              FireNet("FishingCompleted")
              task.wait(1.5)
          end
      end)
   end,
})

-- ================= TAB: SHOP & WORLD =================
local TabWorld = Window:CreateTab("World & Shop", 4483362458)

TabWorld:CreateSection("Weather Control")
TabWorld:CreateButton({ Name = "Buy RADIANT", Callback = function() InvokeNet("PurchaseWeatherEvent", {"Radiant"}) end })
TabWorld:CreateButton({ Name = "Buy STORM", Callback = function() InvokeNet("PurchaseWeatherEvent", {"Storm"}) end })

TabWorld:CreateSection("Utility Shop")
TabWorld:CreateButton({ Name = "Buy 20x Bait", Callback = function() InvokeNet("PurchaseBait", {20}) end })
TabWorld:CreateButton({ Name = "Buy Merchant Totem", Callback = function() InvokeNet("PurchaseMarketItem", {7}) end })
TabWorld:CreateButton({ Name = "Buy God Rod (77)", Callback = function() InvokeNet("PurchaseFishingRod", {77}) end })

AstralEngine:Notify({Title = "Astral Hub", Content = "Welcome, Alipzzy & Nanzcnl!", Duration = 5})
