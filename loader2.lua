--[[
loader.lua | by OliwierKaczmarczyk77 | YT:XoliwierX (@oliwier0247) | GitHub:XoliwierX

██╗  ██╗ ██████╗ ██████╗ ███╗   ██╗███████╗ ██████╗ ██╗     ███████╗
╚██╗██╔╝██╔════╝██╔═══██╗████╗  ██║██╔════╝██╔═══██╗██║     ██╔════╝
 ╚███╔╝ ██║     ██║   ██║██╔██╗ ██║███████╗██║   ██║██║     █████╗  
 ██╔██╗ ██║     ██║   ██║██║╚██╗██║╚════██║██║   ██║██║     ██╔══╝  
██╔╝ ██╗╚██████╗╚██████╔╝██║ ╚████║███████║╚██████╔╝███████╗███████╗
╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚══════╝╚══════╝
				2025© OliwierKaczmarczyk77
]]

local player = game.Players.LocalPlayer
local pgui = player:WaitForChild("PlayerGui")

-- BŁĄD NAPRAWIONY: Instance.new("ScreenGui") zamiast nieistniejącego "LoadGui"
local LoadGui = Instance.new("ScreenGui")
LoadGui.Name = "LoadGui"
LoadGui.Parent = pgui

local Button = Instance.new("TextButton")
Button.Name = "Button"
Button.Parent = LoadGui
Button.Text = "Uruchom XCONSOLE"
Button.TextScaled = true
Button.TextColor3 = Color3.fromRGB(197, 241, 255)
-- BŁĄD NAPRAWIONY: BackgroundColor3 zamiast BackgroundColor
Button.BackgroundColor3 = Color3.fromRGB(197, 241, 255)
Button.Size = UDim2.new(0.25, 0, 0.1, 0)
Button.Position = UDim2.new(0.5, 0, 0.9, 0)
Button.Font = Enum.Font.PressStart2P
Button.AnchorPoint = Vector2.new(0.5, 0.5)

local stroke1 = Instance.new("UIStroke")
stroke1.Name = "stroke1"
stroke1.Color = Color3.fromRGB(255, 255, 255)
stroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke1.LineJoinMode = Enum.LineJoinMode.Miter
stroke1.Thickness = 3
stroke1.Parent = Button

local stroke2 = Instance.new("UIStroke")
stroke2.Name = "stroke2"
stroke2.Color = Color3.fromRGB(0, 170, 255)
stroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
stroke2.LineJoinMode = Enum.LineJoinMode.Miter
stroke2.Thickness = 5
stroke2.Parent = Button

local Frame = Instance.new("Frame")
Frame.Name = "Frame"
Frame.Parent = LoadGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(197, 241, 255)
Frame.BackgroundTransparency = 0.2
Frame.Position = UDim2.new(0.5, 0, 0.716, 0)
Frame.Size = UDim2.new(0.25, 0, 0.15, 0)
Frame.Visible = false

local image = Instance.new("ImageLabel")
image.Name = "image"
image.BackgroundTransparency = 1
image.Parent = Frame
image.AnchorPoint = Vector2.new(0.5, 0)
image.Position = UDim2.new(0.5, 0, 1, 0)
image.Size = UDim2.new(0, 100, 0, 30)
image.Image = "rbxassetid://137380979251384"
image.ImageTransparency = 0.2
image.ScaleType = Enum.ScaleType.Fit

local text = Instance.new("TextLabel")
text.Name = "TextLabel"
text.BackgroundTransparency = 1
text.Parent = Frame
text.Text = "Kliknij ten przycisk, aby uruchomić XCONSOLE"
text.Font = Enum.Font.PressStart2P
text.TextColor3 = Color3.fromRGB(197, 241, 255)
text.TextScaled = true
text.Size = UDim2.new(1, 0, 1, 0)

local stroke3 = Instance.new("UIStroke")
stroke3.Name = "stroke"
stroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
stroke3.Color = Color3.fromRGB(0, 170, 255)
stroke3.LineJoinMode = Enum.LineJoinMode.Miter
stroke3.Thickness = 5
stroke3.Parent = text

local bg = Instance.new("Frame")
bg.AnchorPoint = Vector2.new(0.5, 0.5)
bg.BackgroundColor3 = Color3.fromRGB(0,0,0)
bg.BackgroundTransparency = 0.5
bg.Position = UDim2.new(-1.5, 0, 0.5, 0)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.Name = "bg"
bg.Parent = LoadGui

local bar = Instance.new("Frame")
bar.Name = "bar"
bar.AnchorPoint = Vector2.new(0.5, 0.5)
bar.BackgroundTransparency = 1
bar.Position = UDim2.new(0.5, 0, 0.9, 0)
bar.Parent = LoadGui
bar.Size = UDim2.new(0.25, 0, 0.1, 0)
bar.Visible = false

local load = Instance.new("TextLabel")
load.Name = "Text"
load.Text = "Trwa uruchamianie XCONSOLE..."
load.Size = UDim2.new(1, 0, 1, 0)
load.BackgroundTransparency = 1
load.Parent = bar
load.Font = Enum.Font.PressStart2P
load.TextColor3 = Color3.fromRGB(197, 241, 255)
load.TextScaled = true

