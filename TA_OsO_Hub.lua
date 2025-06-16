--[[ 
████████╗ █████╗  ██████╗ ███████╗ ██████╗     ██╗  ██╗██╗   ██╗██████╗ 
╚══██╔══╝██╔══██╗██╔════╝ ██╔════╝██╔═══██╗    ██║ ██╔╝╚██╗ ██╔╝██╔══██╗
   ██║   ███████║██║  ███╗█████╗  ██║   ██║    █████╔╝  ╚████╔╝ ██████╔╝
   ██║   ██╔══██║██║   ██║██╔══╝  ██║   ██║    ██╔═██╗   ╚██╔╝  ██╔═══╝ 
   ██║   ██║  ██║╚██████╔╝███████╗╚██████╔╝    ██║  ██╗   ██║   ██║     
   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝     ╚═╝  ╚═╝   ╚═╝   ╚═╝     
TA ØsØ Hub | Sydear tarafından geliştirilmiştir
]]

-- GÜVENLİK KATMANI
for i = 1, 20 do
	if not game:IsLoaded() then game.Loaded:Wait() end
	wait(0.05)
end

-- TEMEL SERVİSLER
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- LOGO GÖSTERİMİ
local logoGui = Instance.new("ScreenGui", game.CoreGui)
logoGui.Name = "TA_Logo"
local logo = Instance.new("TextLabel", logoGui)
logo.Size = UDim2.new(0.3, 0, 0.1, 0)
logo.Position = UDim2.new(0.35, 0, 0.45, 0)
logo.BackgroundTransparency = 1
logo.Text = "TA ØsØ Hub Yükleniyor..."
logo.TextScaled = true
logo.TextColor3 = Color3.fromRGB(255, 255, 255)
wait(2)
logoGui:Destroy()

-- ANA GUI
local mainGui = Instance.new("ScreenGui", game.CoreGui)
mainGui.Name = "TA_GUI"

local frame = Instance.new("Frame", mainGui)
frame.Size = UDim2.new(0.25, 0, 0.35, 0)
frame.Position = UDim2.new(0.375, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

-- PROFİL KARTI
local profil = Instance.new("TextLabel", frame)
profil.Size = UDim2.new(1, 0, 0.1, 0)
profil.Position = UDim2.new(0, 0, 0, 0)
profil.Text = "Oyuncu: " .. LocalPlayer.Name
profil.TextColor3 = Color3.fromRGB(255, 255, 255)
profil.BackgroundTransparency = 1

-- ASİSTAN
local asistan = Instance.new("TextLabel", frame)
asistan.Size = UDim2.new(1, 0, 0.1, 0)
asistan.Position = UDim2.new(0, 0, 0.1, 0)
asistan.Text = "Hoşgeldin! Script özelliklerini keşfet."
asistan.TextColor3 = Color3.fromRGB(180, 180, 180)
asistan.BackgroundTransparency = 1

-- TRACK KOMUTU
LocalPlayer.Chatted:Connect(function(msg)
	if msg:lower() == ":track" then
		StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[TA ØsØ Hub]: Takip sistemi aktif edildi!";
			Color = Color3.fromRGB(255,255,0);
		})
	end
end)

-- SUNUCU MESAJI
task.spawn(function()
	while true do
		wait(10)
		StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Sydear Hub] Script başarıyla çalışıyor!";
			Color = Color3.fromRGB(0,255,0);
		})
	end
end)

-- RÜTBE GUI (DÜZELTİLMİŞ BAĞLANTI)
loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/FakeRankGui/main/FakeRankGui.lua"))()

-- YETKİLİLER TUŞU
local yetkiliTusu = Instance.new("TextButton", frame)
yetkiliTusu.Size = UDim2.new(0.9, 0, 0.1, 0)
yetkiliTusu.Position = UDim2.new(0.05, 0, 0.25, 0)
yetkiliTusu.Text = "Yetkilileri Göster"
yetkiliTusu.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
yetkiliTusu.TextColor3 = Color3.fromRGB(255, 255, 255)

local yetkililer = {"Sydear", "AdminUser", "BanMaster"}

yetkiliTusu.MouseButton1Click:Connect(function()
	local aktif = ""
	for _, p in pairs(Players:GetPlayers()) do
		if table.find(yetkililer, p.Name) then
			aktif = aktif .. p.Name .. "\n"
		end
	end
	StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Yetkililer (Oyunda):\n" .. aktif;
		Color = Color3.fromRGB(255,200,0);
	})
end)

-- HAREKET (ARAÇ/PLAYER) SİSTEMİ
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	local char = LocalPlayer.Character
	if not char or not char:FindFirstChild("Humanoid") then return end

	if input.KeyCode == Enum.KeyCode.W then
		char:TranslateBy(Vector3.new(0, 0, -1))
	elseif input.KeyCode == Enum.KeyCode.S then
		char:TranslateBy(Vector3.new(0, 0, 1))
	elseif input.KeyCode == Enum.KeyCode.A then
		char:TranslateBy(Vector3.new(-1, 0, 0))
	elseif input.KeyCode == Enum.KeyCode.D then
		char:TranslateBy(Vector3.new(1, 0, 0))
	end
end)

-- BİTİŞ MESAJI
print("[TA ØsØ Hub] Script tamamen yüklendi.")