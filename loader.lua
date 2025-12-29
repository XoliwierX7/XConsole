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

-- Adding Loading Gui objects

local player = game.Players.LocalPlayer
local pgui = player.WaitForChild("PlayerGui")

local LoadGui = Instance.new("LoadGui")
LoadGui.Name = "LoadGui"
LoadGui.Parent = pgui

local Button = Instance.new("TextButton")
Button.Name = "Button"
Button.Parent = LoadGui
Button.Text = "Uruchom XCONSOLE"
Button.TextScaled = true
Button.TextColor3 = Color3.fromRGB(197, 241, 255)
Button.BackgroundColor = Color3.fromRGB(197, 241, 255)
Button.Size = UDim2.new(0.25, 0, 0.1, 0)
Button.Position = UDim2.new(0.5, 0, 0.9, 0)
Button.Font = Enum.Font.PressStart2P
Button.AnchorPoint = Vector2.new(0.5, 0.5)

local stroke1 = Instance.new("UIStroke")
stroke1.Name = "stroke"
stroke1.Color = Color3.fromRGB(255, 255, 255)
stroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke1.LineJoinMode = Enum.LineJoinMode.Miter
stroke1.Thickness = 3
stroke1.Parent = Button

local stroke2 = Instance.new("UIStroke")
stroke2.Name = "stroke"
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
text.FontFace.Bold = true
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
load.FontFace.Bold = true
load.TextColor3 = Color3.fromRGB(197, 241, 255)
load.TextScaled = true

local stroke4 = Instance.new("UIStroke")
stroke4.Name = "stroke"
stroke4.Parent = bar
stroke4.Color = Color3.fromRGB(0, 170, 255)
stroke4.LineJoinMode = Enum.LineJoinMode.Miter
stroke4.Thickness = 5
stroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual

local i1 = Instance.new("ImageLabel")
i1.Name = "1"
i1.Parent = LoadGui
i1.AnchorPoint = Vector2.new(0.5, 0.5)
i1.BackgroundTransparency = 1
i1.Position = UDim2.new(0.5, 0, -1.5, 0)
i1.Size = UDim2.new(0.5, 0, 0.5, 0)
i1.Image = "rbxassetid://114635592250094"
i1.ScaleType = Enum.ScaleType.Fit

local i2 = Instance.new("ImageLabel")
i2.Name = "2"
i2.Parent = LoadGui
i2.AnchorPoint = Vector2.new(0.5, 0.5)
i2.BackgroundTransparency = 1
i2.Position = UDim2.new(-1.5, 0, 0.5, 0)
i2.Size = UDim2.new(0.5, 0, 0.5, 0)
i2.Image = "rbxassetid://123826500976153"
i2.ScaleType = Enum.ScaleType.Fit

local i3 = Instance.new("ImageLabel")
i3.Name = "3"
i3.Parent = LoadGui
i3.AnchorPoint = Vector2.new(0.5, 0.5)
i3.BackgroundTransparency = 1
i3.Position = UDim2.new(0.5, 0, 1.5, 0)
i3.Size = UDim2.new(0.5, 0, 0.5, 0)
i3.Image = "rbxassetid://91432139016649"
i3.ScaleType = Enum.ScaleType.Fit

local i4 = Instance.new("ImageLabel")
i4.Name = "4"
i4.Parent = LoadGui
i4.AnchorPoint = Vector2.new(0.5, 0.5)
i4.BackgroundTransparency = 1
i4.Position = UDim2.new(1.5, 0, 0.5, 0)
i4.Size = UDim2.new(0.5, 0, 0.5, 0)
i4.Image = "rbxassetid://120453913835721"
i4.ScaleType = Enum.ScaleType.Fit

local i5 = Instance.new("ImageLabel")
i5.Name = "5"
i5.Parent = LoadGui
i5.AnchorPoint = Vector2.new(0.5, 0.5)
i5.BackgroundTransparency = 1
i5.Position = UDim2.new(0.5, 0, -1.5, 0)
i5.Size = UDim2.new(0.5, 0, 0.5, 0)
i5.Image = "rbxassetid://92355390708306"
i5.ScaleType = Enum.ScaleType.Fit

