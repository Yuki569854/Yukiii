local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "YuKiGUI"

-- Main Frame
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 430, 0, 300)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BorderColor3 = Color3.fromRGB(80, 80, 80)
MainFrame.Active = true
MainFrame.Draggable = true

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 10)

-- Title
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "YuKi"
Title.Size = UDim2.new(1, -40, 0, 30)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansSemibold
Title.TextSize = 18
Title.Position = UDim2.new(0, 10, 0, 0)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Minimize Button
local MinBtn = Instance.new("TextButton", MainFrame)
MinBtn.Text = "_"
MinBtn.Size = UDim2.new(0, 30, 0, 30)
MinBtn.Position = UDim2.new(1, -35, 0, 0)
MinBtn.BackgroundTransparency = 1
MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinBtn.Font = Enum.Font.SourceSansBold
MinBtn.TextSize = 20

-- Mini Icon
local MiniIcon = Instance.new("TextButton", ScreenGui)
MiniIcon.Text = "Yuki - Script"
MiniIcon.Size = UDim2.new(0, 120, 0, 30)
MiniIcon.Position = UDim2.new(0.5, -60, 0.05, 0)
MiniIcon.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MiniIcon.BorderColor3 = Color3.fromRGB(0, 255, 0) -- Green highlight
MiniIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
MiniIcon.Font = Enum.Font.SourceSansBold
MiniIcon.TextSize = 14
MiniIcon.Visible = false
MiniIcon.Active = true
MiniIcon.Draggable = true
Instance.new("UICorner", MiniIcon).CornerRadius = UDim.new(1, 0)

-- Profile Section (bottom-left)
local Profile = Instance.new("Frame", MainFrame)
Profile.Size = UDim2.new(0, 200, 0, 40)
Profile.Position = UDim2.new(0, 10, 1, -50)
Profile.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Profile.BorderColor3 = Color3.fromRGB(80, 80, 80)

local ProfileText = Instance.new("TextLabel", Profile)
ProfileText.Text = "Player: " .. LocalPlayer.Name .. " | Premium"
ProfileText.Size = UDim2.new(1, -45, 1, 0)
ProfileText.Position = UDim2.new(0, 0, 0, 0)
ProfileText.TextColor3 = Color3.fromRGB(255, 255, 255)
ProfileText.BackgroundTransparency = 1
ProfileText.Font = Enum.Font.SourceSans
ProfileText.TextSize = 13
ProfileText.TextXAlignment = Enum.TextXAlignment.Left

-- Avatar Image
local Avatar = Instance.new("ImageLabel", Profile)
Avatar.Size = UDim2.new(0, 30, 0, 30)
Avatar.Position = UDim2.new(1, -35, 0.5, -15)
Avatar.BackgroundTransparency = 1
Avatar.Image = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
Avatar.ScaleType = Enum.ScaleType.Fit

-- Tabs Frame
local TabsFrame = Instance.new("Frame", MainFrame)
TabsFrame.Size = UDim2.new(1, -20, 0, 30)
TabsFrame.Position = UDim2.new(0, 10, 0, 40)
TabsFrame.BackgroundTransparency = 1

-- Player Settings Tab Button
local PlayerSettingsTabBtn = Instance.new("TextButton", TabsFrame)
PlayerSettingsTabBtn.Text = "Player Settings"
PlayerSettingsTabBtn.Size = UDim2.new(0, 120, 0, 30)
PlayerSettingsTabBtn.Position = UDim2.new(0, 0, 0, 0)
PlayerSettingsTabBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
PlayerSettingsTabBtn.BorderColor3 = Color3.fromRGB(80, 80, 80)
PlayerSettingsTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerSettingsTabBtn.Font = Enum.Font.SourceSans
PlayerSettingsTabBtn.TextSize = 14

-- Content Frame
local ContentFrame = Instance.new("Frame", MainFrame)
ContentFrame.Size = UDim2.new(1, -20, 1, -120)
ContentFrame.Position = UDim2.new(0, 10, 0, 80)
ContentFrame.BackgroundTransparency = 1

-- Player Settings Content
local PlayerSettingsContent = Instance.new("Frame", ContentFrame)
PlayerSettingsContent.Size = UDim2.new(1, 0, 1, 0)
PlayerSettingsContent.Position = UDim2.new(0, 0, 0, 0)
PlayerSettingsContent.BackgroundTransparency = 1
PlayerSettingsContent.Visible = true

-- Inf Jump Toggle
local InfJumpToggle = Instance.new("TextButton", PlayerSettingsContent)
InfJumpToggle.Text = "Inf Jump: OFF"
InfJumpToggle.Size = UDim2.new(0, 120, 0, 30)
InfJumpToggle.Position = UDim2.new(0, 0, 0, 0)
InfJumpToggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
InfJumpToggle.BorderColor3 = Color3.fromRGB(80, 80, 80)
InfJumpToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
InfJumpToggle.Font = Enum.Font.SourceSans
InfJumpToggle.TextSize = 14

local infJumpEnabled = false

InfJumpToggle.MouseButton1Click:Connect(function()
	infJumpEnabled = not infJumpEnabled
	if
