--[[ ██╗   ██╗ █████╗     ██████╗  ██████╗ ███████╗    ██╗  ██╗██╗   ██╗██████╗ ██║   ██║██╔══██╗    ██╔══██╗██╔═══██╗██╔════╝    ██║ ██╔╝╚██╗ ██╔╝██╔══██╗ ██║   ██║███████║    ██║  ██║██║   ██║███████╗    █████╔╝  ╚████╔╝ ██████╔╝ ██║  ██║██╔══██║    ██║  ██║██║   ██║╚════██║    ██╔═██╗   ╚██╔╝  ██╔═══╝ ██████╔╝██║  ██║    ██████╔╝╚██████╔╝███████║    ██║  ██╗   ██║   ██║ ╚═════╝ ╚═╝  ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝    ╚═╝  ╚═╝   ╚═╝   ╚═╝ TA ØsØ Hub - Geliştirici: Sydearr Hub & ØsØ Ekibi ]]

-- Güvenlik Kontrolü for i = 1, 20 do if not game:IsLoaded() then game.Loaded:Wait() end task.wait(0.05) end

local Players = game:GetService("Players") local ReplicatedStorage = game:GetService("ReplicatedStorage") local LocalPlayer = Players.LocalPlayer local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Yükleme Ekranı local loadingGui = Instance.new("ScreenGui", PlayerGui) loadingGui.Name = "TA_Loading" local logo = Instance.new("TextLabel", loadingGui) logo.Size = UDim2.new(0.4, 0, 0.1, 0) logo.Position = UDim2.new(0.3, 0, 0.45, 0) logo.BackgroundTransparency = 1 logo.Text = "TA ØsØ Hub Yükleniyor..." logo.TextScaled = true logo.TextColor3 = Color3.fromRGB(255, 255, 255) task.wait(2) loadingGui:Destroy()

-- GUI Kurulumu local gui = Instance.new("ScreenGui", PlayerGui) gui.Name = "TA_OsO_Hub"

local mainFrame = Instance.new("Frame", gui) mainFrame.Size = UDim2.new(0.35, 0, 0.5, 0) mainFrame.Position = UDim2.new(0.325, 0, 0.25, 0) mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) mainFrame.BorderSizePixel = 0 mainFrame.Active = true mainFrame.Draggable = true

-- Profil local profile = Instance.new("TextLabel", mainFrame) profile.Size = UDim2.new(1, 0, 0.1, 0) profile.Position = UDim2.new(0, 0, 0, 0) profile.BackgroundTransparency = 1 profile.Text = "Oyuncu: " .. LocalPlayer.Name profile.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Kategoriler local kategoriler = {"Anasayfa", "Sahte Rütbe Transfer", "Araç Sürme", "Tanıtım", "Temalar", "Ayarlar", "Toollar"}

for i, kategori in ipairs(kategoriler) do local btn = Instance.new("TextButton", mainFrame) btn.Size = UDim2.new(0.9, 0, 0.08, 0) btn.Position = UDim2.new(0.05, 0, 0.12 + (i - 1) * 0.09, 0) btn.Text = kategori btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40) btn.TextColor3 = Color3.fromRGB(255, 255, 255) end

-- TOOLLAR - NPC ALL + ESP + Toggle local espEnabled = false local npcKillToggle = false local killDelay = 1

local function enableESP(model) for _, part in pairs(model:GetDescendants()) do if part:IsA("BasePart") and not part:FindFirstChild("ESP") then local esp = Instance.new("BoxHandleAdornment") esp.Name = "ESP" esp.Size = part.Size + Vector3.new(0.1, 0.1, 0.1) esp.Adornee = part esp.AlwaysOnTop = true esp.ZIndex = 5 esp.Transparency = 0.5 esp.Color3 = Color3.fromRGB(255, 0, 0) esp.Parent = part

local line = Instance.new("Beam")
        line.Attachment0 = Instance.new("Attachment", workspace.CurrentCamera)
        line.Attachment1 = Instance.new("Attachment", part)
        line.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
        line.Width0 = 0.05
        line.Width1 = 0.05
        line.Parent = part
    end
end

end

local function npcAll() while npcKillToggle do for _, obj in pairs(workspace:GetDescendants()) do if obj:IsA("Model") and obj:FindFirstChild("Humanoid") then local isPlayer = false for _, player in pairs(Players:GetPlayers()) do if player.Character == obj then isPlayer = true break end end

if not isPlayer and obj ~= LocalPlayer.Character then
                obj:FindFirstChild("Humanoid").Health = 0
                if espEnabled then
                    enableESP(obj)
                end
            end
        end
    end
    task.wait(killDelay)
end

end

-- Toggle tuşları local UserInputService = game:GetService("UserInputService") UserInputService.InputBegan:Connect(function(input, processed) if processed then return end if input.KeyCode == Enum.KeyCode.L then npcKillToggle = not npcKillToggle if npcKillToggle then task.spawn(npcAll) end elseif input.KeyCode == Enum.KeyCode.K then espEnabled = not espEnabled end end)

-- Not: Araç Sürme, Tanıtım Paneli, Sahte Rütbe, Yazı Görme, AimBot vs. sonradan entegre edilecektir. -- Bu script TA ØsØ Hub için optimize edilmiştir ve mobil desteklidir. -- Geliştirici: Sydearr & ØsØ

