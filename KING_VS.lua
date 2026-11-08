local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "KING.VS"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 180)
frame.Position = UDim2.new(0.5, -130, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(220, 0, 0)
stroke.Thickness = 2
stroke.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "KING.VS"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.TextSize = 27
title.Font = Enum.Font.GothamBold
title.Parent = frame

local subtitle = Instance.new("TextLabel")
subtitle.Position = UDim2.new(0, 0, 0, 42)
subtitle.Size = UDim2.new(1, 0, 0, 25)
subtitle.BackgroundTransparency = 1
subtitle.Text = "TOP 1"
subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
subtitle.TextSize = 14
subtitle.Font = Enum.Font.GothamBold
subtitle.Parent = frame

local id = Instance.new("TextLabel")
id.Position = UDim2.new(0, 0, 0, 75)
id.Size = UDim2.new(1, 0, 0, 25)
id.BackgroundTransparency = 1
id.Text = "Discord ID: 4965718943"
id.TextColor3 = Color3.fromRGB(255, 0, 0)
id.TextSize = 13
id.Font = Enum.Font.Gotham
id.Parent = frame

local button = Instance.new("TextButton")
button.Position = UDim2.new(0.1, 0, 0, 115)
button.Size = UDim2.new(0.8, 0, 0, 40)
button.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
button.Text = "COPIAR DISCORD"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 14
button.Font = Enum.Font.GothamBold
button.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = button

button.MouseButton1Click:Connect(function()
    local link = "https://discord.gg/mdfE5pCx5F"
    if setclipboard then
        pcall(function()
            setclipboard(link)
        end)
        button.Text = "LINK COPIADO!"
    else
        button.Text = "DISCORD: mdfE5pCx5F"
    end
end)
