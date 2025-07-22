-- ØsØ Ekibi Tarafından Yapılmıştır.
-- Made By The ØsØ Ekibi

_CoMxlahgJDwK = "Bu dosya MoonSec V3 ile korundu"
MoonSec_StringsHiddenAttr = true
local LocalPlayer = game.Players.LocalPlayer

-- Ana kütüphane yükleme
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vnadreb/KohlerLibrary/refs/heads/main/KohlerHub.txt"))()

-- Ana pencere oluşturma
local Pencere = OrionLib:MakeWindow({
	["ConfigFolder"] = "OrionTest",
	["Name"] = "ØsØ - TA V1.6.5 [GİZLİ KAYNAK]",
	["HidePremium"] = false,
	["SaveConfig"] = true
})

-- Anasayfa sekmesi
local AnaSekme = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† Ana Sayfa"
})

AnaSekme:AddSection({["Name"] = "- UI Anasayfası -"})
AnaSekme:AddParagraph("ØsØ – TA V1.6.5 [AÇIK KAYNAK] Büyük Güncelleme! ", "\n \n►† Oto Parkur Yapma Eklendi.\n \n►† Araba Sürme Eklendi.\n \n►† Lag Server Eklendi.\n \n►† Modlu Glock-17 Eklendi.\n\n►† Anti-Track Geliştirildi.\n\n►† Tümünü Öldür Menü Eklendi.\n\n►† Oyuncuları Eklendi.\n\n►† Yüz Değiştirme Eklendi.\n\n►† NPC Kontrol Eklendi.\n\n►† Animasyon Araçlarını Eklendi.\n\n►† THO Para Hilesi Eklendi.\n\n►† TPT Eğitimi Aşama Eklendi.\n\n►† Basit Kamplar Takım Değiştirici Eklendi.\n\n►† TA Sahte Çevirme Eklendi.\n\n►† TA Sahte Transfer Eklendi.\n\n►† Sahte Sohbet Mesajı Eklendi.\n\n►† Hitbox Genişletici Eklendi.\n\n►† Aimbot Eklendi.\n\n►† Silent Aim Eklendi.\n\n•† Not: Bu hile tamamen ücretsizdir, para ile şeytan olur ise bizimle iletişime geçer.\n\n\n\n")
AnaSekme:AddParagraph("Kullanıcı Arayüzü Geliştiricileri:", "\n \n•† @ØsØ\n\n")
AnaSekme:AddParagraph("İçerik Yaratıcıları:", "\n\n•† @ØsØ Ekibi (Saygılarımızla.)\n")

-- Bildirim
OrionLib:MakeNotification({
	["Time"] = 8,
	["Image"] = "rbxassetid://4483345998",
	["Content"] = "ØsØ'a Hoşgeldin!",
	["Name"] = "Hoşgeldin!"
})

-- OP & Rütbe sekmesi
local OPRankTab = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† OP & Rütbe"
})

OPRankTab:AddSection({["Name"] = "- Jackler -"})
OPRankTab:AddButton({
	["Name"] = "• Oto JJ Çek! Tool (1 - 10.000)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/JJobf.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Oto GJ Çek! Tool (1 - 10.000)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/GJobf.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Oto HJ Çek! Tool (1 - 10)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/HJ%C3%87ek"))()
	end
})

OPRankTab:AddSection({["Name"] = "- Yararınızı Ayarlayın -"})
OPRankTab:AddButton({
	["Name"] = "• Oto Alım Yap",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/kafalar/main/otoal%C4%B1m"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Doğru Yanlış Takım Değiştirme",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/dygecme"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Sahte OP",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/FakeOp.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• ØsØ Sohbet Alanı",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/valoscripter/Salamsucuksosis/refs/heads/main/SydearrChat.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Araba Sürme",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/Araba-S%C3%BCrme"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Oto Parkur Yapma",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/ParkurYapma.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Genel Liste",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/GeneralListe.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Herkesi AS.ĞZ Yapma (Asteşmen +)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Herkesi-AS.IZ-YAPMA"))()
	end
})

