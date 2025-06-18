--[[ ✅ TA ØsØ Hub - Gelişmiş Roblox Scripti 🌐 Discord: Sydear Team 👨‍💻 Geliştiriciler: Sydear HUB Ekibi, ØsØ 📦 Özellikler: Araç, Tool, ESP, Çöl Farm, AimBot, Sahte Takımlar, Fake Crash, vs. ⚠️ Bu script yalnızca eğitim ve test sunucularında kullanılmalıdır. Gerçek sunucularda kullanılması önerilmez. ]]

-- Ana Güvenlik ve Koruma Sistemi local success, err = pcall(function() -- Koruma Katmanları (Anti-Ban, Anti-Log) local Protected = loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/SecurityLayer.lua"))() end)

-- GUI Arayüzünü Başlat local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/UIHandler.lua"))()

-- Toollar Kategorisi Fonksiyonları local Toollar = {}

Toollar.FakeTeamOrdu = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/FakeOrduSubay.lua"))() end

Toollar.FakeTeamInzibat = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/enverscripts/Open-source/main/Askeri%20%C4%B0nzibat%20TA"))() end

Toollar.JJ = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/JJ.lua"))() end

Toollar.GJ = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/GJ.lua"))() end

Toollar.HJ = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/HJ.lua"))() end

Toollar.AimBot = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/AimBot.lua"))() end

Toollar.FakeKickTeleport = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/FakeKickTeleport.lua"))() end

Toollar.CampFarm = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/DesertAutoFarm.lua"))() end

Toollar.ServerCrash = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/v0c0n1337/scripts/refs/heads/main/Protected_9068977494054906.lua.txt"))() end

-- Araç Sistemi local Vehicle = loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/VehicleSystem.lua"))()

-- ESP, Speed, Fly, Noclip vs. local Visuals = loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/VisualsHandler.lua"))()

-- Mobil Butonları Ayarı local MobileSupport = loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/MobileControls.lua"))()

-- Tanıtım Rehberi local Assistant = loadstring(game:HttpGet("https://raw.githubusercontent.com/38462883/TA-OSO-HUB/main/AssistantGuide.lua"))()

-- Giriş Yapıldı Bilgisi warn("[TA ØsØ HUB] Script başarıyla başlatıldı!")

