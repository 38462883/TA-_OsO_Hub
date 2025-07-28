-- BY TA OSO HUB
-- https://discord.gg/QdADPEZH4x

_CoMxlahgJDwK = "This file was protected with MoonSec V3"
MoonSec_StringsHiddenAttr = true
local LocalPlayer = game.Players.LocalPlayer

-- Ana kÃ¼tÃ¼phane yÃ¼kleme
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vnadreb/KohlerLibrary/refs/heads/main/KohlerHub.txt"))()

-- Ana pencere oluÅŸturma
local Window = OrionLib:MakeWindow({
	["ConfigFolder"] = "OrionTest",
	["Name"] = "TA OsO Hub - TA  V1.6.5 [OPEN SOURCE]",
	["HidePremium"] = false,
	["SaveConfig"] = true
})

-- Anasayfa sekmesi
local HomeTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”†  Anasayfa"
})

HomeTab:AddSection({["Name"] = "- UI AnasayfasÄ± -"})
HomeTab:AddParagraph("Kohler Hub â€“ TA V1.6.5 [OPEN SOURCE] BÃ¼yÃ¼k GÃ¼ncelleme! ", "\n \nâ–¶â”† Oto Parkur Yapma Eklendi.\n \nâ–¶â”† Araba SÃ¼rme Eklendi.\n \nâ–¶â”† Lag Server Eklendi.\n \nâ–¶â”† Modlu Glock-17 Eklendi.\n\nâ–¶â”† Anti-Track GeliÅŸtirildi.\n\nâ–¶â”† Kill All Ä°Ã§in MenÃ¼ Eklendi.\n\nâ–¶â”† Bring Players Eklendi.\n\nâ–¶â”† YÃ¼z DeÄŸiÅŸtirme Eklendi.\n\nâ–¶â”† NPC Kontrol Eklendi.\n\nâ–¶â”† Animasyon ToollarÄ± Eklendi.\n\nâ–¶â”† THO Para Hilesi Eklendi.\n\nâ–¶â”† TPT EÄŸitim AÃ§ma Eklendi.\n\nâ–¶â”† Basit Kamplar Ä°Ã§in Team Changer Eklendi.\n\nâ–¶â”† TA Sahte Ã‡ark Ã‡evirme Eklendi.\n\nâ–¶â”† TA Sahte Transfer Eklendi.\n\nâ–¶â”† Sahte Sohbet MesajÄ± Eklendi.\n\nâ–¶â”† Hitbox Expander Eklendi.\n\nâ–¶â”† Aimbot Eklendi.\n\nâ–¶â”† Silent Aim Eklendi.\n\nâ€¢â”† Not: Bu hile tamamen paralıdır, ücretsiz ile veren olur ise bizimle iletiÅŸime geÃ§in.\n\n\n\n")
HomeTab:AddParagraph("UI Developers:", "\n \nâ€¢â”† @oso\n\n")
HomeTab:AddParagraph("Content Creators:", "\n\nâ€¢â”† @oso (SaygÄ±larÄ±mÄ±zla.)\n")

-- Bildirim
OrionLib:MakeNotification({
	["Time"] = 8,
	["Image"] = "rbxassetid://4483345998",
	["Content"] = "TA OsO Hub'a HoÅŸgeldin!",
	["Name"] = "HoÅŸgeldin!"
})

-- OP & RÃ¼tbe sekmesi
local OPRankTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”† OP & RÃ¼tbe"
})

OPRankTab:AddSection({["Name"] = "- Jackler -"})
OPRankTab:AddButton({
	["Name"] = "â€¢ Oto JJ Ã‡ek! Tool     (1 - 10.000)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/JJobf.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Oto GJ Ã‡ek! Tool     (1 - 10.000)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/GJobf.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Oto HJ Ã‡ek! Tool     (1 - 10)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/HJ%C3%87ek"))()
	end
})

OPRankTab:AddSection({["Name"] = "- Ä°ÅŸinize Yarar -"})
OPRankTab:AddButton({
	["Name"] = "â€¢ Oto AlÄ±m Yap",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/otoal%C4%B1m"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ DoÄŸru YanlÄ±ÅŸ TakÄ±m DeÄŸiÅŸtirme",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/dygecme"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Sahte OP",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/FakeOp.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Kohler Sohbet AlanÄ±",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/valoscripter/Salamsucuksosis/refs/heads/main/SydearrChat.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Araba SÃ¼rme",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Araba-S%C3%BCrme"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Oto Parkur Yapma",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/ParkurYapma.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ General Listesi",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/GeneralListe.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Herkesi AS.Ä°Z Yapma (AsteÄŸmen +)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Herkesi-AS.IZ-YAPMA"))()
	end
})