OPRankTab:AddSection({["Name"] = "- OP Kasma -"})
OPRankTab:AddButton({
	["Name"] = "• Tepeköy Çiftliği (24 Saatte 1M OP)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Tepek%C3%B6y.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "• Çöl Farm (6 Saatte 1M OP)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/C%C3%B6lFarm.lua"))()
	end
})

-- Troller sekmesi
local TrollTab = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† Troller"
})

TrollTab:AddSection({["Name"] = "- Animasyonlu -"})
TrollTab:AddButton({
	["Name"] = "• R6 Bang FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/aPSHMV6K"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• R6 Dick Emme FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/FPu4e2Qh"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• R6 Siktir Git FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zHbw7ND1"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• R6 ve R15 Sarılma FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• R6 Animasyonları FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/1p6xnBNf"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• R6 SCP-096 FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/YsJgITXR/raw"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• R6 Fighter FE (Yumruk ve Savunma)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/wxVAgZpT/raw"))()
	end
})

TrollTab:AddSection({["Name"] = "- Troller -"})
TrollTab:AddButton({
	["Name"] = "• R6 Dokunmatik Fırlatma FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/59mJGQGe/raw"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• R6 Görünmez FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Anti-İz",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/Anti-Track.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Görünmez Ol (ØsØ Made)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/G%C3%B6r%C3%BCnmezOl.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Tüm Erkekleri Öldür (Öldürme Yetkisi)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/KillAllGui.txt"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Oyuncuları Getir",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/Rejoin"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Hepsini Savur",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/flingall.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Tutuklu Yakalanmama",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/DetaineYakalanmama.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Gecikme Sunucusu",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/LagServer"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Modlu Glock-17",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/ModluGlock.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Yüz Değiştirme FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/Y%C3%BCz-De%C4%9Fi%C5%9Ftirme.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Silah Modifikasyonları",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/gunmods.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• Hasar Almama",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/HasarAlmama.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "• NPC Kontrol",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty38.lua"))()
	end
})

-- Toollar sekmesi
local AraçlarSekmesi = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† Araçlar"
})

AraçlarSekmesi:AddSection({["Name"] = "- Toollar Scriptleri -"})
AraçlarSekmesi:AddButton({
	["Name"] = "• R6 İçecek Kola Aracı FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoser/ferobloxscriptdrink/refs/heads/main/fedrinkscriptroblox2025"))()
	end
})

AraçlarSekmesi:AddButton({
	["Name"] = "• R6 31 Çek Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/wa3v2vgm/raw"))()
	end
})

AraçlarSekmesi:AddButton({
	["Name"] = "• R6 Animasyon Araçları",
	["Callback"] = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Epik-R6-Dancezz-42246"))()
	end
})

AraçlarSekmesi:AddButton({
	["Name"] = "• Telekinezi Aracı FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty1.lua"))()
	end
})

AraçlarSekmesi:AddButton({
	["Name"] = "• R6 Mevlana Aracı FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/mevlana"))()
	end
})

AraçlarSekmesi:AddButton({
	["Name"] = "• R6 Işınlama Aracı FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/ToTool.lua"))()
	end
})

AraçlarSekmesi:AddButton({
	["Name"] = "• R6 To Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/TeleportTool.lua"))()
	end
})

-- Teleportlar sekmesi
local TeleportTab = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† Işınlanmalar"
})

TeleportTab:AddSection({["Name"] = "- Metro İstasyonları -"})
TeleportTab:AddButton({
	["Name"] = "• Denetim Alanı",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1145.24, 13.76, -255.1))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Duman Adası",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(-2037.29, 17.98, -364.72))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Kafeterya",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(2927.18, 105.48, 536.67))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Güvenli Bölge",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(2641.71, 31.82, 198.66))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Sivil Taban",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(985.43, 13.74, -1277.78))
	end
})

TeleportTab:AddButton({
	["Name"] = "• TSK Üssü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(3077.62, 34.01, -252.62))
	end
})

TeleportTab:AddButton({
	["Name"] = "• HKK Üssü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1278.45, 33.45, 1510.48))
	end
})

