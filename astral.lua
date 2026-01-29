-- [[ ASTRAL - HUB | FISH IT ]] --
-- Key Link: https://direct-link.net/3093354/7idYaWbdsZbh

local MaterialLua = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

-- Variabel Key (Ganti 'HASIL_DARI_LINK' dengan key asli yang kamu taruh di Linkvertise)
local CorrectKey = "JknagOHAN217KMnbaisP" 

-- Fungsi Booting / Loading
local function Startup()
    print("Loading Astral - Hub...")
    -- Di sini kamu bisa menambahkan animasi loading kustom
end

local UI = MaterialLua:Load({
    Title = "Astral - Hub | Fish It",
    Style = 3,
    SizeX = 500,
    SizeY = 350,
    Theme = "Dark",
    -- Menggunakan logo kamu
    Icon = "rbxassetid://1nlzlf" -- Catatan: Jika ini link eksternal, harus diupload ke Roblox dulu atau gunakan custom image loader
})

-- ================= TAB 1: INFO =================
local Info = UI:New({ Title = "Info" })
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

Info:Section("User Information")
Info:Label("Username: " .. LP.Name)
Info:Label("Display Name: " .. LP.DisplayName)
Info:Label("Rod Used: [Detecting...]") -- Perlu script tambahan untuk deteksi alat

Info:Section("Developers")
Info:Label("Developer: AlipzzyOfficiaL")
Info:Label("Owner: Nanzcnl")

Info:Button({
    Text = "Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/EQethSggwR")
    end
})

-- ================= TAB 2: FARM =================
local Farm = UI:New({ Title = "Farm" })
Farm:Toggle({ Text = "Fishing Instant", Callback = function(v) _G.Instant = v end })
Farm:Toggle({ Text = "Blatant V1", Callback = function(v) end })
Farm:Slider({ Text = "Reel Delay", Min = 0, Max = 10, Def = 1, Callback = function(v) end })

-- ================= TAB 3: TELEPORT =================
local TP = UI:New({ Title = "Teleport" })
TP:Dropdown({
    Text = "Select Map",
    List = {"Main Sea", "Enchant Island", "Winter Zone"},
    Callback = function(v) print("Selected: " .. v) end
})
TP:Button({ Text = "Teleport to Enchant", Callback = function() end })

-- ================= TAB 4: EVENT =================
local Event = UI:New({ Title = "Event" })
Event:Label("Active Events will appear here")

-- ================= TAB 5: QUEST =================
local Quest = UI:New({ Title = "Quest" })
Quest:Toggle({ Text = "Auto Ghost Rod Quest", Callback = function(v) end })
Quest:Toggle({ Text = "Auto Element Rod", Callback = function(v) end })

-- ================= TAB 6: SHOP =================
local Shop = UI:New({ Title = "Shop" })
Shop:Button({ Text = "Buy Bait", Callback = function() end })
Shop:Button({ Text = "Spin Skin", Callback = function() end })

-- ================= TAB 7: MISC =================
local Misc = UI:New({ Title = "Misc" })
Misc:Toggle({ Text = "Walk on Water", Callback = function(v) end })
Misc:Toggle({ Text = "Noclip", Callback = function(v) end })

-- ================= TAB 8: WEBHOOK =================
local Webhook = UI:New({ Title = "Webhook" })
Webhook:TextField({
    Text = "Enter Webhook URL",
    Callback = function(v) _G.WebhookURL = v end
})

-- ================= TAB 9: PREMIUM =================
local Premium = UI:New({ Title = "Upgrade To Premium" })
Premium:Button({
    Text = "Get Premium (Discord)",
    Callback = function()
        setclipboard("https://discord.gg/EQethSggwR")
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Astral Hub",
            Text = "Link Discord disalin! Silahkan buka browser."
        })
    end
})

-- SISTEM CHECK KEY (Sederhana)
local KeyWindow = UI:New({ Title = "Key System" })
KeyWindow:TextField({
    Text = "Paste Key Here",
    Callback = function(v)
        if v == CorrectKey then
            print("Access Granted!")
            -- Logika untuk membuka tab lainnya bisa ditaruh di sini
        end
    end
})
KeyWindow:Button({
    Text = "Get Key (Linkvertise)",
    Callback = function()
        setclipboard("https://direct-link.net/3093354/7idYaWbdsZbh")
    end
})
