if getgenv().MeGui then
	return getgenv().MeGui
end

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")

local MeGui = {}
getgenv().MeGui = MeGui

local parentGui = (gethui and gethui()) or Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MeGui"
screenGui.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
screenGui.IgnoreGuiInset = true
screenGui.ScreenInsets = Enum.ScreenInsets.None
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = parentGui

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(1, 0, 1, 0)
main.BackgroundTransparency = 1
main.BorderSizePixel = 0
main.Parent = screenGui

local ui = Instance.new("Frame")
ui.Name = "UI"
ui.Size = UDim2.new(0, 500, 0, 250)
ui.Position = UDim2.new(0.5, -250, 0.5, -125)
ui.BackgroundColor3 = Color3.fromRGB(28, 32, 36)
ui.BorderSizePixel = 0
ui.Parent = main

local stroke = Instance.new("UIStroke")
stroke.Transparency = 0.85
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(201, 201, 201)
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = ui

local topbar = Instance.new("Frame")
topbar.Name = "Topbar"
topbar.Size = UDim2.new(1, 0, 0, 25)
topbar.BackgroundColor3 = Color3.fromRGB(42, 75, 124)
topbar.BorderSizePixel = 0
topbar.Parent = ui

local toggleBtn = Instance.new("ImageButton")
toggleBtn.Name = "Toggle"
toggleBtn.Size = UDim2.new(0.044, 0, 0.87, 0)
toggleBtn.Position = UDim2.new(0.01, 0, 0.04, 0)
toggleBtn.BackgroundTransparency = 1
toggleBtn.ImageColor3 = Color3.fromRGB(226, 226, 226)
toggleBtn.Image = "rbxassetid://123662973791783"
toggleBtn.Rotation = 180
toggleBtn.Parent = topbar

local titleLbl = Instance.new("TextLabel")
titleLbl.Name = "Title"
titleLbl.Size = UDim2.new(0.86, 0, 0.79, 0)
titleLbl.Position = UDim2.new(0.064, 0, 0.04, 0)
titleLbl.BackgroundTransparency = 1
titleLbl.Text = "MeGui"
titleLbl.TextColor3 = Color3.fromRGB(226, 226, 226)
titleLbl.TextSize = 14
titleLbl.TextScaled = true
titleLbl.TextXAlignment = Enum.TextXAlignment.Left
titleLbl.FontFace = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
titleLbl.Parent = topbar

local closeBtn = Instance.new("ImageButton")
closeBtn.Name = "Close"
closeBtn.Size = UDim2.new(0.044, 0, 0.87, 0)
closeBtn.Position = UDim2.new(0.945, 0, 0.04, 0)
closeBtn.BackgroundTransparency = 1
closeBtn.ImageColor3 = Color3.fromRGB(226, 226, 226)
closeBtn.Image = "rbxassetid://75787753688095"
closeBtn.Parent = topbar

local tabs = Instance.new("ScrollingFrame")
tabs.Name = "Tabs"
tabs.Size = UDim2.new(0.98, 0, 0.08, 0)
tabs.Position = UDim2.new(0.01, 0, 0.12, 0)
tabs.BackgroundTransparency = 1
tabs.BorderSizePixel = 0
tabs.ScrollingDirection = Enum.ScrollingDirection.X
tabs.AutomaticCanvasSize = Enum.AutomaticSize.X
tabs.CanvasSize = UDim2.new(0, 0, 0, 0)
tabs.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
tabs.Parent = ui

local tabsLayout = Instance.new("UIListLayout")
tabsLayout.FillDirection = Enum.FillDirection.Horizontal
tabsLayout.Padding = UDim.new(0, 5)
tabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
tabsLayout.Parent = tabs

local frames = Instance.new("Frame")
frames.Name = "Frames"
frames.Size = UDim2.new(1, 0, 0.76, 0)
frames.Position = UDim2.new(0, 0, 0.24, 0)
frames.BackgroundTransparency = 1
frames.BorderSizePixel = 0
frames.Parent = ui

