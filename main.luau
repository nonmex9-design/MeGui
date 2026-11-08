if getgenv().MeGuiLibrary then
	return getgenv().MeGuiLibrary
end

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")

local MeGui = {}
getgenv().MeGuiLibrary = MeGui

local theme = {
	bg = Color3.fromRGB(28, 32, 36),
	top = Color3.fromRGB(42, 75, 124),
	tab_on = Color3.fromRGB(34, 67, 100),
	tab_off = Color3.fromRGB(14, 47, 80),
	el = Color3.fromRGB(34, 67, 100),
	el_hover = Color3.fromRGB(54, 87, 120),
	txt = Color3.fromRGB(255, 255, 255),
	font = Enum.Font.Gotham
}

local gui = Instance.new("ScreenGui")
gui.Name = "MeGui"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = (gethui and gethui()) or Players.LocalPlayer:WaitForChild("PlayerGui")

local notif_holder = Instance.new("Frame")
notif_holder.Name = "Notifications"
notif_holder.AnchorPoint = Vector2.new(1, 1)
notif_holder.Position = UDim2.new(1, -20, 1, -20)
notif_holder.Size = UDim2.new(0, 260, 1, -40)
notif_holder.BackgroundTransparency = 1
notif_holder.Parent = gui

local notif_layout = Instance.new("UIListLayout")
notif_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
notif_layout.Padding = UDim.new(0, 8)
notif_layout.SortOrder = Enum.SortOrder.LayoutOrder
notif_layout.Parent = notif_holder

