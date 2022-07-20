--Took some of my old scripts and put it together in an ugly looking gui, skid = gay and uh you could technically use this for parts if you wish, the silent aim works meh, decent, I think u should use raycast personally.


-- Instances:


local MainGui = Instance.new("ScreenGui")
syn.protect_gui(MainGui)
local Frame = Instance.new("ImageLabel")
local modgun = Instance.new("TextButton")
local gotolootnode = Instance.new("TextButton")
local TpTool = Instance.new("TextButton")
local SilentAIm = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Esp = Instance.new("TextButton")

--Properties:


MainGui.Name = "MainGui"
MainGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainGui.ResetOnSpawn = false

Frame.Name = "Frame"
Frame.Parent = MainGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0246913601, 0, 0.651669085, 0)
Frame.Size = UDim2.new(0, 227, 0, 169)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(61, 61, 61)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

modgun.Name = "modgun"
modgun.Parent = Frame
modgun.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
modgun.BorderSizePixel = 0
modgun.Position = UDim2.new(0.0440528616, 0, 0.284023672, 0)
modgun.Size = UDim2.new(0, 116, 0, 21)
modgun.Font = Enum.Font.SourceSans
modgun.Text = "Mod Gun (in toolbar)"
modgun.TextColor3 = Color3.fromRGB(255, 255, 255)
modgun.TextSize = 14.000

gotolootnode.Name = "gotolootnode"
gotolootnode.Parent = Frame
gotolootnode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
gotolootnode.BorderSizePixel = 0
gotolootnode.Position = UDim2.new(0.0440528616, 0, 0.479289949, 0)
gotolootnode.Size = UDim2.new(0, 116, 0, 21)
gotolootnode.Font = Enum.Font.SourceSans
gotolootnode.Text = "Tp to toolnodes"
gotolootnode.TextColor3 = Color3.fromRGB(255, 255, 255)
gotolootnode.TextSize = 14.000

TpTool.Name = "TpTool"
TpTool.Parent = Frame
TpTool.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TpTool.BorderSizePixel = 0
TpTool.Position = UDim2.new(0.0440528616, 0, 0.674556255, 0)
TpTool.Size = UDim2.new(0, 116, 0, 21)
TpTool.Font = Enum.Font.SourceSans
TpTool.Text = "TpTool"
TpTool.TextColor3 = Color3.fromRGB(255, 255, 255)
TpTool.TextSize = 14.000

SilentAIm.Name = "SilentAIm"
SilentAIm.Parent = Frame
SilentAIm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SilentAIm.BorderSizePixel = 0
SilentAIm.Position = UDim2.new(0.704845786, 0, 0.284023672, 0)
SilentAIm.Size = UDim2.new(0, 48, 0, 21)
SilentAIm.Font = Enum.Font.SourceSans
SilentAIm.Text = "SilentAim"
SilentAIm.TextColor3 = Color3.fromRGB(255, 255, 255)
SilentAIm.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0456232689, 0, 0.0836217403, 0)
TextLabel.Size = UDim2.new(0, 206, 0, 23)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Orange Colored Skies by MelonCat#0116"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

Esp.Name = "Esp"
Esp.Parent = Frame
Esp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Esp.BorderSizePixel = 0
Esp.Position = UDim2.new(0.704845786, 0, 0.479289949, 0)
Esp.Size = UDim2.new(0, 48, 0, 21)
Esp.Font = Enum.Font.SourceSans
Esp.Text = "ESP"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextSize = 14.000

-- Scripts:

local function WYQX_fake_script() -- modgun.LocalScript 
	local script = Instance.new('LocalScript', modgun)

	local Button = script.Parent
	local Toggle = false
	Button.MouseButton1Down:Connect(function()
		local gun = game:GetService("Players").LocalPlayer.Backpack:GetChildren()
		local b = (unpack(gun))
		local gun2 = require(b.Config)
	
		--MAKE SURE TO ONLY HAVE 1 GUN IN YOUR INVENTORY FOR THIS TO WORK. RECOMMEND ANTI-MAT
	
		gun2["Firerate"] = math.huge
		gun2["Recoil"] = { .01, .01, .01, .01 } 
		gun2["FireMode"] = Auto 
		gun2["DamageIndicationNumber"] = true 
		gun2["ReloadSpeed"] = 0 
	end)