local objects = Instance.new("Frame")
objects.Name = "Objects"
objects.Size = UDim2.new(1, 0, 1, 0)
objects.BackgroundTransparency = 1
objects.BorderSizePixel = 0
objects.Parent = frames

local objectsLayout = Instance.new("UIListLayout")
objectsLayout.Wraps = true
objectsLayout.Padding = UDim.new(0, 20)
objectsLayout.SortOrder = Enum.SortOrder.LayoutOrder
objectsLayout.Parent = objects

local notifHolder = Instance.new("Frame")
notifHolder.Name = "Notifications"
notifHolder.AnchorPoint = Vector2.new(1, 1)
notifHolder.Position = UDim2.new(1, -20, 1, -20)
notifHolder.Size = UDim2.new(0, 260, 1, -40)
notifHolder.BackgroundTransparency = 1
notifHolder.Parent = screenGui

local notifLayout = Instance.new("UIListLayout")
notifLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
notifLayout.Padding = UDim.new(0, 6)
notifLayout.SortOrder = Enum.SortOrder.LayoutOrder
notifLayout.Parent = notifHolder

local activeColor = Color3.fromRGB(34, 67, 100)
local idleColor = Color3.fromRGB(14, 47, 80)

local function selectTab(tab)
	for _, other in ipairs(tabs:GetChildren()) do
		if other:IsA("Frame") then
			other.BackgroundColor3 = idleColor
		end
	end
	tab.BackgroundColor3 = activeColor

	for _, frame in ipairs(frames:GetChildren()) do
		if frame:IsA("Frame") then
			frame.Visible = false
		end
	end

	local targetName = (tab.Name == "TabExample") and "TabExample" or "Objects"
	local target = frames:FindFirstChild(targetName)
	if target then
		target.Visible = true
	end
end

local function makeTab(name)
	local tab = Instance.new("Frame")
	tab.Name = name
	tab.Size = UDim2.new(0.112, 0, 0, 20)
	tab.BackgroundColor3 = idleColor
	tab.BorderSizePixel = 0
	tab.Parent = tabs

	local lbl = Instance.new("TextLabel")
	lbl.Size = UDim2.new(1, 0, 1, 0)
	lbl.BackgroundTransparency = 1
	lbl.Text = name
	lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
	lbl.TextSize = 15
	lbl.TextScaled = true
	lbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	lbl.Parent = tab

	local constraint = Instance.new("UITextSizeConstraint")
	constraint.MaxTextSize = 15
	constraint.Parent = lbl

	tab.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			selectTab(tab)
		end
	end)
end

local function makePage(name)
	local page = Instance.new("Frame")
	page.Name = name
	page.Size = UDim2.new(1, 0, 1, 0)
	page.BackgroundTransparency = 1
	page.BorderSizePixel = 0
	page.Visible = false
	page.Parent = frames

	local layout = Instance.new("UIListLayout")
	layout.Wraps = true
	layout.Padding = UDim.new(0, 20)
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Parent = page
	return page
end

makeTab("ActiveTabExample")
makeTab("TabExample")
makePage("TabExample")

selectTab(tabs:GetFirstChild())

local tsInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
local expanded = true

