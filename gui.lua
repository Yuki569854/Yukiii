local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- Main GUI
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "YukiScriptGui"
screenGui.ResetOnSpawn = false

-- Mini Icon
local miniIcon = Instance.new("TextButton", screenGui)
miniIcon.Size = UDim2.new(0, 100, 0, 30)
miniIcon.Position = UDim2.new(0, 10, 0, 10)
miniIcon.Text = "Yuki - Script"
miniIcon.TextColor3 = Color3.new(1, 1, 1)
miniIcon.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
miniIcon.BorderColor3 = Color3.fromRGB(80, 80, 80)
miniIcon.Draggable = true
miniIcon.Active = true
miniIcon.Visible = true

-- Main Frame
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.BorderColor3 = Color3.fromRGB(80, 80, 80)
mainFrame.Visible = false
mainFrame.Active = true
mainFrame.Draggable = true

-- Title
local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "YuKi"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20

-- Tab Button
local tabButton = Instance.new("TextButton", mainFrame)
tabButton.Size = UDim2.new(0, 100, 0, 25)
tabButton.Position = UDim2.new(0, 10, 0, 40)
tabButton.Text = "Player Settings"
tabButton.TextColor3 = Color3.new(1, 1, 1)
tabButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
tabButton.BorderColor3 = Color3.fromRGB(80, 80, 80)
tabButton.Font = Enum.Font.SourceSans
tabButton.TextSize = 14

-- Container for settings
local settingsFrame = Instance.new("Frame", mainFrame)
settingsFrame.Size = UDim2.new(1, -20, 1, -80)
settingsFrame.Position = UDim2.new(0, 10, 0, 70)
settingsFrame.BackgroundTransparency = 1

-- WalkSpeed Slider
local walkLabel = Instance.new("TextLabel", settingsFrame)
walkLabel.Size = UDim2.new(0, 200, 0, 20)
walkLabel.Position = UDim2.new(0, 0, 0, 0)
walkLabel.Text = "WalkSpeed:"
walkLabel.TextColor3 = Color3.new(1, 1, 1)
walkLabel.BackgroundTransparency = 1
walkLabel.Font = Enum.Font.SourceSans
walkLabel.TextSize = 14

local walkBox = Instance.new("TextBox", settingsFrame)
walkBox.Size = UDim2.new(0, 50, 0, 20)
walkBox.Position = UDim2.new(0, 100, 0, 0)
walkBox.Text = "16"
walkBox.TextColor3 = Color3.new(1, 1, 1)
walkBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
walkBox.BorderColor3 = Color3.fromRGB(80, 80, 80)
walkBox.Font = Enum.Font.SourceSans
walkBox.TextSize = 14

walkBox.FocusLost:Connect(function()
	local value = tonumber(walkBox.Text)
	if value then
		char:FindFirstChildOfClass("Humanoid").WalkSpeed = value
	end
end)

-- InfJump
local infJumpEnabled = false
local infJumpToggle = Instance.new("TextButton", settingsFrame)
infJumpToggle.Size = UDim2.new(0, 200, 0, 20)
infJumpToggle.Position = UDim2.new(0, 0, 0, 30)
infJumpToggle.Text = "Toggle Infinite Jump: OFF"
infJumpToggle.TextColor3 = Color3.new(1, 1, 1)
infJumpToggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
infJumpToggle.BorderColor3 = Color3.fromRGB(80, 80, 80)
infJumpToggle.Font = Enum.Font.SourceSans
infJumpToggle.TextSize = 14

infJumpToggle.MouseButton1Click:Connect(function()
	infJumpEnabled = not infJumpEnabled
	infJumpToggle.Text = "Toggle Infinite Jump: " .. (infJumpEnabled and "ON" or "OFF")
end)

UIS.JumpRequest:Connect(function()
	if infJumpEnabled then
		char:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

-- Mini icon toggle GUI
miniIcon.MouseButton1Click:Connect(function()
	mainFrame.Visible = not mainFrame.Visible
end)
