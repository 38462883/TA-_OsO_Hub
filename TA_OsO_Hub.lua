--[[ ████████╗ █████╗      ██████╗ ███████╗ ██████╗     ██╗  ██╗██╗   ██╗██████╗ ╚══██╔══╝██╔══██╗    ██╔════╝ ██╔════╝██╔═══██╗    ██║ ██╔╝╚██╗ ██╔╝██╔══██╗ ██║   ███████║    ██║  ███╗█████╗  ██║   ██║    █████╔╝  ╚████╔╝ ██████╔╝ ██║   ██╔══██║    ██║   ██║██╔══╝  ██║   ██║    ██╔═██╗   ╚██╔╝  ██╔═══╝ ██║   ██║  ██║    ╚██████╔╝███████╗╚██████╔╝    ██║  ██╗   ██║   ██║
╚═╝   ╚═╝  ╚═╝     ╚═════╝ ╚══════╝ ╚═════╝     ╚═╝  ╚═╝   ╚═╝   ╚═╝
TA ØsØ Hub | Sydear tarafından geliştirilmiştir --]]

-- GÜVENLİK KATMANLARI -- for i = 1, 20 do if not game:IsLoaded() then game.Loaded:Wait() end wait(0.05) end

if not game.Players or not game:GetService("RunService") or not game:GetService("UserInputService") then error("Koruma duvarı devrede!") end

-- LOGO GÖSTERİMİ -- local logoGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui")) logoGui.Name = "TA_Logo" local logo = Instance.new("TextLabel", logoGui) logo.Size = UDim2.new(0.3, 0, 0.1, 0) logo.Position = UDim2.new(0.35, 0, 0.45, 0) logo.BackgroundTransparency = 1 logo.Text = "TA ØsØ Hub Yükleniyor..." logo.TextScaled = true logo.TextColor3 = Color3.fromRGB(255, 255, 255) wait(2) logoGui:Destroy()

-- ANA GUI OLUŞTURMA -- local gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui")) gui.Name = "TA_GUI" local frame = Instance.new("Frame", gui) frame.Size = UDim2.new(0.25, 0, 0.35, 0) frame.Position = UDim2.new(0.375, 0, 0.3, 0) frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35) frame.BorderSizePixel = 0 frame.Active = true frame.Draggable = true

-- PROFIL KARTI -- local profil = Instance.new("TextLabel", frame) profil.Size = UDim2.new(1, 0, 0.1, 0) profil.Position = UDim2.new(0, 0, 0, 0) profil.Text = "Oyuncu: " .. game.Players.LocalPlayer.Name profil.TextColor3 = Color3.fromRGB(255, 255, 255) profil.BackgroundTransparency = 1

-- YARDIMCI ASISTAN -- local asistan = Instance.new("TextLabel", frame) asistan.Size = UDim2.new(1, 0, 0.1, 0) asistan.Position = UDim2.new(0, 0, 0.1, 0) asistan.Text = "Hoşgeldin! Script özelliklerini keşfet." asistan.TextColor3 = Color3.fromRGB(180, 180, 180) asistan.BackgroundTransparency = 1

-- TRACK KOMUTU (LOG SYSTEM) -- game.Players.LocalPlayer.Chatted:Connect(function(msg) if msg:lower() == ":track" then game.StarterGui:SetCore("ChatMakeSystemMessage", { Text = "[TA ØsØ Hub]: Takip sistemi aktif edildi!"; Color = Color3.fromRGB(255,255,0); }) end end)

-- SUNUCU MESAJ SİSTEMİ -- task.spawn(function() while true do wait(10) game.StarterGui:SetCore("ChatMakeSystemMessage", { Text = "[Sydear Hub] Script başarıyla çalışıyor!"; Color = Color3.fromRGB(0,255,0); }) end end)

-- RÜTBE GUI (DIŞARIDAN YÜKLENEN) loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/FakeRankGui/refs/heads/main/FakeRankGui.lua"))()

-- YETKİLİ LİSTESİ TUŞU -- local yetkiliTusu = Instance.new("TextButton", frame) yetkiliTusu.Size = UDim2.new(0.9, 0, 0.1, 0) yetkiliTusu.Position = UDim2.new(0.05, 0, 0.25, 0) yetkiliTusu.Text = "Yetkilileri Göster" yetkiliTusu.BackgroundColor3 = Color3.fromRGB(60, 60, 60) yetkiliTusu.TextColor3 = Color3.fromRGB(255, 255, 255)

local yetkililer = {"Sydear", "AdminUser", "BanMaster"}

yetkiliTusu.MouseButton1Click:Connect(function() local aktif = "" for _, p in pairs(game.Players:GetPlayers()) do if table.find(yetkililer, p.Name) then aktif = aktif .. p.Name .. "\n" end end game.StarterGui:SetCore("ChatMakeSystemMessage", { Text = "Yetkililer (Oyunda):\n" .. aktif; Color = Color3.fromRGB(255,200,0); }) end)

-- ARAÇ SÜRME SİSTEMİ (TEMEL) local oyuncu = game.Players.LocalPlayer local mouse = oyuncu:GetMouse()

-- bu örnek sürüş sistemi template'dir, geliştirilmeye açıktır mouse.KeyDown:Connect(function(key) local character = oyuncu.Character if character and character:FindFirstChild("Humanoid") then if key == "w" or key == "up" then character:TranslateBy(Vector3.new(0, 0, -1)) elseif key == "s" or key == "down" then character:TranslateBy(Vector3.new(0, 0, 1)) elseif key == "a" or key == "left" then character:TranslateBy(Vector3.new(-1, 0, 0)) elseif key == "d" or key == "right" then character:TranslateBy(Vector3.new(1, 0, 0)) end end end)

-- BİTİŞ NOTU -- print("[TA ØsØ Hub] Script tamamen yüklendi.")