local function hover(btn)
	btn.MouseEnter:Connect(function()
		TS:Create(btn, tsInfo, {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end)
	btn.MouseLeave:Connect(function()
		TS:Create(btn, tsInfo, {ImageColor3 = Color3.fromRGB(226, 226, 226)}):Play()
	end)
end
hover(toggleBtn)
hover(closeBtn)

toggleBtn.MouseButton1Click:Connect(function()
	expanded = not expanded
	TS:Create(toggleBtn, tsInfo, {Rotation = expanded and 180 or 90}):Play()
	TS:Create(ui, tsInfo, {Size = expanded and UDim2.new(0, 500, 0, 250) or UDim2.new(0, 500, 0, 25)}):Play()
	tabs.Visible = expanded
	frames.Visible = expanded
end)

closeBtn.MouseButton1Click:Connect(function()
	main.Visible = false
end)

local dragging = false
local offset
local docked = nil
local savedSize, savedPos
local snapDist = 20
local dockX = 0.08
local dockY = 0.04

local preview = Instance.new("Frame")
preview.Name = "DockPreview"
preview.BackgroundColor3 = Color3.new(1, 1, 1)
preview.BackgroundTransparency = 0.75
preview.BorderSizePixel = 0
preview.Visible = false
preview.ZIndex = 10
preview.Parent = screenGui

local function showPreview(input)
	local s = workspace.CurrentCamera.ViewportSize
	local mx, my = input.Position.X, input.Position.Y
	local mode = nil
	if mx < s.X * dockX then
		mode = "left"
	elseif mx > s.X * (1 - dockX) then
		mode = "right"
	elseif my < s.Y * dockY then
		mode = "top"
	end
	if mode == "left" then
		preview.Position = UDim2.new(0, 0, 0, 0)
		preview.Size = UDim2.new(0.5, 0, 1, 0)
		preview.Visible = true
	elseif mode == "right" then
		preview.Position = UDim2.new(0.5, 0, 0, 0)
		preview.Size = UDim2.new(0.5, 0, 1, 0)
		preview.Visible = true
	elseif mode == "top" then
		preview.Position = UDim2.new(0, 0, 0, 0)
		preview.Size = UDim2.new(1, 0, 1, 0)
		preview.Visible = true
	else
		preview.Visible = false
	end
	return mode
end

local function applyDock(mode)
	if mode == "left" then
		ui.Position = UDim2.new(0, 0, 0, 0)
		ui.Size = UDim2.new(0.5, 0, 1, 0)
	elseif mode == "right" then
		ui.Position = UDim2.new(0.5, 0, 0, 0)
		ui.Size = UDim2.new(0.5, 0, 1, 0)
	elseif mode == "top" then
		ui.Position = UDim2.new(0, 0, 0, 0)
		ui.Size = UDim2.new(1, 0, 1, 0)
	end
	docked = mode
end

topbar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		local px, py = input.Position.X, input.Position.Y
		local function inBounds(obj)
			return obj and px >= obj.AbsolutePosition.X and px <= obj.AbsolutePosition.X + obj.AbsoluteSize.X and py >= obj.AbsolutePosition.Y and py <= obj.AbsolutePosition.Y + obj.AbsoluteSize.Y
		end
		if inBounds(toggleBtn) or inBounds(closeBtn) then return end
		if docked then
			if savedSize then ui.Size = savedSize end
			if savedPos then ui.Position = savedPos end
			savedSize = nil
			savedPos = nil
			docked = nil
		end
		dragging = true
		offset = Vector2.new(input.Position.X - ui.AbsolutePosition.X, input.Position.Y - ui.AbsolutePosition.Y)
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		ui.Position = UDim2.new(0, input.Position.X - offset.X, 0, input.Position.Y - offset.Y)
		showPreview(input)
	end
end)

UIS.InputEnded:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
		dragging = false
		preview.Visible = false
		local mode = showPreview(input)
		if mode then
			if not savedSize then
				savedSize = ui.Size
				savedPos = UDim2.new(0, ui.AbsolutePosition.X, 0, ui.AbsolutePosition.Y)
			end
			applyDock(mode)
		else
			local s = workspace.CurrentCamera.ViewportSize
			local size = ui.AbsoluteSize
			local x, y = ui.Position.X.Offset, ui.Position.Y.Offset
			if x < snapDist then x = 0 elseif x + size.X > s.X - snapDist then x = s.X - size.X end
			if y < snapDist then y = 0 elseif y + size.Y > s.Y - snapDist then y = s.Y - size.Y end
			ui.Position = UDim2.new(0, x, 0, y)
		end
	end
end)