TeleportTab:AddSection({["Name"] = "- Base İçi Teleport -"})
TeleportTab:AddButton({
	["Name"] = "• Hava Kuvvetleri Üssü İçi",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(867.19, 34.05, 1641.8))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Kara Kuvvetleri Üssü İçi",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1481.57, 14.01, 778))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Ordu Subayları Üssü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(3136.84, 35.33, -218.44))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Sınır Müfettişleri Base İçi",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(858.55, 14.01, -953.55))
	end
})

TeleportTab:AddButton({
	["Name"] = "• ÖKB Tabanı İçi",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1389.01, 14.3, -559.9))
	end
})

TeleportTab:AddButton({
	["Name"] = "• ÖKK Tabanı İçi",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1459.73, 14.3, -559.84))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Jandarma Üssü İçi",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(884.84, 13.88, 212.98))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Askeri İnzibat Üssü İçi",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1490.47, 13.95, -1126.18))
	end
})

TeleportTab:AddSection({["Name"] = "- Üs Önü Teleport -"})
TeleportTab:AddButton({
	["Name"] = "• Hava Kuvvetleri Üssü Önü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1206.28, 33.45, 1586.71))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Kara Kuvvetleri Üssü Önü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1265.66, 13.76, 619.76))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Sınır Müfettişleri Base Önü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(664.41, 13.76, -975.37))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Özel Kuvvetler Üssü Önü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1265.38, 13.76, -490.94))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Jandarma Üssü Önü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(663.62, 13.76, 256.96))
	end
})

TeleportTab:AddButton({
	["Name"] = "• Askeri İnzibat Üssü Önü",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1265.04, 13.76, -947.38))
	end
})

-- Tüm Kamplar sekmesi
local AllCampsTab = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† Tüm Kamplar"
})

AllCampsTab:AddSection({["Name"] = "- Tüm Kamp Scriptleri -"})
AllCampsTab:AddButton({
	["Name"] = "• THO Para Hilesi",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/THOParaHilesi.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "• TPT Eğitim Açma",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/TPTegitim.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "• Takım Değiştirici",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-Kaynak-/refs/kafalar/ana/Ücretsiz-Kamp-Takım-Değiştirici"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "• TA Sahte Çevirme",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/SahteCark.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "• Sahte Sohbet Mesajı",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/SahteMesaj.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "• TA Sahte Transfer",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/SahtegTransfer.txt"))()
	end
})

-- Discord sekmesi
local DiscordTab = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† Discord"
})

DiscordTab:AddSection({["Name"] = "- Bize Buralardan Ulaşabilirsiniz -"})
DiscordTab:AddParagraph("Kullanıcı Arayüzü Geliştiricileri:", "\n \n•† @tarantulagt\n\n")
DiscordTab:AddParagraph("İçerik Oluşturucular:", "\n\n•† @tarantulagt (Saygılarımızla.)\n")

-- Diğer sekmesi
local DiğerSekme = Pencere:MakeTab({
	["OnlyPremium"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "►† Diğer"
})

DiğerSekme:AddSection({["Name"] = "- Diğer Scriptler -"})
DiğerSekme:AddButton({
	["Name"] = "• Sonsuz Getiri Yöneticisi",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Hitbox Genişletici",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/HitboxExpander"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• AFK Karşıtı",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Genesisuii/Genesisuii/refs/heads/main/Anti%20AFK%20script"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Aimbot",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/Aimbot"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Sessiz Nişan Menüsü (PC)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/godwarekrafiq/universalscript/refs/heads/main/universalscript"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Sohbet Çekilişi",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/_/refs/heads/main/a"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Her Şey ØsØ",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/kafalar/main/Her%C5%9EeySydearr.lua"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Sahte Gecikme FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/heads/main/FakeLag.lua"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Yürüme Hızı Değiştirici",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Açık-kaynak-/refs/kafalar/main/SpeedMen%C3%BC.lua"))()
	end
})

DiğerSekme:AddButton({
	["Name"] = "• Işınlanma İpuçları", -- Burası kodun son düğmesiydi, bu yüzden eksik tırnağı ve parantezi ekledim.
	["Callback"] = function()
		-- Bu kısım boştu, buraya isterseniz bir loadstring veya başka bir fonksiyon ekleyebilirsiniz.
	end
})