local i6 = Instance.new("ImageLabel")
i6.Name = "6"
i6.Parent = LoadGui
i6.AnchorPoint = Vector2.new(0.5, 0.5)
i6.BackgroundTransparency = 1
i6.Position = UDim2.new(0.5, 0, 1.5, 0)
i6.Size = UDim2.new(0.5, 0, 0.5, 0)
i6.Image = "rbxassetid://137924578693253"
i6.ScaleType = Enum.ScaleType.Fit

local i7 = Instance.new("ImageLabel")
i7.Name = "7"
i7.Parent = LoadGui
i7.AnchorPoint = Vector2.new(0.5, 0.5)
i7.BackgroundTransparency = 1
i7.Position = UDim2.new(0.5, 0, 0.5, 0)
i7.Size = UDim2.new(0.5, 0, 0.5, 0)
i7.Image = "rbxassetid://129327555484382"
i7.ScaleType = Enum.ScaleType.Fit
i7.Visible = false

-- Finally Scripts

-- LOADGUI/Button/LOCALSCRIPT.LUA
local function onMouseEnter()
	Frame.Visible = true
end

-- Funkcja, która uruchomi się, gdy kursor opuści przycisk
local function onMouseLeave()
	Frame.Visible = false
end

-- Podłączenie funkcji do zdarzeń
Button.MouseEnter:Connect(onMouseEnter)
Button.MouseLeave:Connect(onMouseLeave)

-- LOADGUI/LOCALSCRIPT.LUA

local TweenService = game:GetService("TweenService")

-- Tabela z konfiguracją animacji
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

-- Ustawienia początkowe
i7.Visible = false
bar.Visible = false
bg.Position = UDim2.new(0.5, 0, -1.5, 0) -- Ustawiamy bg poza ekranem na starcie

Button.MouseButton1Click:Connect(function()
	-- 1. Przycisk znika
	Button.Visible = false

	-- 0. Animacja wjazdu ramki "bg"
	local bgTween = TweenService:Create(bg, tweenInfo, {Position = UDim2.new(0.5, 0, 0.5, 0)})
	bgTween:Play()
	bgTween.Completed:Wait() -- Czekamy, aż tło wjedzie, zanim ruszą cyfry

	-- 2. Sekwencja ruchów 1-6
	for _, data in ipairs(sequence) do
		local label = LoadGui:FindFirstChild(data.name)
		if label and label:IsA("ImageLabel") then
			label.Position = data.startPos
			label.Visible = true

			local tween = TweenService:Create(label, tweenInfo, {Position = targetPos})
			tween:Play()
			tween.Completed:Wait() 
		end
	end

	-- 3. Elementy 1-6 znikają
	for i = 1, 6 do
		local label = LoadGui:FindFirstChild(tostring(i))
		if label then
			label.Visible = false
		end
	end

	-- 4. Pojawia się "7" i "bar"
	i7.Visible = true
	bar.Visible = true
end)

-- LOADGUI/BAR/TEXTLABEL/LOCALSCRIPT.LUA

while true do
	load.Text = "Trwa uruchamianie XCONSOLE."
	task.wait(0.3)
	load.Text = "Trwa uruchamianie XCONSOLE.."
	task.wait(0.3)
	load.Text = "Trwa uruchamianie XCONSOLE..."
	task.wait(0.3)
end

-- LOADGUI/BUTTON/LOCALSCRIPT.LUA

local btn = Button
local ts = game:GetService("TweenService")

local size = btn.Size

btn.MouseEnter:Connect(function()
	ts:Create(btn, TweenInfo.new(.1), {Size = UDim2.new(size.X.Scale*1.2,size.X.Offset*1.2,size.Y.Scale*1.2,size.X.Offset*1.2)}):Play()
end)

btn.MouseLeave:Connect(function()
	ts:Create(btn, TweenInfo.new(.1), {Size = size}):Play()
end)

btn.MouseButton1Down:Connect(function()
	ts:Create(btn, TweenInfo.new(.1), {Size = UDim2.new(size.X.Scale*0.8,size.X.Offset*0.8,size.Y.Scale*0.8,size.X.Offset*0.8)}):Play()
end)

btn.MouseButton1Up:Connect(function()
	ts:Create(btn, TweenInfo.new(.1), {Size = UDim2.new(size.X.Scale*1.2,size.X.Offset*1.2,size.Y.Scale*1.2,size.X.Offset*1.2)}):Play()
end)

-- END