local grip = Instance.new("TextButton")
grip.Name = "ResizeGrip"
grip.Size = UDim2.new(0, 12, 0, 12)
grip.Position = UDim2.new(1, -12, 1, -12)
grip.BackgroundColor3 = Color3.fromRGB(54, 87, 120)
grip.BorderSizePixel = 0
grip.AutoButtonColor = false
grip.Text = ""
grip.ZIndex = 5
grip.Parent = ui

local gripCorner = Instance.new("UICorner")
gripCorner.CornerRadius = UDim.new(1, 0)
gripCorner.Parent = grip

local resizing = false
local startSize, startMouse

grip.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		resizing = true
		startSize = ui.AbsoluteSize
		startMouse = Vector2.new(input.Position.X, input.Position.Y)
	end
end)

UIS.InputChanged:Connect(function(input)
	if resizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local dx = input.Position.X - startMouse.X
		local dy = input.Position.Y - startMouse.Y
		ui.Size = UDim2.new(0, math.max(200, startSize.X + dx), 0, math.max(120, startSize.Y + dy))
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		resizing = false
	end
end)

function MeGui.Notify(text, duration)
	local d = duration or 3
	local toast = Instance.new("TextLabel")
	toast.Size = UDim2.new(1, 0, 0, 36)
	toast.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	toast.BorderSizePixel = 0
	toast.Text = text
	toast.TextColor3 = Color3.fromRGB(255, 255, 255)
	toast.TextSize = 14
	toast.Font = Enum.Font.Gotham
	toast.TextXAlignment = Enum.TextXAlignment.Left
	toast.TextTransparency = 1
	toast.BackgroundTransparency = 1
	toast.Parent = notifHolder

	local pad = Instance.new("UIPadding")
	pad.PaddingLeft = UDim.new(0, 10)
	pad.PaddingRight = UDim.new(0, 10)
	pad.Parent = toast

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 4)
	corner.Parent = toast

	TS:Create(toast, TweenInfo.new(0.2), {TextTransparency = 0, BackgroundTransparency = 0}):Play()

	task.delay(d, function()
		TS:Create(toast, TweenInfo.new(0.3), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
		task.wait(0.3)
		toast:Destroy()
	end)
end

function MeGui:CreateButton(props)
	props = props or {}
	local parent = props.Parent or objects

	local btn = Instance.new("TextButton")
	btn.TextWrapped = true
	btn.BorderSizePixel = 0
	btn.TextSize = 15
	btn.TextScaled = true
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	btn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	btn.Size = UDim2.new(0.14, 0, 0.13158, 0)
	btn.Text = props.Text or "Button"
	btn.Name = "Button"
	btn.AutoButtonColor = false
	btn.Parent = parent

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0.06, 0)
	corner.Parent = btn

	local constraint = Instance.new("UITextSizeConstraint")
	constraint.MaxTextSize = 15
	constraint.Parent = btn

	btn.MouseEnter:Connect(function() btn.BackgroundColor3 = Color3.fromRGB(54, 87, 120) end)
	btn.MouseLeave:Connect(function() btn.BackgroundColor3 = Color3.fromRGB(34, 67, 100) end)
	btn.MouseButton1Click:Connect(function() if props.Callback then props.Callback() end end)
	return btn
end