OPRankTab:AddSection({["Name"] = "- OP Kasma -"})
OPRankTab:AddButton({
	["Name"] = "â€¢ TepekÃ¶y Farm   (24 Saatte 1M OP)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Tepek%C3%B6y.lua"))()
	end
})

OPRankTab:AddButton({
	["Name"] = "â€¢ Ã‡Ã¶l Farm   (6 Saatte 1M OP)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/C%C3%B6lFarm.lua"))()
	end
})

-- Troller sekmesi
local TrollTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”† Troller"
})

TrollTab:AddSection({["Name"] = "- Animasyonlu -"})
TrollTab:AddButton({
	["Name"] = "â€¢ R6 Bang FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/aPSHMV6K"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ R6 Suck Dick FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/FPu4e2Qh"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ R6 Get Fucked FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zHbw7ND1"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ R6 & R15 Hug FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ R6 Animations FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/1p6xnBNf"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ R6 SCP-096 FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/YsJgITXR/raw"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ R6 Fighter FE ( Punch & Defense)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/wxVAgZpT/raw"))()
	end
})

TrollTab:AddSection({["Name"] = "- Troller -"})
TrollTab:AddButton({
	["Name"] = "â€¢ R6 Touch Fling FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/59mJGQGe/raw"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ R6 Invisible FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Anti - Track",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Anti-Track.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ GÃ¶rÃ¼nmez Ol (Kohler Made)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/G%C3%B6r%C3%BCnmezOl.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Kill All MenÃ¼ (Ã–ldÃ¼rme Yetkisi)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/KillAllGui.txt"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Bring Players",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Rejoin"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Fling All",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/flingall.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Detaine Yakalanmama",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/DetaineYakalanmama.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Lag Server",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/LagServer"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Modlu Glock-17",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/ModluGlock.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ YÃ¼z DeÄŸiÅŸtirme FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Y%C3%BCz-De%C4%9Fi%C5%9Ftirme.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Silah ModifikasyonlarÄ±",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/gunmods.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ Hasar Almama",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/HasarAlmama.lua"))()
	end
})

TrollTab:AddButton({
	["Name"] = "â€¢ NPC Kontrol",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty38.lua"))()
	end
})

-- Toollar sekmesi
local ToolsTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”† Toollar"
})

ToolsTab:AddSection({["Name"] = "- Toollar Scriptleri -"})
ToolsTab:AddButton({
	["Name"] = "â€¢ R6 Drink Cola Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoser/ferobloxscriptdrink/refs/heads/main/fedrinkscriptroblox2025"))()
	end
})

ToolsTab:AddButton({
	["Name"] = "â€¢ R6 31 Ã‡ek Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://pastefy.app/wa3v2vgm/raw"))()
	end
})

ToolsTab:AddButton({
	["Name"] = "â€¢ R6 Animasyon ToollarÄ±",
	["Callback"] = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Epik-R6-Dancezz-42246"))()
	end
})

ToolsTab:AddButton({
	["Name"] = "â€¢ Telekinesis Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty1.lua"))()
	end
})

ToolsTab:AddButton({
	["Name"] = "â€¢ R6 Mevlana Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/mevlana"))()
	end
})

ToolsTab:AddButton({
	["Name"] = "â€¢ R6 Teleport Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/ToTool.lua"))()
	end
})

ToolsTab:AddButton({
	["Name"] = "â€¢ R6 To Tool FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/TeleportTool.lua"))()
	end
})

-- Teleportlar sekmesi
local TeleportTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”† Teleportlar"
})

TeleportTab:AddSection({["Name"] = "- Metro Ä°stasyonlarÄ± -"})
TeleportTab:AddButton({
	["Name"] = "â€¢ Denetim AlanÄ±",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1145.24, 13.76, -255.1))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ DÃ¼ÅŸman AdasÄ±",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(-2037.29, 17.98, -364.72))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Kafeterya",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(2927.18, 105.48, 536.67))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Safe Zone",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(2641.71, 31.82, 198.66))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Sivil Base",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(985.43, 13.74, -1277.78))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ TSK Base",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(3077.62, 34.01, -252.62))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ HKK Base",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1278.45, 33.45, 1510.48))
	end
})