function MeGui.Notify(text, duration)
	local d = duration or 3
	local box = Instance.new("TextLabel")
	box.Size = UDim2.new(1, 0, 0, 32)
	box.BackgroundColor3 = theme.top
	box.Text = text
	box.TextColor3 = theme.txt
	box.Font = theme.font
	box.TextSize = 14
	box.TextXAlignment = Enum.TextXAlignment.Left
	box.TextTransparency = 1
	box.BackgroundTransparency = 1
	box.Parent = notif_holder

	local pad = Instance.new("UIPadding")
	pad.PaddingLeft = UDim.new(0, 10)
	pad.Parent = box

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 4)
	corner.Parent = box

	TS:Create(box, TweenInfo.new(0.2), {TextTransparency = 0, BackgroundTransparency = 0}):Play()

	task.delay(d, function()
		TS:Create(box, TweenInfo.new(0.2), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
		task.wait(0.2)
		box:Destroy()
	end)
end

local tooltip = Instance.new("TextLabel")
tooltip.Name = "Tooltip"
tooltip.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
tooltip.BackgroundTransparency = 0.2
tooltip.TextColor3 = Color3.fromRGB(255, 255, 255)
tooltip.Font = theme.font
tooltip.TextSize = 12
tooltip.Visible = false
tooltip.ZIndex = 100
tooltip.AutomaticSize = Enum.AutomaticSize.X
tooltip.Size = UDim2.new(0, 0, 0, 22)
tooltip.Parent = gui

local tip_pad = Instance.new("UIPadding")
tip_pad.PaddingLeft = UDim.new(0, 6)
tip_pad.PaddingRight = UDim.new(0, 6)
tip_pad.Parent = tooltip

local function addTip(obj, text)
	obj.MouseEnter:Connect(function()
		if text and text ~= "" then
			tooltip.Text = text
			tooltip.Visible = true
		end
	end)
	obj.MouseLeave:Connect(function()
		tooltip.Visible = false
	end)
	UIS.InputChanged:Connect(function(input)
		if tooltip.Visible and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			tooltip.Position = UDim2.new(0, input.Position.X + 15, 0, input.Position.Y + 15)
		end
	end)
end

function MeGui.CreateWindow(title)
	local frame = Instance.new("Frame")
	frame.Name = title or "Window"
	frame.Size = UDim2.new(0, 500, 0, 300)
	frame.Position = UDim2.new(0.5, -250, 0.5, -150)
	frame.BackgroundColor3 = theme.bg
	frame.BorderSizePixel = 0
	frame.Parent = gui

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(201, 201, 201)
	stroke.Thickness = 2
	stroke.Transparency = 0.85
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	stroke.Parent = frame

	local topbar = Instance.new("Frame")
	topbar.Name = "Topbar"
	topbar.Size = UDim2.new(1, 0, 0, 30)
	topbar.BackgroundColor3 = theme.top
	topbar.BorderSizePixel = 0
	topbar.Parent = frame

	local title_lbl = Instance.new("TextLabel")
	title_lbl.Size = UDim2.new(1, -80, 1, 0)
	title_lbl.Position = UDim2.new(0, 15, 0, 0)
	title_lbl.BackgroundTransparency = 1
	title_lbl.Text = title or "MeGui"
	title_lbl.TextColor3 = theme.txt
	title_lbl.Font = theme.font
	title_lbl.TextSize = 14
	title_lbl.TextXAlignment = Enum.TextXAlignment.Left
	title_lbl.Parent = topbar

	local close_btn = Instance.new("TextButton")
	close_btn.Size = UDim2.new(0, 30, 0, 30)
	close_btn.Position = UDim2.new(1, -35, 0, 0)
	close_btn.BackgroundTransparency = 1
	close_btn.Text = "X"
	close_btn.TextColor3 = Color3.fromRGB(255, 100, 100)
	close_btn.Font = theme.font
	close_btn.TextSize = 14
	close_btn.Parent = topbar

	local min_btn = Instance.new("TextButton")
	min_btn.Size = UDim2.new(0, 30, 0, 30)
	min_btn.Position = UDim2.new(1, -65, 0, 0)
	min_btn.BackgroundTransparency = 1
	min_btn.Text = "-"
	min_btn.TextColor3 = theme.txt
	min_btn.Font = theme.font
	min_btn.TextSize = 14
	min_btn.Parent = topbar

	local tabs_bar = Instance.new("Frame")
	tabs_bar.Name = "Tabs"
	tabs_bar.Size = UDim2.new(1, 0, 0, 30)
	tabs_bar.Position = UDim2.new(0, 0, 0, 30)
	tabs_bar.BackgroundTransparency = 1
	tabs_bar.Parent = frame

	local tabs_layout = Instance.new("UIListLayout")
	tabs_layout.FillDirection = Enum.FillDirection.Horizontal
	tabs_layout.Padding = UDim.new(0, 5)
	tabs_layout.Parent = tabs_bar

	local pages = Instance.new("Frame")
	pages.Name = "Pages"
	pages.Size = UDim2.new(1, 0, 1, -60)
	pages.Position = UDim2.new(0, 0, 0, 60)
	pages.BackgroundTransparency = 1
	pages.Parent = frame

	local grip = Instance.new("TextButton")
	grip.Size = UDim2.new(0, 15, 0, 15)
	grip.Position = UDim2.new(1, -15, 1, -15)
	grip.BackgroundColor3 = theme.el_hover
	grip.Text = ""
	grip.Parent = frame

	local grip_c = Instance.new("UICorner")
	grip_c.CornerRadius = UDim.new(1, 0)
	grip_c.Parent = grip

	local dragging, drag_start, start_pos
	local resizing, res_start, res_size
	local dock_mode, saved_size, saved_pos
	local expanded = true
	local old_size = frame.Size
	local win = { Tabs = {} }

	local preview = Instance.new("Frame")
	preview.BackgroundColor3 = Color3.new(1, 1, 1)
	preview.BackgroundTransparency = 0.8
	preview.BorderSizePixel = 0
	preview.Visible = false
	preview.ZIndex = 10
	preview.Parent = gui

	local function checkDock(x, y)
		local s = workspace.CurrentCamera.ViewportSize
		if x < s.X * 0.08 then return "left"
		elseif x > s.X * 0.92 then return "right"
		elseif y < s.Y * 0.04 then return "top" end
		return nil
	end

	topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			local px, py = input.Position.X, input.Position.Y
			if (px >= close_btn.AbsolutePosition.X and px <= close_btn.AbsolutePosition.X + close_btn.AbsoluteSize.X and py >= close_btn.AbsolutePosition.Y and py <= close_btn.AbsolutePosition.Y + close_btn.AbsoluteSize.Y) or
			   (px >= min_btn.AbsolutePosition.X and px <= min_btn.AbsolutePosition.X + min_btn.AbsoluteSize.X and py >= min_btn.AbsolutePosition.Y and py <= min_btn.AbsolutePosition.Y + min_btn.AbsoluteSize.Y) then
				return
			end

			if dock_mode then
				if saved_size then frame.Size = saved_size end
				if saved_pos then frame.Position = saved_pos end
				saved_size = nil
				saved_pos = nil
				dock_mode = nil
			end

			dragging = true
			drag_start = input.Position
			start_pos = frame.Position
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - drag_start
			frame.Position = UDim2.new(start_pos.X.Scale, start_pos.X.Offset + delta.X, start_pos.Y.Scale, start_pos.Y.Offset + delta.Y)

			local mode = checkDock(input.Position.X, input.Position.Y)
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
		elseif resizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - res_start
			frame.Size = UDim2.new(0, math.max(250, res_size.X.Offset + delta.X), 0, math.max(150, res_size.Y.Offset + delta.Y))
		end
	end)

	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			if dragging then
				dragging = false
				preview.Visible = false
				local mode = checkDock(input.Position.X, input.Position.Y)
				if mode then
					if not saved_size then
						saved_size = frame.Size
						saved_pos = UDim2.new(0, frame.AbsolutePosition.X, 0, frame.AbsolutePosition.Y)
					end
					if mode == "left" then
						frame.Position = UDim2.new(0, 0, 0, 0)
						frame.Size = UDim2.new(0.5, 0, 1, 0)
					elseif mode == "right" then
						frame.Position = UDim2.new(0.5, 0, 0, 0)
						frame.Size = UDim2.new(0.5, 0, 1, 0)
					elseif mode == "top" then
						frame.Position = UDim2.new(0, 0, 0, 0)
						frame.Size = UDim2.new(1, 0, 1, 0)
					end
					dock_mode = mode
				else
					local s = workspace.CurrentCamera.ViewportSize
					local size = frame.AbsoluteSize
					local x, y = frame.Position.X.Offset, frame.Position.Y.Offset
					if x < 20 then x = 0 elseif x + size.X > s.X - 20 then x = s.X - size.X end
					if y < 20 then y = 0 elseif y + size.Y > s.Y - 20 then y = s.Y - size.Y end
					frame.Position = UDim2.new(0, x, 0, y)
				end
			elseif resizing then
				resizing = false
			end
		end
	end)

	grip.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			resizing = true
			res_start = input.Position
			res_size = frame.Size
		end
	end)

	close_btn.MouseButton1Click:Connect(function()
		frame.Visible = false
	end)

	min_btn.MouseButton1Click:Connect(function()
		expanded = not expanded
		tabs_bar.Visible = expanded
		pages.Visible = expanded
		if expanded then
			TS:Create(frame, TweenInfo.new(0.2), {Size = old_size}):Play()
		else
			old_size = frame.Size
			TS:Create(frame, TweenInfo.new(0.2), {Size = UDim2.new(frame.Size.X.Scale, frame.Size.X.Offset, 0, 30)}):Play()
		end
	end)

	function win.Toggle()
		frame.Visible = not frame.Visible
	end

	function win.Close()
		frame.Visible = false
	end

	function win.AddTab(name)
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(0, 80, 1, 0)
		btn.BackgroundColor3 = theme.tab_off
		btn.Text = name
		btn.TextColor3 = theme.txt
		btn.Font = theme.font
		btn.TextSize = 13
		btn.Parent = tabs_bar

		local page = Instance.new("ScrollingFrame")
		page.Size = UDim2.new(1, -20, 1, -10)
		page.Position = UDim2.new(0, 10, 0, 5)
		page.BackgroundTransparency = 1
		page.BorderSizePixel = 0
		page.ScrollBarThickness = 2
		page.AutomaticCanvasSize = Enum.AutomaticSize.Y
		page.CanvasSize = UDim2.new(0, 0, 0, 0)
		page.Visible = false
		page.Parent = pages

		local layout = Instance.new("UIListLayout")
		layout.Padding = UDim.new(0, 8)
		layout.Parent = page

		local tab = {}

		btn.MouseButton1Click:Connect(function()
			for _, t in pairs(win.Tabs) do
				t.btn.BackgroundColor3 = theme.tab_off
				t.page.Visible = false
			end
			btn.BackgroundColor3 = theme.tab_on
			page.Visible = true
		end)

		table.insert(win.Tabs, {btn = btn, page = page})
		if #win.Tabs == 1 then
			btn.BackgroundColor3 = theme.tab_on
			page.Visible = true
		end

		function tab.AddButton(text, tip, cb)
			local b = Instance.new("TextButton")
			b.Size = UDim2.new(1, 0, 0, 30)
			b.BackgroundColor3 = theme.el
			b.Text = text
			b.TextColor3 = theme.txt
			b.Font = theme.font
			b.TextSize = 14
			b.BorderSizePixel = 0
			b.Parent = page

			local c = Instance.new("UICorner")
			c.CornerRadius = UDim.new(0, 4)
			c.Parent = b

			b.MouseEnter:Connect(function() b.BackgroundColor3 = theme.el_hover end)
			b.MouseLeave:Connect(function() b.BackgroundColor3 = theme.el end)
			b.MouseButton1Click:Connect(cb)
			if tip then addTip(b, tip) end
			return b
		end

		function tab.AddCheckbox(text, def, tip, cb)
			local f = Instance.new("TextButton")
			f.Size = UDim2.new(1, 0, 0, 30)
			f.BackgroundTransparency = 1
			f.Text = ""
			f.Parent = page

			local box = Instance.new("Frame")
			box.Size = UDim2.new(0, 18, 0, 18)
			box.Position = UDim2.new(0, 5, 0.5, -9)
			box.BackgroundColor3 = theme.el
			box.Parent = f

			local c = Instance.new("UICorner")
			c.CornerRadius = UDim.new(0, 4)
			c.Parent = box

			local icon = Instance.new("ImageLabel")
			icon.Size = UDim2.new(0.8, 0, 0.8, 0)
			icon.Position = UDim2.new(0.1, 0, 0.1, 0)
			icon.BackgroundTransparency = 1
			icon.Image = def and "rbxassetid://117985790478363" or ""
			icon.Parent = box

			local lbl = Instance.new("TextLabel")
			lbl.Size = UDim2.new(1, -40, 1, 0)
			lbl.Position = UDim2.new(0, 35, 0, 0)
			lbl.BackgroundTransparency = 1
			lbl.Text = text
			lbl.TextColor3 = theme.txt
			lbl.Font = theme.font
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			lbl.Parent = f

			local on = def
			f.MouseButton1Click:Connect(function()
				on = not on
				icon.Image = on and "rbxassetid://117985790478363" or ""
				cb(on)
			end)
			if tip then addTip(f, tip) end
			return f
		end

		function tab.AddSlider(text, min, max, def, tip, cb)
			local f = Instance.new("Frame")
			f.Size = UDim2.new(1, 0, 0, 40)
			f.BackgroundTransparency = 1
			f.Parent = page

			local lbl = Instance.new("TextLabel")
			lbl.Size = UDim2.new(1, 0, 0, 20)
			lbl.BackgroundTransparency = 1
			lbl.Text = text .. " (" .. def .. ")"
			lbl.TextColor3 = theme.txt
			lbl.Font = theme.font
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			lbl.Parent = f

			local bar = Instance.new("Frame")
			bar.Size = UDim2.new(1, -10, 0, 6)
			bar.Position = UDim2.new(0, 5, 0, 30)
			bar.BackgroundColor3 = theme.el
			bar.Parent = f

			local c = Instance.new("UICorner")
			c.CornerRadius = UDim.new(1, 0)
			c.Parent = bar

			local knob = Instance.new("TextButton")
			knob.Size = UDim2.new(0, 14, 3, 0)
			knob.BackgroundColor3 = theme.el_hover
			knob.Text = ""
			knob.AnchorPoint = Vector2.new(0.5, 0)
			knob.Parent = bar

			local c2 = Instance.new("UICorner")
			c2.CornerRadius = UDim.new(1, 0)
			c2.Parent = knob

			local val = math.clamp(def, min, max)
			local drag = false

			local function update(x)
				local a = math.clamp((x - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
				val = math.floor(min + (max - min) * a)
				knob.Position = UDim2.new(a, 0, -1, 0)
				lbl.Text = text .. " (" .. val .. ")"
				cb(val)
			end

			knob.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					drag = true
				end
			end)

			UIS.InputChanged:Connect(function(input)
				if drag and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
					update(input.Position.X)
				end
			end)

			UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					drag = false
				end
			end)

			update(bar.AbsolutePosition.X + (val - min) / (max - min) * bar.AbsoluteSize.X)
			if tip then addTip(f, tip) end
			return f
		end

		function tab.AddTextbox(text, placeholder, def, tip, cb)
			local f = Instance.new("Frame")
			f.Size = UDim2.new(1, 0, 0, 40)
			f.BackgroundTransparency = 1
			f.Parent = page

			local lbl = Instance.new("TextLabel")
			lbl.Size = UDim2.new(1, 0, 0, 20)
			lbl.BackgroundTransparency = 1
			lbl.Text = text
			lbl.TextColor3 = theme.txt
			lbl.Font = theme.font
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			lbl.Parent = f

			local box = Instance.new("TextBox")
			box.Size = UDim2.new(1, 0, 0, 28)
			box.Position = UDim2.new(0, 0, 0, 20)
			box.BackgroundColor3 = theme.el
			box.Text = def or ""
			box.PlaceholderText = placeholder or ""
			box.TextColor3 = theme.txt
			box.Font = theme.font
			box.TextSize = 14
			box.BorderSizePixel = 0
			box.ClearTextOnFocus = false
			box.Parent = f

			local c = Instance.new("UICorner")
			c.CornerRadius = UDim.new(0, 4)
			c.Parent = box

			box.FocusLost:Connect(function()
				cb(box.Text)
			end)
			if tip then addTip(box, tip) end
			return f
		end

		function tab.AddDropdown(text, options, def, tip, cb)
			local f = Instance.new("Frame")
			f.Size = UDim2.new(1, 0, 0, 30)
			f.BackgroundTransparency = 1
			f.Parent = page

			local btn = Instance.new("TextButton")
			btn.Size = UDim2.new(1, 0, 1, 0)
			btn.BackgroundColor3 = theme.el
			btn.Text = text .. " - " .. (def or options[1])
			btn.TextColor3 = theme.txt
			btn.Font = theme.font
			btn.TextSize = 14
			btn.BorderSizePixel = 0
			btn.Parent = f

			local c = Instance.new("UICorner")
			c.CornerRadius = UDim.new(0, 4)
			c.Parent = btn

			local open = false
			local list = Instance.new("Frame")
			list.Size = UDim2.new(1, 0, 0, #options * 25)
			list.Position = UDim2.new(0, 0, 1, 5)
			list.BackgroundColor3 = theme.bg
			list.BorderSizePixel = 0
			list.Visible = false
			list.ZIndex = 10
			list.Parent = btn

			local c2 = Instance.new("UICorner")
			c2.CornerRadius = UDim.new(0, 4)
			c2.Parent = list

			for i, opt in ipairs(options) do
				local opt_btn = Instance.new("TextButton")
				opt_btn.Size = UDim2.new(1, 0, 0, 25)
				opt_btn.Position = UDim2.new(0, 0, 0, (i-1)*25)
				opt_btn.BackgroundTransparency = 1
				opt_btn.Text = opt
				opt_btn.TextColor3 = theme.txt
				opt_btn.Font = theme.font
				opt_btn.TextSize = 13
				opt_btn.ZIndex = 11
				opt_btn.Parent = list

				opt_btn.MouseButton1Click:Connect(function()
					btn.Text = text .. " - " .. opt
					list.Visible = false
					open = false
					cb(opt)
				end)
			end

			btn.MouseButton1Click:Connect(function()
				open = not open
				list.Visible = open
			end)
			if tip then addTip(btn, tip) end
			return f
		end

		function tab.AddColorPicker(text, def, tip, cb)
			local f = Instance.new("TextButton")
			f.Size = UDim2.new(1, 0, 0, 30)
			f.BackgroundTransparency = 1
			f.Text = ""
			f.Parent = page

			local lbl = Instance.new("TextLabel")
			lbl.Size = UDim2.new(1, -40, 1, 0)
			lbl.Position = UDim2.new(0, 35, 0, 0)
			lbl.BackgroundTransparency = 1
			lbl.Text = text
			lbl.TextColor3 = theme.txt
			lbl.Font = theme.font
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			lbl.Parent = f

			local box = Instance.new("Frame")
			box.Size = UDim2.new(0, 18, 0, 18)
			box.Position = UDim2.new(0, 5, 0.5, -9)
			box.BackgroundColor3 = def or Color3.new(1, 1, 1)
			box.Parent = f

			local c = Instance.new("UICorner")
			c.CornerRadius = UDim.new(0, 4)
			c.Parent = box

			f.MouseButton1Click:Connect(function()
				local col = Color3.fromHSV(math.random(), 0.8, 0.9)
				box.BackgroundColor3 = col
				cb(col)
			end)
			if tip then addTip(f, tip) end
			return f
		end

		function tab.AddKeybind(text, def, tip, cb)
			local f = Instance.new("TextButton")
			f.Size = UDim2.new(1, 0, 0, 30)
			f.BackgroundColor3 = theme.el
			f.BorderSizePixel = 0
			f.Text = ""
			f.Parent = page

			local c = Instance.new("UICorner")
			c.CornerRadius = UDim.new(0, 4)
			c.Parent = f

			local lbl = Instance.new("TextLabel")
			lbl.Size = UDim2.new(1, -80, 1, 0)
			lbl.Position = UDim2.new(0, 10, 0, 0)
			lbl.BackgroundTransparency = 1
			lbl.Text = text
			lbl.TextColor3 = theme.txt
			lbl.Font = theme.font
			lbl.TextSize = 14
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			lbl.Parent = f

			local btn_lbl = Instance.new("TextLabel")
			btn_lbl.Size = UDim2.new(0, 60, 1, 0)
			btn_lbl.Position = UDim2.new(1, -65, 0, 0)
			btn_lbl.BackgroundTransparency = 1
			btn_lbl.Text = def and def.Name or "None"
			btn_lbl.TextColor3 = Color3.fromRGB(200, 200, 200)
			btn_lbl.Font = theme.font
			btn_lbl.TextSize = 13
			btn_lbl.Parent = f

			local listening = false
			f.MouseButton1Click:Connect(function()
				listening = true
				btn_lbl.Text = "Press..."
			end)

			UIS.InputBegan:Connect(function(input, gp)
				if listening and input.UserInputType == Enum.UserInputType.Keyboard then
					listening = false
					btn_lbl.Text = input.KeyCode.Name
					cb(input.KeyCode)
				end
			end)
			if tip then addTip(f, tip) end
			return f
		end

		function tab.AddLabel(text, tip)
			local lbl = Instance.new("TextLabel")
			lbl.Size = UDim2.new(1, 0, 0, 20)
			lbl.BackgroundTransparency = 1
			lbl.Text = text
			lbl.TextColor3 = Color3.fromRGB(200, 200, 200)
			lbl.Font = theme.font
			lbl.TextSize = 13
			lbl.TextXAlignment = Enum.TextXAlignment.Left
			lbl.Parent = page
			if tip then addTip(lbl, tip) end
			return lbl
		end

		function tab.AddDivider()
			local div = Instance.new("Frame")
			div.Size = UDim2.new(1, 0, 0, 2)
			div.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			div.BorderSizePixel = 0
			div.Parent = page
			return div
		end

		return tab
	end

	return win
end

return MeGui