end
coroutine.wrap(WYQX_fake_script)()
local function AHDGI_fake_script() -- gotolootnode.LocalScript 
	local script = Instance.new('LocalScript', gotolootnode)

	local Button = script.Parent
	local Toggle = false
	Button.MouseButton1Down:Connect(function()
		local Part  = "lootnode"
		local Player = game.Players.LocalPlayer
	
		while true do
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == Part then
					Player.Character.HumanoidRootPart.CFrame = v.CFrame
				end
			end
		end
	end)
end
coroutine.wrap(AHDGI_fake_script)()
local function MVQQI_fake_script() -- TpTool.LocalScript 
	local script = Instance.new('LocalScript', TpTool)

	local Button = script.Parent
	local Toggle = false
	Button.MouseButton1Down:Connect(function()
		mouse = game.Players.LocalPlayer:GetMouse()
		tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Click Teleport"
		tool.Activated:connect(function()
			local pos = mouse.Hit+Vector3.new(0,2.5,0)
			pos = CFrame.new(pos.X,pos.Y,pos.Z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end)
end
coroutine.wrap(MVQQI_fake_script)()
local function QAGOSJ_fake_script() -- SilentAIm.LocalScript 
	local script = Instance.new('LocalScript', SilentAIm)

	local Button = script.Parent
	local Toggle = false
	Button.MouseButton1Down:Connect(function()
		-- loader
		if not game:IsLoaded() then 
			game.Loaded:Wait()
		end
	
		if not syn or not protectgui then
			getgenv().protectgui = function() end
		end
	
		local SilentAimSettings = {
			Enabled = true,
	
			ClassName = "Universal Silent Aim",
			ToggleKey = "RightAlt",
	
			TeamCheck = true,
			VisibleCheck = false, 
			TargetPart = "HumanoidRootPart",
			SilentAimMethod = "Raycast",
	
			FOVRadius = 200,
			FOVVisible = false,
			ShowSilentAimTarget = false, 
	
			MouseHitPrediction = false,
			MouseHitPredictionAmount = 0.165,
			HitChance = 100
		}
	
		-- variables
		getgenv().SilentAimSettings = Settings
		local MainFileName = "UniversalSilentAim"
		local SelectedFile, FileToSave = "", ""
	
		local Camera = workspace.CurrentCamera
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local GuiService = game:GetService("GuiService")
		local UserInputService = game:GetService("UserInputService")
		local HttpService = game:GetService("HttpService")
	
		local LocalPlayer = Players.LocalPlayer
		local Mouse = LocalPlayer:GetMouse()
	
		local GetChildren = game.GetChildren
		local GetPlayers = Players.GetPlayers
		local WorldToScreen = Camera.WorldToScreenPoint
		local WorldToViewportPoint = Camera.WorldToViewportPoint
		local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
		local FindFirstChild = game.FindFirstChild
		local RenderStepped = RunService.RenderStepped
		local GuiInset = GuiService.GetGuiInset
		local GetMouseLocation = UserInputService.GetMouseLocation
	
		local resume = coroutine.resume 
		local create = coroutine.create
	
		local ValidTargetParts = {"Head", "HumanoidRootPart"}
		local PredictionAmount = 0.165
	
		local mouse_box = Drawing.new("Square")
		mouse_box.Visible = true 
		mouse_box.ZIndex = 999 
		mouse_box.Color = Color3.fromRGB(54, 57, 241)
		mouse_box.Thickness = 20 
		mouse_box.Size = Vector2.new(20, 20)
		mouse_box.Filled = true 
	
		local fov_circle = Drawing.new("Circle")
		fov_circle.Thickness = 1
		fov_circle.NumSides = 100
		fov_circle.Radius = 180
		fov_circle.Filled = false
		fov_circle.Visible = false
		fov_circle.ZIndex = 999
		fov_circle.Transparency = 1
		fov_circle.Color = Color3.fromRGB(54, 57, 241)
	
		local ExpectedArguments = {
			FindPartOnRayWithIgnoreList = {
				ArgCountRequired = 3,
				Args = {
					"Instance", "Ray", "table", "boolean", "boolean"
				}
			},
			FindPartOnRayWithWhitelist = {
				ArgCountRequired = 3,
				Args = {
					"Instance", "Ray", "table", "boolean"
				}
			},
			FindPartOnRay = {
				ArgCountRequired = 2,
				Args = {
					"Instance", "Ray", "Instance", "boolean", "boolean"
				}
			},
			Raycast = {
				ArgCountRequired = 3,
				Args = {
					"Instance", "Vector3", "Vector3", "RaycastParams"
				}
			}
		}
	
		function CalculateChance(Percentage)
			-- // Floor the percentage
			Percentage = math.floor(Percentage)
	
			-- // Get the chance
			local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100
	
			-- // Return
			return chance <= Percentage / 100
		end
	
	
		--[[file handling]] do 
			if not isfolder(MainFileName) then 
				makefolder(MainFileName);
			end
	
			if not isfolder(string.format("%s/%s", MainFileName, tostring(game.PlaceId))) then 
				makefolder(string.format("%s/%s", MainFileName, tostring(game.PlaceId)))
			end
		end
	
		local Files = listfiles(string.format("%s/%s", "UniversalSilentAim", tostring(game.PlaceId)))
	
		-- functions
		local function GetFiles() -- credits to the linoria lib for this function, listfiles returns the files full path and its annoying
			local out = {}
			for i = 1, #Files do
				local file = Files[i]
				if file:sub(-4) == '.lua' then
					-- i hate this but it has to be done ...
	
					local pos = file:find('.lua', 1, true)
					local start = pos
	
					local char = file:sub(pos, pos)
					while char ~= '/' and char ~= '\\' and char ~= '' do
						pos = pos - 1
						char = file:sub(pos, pos)
					end
	
					if char == '/' or char == '\\' then
						table.insert(out, file:sub(pos + 1, start - 1))
					end
				end
			end
	
			return out
		end
	
		local function UpdateFile(FileName)
			assert(FileName or FileName == "string", "oopsies");
			writefile(string.format("%s/%s/%s.lua", MainFileName, tostring(game.PlaceId), FileName), HttpService:JSONEncode(SilentAimSettings))
		end
	
		local function LoadFile(FileName)
			assert(FileName or FileName == "string", "oopsies");
	
			local File = string.format("%s/%s/%s.lua", MainFileName, tostring(game.PlaceId), FileName)
			local ConfigData = HttpService:JSONDecode(readfile(File))
			for Index, Value in next, ConfigData do
				SilentAimSettings[Index] = Value
			end
		end
	
		local function getPositionOnScreen(Vector)
			local Vec3, OnScreen = WorldToScreen(Camera, Vector)
			return Vector2.new(Vec3.X, Vec3.Y), OnScreen
		end
	
		local function ValidateArguments(Args, RayMethod)
			local Matches = 0
			if #Args < RayMethod.ArgCountRequired then
				return false
			end
			for Pos, Argument in next, Args do
				if typeof(Argument) == RayMethod.Args[Pos] then
					Matches = Matches + 1
				end
			end
			return Matches >= RayMethod.ArgCountRequired
		end
	
		local function getDirection(Origin, Position)
			return (Position - Origin).Unit * 1000
		end
	
		local function getMousePosition()
			return GetMouseLocation(UserInputService)
		end
	
		local function IsPlayerVisible(Player)
			local PlayerCharacter = Player.Character
			local LocalPlayerCharacter = LocalPlayer.Character
	
			if not (PlayerCharacter or LocalPlayerCharacter) then return end 
	
			local PlayerRoot = FindFirstChild(PlayerCharacter, Options.TargetPart.Value) or FindFirstChild(PlayerCharacter, "HumanoidRootPart")
	
			if not PlayerRoot then return end 
	
			local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
			local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)
	
			return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
		end
	
		local function getClosestPlayer()
			if not Options.TargetPart.Value then return end
			local Closest
			local DistanceToMouse
			for _, Player in next, GetPlayers(Players) do
				if Player == LocalPlayer then continue end
				if Toggles.TeamCheck.Value and Player.Team == LocalPlayer.Team then continue end
	
				local Character = Player.Character
				if not Character then continue end
	
				if Toggles.VisibleCheck.Value and not IsPlayerVisible(Player) then continue end
	
				local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
				local Humanoid = FindFirstChild(Character, "Humanoid")
				if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end
	
				local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
				if not OnScreen then continue end
	
				local Distance = (getMousePosition() - ScreenPosition).Magnitude
				if Distance <= (DistanceToMouse or Options.Radius.Value or 2000) then
					Closest = ((Options.TargetPart.Value == "Random" and Character[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Character[Options.TargetPart.Value])
					DistanceToMouse = Distance
				end
			end
			return Closest
		end
	
		-- ui creating & handling
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Libraries/main/UI's/Linoria/Source.lua"))()
	
		local Window = Library:CreateWindow("Universal Silent Aim, by Project Redacted")
		local GeneralTab = Window:AddTab("General")
		local MainBOX = GeneralTab:AddLeftTabbox("Main") do
			local Main = MainBOX:AddTab("Main")
	
			Main:AddToggle("aim_Enabled", {Text = "Enabled"}):AddKeyPicker("aim_Enabled_KeyPicker", {Default = "RightAlt", SyncToggleState = true, Mode = "Toggle", Text = "Enabled", NoUI = false});
			Options.aim_Enabled_KeyPicker:OnClick(function()
				SilentAimSettings.Enabled = not SilentAimSettings.Enabled
	
				Toggles.aim_Enabled.Value = SilentAimSettings.Enabled
				Toggles.aim_Enabled:SetValue(SilentAimSettings.Enabled)
	
				mouse_box.Visible = SilentAimSettings.Enabled
			end)
	
			Main:AddToggle("TeamCheck", {Text = "Team Check", Default = SilentAimSettings.TeamCheck}):OnChanged(function()
				SilentAimSettings.TeamCheck = Toggles.TeamCheck.Value
			end)
			Main:AddToggle("VisibleCheck", {Text = "Visible Check", Default = SilentAimSettings.VisibleCheck}):OnChanged(function()
				SilentAimSettings.VisibleCheck = Toggles.VisibleCheck.Value
			end)
			Main:AddDropdown("TargetPart", {Text = "Target Part", Default = SilentAimSettings.TargetPart, Values = {"Head", "HumanoidRootPart", "Random"}}):OnChanged(function()
				SilentAimSettings.TargetPart = Options.TargetPart.Value
			end)
			Main:AddDropdown("Method", {Text = "Silent Aim Method", Default = SilentAimSettings.SilentAimMethod, Values = {
				"Raycast","FindPartOnRay",
				"FindPartOnRayWithWhitelist",
				"FindPartOnRayWithIgnoreList",
				"Mouse.Hit/Target"
			}}):OnChanged(function() 
				SilentAimSettings.SilentAimMethod = Options.Method.Value 
			end)
			Main:AddSlider('HitChance', {
				Text = 'Hit chance',
				Default = 100,
				Min = 0,
				Max = 100,
				Rounding = 1,
	
				Compact = false,
			})
			Options.HitChance:OnChanged(function()
				SilentAimSettings.HitChance = Options.HitChance.Value
			end)
		end
	
		local MiscellaneousBOX = GeneralTab:AddLeftTabbox("Miscellaneous")
		local FieldOfViewBOX = GeneralTab:AddLeftTabbox("Field Of View") do
			local Main = FieldOfViewBOX:AddTab("Visuals")
	
			Main:AddToggle("Visible", {Text = "Show FOV Circle"}):AddColorPicker("Color", {Default = Color3.fromRGB(54, 57, 241)}):OnChanged(function()
				fov_circle.Visible = Toggles.Visible.Value
				SilentAimSettings.FOVVisible = Toggles.Visible.Value
			end)
			Main:AddSlider("Radius", {Text = "FOV Circle Radius", Min = 0, Max = 360, Default = 130, Rounding = 0}):OnChanged(function()
				fov_circle.Radius = Options.Radius.Value
				SilentAimSettings.FOVRadius = Options.Radius.Value
			end)
			Main:AddToggle("MousePosition", {Text = "Show Silent Aim Target"}):AddColorPicker("MouseVisualizeColor", {Default = Color3.fromRGB(54, 57, 241)}):OnChanged(function()
				mouse_box.Visible = Toggles.MousePosition.Value 
				SilentAimSettings.ShowSilentAimTarget = Toggles.MousePosition.Value 
			end)
			local PredictionTab = MiscellaneousBOX:AddTab("Prediction")
			PredictionTab:AddToggle("Prediction", {Text = "Mouse.Hit/Target Prediction"}):OnChanged(function()
				SilentAimSettings.MouseHitPrediction = Toggles.Prediction.Value
			end)
			PredictionTab:AddSlider("Amount", {Text = "Prediction Amount", Min = 0.165, Max = 1, Default = 0.165, Rounding = 3}):OnChanged(function()
				PredictionAmount = Options.Amount.Value
				SilentAimSettings.MouseHitPredictionAmount = Options.Amount.Value
			end)
		end
	
		local CreateConfigurationBOX = GeneralTab:AddRightTabbox("Create Configuration") do 
			local Main = CreateConfigurationBOX:AddTab("Create Configuration")
	
			Main:AddInput("CreateConfigTextBox", {Default = "", Numeric = false, Finished = false, Text = "Create Configuration to Create", Tooltip = "Creates a configuration file containing settings you can save and load", Placeholder = "File Name here"}):OnChanged(function()
				if Options.CreateConfigTextBox.Value and string.len(Options.CreateConfigTextBox.Value) ~= "" then 
					FileToSave = Options.CreateConfigTextBox.Value
				end
			end)
	
			Main:AddButton("Create Configuration File", function()
				if FileToSave ~= "" or FileToSave ~= nil then 
					UpdateFile(FileToSave)
				end
			end)
		end
	
		local SaveConfigurationBOX = GeneralTab:AddRightTabbox("Save Configuration") do 
			local Main = SaveConfigurationBOX:AddTab("Save Configuration")
			Main:AddDropdown("SaveConfigurationDropdown", {Values = GetFiles(), Text = "Choose Configuration to Save"})
			Main:AddButton("Save Configuration", function()
				if Options.SaveConfigurationDropdown.Value then 
					UpdateFile(Options.SaveConfigurationDropdown.Value)
				end
			end)
		end
	
		local LoadConfigurationBOX = GeneralTab:AddRightTabbox("Load Configuration") do 
			local Main = LoadConfigurationBOX:AddTab("Load Configuration")
	
			Main:AddDropdown("LoadConfigurationDropdown", {Values = GetFiles(), Text = "Choose Configuration to Load"})
			Main:AddButton("Load Configuration", function()
				if table.find(GetFiles(), Options.LoadConfigurationDropdown.Value) then
					LoadFile(Options.LoadConfigurationDropdown.Value)
	
					Toggles.TeamCheck:SetValue(SilentAimSettings.TeamCheck)
					Toggles.VisibleCheck:SetValue(SilentAimSettings.VisibleCheck)
					Options.TargetPart:SetValue(SilentAimSettings.TargetPart)
					Options.Method:SetValue(SilentAimSettings.SilentAimMethod)
					Toggles.Visible:SetValue(SilentAimSettings.FOVVisible)
					Options.Radius:SetValue(SilentAimSettings.FOVRadius)
					Toggles.MousePosition:SetValue(SilentAimSettings.ShowSilentAimTarget)
					Toggles.Prediction:SetValue(SilentAimSettings.MouseHitPrediction)
					Options.Amount:SetValue(SilentAimSettings.MouseHitPredictionAmount)
					Options.HitChance:SetValue(SilentAimSettings.HitChance)
				end
			end)
		end
	
		resume(create(function()
			RenderStepped:Connect(function()
				if Toggles.MousePosition.Value and Toggles.aim_Enabled.Value then
					if getClosestPlayer() then 
						local Root = getClosestPlayer().Parent.PrimaryPart or getClosestPlayer()
						local RootToViewportPoint, IsOnScreen = WorldToViewportPoint(Camera, Root.Position);
						-- using PrimaryPart instead because if your Target Part is "Random" it will flicker the square between the Target's Head and HumanoidRootPart (its annoying)
	
						mouse_box.Visible = IsOnScreen
						mouse_box.Position = Vector2.new(RootToViewportPoint.X, RootToViewportPoint.Y)
					else 
						mouse_box.Visible = false 
						mouse_box.Position = Vector2.new()
					end
				end
	
				if Toggles.Visible.Value then 
					fov_circle.Visible = Toggles.Visible.Value
					fov_circle.Color = Options.Color.Value
					fov_circle.Position = getMousePosition()
				end
			end)
		end))
	
		-- hooks
		local oldNamecall
		oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
			local Method = getnamecallmethod()
			local Arguments = {...}
			local self = Arguments[1]
			local chance = CalculateChance(SilentAimSettings.HitChance)
			if Toggles.aim_Enabled.Value and self == workspace and not checkcaller() and chance == true then
				if Method == "FindPartOnRayWithIgnoreList" and Options.Method.Value == Method then
					if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
						local A_Ray = Arguments[2]
	
						local HitPart = getClosestPlayer()
						if HitPart then
							local Origin = A_Ray.Origin
							local Direction = getDirection(Origin, HitPart.Position)
							Arguments[2] = Ray.new(Origin, Direction)
	
							return oldNamecall(unpack(Arguments))
						end
					end
				elseif Method == "FindPartOnRayWithWhitelist" and Options.Method.Value == Method then
					if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithWhitelist) then
						local A_Ray = Arguments[2]
	
						local HitPart = getClosestPlayer()
						if HitPart then
							local Origin = A_Ray.Origin
							local Direction = getDirection(Origin, HitPart.Position)
							Arguments[2] = Ray.new(Origin, Direction)
	
							return oldNamecall(unpack(Arguments))
						end
					end
				elseif (Method == "FindPartOnRay" or Method == "findPartOnRay") and Options.Method.Value:lower() == Method:lower() then
					if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRay) then
						local A_Ray = Arguments[2]
	
						local HitPart = getClosestPlayer()
						if HitPart then
							local Origin = A_Ray.Origin
							local Direction = getDirection(Origin, HitPart.Position)
							Arguments[2] = Ray.new(Origin, Direction)
	
							return oldNamecall(unpack(Arguments))
						end
					end
				elseif Method == "Raycast" and Options.Method.Value == Method then
					if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
						local A_Origin = Arguments[2]
	
						local HitPart = getClosestPlayer()
						if HitPart then
							Arguments[3] = getDirection(A_Origin, HitPart.Position)
	
							return oldNamecall(unpack(Arguments))
						end
					end
				end
			end
			return oldNamecall(...)
		end))
	
		local oldIndex = nil 
		oldIndex = hookmetamethod(game, "__index", newcclosure(function(self, Index)
			if self == Mouse and not checkcaller() and Toggles.aim_Enabled.Value and Options.Method.Value == "Mouse.Hit/Target" and getClosestPlayer() then
				local HitPart = getClosestPlayer()
	
				if Index == "Target" or Index == "target" then 
					return HitPart
				elseif Index == "Hit" or Index == "hit" then 
					return ((Toggles.Prediction.Value and (HitPart.CFrame + (HitPart.Velocity * PredictionAmount))) or (not Toggles.Prediction.Value and HitPart.CFrame))
				elseif Index == "X" or Index == "x" then 
					return self.X 
				elseif Index == "Y" or Index == "y" then 
					return self.Y 
				elseif Index == "UnitRay" then 
					return Ray.new(self.Origin, (self.Hit - self.Origin).Unit)
				end
			end
	
			return oldIndex(self, Index)
		end))
		
	end)