TeleportTab:AddSection({["Name"] = "- Base Ä°Ã§i Teleport -"})
TeleportTab:AddButton({
	["Name"] = "â€¢ Hava Kuvvetleri Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(867.19, 34.05, 1641.8))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Kara Kuvvetleri Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1481.57, 14.01, 778))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Ordu SubaylarÄ± Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(3136.84, 35.33, -218.44))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ SÄ±nÄ±r MÃ¼fettiÅŸleri Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(858.55, 14.01, -953.55))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Ã–KB Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1389.01, 14.3, -559.9))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Ã–KK Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1459.73, 14.3, -559.84))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Jandarma Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(884.84, 13.88, 212.98))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Askeri Ä°nzibat Base Ä°Ã§i",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1490.47, 13.95, -1126.18))
	end
})

TeleportTab:AddSection({["Name"] = "- Base Ã–nÃ¼ Teleport -"})
TeleportTab:AddButton({
	["Name"] = "â€¢ Hava Kuvvetleri Base Ã–nÃ¼",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1206.28, 33.45, 1586.71))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Kara Kuvvetleri Base Ã–nÃ¼",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1265.66, 13.76, 619.76))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ SÄ±nÄ±r MÃ¼fettiÅŸleri Base Ã–nÃ¼",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(664.41, 13.76, -975.37))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Ã–zel Kuvvetler Base Ã–nÃ¼",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1265.38, 13.76, -490.94))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Jandarma Base Ã–nÃ¼",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(663.62, 13.76, 256.96))
	end
})

TeleportTab:AddButton({
	["Name"] = "â€¢ Askeri Ä°nzibat Base Ã–nÃ¼",
	["Callback"] = function()
		LocalPlayer.Character:MoveTo(Vector3.new(1265.04, 13.76, -947.38))
	end
})

-- TÃ¼m Kamplar sekmesi
local AllCampsTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”† TÃ¼m Kamplar"
})

AllCampsTab:AddSection({["Name"] = "- TÃ¼m Kamp Scriptleri -"})
AllCampsTab:AddButton({
	["Name"] = "â€¢ THO Para Hilesi",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/THOParaHilesi.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "â€¢ TPT EÄŸitim AÃ§ma",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/TPTegitim.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "â€¢ Team Changer",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Free-Kamp-Team-Changer"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "â€¢ TA Sahte Ã‡ark Ã‡evirme",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/SahteCark.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "â€¢ Sahte Sohbet MesajÄ±",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/SahteMesaj.txt"))()
	end
})

AllCampsTab:AddButton({
	["Name"] = "â€¢ TA Sahte Transfer",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/SahtegTransfer.txt"))()
	end
})

-- Discord sekmesi
local DiscordTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”† Discord"
})

DiscordTab:AddSection({["Name"] = "- Bize Buralardan UlaÅŸabilirsiniz -"})
DiscordTab:AddButton({
	["Name"] = "â€¢ NewdayNewscripts Discord Linkini Kopyala.",
	["Callback"] = function()
		if setclipboard then
			setclipboard("https://discord.gg/m55uw47FM7")
		else
			pcall(function()
				game:GetService("ClipboardService"):SetString("https://discord.gg/QdADPEZH4x")
			end)
		end
		OrionLib:MakeNotification({
			Name = "KopyalandÄ±!",
			Content = "Discord linki panoya kopyalandÄ±",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})

DiscordTab:AddParagraph("UI Developers:", "\n \nâ€¢â”† @oso\n\n")
DiscordTab:AddParagraph("Content Creators:", "\n\nâ€¢â”† @oso (SaygÄ±larÄ±mÄ±zla.)\n")

-- DiÄŸer sekmesi
local OtherTab = Window:MakeTab({
	["PremiumOnly"] = false,
	["Icon"] = "rbxassetid://4483345998",
	["Name"] = "â–¶â”† DiÄŸer"
})

OtherTab:AddSection({["Name"] = "- DiÄŸer Scriptler -"})
OtherTab:AddButton({
	["Name"] = "â€¢ Ä°nfinite Yield Admin",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Hitbox Expander",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/HitboxExpander"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Anti-AFK",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Genesisuii/Genesisuii/refs/heads/main/Anti%20AFK%20script"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Aimbot",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Aimbot"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Silent Aim MenÃ¼ (PC)",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/godwarekrafiq/universalscript/refs/heads/main/universalscript"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Chat Draw",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/_/refs/heads/main/a"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Her Åey OsO",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/Her%C5%9EeySydearr.lua"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Fake Lag FE",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/FakeLag.lua"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Walkspeed Changer",
	["Callback"] = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KaanFriztche/Open-source-/refs/heads/main/SpeedMen%C3%BC.lua"))()
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Infinite Jump",
	["Callback"] = function()
		game:GetService("UserInputService").JumpRequest:Connect(function()
			game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
		end)
	end
})

OtherTab:AddButton({
	["Name"] = "â€¢ Rejoin Server",