function MeGui:CreateCheckbox(props)
	props = props or {}
	local parent = props.Parent or objects

	local box = Instance.new("TextButton")
	box.TextWrapped = true
	box.BorderSizePixel = 0
	box.TextSize = 15
	box.TextScaled = true
	box.TextColor3 = Color3.fromRGB(255, 255, 255)
	box.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	box.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	box.Size = UDim2.new(0.05, 0, 0.13158, 0)
	box.Text = ""
	box.Name = "CheckBox"
	box.Position = UDim2.new(0.15, 0, 0, 0)
	box.AutoButtonColor = false
	box.Parent = parent
	
	box:SetAttribute("Checked", props.Checked == true)

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0.06, 0)
	corner.Parent = box

	local constraint = Instance.new("UITextSizeConstraint")
	constraint.MaxTextSize = 15
	constraint.Parent = box

	local icon = Instance.new("ImageLabel")
	icon.BorderSizePixel = 0
	icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon.Size = UDim2.new(0.8, 0, 0.8, 0)
	icon.Position = UDim2.new(0.08, 0, 0.08, 0)
	icon.BackgroundTransparency = 1
	icon.Name = "Icon"
	icon.Parent = box

	local checked = box:GetAttribute("Checked")
	icon.Image = checked and "rbxassetid://117985790478363" or ""

	box.MouseButton1Click:Connect(function()
		checked = not box:GetAttribute("Checked")
		box:SetAttribute("Checked", checked)
		icon.Image = checked and "rbxassetid://117985790478363" or ""
		if props.Callback then props.Callback(checked) end
	end)
	return box
end

function MeGui:CreateSlider(props)
	props = props or {}
	local parent = props.Parent or objects

	local bar = Instance.new("Frame")
	bar.BorderSizePixel = 0
	bar.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	bar.Size = UDim2.new(0.18, 0, 0.02632, 0)
	bar.Position = UDim2.new(0, 0, 0.47368, 0)
	bar.Name = "Slider"
	bar.Parent = parent

	local knob = Instance.new("TextButton")
	knob.BorderSizePixel = 0
	knob.TextSize = 14
	knob.TextColor3 = Color3.fromRGB(0, 0, 0)
	knob.BackgroundColor3 = Color3.fromRGB(54, 87, 120)
	knob.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	knob.Size = UDim2.new(0.05556, 0, 3, 0)
	knob.Text = ""
	knob.Name = "Drag"
	knob.Position = UDim2.new(0.46667, 0, -1, 0)
	knob.AutoButtonColor = false
	knob.Parent = bar

	local knobCorner = Instance.new("UICorner")
	knobCorner.CornerRadius = UDim.new(1, 0)
	knobCorner.Parent = knob

	local barCorner = Instance.new("UICorner")
	barCorner.CornerRadius = UDim.new(1, 0)
	barCorner.Parent = bar

	local min = props.Min or 0
	local max = props.Max or 100
	local val = math.clamp(props.Value or min, min, max)
	local drag = false

	local function update(alpha)
		knob.Position = UDim2.new(alpha, -alpha * knob.Size.X.Offset, -1, 0)
		val = math.floor(min + (max - min) * alpha)
		if props.Callback then props.Callback(val) end
	end

	update((val - min) / (max - min))

	knob.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then drag = true end
	end)

	UIS.InputChanged:Connect(function(input)
		if drag and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local a = math.clamp((input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
			update(a)
		end
	end)

	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then drag = false end
	end)

	return bar
end

function MeGui:CreateTextbox(props)
	props = props or {}
	local parent = props.Parent or objects

	local box = Instance.new("TextBox")
	box.BorderSizePixel = 0
	box.TextWrapped = true
	box.TextSize = 15
	box.TextColor3 = Color3.fromRGB(255, 255, 255)
	box.TextScaled = true
	box.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	box.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	box.ClearTextOnFocus = false
	box.Size = UDim2.new(0.18, 0, 0.13158, 0)
	box.Position = UDim2.new(0.02222, 0, 0.08, 0)
	box.Text = props.Text or ""
	box.PlaceholderText = props.Placeholder or ""
	box.Parent = parent

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0.06, 0)
	corner.Parent = box

	local constraint = Instance.new("UITextSizeConstraint")
	constraint.MaxTextSize = 15
	constraint.Parent = box

	box.FocusLost:Connect(function()
		if props.Callback then props.Callback(box.Text) end
	end)

	return box
end

return MeGui