end
coroutine.wrap(QAGOSJ_fake_script)()
local function BNDCE_fake_script() -- Esp.LocalScript 
	local script = Instance.new('LocalScript', Esp)

	local Button = script.Parent
	local Toggle = false
	Button.MouseButton1Down:Connect(function()
		--Settings--
		local ESP = {
			Enabled = true,
			Boxes = true,
			BoxShift = CFrame.new(0,-1.5,0),
			BoxSize = Vector3.new(4,6,0),
			Color = Color3.fromRGB(255, 170, 0),
			FaceCamera = false,
			Names = true,
			TeamColor = true,
			Thickness = 2,
			AttachShift = 1,
			TeamMates = true,
			Players = true,
	
			Objects = setmetatable({}, {__mode="kv"}),
			Overrides = {}
		}
	
		--Declarations--
		local cam = workspace.CurrentCamera
		local plrs = game:GetService("Players")
		local plr = plrs.LocalPlayer
		local mouse = plr:GetMouse()
	
		local V3new = Vector3.new
		local WorldToViewportPoint = cam.WorldToViewportPoint
	
		--Functions--
		local function Draw(obj, props)
			local new = Drawing.new(obj)
	
			props = props or {}
			for i,v in pairs(props) do
				new[i] = v
			end
			return new
		end
	
		function ESP:GetTeam(p)
			local ov = self.Overrides.GetTeam
			if ov then
				return ov(p)
			end
	
			return p and p.Team
		end
	
		function ESP:IsTeamMate(p)
			local ov = self.Overrides.IsTeamMate
			if ov then
				return ov(p)
			end
	
			return self:GetTeam(p) == self:GetTeam(plr)
		end
	
		function ESP:GetColor(obj)
			local ov = self.Overrides.GetColor
			if ov then
				return ov(obj)
			end
			local p = self:GetPlrFromChar(obj)
			return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
		end
	
		function ESP:GetPlrFromChar(char)
			local ov = self.Overrides.GetPlrFromChar
			if ov then
				return ov(char)
			end
	
			return plrs:GetPlayerFromCharacter(char)
		end
	
		function ESP:Toggle(bool)
			self.Enabled = bool
			if not bool then
				for i,v in pairs(self.Objects) do
					if v.Type == "Box" then --fov circle etc
						if v.Temporary then
							v:Remove()
						else
							for i,v in pairs(v.Components) do
								v.Visible = false
							end
						end
					end
				end
			end
		end
	
		function ESP:GetBox(obj)
			return self.Objects[obj]
		end
	
		function ESP:AddObjectListener(parent, options)
			local function NewListener(c)
				if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
					if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
						if not options.Validator or options.Validator(c) then
							local box = ESP:Add(c, {
								PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
								Color = type(options.Color) == "function" and options.Color(c) or options.Color,
								ColorDynamic = options.ColorDynamic,
								Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
								IsEnabled = options.IsEnabled,
								RenderInNil = options.RenderInNil
							})
							--TODO: add a better way of passing options
							if options.OnAdded then
								coroutine.wrap(options.OnAdded)(box)
							end
						end
					end
				end
			end
	
			if options.Recursive then
				parent.DescendantAdded:Connect(NewListener)
				for i,v in pairs(parent:GetDescendants()) do
					coroutine.wrap(NewListener)(v)
				end
			else
				parent.ChildAdded:Connect(NewListener)
				for i,v in pairs(parent:GetChildren()) do
					coroutine.wrap(NewListener)(v)
				end
			end
		end
	
		local boxBase = {}
		boxBase.__index = boxBase
	
		function boxBase:Remove()
			ESP.Objects[self.Object] = nil
			for i,v in pairs(self.Components) do
				v.Visible = false
				v:Remove()
				self.Components[i] = nil
			end
		end
	
		function boxBase:Update()
			if not self.PrimaryPart then
				--warn("not supposed to print", self.Object)
				return self:Remove()
			end
	
			local color
			if ESP.Highlighted == self.Object then
				color = ESP.HighlightColor
			else
				color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
			end
	
			local allow = true
			if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
				allow = false
			end
			if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
				allow = false
			end
			if self.Player and not ESP.Players then
				allow = false
			end
			if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
				allow = false
			end
			if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
				allow = false
			end
	
			if not allow then
				for i,v in pairs(self.Components) do
					v.Visible = false
				end
				return
			end
	
			if ESP.Highlighted == self.Object then
				color = ESP.HighlightColor
			end
	
			--calculations--
			local cf = self.PrimaryPart.CFrame
			if ESP.FaceCamera then
				cf = CFrame.new(cf.p, cam.CFrame.p)
			end
			local size = self.Size
			local locs = {
				TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
				TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
				BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
				BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
				TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
				Torso = cf * ESP.BoxShift
			}
	
			if ESP.Boxes then
				local TopLeft, Vis1 = WorldToViewportPoint(cam, locs.TopLeft.p)
				local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
				local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
				local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)
	
				if self.Components.Quad then
					if Vis1 or Vis2 or Vis3 or Vis4 then
						self.Components.Quad.Visible = true
						self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
						self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
						self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
						self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
						self.Components.Quad.Color = color
					else
						self.Components.Quad.Visible = false
					end
				end
			else
				self.Components.Quad.Visible = false
			end
	
			if ESP.Names then
				local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
	
				if Vis5 then
					self.Components.Name.Visible = true
					self.Components.Name.Position = Vector2.new(TagPos.X, TagPos.Y)
					self.Components.Name.Text = self.Name
					self.Components.Name.Color = color
	
					self.Components.Distance.Visible = true
					self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y + 14)
					self.Components.Distance.Text = math.floor((cam.CFrame.p - cf.p).magnitude) .."m away"
					self.Components.Distance.Color = color
				else
					self.Components.Name.Visible = false
					self.Components.Distance.Visible = false
				end
			else
				self.Components.Name.Visible = false
				self.Components.Distance.Visible = false
			end
	
			if ESP.Tracers then
				local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)
	
				if Vis6 then
					self.Components.Tracer.Visible = true
					self.Components.Tracer.From = Vector2.new(TorsoPos.X, TorsoPos.Y)
					self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
					self.Components.Tracer.Color = color
				else
					self.Components.Tracer.Visible = false
				end
			else
				self.Components.Tracer.Visible = false
			end
		end
	
		function ESP:Add(obj, options)
			if not obj.Parent and not options.RenderInNil then
				return warn(obj, "has no parent")
			end
	
			local box = setmetatable({
				Name = options.Name or obj.Name,
				Type = "Box",
				Color = options.Color --[[or self:GetColor(obj)]],
				Size = options.Size or self.BoxSize,
				Object = obj,
				Player = options.Player or plrs:GetPlayerFromCharacter(obj),
				PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
				Components = {},
				IsEnabled = options.IsEnabled,
				Temporary = options.Temporary,
				ColorDynamic = options.ColorDynamic,
				RenderInNil = options.RenderInNil
			}, boxBase)
	
			if self:GetBox(obj) then
				self:GetBox(obj):Remove()
			end
	
			box.Components["Quad"] = Draw("Quad", {
				Thickness = self.Thickness,
				Color = color,
				Transparency = 1,
				Filled = false,
				Visible = self.Enabled and self.Boxes
			})
			box.Components["Name"] = Draw("Text", {
				Text = box.Name,
				Color = box.Color,
				Center = true,
				Outline = true,
				Size = 19,
				Visible = self.Enabled and self.Names
			})
			box.Components["Distance"] = Draw("Text", {
				Color = box.Color,
				Center = true,
				Outline = true,
				Size = 19,
				Visible = self.Enabled and self.Names
			})
	
			box.Components["Tracer"] = Draw("Line", {
				Thickness = ESP.Thickness,
				Color = box.Color,
				Transparency = 1,
				Visible = self.Enabled and self.Tracers
			})
			self.Objects[obj] = box
	
			obj.AncestryChanged:Connect(function(_, parent)
				if parent == nil and ESP.AutoRemove ~= false then
					box:Remove()
				end
			end)
			obj:GetPropertyChangedSignal("Parent"):Connect(function()
				if obj.Parent == nil and ESP.AutoRemove ~= false then
					box:Remove()
				end
			end)
	
			local hum = obj:FindFirstChildOfClass("Humanoid")
			if hum then
				hum.Died:Connect(function()
					if ESP.AutoRemove ~= false then
						box:Remove()
					end
				end)
			end
	
			return box
		end
	
		local function CharAdded(char)
			local p = plrs:GetPlayerFromCharacter(char)
			if not char:FindFirstChild("HumanoidRootPart") then
				local ev
				ev = char.ChildAdded:Connect(function(c)
					if c.Name == "HumanoidRootPart" then
						ev:Disconnect()
						ESP:Add(char, {
							Name = p.Name,
							Player = p,
							PrimaryPart = c
						})
					end
				end)
			else
				ESP:Add(char, {
					Name = p.Name,
					Player = p,
					PrimaryPart = char.HumanoidRootPart
				})
			end
		end
		local function PlayerAdded(p)
			p.CharacterAdded:Connect(CharAdded)
			if p.Character then
				coroutine.wrap(CharAdded)(p.Character)
			end
		end
		plrs.PlayerAdded:Connect(PlayerAdded)
		for i,v in pairs(plrs:GetPlayers()) do
			if v ~= plr then
				PlayerAdded(v)
			end
		end
	
		game:GetService("RunService").RenderStepped:Connect(function()
			cam = workspace.CurrentCamera
			for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
				if v.Update then
					local s,e = pcall(v.Update, v)
					if not s then warn("[EU]", e, v.Object:GetFullName()) end
				end
			end
		end)
	
		return ESP
	end)
end
coroutine.wrap(BNDCE_fake_script)()
