--[[
  Fray UI Library
  ---
  NOT FINISHED AT ALL
]]

Fray = {}

local ts = game:GetService("TweenService")
local coregui = game:GetService("CoreGui")
local uis = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));

wait()

function Fray.Window(name)
	--Instances
	local ScreenGui = Instance.new("ScreenGui")
	local Containers = Instance.new("Folder")
	local Window = Instance.new("Frame")
	MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TopFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local List = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local Close = Instance.new("TextButton")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local Minimize = Instance.new("TextButton")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local UIListLayout = Instance.new("UIListLayout")

	-- Properties
	ScreenGui.Parent = coregui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Window.Name = "Window"
	Window.Parent = ScreenGui
	Window.BackgroundColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
	Window.BorderSizePixel = 0
	Window.Position = UDim2.new(0, 563, 0, 155)
	Window.Size = UDim2.new(0, 520, 0, 377)
	Window.Draggable = true

	UICorner.Parent = Window
	UICorner.CornerRadius = UDim.new(0.0199999996, 0)

	TopFrame.Name = "TopFrame"
	TopFrame.Parent = Window
	TopFrame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
	TopFrame.BackgroundTransparency = 0.800000011920929
	TopFrame.BorderSizePixel = 0
	TopFrame.Size = UDim2.new(0, 520, 0, 36)

	Title.Name = "Title"
	Title.Parent = TopFrame
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0, 7, 0, 0)
	Title.Size = UDim2.new(0, 508, 0, 36)
	Title.Font = Enum.Font.Gotham
	Title.Text = tostring(name)
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextScaled = true
	Title.TextSize = 17
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	UIAspectRatioConstraint.Parent = Title
	UIAspectRatioConstraint.AspectRatio = 14.136381149291992

	UITextSizeConstraint.Parent = Title
	UITextSizeConstraint.MaxTextSize = 17

	UIAspectRatioConstraint_2.Parent = TopFrame
	UIAspectRatioConstraint_2.AspectRatio = 14.44444465637207

	Close.Name = "Close"
	Close.Parent = TopFrame
	Close.BackgroundColor3 = Color3.new(1, 1, 1)
	Close.BackgroundTransparency = 1
	Close.Position = UDim2.new(0, 483, 0, 0)
	Close.Size = UDim2.new(0, 36, 0, 36)
	Close.Font = Enum.Font.SourceSansBold
	Close.Text = "X"
	Close.TextColor3 = Color3.new(1, 1, 1)
	Close.TextSize = 22
	Close.TextWrapped = true

	UIAspectRatioConstraint_3.Parent = Close

	Minimize.Name = "Minimize"
	Minimize.Parent = TopFrame
	Minimize.BackgroundColor3 = Color3.new(1, 1, 1)
	Minimize.BackgroundTransparency = 1
	Minimize.Position = UDim2.new(0, 447, 0, 0)
	Minimize.Size = UDim2.new(0, 36, 0, 36)
	Minimize.Font = Enum.Font.SourceSansBold
	Minimize.Text = "_"
	Minimize.TextColor3 = Color3.new(1, 1, 1)
	Minimize.TextSize = 22
	Minimize.TextWrapped = true

	UIAspectRatioConstraint_4.Parent = Minimize

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Window
	MainFrame.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
	MainFrame.BackgroundTransparency = 1
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0, 135, 0, 45)
	MainFrame.Size = UDim2.new(0, 376, 0, 325)

	UIAspectRatioConstraint_5.Parent = List
	UIAspectRatioConstraint_5.AspectRatio = 0.36764705181121826

	UIListLayout.Parent = List
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.00999999978, 0)

	List.Name = "List"
	List.Parent = Window
	List.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	List.BackgroundTransparency = 0.800000011920929
	List.BorderSizePixel = 0
	List.Position = UDim2.new(0, 0, 0, 37)
	List.Size = UDim2.new(0, 125, 0, 340)

	Containers.Name = "Containers"
	Containers.Parent = MainFrame

	local gui = Window

	local dragging
	local dragInput
	local dragStart
	local startPos

	function Lerp(a, b, m)
		return a + (b - a) * m
	end;

	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8);
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;

		local delta = (lastMousePos - uis:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = uis:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	runService.Heartbeat:Connect(Update)

	Window = {}

	function Window.Tab(name)
		Tab = Instance.new("TextButton")
		local TabText = Instance.new("TextLabel")
		local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
		local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
		Folder = Instance.new("Folder", MainFrame)
	
		UIAspectRatioConstraint_6.Parent = TabText
		UIAspectRatioConstraint_6.AspectRatio = 5.142857074737549
	
		UIAspectRatioConstraint_7.Parent = Tab
		UIAspectRatioConstraint_7.AspectRatio = 4.166666507720947
	
		Tab.Name = "Tab"
		Tab.Parent = List
		Tab.BackgroundColor3 = Color3.new(1, 1, 1)
		Tab.BackgroundTransparency = 1
		Tab.Size = UDim2.new(0, 124, 0, 30)
		Tab.Font = Enum.Font.Gotham
		Tab.Text = ""
		Tab.TextColor3 = Color3.new(1, 1, 1)
		Tab.TextSize = 16
	
		TabText.Name = "TabText"
		TabText.Parent = Tab
		TabText.BackgroundColor3 = Color3.new(1, 1, 1)
		TabText.BackgroundTransparency = 1
		TabText.Position = UDim2.new(0, 7, 0, 4)
		TabText.Size = UDim2.new(0, 108, 0, 21)
		TabText.Font = Enum.Font.GothamBold
		TabText.Text = tostring(name)
		TabText.TextColor3 = Color3.new(1, 1, 1)
		TabText.TextSize = 16

		Tab.MouseButton1Down:Connect(function()
			for i,v in pairs(MainFrame:GetChildren()) do
				if v:IsA("Folder") and v ~= Folder then
					for i,v in pairs(v:GetChildren()) do
						if v:IsA("Frame") or v:IsA("TextButton") or v:IsA("TextLabel") then
							v.Visible = false
						end
					end
				end
			end
			for i,v in pairs(Folder:GetChildren()) do
				v.Visible = true
			end
		end)

		Tab = {}

		function Tab.Section(name)
			local Section = Instance.new("Frame")
			local SectionTitle = Instance.new("TextLabel")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
			local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
			local UIListLayout = Instance.new("UIListLayout")
			local UICorner_2 = Instance.new("UICorner")

			Section.Name = "Section"
			Section.Parent = game.StarterGui.ScreenGui.Window.MainFrame
			Section.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
			Section.BackgroundTransparency = 0.800000011920929
			Section.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
			Section.BorderSizePixel = 0
			Section.Position = UDim2.new(0, 10, 0, 0)
			Section.Size = UDim2.new(0, 356, 0, 125)

			SectionTitle.Name = "SectionTitle"
			SectionTitle.Parent = Section
			SectionTitle.BackgroundColor3 = Color3.new(1, 1, 1)
			SectionTitle.BackgroundTransparency = 1
			SectionTitle.Position = UDim2.new(0, 7, 0, 1)
			SectionTitle.Size = UDim2.new(0, 342, 0, 17)
			SectionTitle.Font = Enum.Font.Gotham
			SectionTitle.Text = "Section"
			SectionTitle.TextColor3 = Color3.new(1, 1, 1)
			SectionTitle.TextScaled = true
			SectionTitle.TextSize = 14
			SectionTitle.TextWrapped = true
			SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

			UIAspectRatioConstraint.Parent = SectionTitle
			UIAspectRatioConstraint.AspectRatio = 20.117647171020508

			UITextSizeConstraint.Parent = SectionTitle
			UITextSizeConstraint.MaxTextSize = 14

			UIAspectRatioConstraint_2.Parent = Section
			UIAspectRatioConstraint_2.AspectRatio = 2.8480000495910645

			UIListLayout.Parent = Section
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0.0250000004, 0)

			UICorner_2.Parent = Section
			UICorner_2.CornerRadius = UDim.new(0.0250000004, 0)
		end
		return Tab
	end

	return Window
end

return Fray
