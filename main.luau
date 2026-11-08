--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 44 | Scripts: 5 | Modules: 6 | Tags: 0
local G2L = {};

-- StarterGui.MeGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.None;
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.None;
G2L["1"]["Name"] = [[MeGui]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.MeGui.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.MeGui.Main.UI
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(28, 32, 36);
G2L["3"]["Size"] = UDim2.new(0, 500, 0, 250);
G2L["3"]["Position"] = UDim2.new(0.29078, 0, 0.29968, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[UI]];


-- StarterGui.MeGui.Main.UI.Topbar
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(42, 75, 124);
G2L["4"]["Size"] = UDim2.new(1, 0, 0.101, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Topbar]];


-- StarterGui.MeGui.Main.UI.Topbar.Toggle
G2L["5"] = Instance.new("ImageButton", G2L["4"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["ImageColor3"] = Color3.fromRGB(226, 226, 226);
G2L["5"]["Image"] = [[rbxassetid://123662973791783]];
G2L["5"]["Size"] = UDim2.new(0.044, 0, 0.87129, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Toggle]];
G2L["5"]["Rotation"] = 180;
G2L["5"]["Position"] = UDim2.new(0.01, 0, 0.04, 0);


-- StarterGui.MeGui.Main.UI.Topbar.Title
G2L["6"] = Instance.new("TextLabel", G2L["4"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(0.86, 0, 0.79208, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[This is the title]];
G2L["6"]["Name"] = [[Title]];
G2L["6"]["Position"] = UDim2.new(0.064, 0, 0.04, 0);


-- StarterGui.MeGui.Main.UI.Topbar.Close
G2L["7"] = Instance.new("ImageButton", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["ImageColor3"] = Color3.fromRGB(226, 226, 226);
G2L["7"]["Image"] = [[rbxassetid://75787753688095]];
G2L["7"]["Size"] = UDim2.new(0.044, 0, 0.871, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Close]];
G2L["7"]["Position"] = UDim2.new(0.945, 0, 0.04, 0);


-- StarterGui.MeGui.Main.UI.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["3"]);
G2L["8"]["Transparency"] = 0.85;
G2L["8"]["Thickness"] = 2;
G2L["8"]["Color"] = Color3.fromRGB(201, 201, 201);
G2L["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.MeGui.Main.UI.Tabs
G2L["9"] = Instance.new("ScrollingFrame", G2L["3"]);
G2L["9"]["Active"] = true;
G2L["9"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["Name"] = [[Tabs]];
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["9"]["Size"] = UDim2.new(0.98, 0, 0.08, 0);
G2L["9"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Position"] = UDim2.new(0.01, 0, 0.12, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;


-- StarterGui.MeGui.Main.UI.Tabs.UIListLayout
G2L["a"] = Instance.new("UIListLayout", G2L["9"]);
G2L["a"]["Padding"] = UDim.new(0, 5);
G2L["a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["a"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.MeGui.Main.UI.Tabs.ActiveTabExample
G2L["b"] = Instance.new("Frame", G2L["9"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(34, 67, 100);
G2L["b"]["Size"] = UDim2.new(0.11224, 0, 0, 20);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[ActiveTabExample]];


-- StarterGui.MeGui.Main.UI.Tabs.ActiveTabExample.Title
G2L["c"] = Instance.new("TextLabel", G2L["b"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 15;
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Active]];
G2L["c"]["Name"] = [[Title]];


-- StarterGui.MeGui.Main.UI.Tabs.ActiveTabExample.Title.UITextSizeConstraint
G2L["d"] = Instance.new("UITextSizeConstraint", G2L["c"]);
G2L["d"]["MaxTextSize"] = 15;


-- StarterGui.MeGui.Main.UI.Tabs.TabExample
G2L["e"] = Instance.new("Frame", G2L["9"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(14, 47, 80);
G2L["e"]["Size"] = UDim2.new(0.112, 0, 0, 20);
G2L["e"]["Position"] = UDim2.new(0.12245, 0, 0, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[TabExample]];


-- StarterGui.MeGui.Main.UI.Tabs.TabExample.Title
G2L["f"] = Instance.new("TextLabel", G2L["e"]);
G2L["f"]["TextWrapped"] = true;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 15;
G2L["f"]["TextScaled"] = true;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[Normal]];
G2L["f"]["Name"] = [[Title]];


-- StarterGui.MeGui.Main.UI.Tabs.TabExample.Title.UITextSizeConstraint
G2L["10"] = Instance.new("UITextSizeConstraint", G2L["f"]);
G2L["10"]["MaxTextSize"] = 15;


-- StarterGui.MeGui.Main.UI.Frames
G2L["11"] = Instance.new("Frame", G2L["3"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["Size"] = UDim2.new(1, 0, 0.76, 0);
G2L["11"]["Position"] = UDim2.new(0, 0, 0.24, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[Frames]];
G2L["11"]["BackgroundTransparency"] = 1;


-- StarterGui.MeGui.Main.UI.Frames.Objects
G2L["12"] = Instance.new("Frame", G2L["11"]);
G2L["12"]["Visible"] = false;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Objects]];
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.MeGui.Main.UI.Frames.Objects.UIListLayout
G2L["13"] = Instance.new("UIListLayout", G2L["12"]);
G2L["13"]["Wraps"] = true;
G2L["13"]["Padding"] = UDim.new(0, 20);
G2L["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.MeGui.Main.UI.Frames.Objects.Button
G2L["14"] = Instance.new("TextButton", G2L["12"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 15;
G2L["14"]["TextScaled"] = true;
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(34, 67, 100);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["Size"] = UDim2.new(0.14, 0, 0.13158, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Button]];


-- StarterGui.MeGui.Main.UI.Frames.Objects.Button.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(0.06, 0);


-- StarterGui.MeGui.Main.UI.Frames.Objects.Button.UITextSizeConstraint
G2L["16"] = Instance.new("UITextSizeConstraint", G2L["14"]);
G2L["16"]["MaxTextSize"] = 15;


-- StarterGui.MeGui.Main.UI.Frames.Objects.CheckBox
G2L["17"] = Instance.new("TextButton", G2L["12"]);
G2L["17"]["TextWrapped"] = true;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 15;
G2L["17"]["TextScaled"] = true;
G2L["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(34, 67, 100);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["Size"] = UDim2.new(0.05, 0, 0.13158, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Text"] = [[]];
G2L["17"]["Name"] = [[CheckBox]];
G2L["17"]["Position"] = UDim2.new(0.15, 0, 0, 0);
-- Attributes
G2L["17"]:SetAttribute([[Checked]], false);


-- StarterGui.MeGui.Main.UI.Frames.Objects.CheckBox.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(0.06, 0);


-- StarterGui.MeGui.Main.UI.Frames.Objects.CheckBox.UITextSizeConstraint
G2L["19"] = Instance.new("UITextSizeConstraint", G2L["17"]);
G2L["19"]["MaxTextSize"] = 15;


-- StarterGui.MeGui.Main.UI.Frames.Objects.CheckBox.Icon
G2L["1a"] = Instance.new("ImageLabel", G2L["17"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["Image"] = [[rbxassetid://117985790478363]];
G2L["1a"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Name"] = [[Icon]];
G2L["1a"]["Position"] = UDim2.new(0.08, 0, 0.08, 0);


-- StarterGui.MeGui.Main.UI.Frames.Objects.Slider
G2L["1b"] = Instance.new("Frame", G2L["12"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(34, 67, 100);
G2L["1b"]["Size"] = UDim2.new(0.18, 0, 0.02632, 0);
G2L["1b"]["Position"] = UDim2.new(0, 0, 0.47368, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Slider]];


-- StarterGui.MeGui.Main.UI.Frames.Objects.Slider.Drag
G2L["1c"] = Instance.new("TextButton", G2L["1b"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 14;
G2L["1c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(54, 87, 120);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["Size"] = UDim2.new(0.05556, 0, 3, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[]];
G2L["1c"]["Name"] = [[Drag]];
G2L["1c"]["Position"] = UDim2.new(0.46667, 0, -1, 0);


-- StarterGui.MeGui.Main.UI.Frames.Objects.Slider.Drag.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);
G2L["1d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.MeGui.Main.UI.Frames.Objects.Slider.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1b"]);
G2L["1e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.MeGui.Main.UI.Frames.Objects.TextBox
G2L["1f"] = Instance.new("TextBox", G2L["12"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextWrapped"] = true;
G2L["1f"]["TextSize"] = 15;
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["TextScaled"] = true;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(34, 67, 100);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["ClearTextOnFocus"] = false;
G2L["1f"]["Size"] = UDim2.new(0.18, 0, 0.13158, 0);
G2L["1f"]["Position"] = UDim2.new(0.02222, 0, 0.08, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.MeGui.Main.UI.Frames.Objects.TextBox.UITextSizeConstraint
G2L["20"] = Instance.new("UITextSizeConstraint", G2L["1f"]);
G2L["20"]["MaxTextSize"] = 15;


-- StarterGui.MeGui.Main.UI.Frames.Objects.TextBox.UICorner
G2L["21"] = Instance.new("UICorner", G2L["1f"]);
G2L["21"]["CornerRadius"] = UDim.new(0.06, 0);


-- StarterGui.MeGui.Main.Animations
G2L["22"] = Instance.new("LocalScript", G2L["2"]);
G2L["22"]["Name"] = [[Animations]];


-- StarterGui.MeGui.Main.TabsHandler
G2L["23"] = Instance.new("LocalScript", G2L["2"]);
G2L["23"]["Name"] = [[TabsHandler]];


-- StarterGui.MeGui.Main.ObjectsHandler
G2L["24"] = Instance.new("LocalScript", G2L["2"]);
G2L["24"]["Name"] = [[ObjectsHandler]];


-- StarterGui.MeGui.Main.API
G2L["25"] = Instance.new("ModuleScript", G2L["2"]);
G2L["25"]["Name"] = [[API]];


-- StarterGui.MeGui.Main.API.Button
G2L["26"] = Instance.new("ModuleScript", G2L["25"]);
G2L["26"]["Name"] = [[Button]];


-- StarterGui.MeGui.Main.API.CheckBox
G2L["27"] = Instance.new("ModuleScript", G2L["25"]);
G2L["27"]["Name"] = [[CheckBox]];


-- StarterGui.MeGui.Main.API.TextBox
G2L["28"] = Instance.new("ModuleScript", G2L["25"]);
G2L["28"]["Name"] = [[TextBox]];


-- StarterGui.MeGui.Main.API.Slider
G2L["29"] = Instance.new("ModuleScript", G2L["25"]);
G2L["29"]["Name"] = [[Slider]];


-- StarterGui.MeGui.Main.Drag
G2L["2a"] = Instance.new("LocalScript", G2L["2"]);
G2L["2a"]["Name"] = [[Drag]];


-- StarterGui.MeGui.Main.Resize
G2L["2b"] = Instance.new("LocalScript", G2L["2"]);
G2L["2b"]["Name"] = [[Resize]];


-- StarterGui.MeGui.Main.Notify
G2L["2c"] = Instance.new("ModuleScript", G2L["2"]);
G2L["2c"]["Name"] = [[Notify]];


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["25"]] = {
Closure = function()
    local script = G2L["25"];local MeGui = {}

local Button = require(script:WaitForChild("Button"))
local CheckBox = require(script:WaitForChild("CheckBox"))
local Slider = require(script:WaitForChild("Slider"))
local TextBox = require(script:WaitForChild("TextBox"))

function MeGui:CreateButton(props)
	return Button.CreateUI(props)
end

function MeGui:CreateCheckbox(props)
	return CheckBox.CreateUI(props)
end

function MeGui:CreateSlider(props)
	return Slider.CreateUI(props)
end

function MeGui:CreateTextbox(props)
	return TextBox.CreateUI(props)
end

return MeGui
end;
};
G2L_MODULES[G2L["26"]] = {
Closure = function()
    local script = G2L["26"];local Button = {}

function Button.CreateUI(props)
	props = props or {}
	local parent = props.Parent or script.Parent.Parent.UI.Frames.Objects

	local btn = Instance.new("TextButton")
	btn.Name = "Button"
	btn.Size = UDim2.new(0, 120, 0, 28)
	btn.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	btn.BorderSizePixel = 0
	btn.AutoButtonColor = false
	btn.Text = props.Text or "Button"
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.TextSize = 14
	btn.Font = Enum.Font.Gotham
	btn.Parent = parent

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 4)
	corner.Parent = btn

	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(54, 87, 120)
	end)

	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	end)

	btn.MouseButton1Click:Connect(function()
		if props.Callback then
			props.Callback()
		end
	end)

	return btn
end

return Button
end;
};
G2L_MODULES[G2L["27"]] = {
Closure = function()
    local script = G2L["27"];local CheckBox = {}

local iconId = "rbxassetid://117985790478363"

function CheckBox.CreateUI(props)
	props = props or {}
	local parent = props.Parent or script.Parent.Parent.UI.Frames.Objects

	local box = Instance.new("TextButton")
	box.Name = "CheckBox"
	box.Size = UDim2.new(0, 22, 0, 22)
	box.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	box.BorderSizePixel = 0
	box.AutoButtonColor = false
	box.Text = ""
	box.Parent = parent

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 4)
	corner.Parent = box

	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.Size = UDim2.new(0.8, 0, 0.8, 0)
	icon.Position = UDim2.new(0.1, 0, 0.1, 0)
	icon.BackgroundTransparency = 1
	icon.Parent = box

	local checked = props.Checked == true
	box:SetAttribute("Checked", checked)
	icon.Image = checked and iconId or ""

	box.MouseButton1Click:Connect(function()
		checked = not box:GetAttribute("Checked")
		box:SetAttribute("Checked", checked)
		icon.Image = checked and iconId or ""
		if props.Callback then
			props.Callback(checked)
		end
	end)

	return box
end

return CheckBox
end;
};
G2L_MODULES[G2L["28"]] = {
Closure = function()
    local script = G2L["28"];local TextBox = {}

function TextBox.CreateUI(props)
	props = props or {}
	local parent = props.Parent or script.Parent.Parent.UI.Frames.Objects

	local box = Instance.new("TextBox")
	box.Name = "TextBox"
	box.Size = UDim2.new(0, 120, 0, 28)
	box.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	box.BorderSizePixel = 0
	box.Text = props.Text or ""
	box.PlaceholderText = props.Placeholder or "Type here..."
	box.TextColor3 = Color3.fromRGB(255, 255, 255)
	box.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
	box.TextSize = 14
	box.Font = Enum.Font.Gotham
	box.ClearTextOnFocus = false
	box.Parent = parent

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 4)
	corner.Parent = box

	box.FocusLost:Connect(function()
		if props.Callback then
			props.Callback(box.Text)
		end
	end)

	return box
end

return TextBox
end;
};
G2L_MODULES[G2L["29"]] = {
Closure = function()
    local script = G2L["29"];local Slider = {}

local uis = game:GetService("UserInputService")

function Slider.CreateUI(props)
	props = props or {}
	local parent = props.Parent or script.Parent.Parent.UI.Frames.Objects

	local min = props.Min or 0
	local max = props.Max or 100
	local value = math.clamp(props.Value or min, min, max)
	local dragging = false

	local bar = Instance.new("Frame")
	bar.Name = "Slider"
	bar.Size = UDim2.new(0, 140, 0, 6)
	bar.BackgroundColor3 = Color3.fromRGB(34, 67, 100)
	bar.BorderSizePixel = 0
	bar.Parent = parent

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = bar

	local knob = Instance.new("TextButton")
	knob.Name = "Drag"
	knob.Size = UDim2.new(0, 14, 3, 0)
	knob.BackgroundColor3 = Color3.fromRGB(54, 87, 120)
	knob.BorderSizePixel = 0
	knob.AutoButtonColor = false
	knob.Text = ""
	knob.Parent = bar

	local knobCorner = Instance.new("UICorner")
	knobCorner.CornerRadius = UDim.new(1, 0)
	knobCorner.Parent = knob

	local function apply(alpha)
		knob.Position = UDim2.new(alpha, -alpha * knob.Size.X.Offset, -1, 0)
	end

	local function setValue(v)
		value = math.clamp(v, min, max)
		apply((value - min) / (max - min))
	end

	setValue(value)

	local function moveTo(input)
		local alpha = (input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X
		setValue(min + (max - min) * math.clamp(alpha, 0, 1))
		if props.Callback then
			props.Callback(value)
		end
	end

	knob.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
		end
	end)

	uis.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			moveTo(input)
		end
	end)

	uis.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)

	return bar
end

return Slider
end;
};
G2L_MODULES[G2L["2c"]] = {
Closure = function()
    local script = G2L["2c"];local ts = game:GetService("TweenService")
local gui = script.Parent.Parent
local Notify = {}

local container = Instance.new("Frame")
container.Name = "Notifications"
container.AnchorPoint = Vector2.new(1, 1)
container.Position = UDim2.new(1, -20, 1, -20)
container.Size = UDim2.new(0, 260, 1, -40)
container.BackgroundTransparency = 1
container.Parent = gui

local layout = Instance.new("UIListLayout")
layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
layout.Padding = UDim.new(0, 6)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Parent = container

local order = 0

function Notify.Show(text, duration)
	duration = duration or 3
	order = order + 1

	local toast = Instance.new("TextLabel")
	toast.Name = "Toast"
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
	toast.LayoutOrder = order
	toast.Parent = container

	local pad = Instance.new("UIPadding")
	pad.PaddingLeft = UDim.new(0, 10)
	pad.PaddingRight = UDim.new(0, 10)
	pad.Parent = toast

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 4)
	corner.Parent = toast

	ts:Create(toast, TweenInfo.new(0.2), {TextTransparency = 0, BackgroundTransparency = 0}):Play()

	task.delay(duration, function()
		ts:Create(toast, TweenInfo.new(0.3), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
		task.wait(0.3)
		toast:Destroy()
	end)
end

return Notify
end;
};
-- StarterGui.MeGui.Main.Animations
local function C_22()
local script = G2L["22"];
	local ts = game:GetService("TweenService")
	local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
	
	local main = script.Parent
	local ui = main:WaitForChild("UI")
	local topbar = ui:WaitForChild("Topbar")
	local toggle = topbar:WaitForChild("Toggle")
	local close = topbar:WaitForChild("Close")
	local tabs = ui:WaitForChild("Tabs")
	local frames = ui:WaitForChild("Frames")
	
	topbar.Size = UDim2.new(1, 0, 0, 25)
	
	local expanded = true
	
	local function hover(button)
		button.MouseEnter:Connect(function()
			ts:Create(button, info, {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		end)
		button.MouseLeave:Connect(function()
			ts:Create(button, info, {ImageColor3 = Color3.fromRGB(226, 226, 226)}):Play()
		end)
	end
	
	hover(toggle)
	hover(close)
	
	toggle.MouseButton1Click:Connect(function()
		expanded = not expanded
		ts:Create(toggle, info, {Rotation = expanded and 180 or 90}):Play()
		ts:Create(ui, info, {Size = expanded and UDim2.new(0, 500, 0, 250) or UDim2.new(0, 500, 0, 25)}):Play()
		tabs.Visible = expanded
		frames.Visible = expanded
	end)
	
	close.MouseButton1Click:Connect(function()
		main.Visible = false
	end)
end;
task.spawn(C_22);
-- StarterGui.MeGui.Main.TabsHandler
local function C_23()
local script = G2L["23"];
	local tabs = script.Parent.UI.Tabs
	local frames = script.Parent.UI.Frames
	
	local active = Color3.fromRGB(34, 67, 100)
	local idle = Color3.fromRGB(14, 47, 80)
	
	local function select(tab)
		for _, other in ipairs(tabs:GetChildren()) do
			if other:IsA("Frame") then
				other.BackgroundColor3 = idle
			end
		end
		tab.BackgroundColor3 = active
	
		for _, frame in ipairs(frames:GetChildren()) do
			if frame:IsA("Frame") then
				frame.Visible = false
			end
		end
	
		local target = frames:FindFirstChild(tab.Name)
		if target then
			target.Visible = true
		end
	end
	
	for _, tab in ipairs(tabs:GetChildren()) do
		if tab:IsA("Frame") then
			tab.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					select(tab)
				end
			end)
		end
	end
end;
task.spawn(C_23);
-- StarterGui.MeGui.Main.ObjectsHandler
local function C_24()
local script = G2L["24"];
	local objects = script.Parent.UI.Frames.Objects
	objects.Visible = true
	
	local iconId = "rbxassetid://117985790478363"
	
	local function setupCheckbox(box)
		local icon = box:FindFirstChild("Icon")
		if not icon then
			return
		end
		local checked = box:GetAttribute("Checked") == true
		icon.Image = checked and iconId or ""
		box.MouseButton1Click:Connect(function()
			checked = not box:GetAttribute("Checked")
			box:SetAttribute("Checked", checked)
			icon.Image = checked and iconId or ""
		end)
	end
	
	local function setupSlider(slider)
		local knob = slider:FindFirstChild("Drag")
		if not knob then
			return
		end
		local dragging = false
	
		local function apply(alpha)
			knob.Position = UDim2.new(alpha, -alpha * knob.Size.X.Offset, -1, 0)
		end
	
		apply(0)
	
		knob.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
			end
		end)
	
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if not dragging then
				return
			end
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				local alpha = (input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X
				apply(math.clamp(alpha, 0, 1))
			end
		end)
	
		game:GetService("UserInputService").InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = false
			end
		end)
	end
	
	for _, obj in ipairs(objects:GetChildren()) do
		if obj.Name == "CheckBox" then
			setupCheckbox(obj)
		elseif obj.Name == "Slider" then
			setupSlider(obj)
		end
	end
end;
task.spawn(C_24);
-- StarterGui.MeGui.Main.Drag
local function C_2a()
local script = G2L["2a"];
	local uis = game:GetService("UserInputService")
	local ui = script.Parent.UI
	local topbar = ui:WaitForChild("Topbar")
	local gui = script.Parent.Parent
	
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
	preview.Parent = gui
	
	local function viewport()
		return workspace.CurrentCamera.ViewportSize
	end
	
	local function showPreview(input)
		local s = viewport()
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
	
	local function snapEdge()
		local s = viewport()
		local size = ui.AbsoluteSize
		local x, y = ui.Position.X.Offset, ui.Position.Y.Offset
		if x < snapDist then
			x = 0
		elseif x + size.X > s.X - snapDist then
			x = s.X - size.X
		end
		if y < snapDist then
			y = 0
		elseif y + size.Y > s.Y - snapDist then
			y = s.Y - size.Y
		end
		ui.Position = UDim2.new(0, x, 0, y)
	end
	
	topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			local px, py = input.Position.X, input.Position.Y
			local toggle = topbar:FindFirstChild("Toggle")
			local close = topbar:FindFirstChild("Close")
	
			local function inBounds(obj)
				return obj and px >= obj.AbsolutePosition.X and px <= obj.AbsolutePosition.X + obj.AbsoluteSize.X and py >= obj.AbsolutePosition.Y and py <= obj.AbsolutePosition.Y + obj.AbsoluteSize.Y
			end
	
			if inBounds(toggle) or inBounds(close) then
				return
			end
	
			if docked then
				if savedSize then
					ui.Size = savedSize
				end
				if savedPos then
					ui.Position = savedPos
				end
				savedSize = nil
				savedPos = nil
				docked = nil
			end
			dragging = true
			offset = Vector2.new(input.Position.X - ui.AbsolutePosition.X, input.Position.Y - ui.AbsolutePosition.Y)
		end
	end)
	
	uis.InputChanged:Connect(function(input)
		if not dragging then
			return
		end
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			ui.Position = UDim2.new(0, input.Position.X - offset.X, 0, input.Position.Y - offset.Y)
			showPreview(input)
		end
	end)
	
	uis.InputEnded:Connect(function(input)
		if not dragging then
			return
		end
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
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
				snapEdge()
			end
		end
	end)
end;
task.spawn(C_2a);
-- StarterGui.MeGui.Main.Resize
local function C_2b()
local script = G2L["2b"];
	local uis = game:GetService("UserInputService")
	local ui = script.Parent.UI
	
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
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = grip
	
	local minSize = Vector2.new(200, 120)
	local resizing = false
	local startSize, startMouse
	
	grip.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			resizing = true
			startSize = ui.AbsoluteSize
			startMouse = Vector2.new(input.Position.X, input.Position.Y)
		end
	end)
	
	uis.InputChanged:Connect(function(input)
		if not resizing then
			return
		end
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			local dx = input.Position.X - startMouse.X
			local dy = input.Position.Y - startMouse.Y
			local w = math.max(minSize.X, startSize.X + dx)
			local h = math.max(minSize.Y, startSize.Y + dy)
			ui.Size = UDim2.new(0, w, 0, h)
		end
	end)
	
	uis.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			resizing = false
		end
	end)
end;
task.spawn(C_2b);

return G2L["1"], require;
