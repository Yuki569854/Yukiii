local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "YuKiGUI"

-- Main Frame
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 430, 0, 250)
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
MiniIcon.Text = "\\||/"
MiniIcon.Size = UDim2.new(0, 60, 0, 30)
MiniIcon.Position = UDim2.new(0.5, -30, 0.05, 0)
MiniIcon.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MiniIcon.BorderColor3 = Color3.fromRGB(0, 255, 0) -- Green highlight
MiniIcon.TextColor3 = Color3.fromRGB(0, 0, 0)
MiniIcon.Font = Enum.Font.SourceSansBold
MiniIcon.TextSize = 18
MiniIcon.Visible = false
MiniIcon.Active = true
MiniIcon.Draggable = true
Instance.new("UICorner", MiniIcon).CornerRadius = UDim.new(1, 0)

-- Profile Section (bottom-left)
local Profile = Instance.new("Frame", MainFrame)
Profile.Size = UDim2.new(0, 150, 0, 35)
Profile.Position = UDim2.new(0, 10, 1, -45)
Profile.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Profile.BorderColor3 = Color3.fromRGB(80, 80, 80)

local ProfileText = Instance.new("TextLabel", Profile)
ProfileText.Text = "Player: " .. LocalPlayer.Name .. " | Premium"
ProfileText.Size = UDim2.new(1, 0, 1, 0)
ProfileText.TextColor3 = Color3.fromRGB(255, 255, 255)
ProfileText.BackgroundTransparency = 1
ProfileText.Font = Enum.Font.SourceSans
ProfileText.TextSize = 13

-- Hide/Show functionality
MinBtn.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	MiniIcon.Visible = true
end)

MiniIcon.MouseButton1Click:Connect(function()
	MainFrame.Visible = true
	MiniIcon.Visible = false
end)