local stroke4 = Instance.new("UIStroke")
stroke4.Name = "stroke"
stroke4.Parent = bar
stroke4.Color = Color3.fromRGB(0, 170, 255)
stroke4.LineJoinMode = Enum.LineJoinMode.Miter
stroke4.Thickness = 5
stroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual

-- ImageLabels i1 do i7
local function CreateImage(name, id, pos)
	local img = Instance.new("ImageLabel")
	img.Name = name
	img.Parent = LoadGui
	img.AnchorPoint = Vector2.new(0.5, 0.5)
	img.BackgroundTransparency = 1
	img.Position = pos
	img.Size = UDim2.new(0.5, 0, 0.5, 0)
	img.Image = "rbxassetid://" .. id
	img.ScaleType = Enum.ScaleType.Fit
	img.Visible = (name == "7") and false or true
	return img
end

local i1 = CreateImage("1", "114635592250094", UDim2.new(0.5, 0, -1.5, 0))
local i2 = CreateImage("2", "123826500976153", UDim2.new(-1.5, 0, 0.5, 0))
local i3 = CreateImage("3", "91432139016649", UDim2.new(0.5, 0, 1.5, 0))
local i4 = CreateImage("4", "120453913835721", UDim2.new(1.5, 0, 0.5, 0))
local i5 = CreateImage("5", "92355390708306", UDim2.new(0.5, 0, -1.5, 0))
local i6 = CreateImage("6", "137924578693253", UDim2.new(0.5, 0, 1.5, 0))
local i7 = CreateImage("7", "129327555484382", UDim2.new(0.5, 0, 0.5, 0))

--- LOGIKA SKRYPTÓW ---

local TweenService = game:GetService("TweenService")

-- Hover na przycisku
Button.MouseEnter:Connect(function() Frame.Visible = true end)
Button.MouseLeave:Connect(function() Frame.Visible = false end)

-- Animacja kropkowanego tekstu
-- BŁĄD NAPRAWIONY: task.spawn zapobiega blokowaniu reszty kodu
task.spawn(function()
	while true do
		load.Text = "Trwa uruchamianie XCONSOLE."
		task.wait(0.3)
		load.Text = "Trwa uruchamianie XCONSOLE.."
		task.wait(0.3)
		load.Text = "Trwa uruchamianie XCONSOLE..."
		task.wait(0.3)
	end
end)

-- Konfiguracja sekwencji
local sequence = {
	{name = "1", startPos = UDim2.new(0.5, 0, -1.5, 0)},
	{name = "2", startPos = UDim2.new(-1.5, 0, 0.5, 0)},
	{name = "3", startPos = UDim2.new(0.5, 0, 1.5, 0)},
	{name = "4", startPos = UDim2.new(1.5, 0, 0.5, 0)},
	{name = "5", startPos = UDim2.new(0.5, 0, -1.5, 0)},
	{name = "6", startPos = UDim2.new(0.5, 0, 1.5, 0)},
}

local targetPos = UDim2.new(0.5, 0, 0.5, 0)
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

-- Główna funkcja kliknięcia
Button.MouseButton1Click:Connect(function()
	Button.Visible = false
	Frame.Visible = false

	-- Animacja tła
	local bgTween = TweenService:Create(bg, tweenInfo, {Position = UDim2.new(0.5, 0, 0.5, 0)})
	bgTween:Play()
	bgTween.Completed:Wait()

	-- Sekwencja ruchów 1-6
	for _, data in ipairs(sequence) do
		local label = LoadGui:FindFirstChild(data.name)
		if label and label:IsA("ImageLabel") then
			label.Position = data.startPos
			label.Visible = true

			local tween = TweenService:Create(label, tweenInfo, {Position = targetPos})
			tween:Play()
			tween.Completed:Wait() 
			label.Visible = false -- Ukrywamy poprzedni po animacji
		end
	end

	i7.Visible = true
	bar.Visible = true
end)

-- Efekty przycisku (Powiększanie/Zmniejszanie)
local size = Button.Size
Button.MouseEnter:Connect(function()
	TweenService:Create(Button, TweenInfo.new(.1), {Size = UDim2.new(size.X.Scale*1.1, 0, size.Y.Scale*1.1, 0)}):Play()
end)

Button.MouseLeave:Connect(function()
	TweenService:Create(Button, TweenInfo.new(.1), {Size = size}):Play()
end)

Button.MouseButton1Down:Connect(function()
	TweenService:Create(Button, TweenInfo.new(.1), {Size = UDim2.new(size.X.Scale*0.9, 0, size.Y.Scale*0.9, 0)}):Play()
end)

Button.MouseButton1Up:Connect(function()
	TweenService:Create(Button, TweenInfo.new(.1), {Size = UDim2.new(size.X.Scale*1.1, 0, size.Y.Scale*1.1, 0)}):Play()
end)
