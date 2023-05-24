--[[
  Fray UI Library
  ---
  NOT FINISHED AT ALL
]]

Fray = {}

local ts = game:GetService("TweenService")
local coregui = game:GetService("CoreGui")

wait()

function Fray.Window()
	Window = {}
	--Instances
	local ScreenGui = Instance.new("ScreenGui")
	local Window = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TopFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local Close = Instance.new("TextButton")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local Minimize = Instance.new("TextButton")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local List = Instance.new("Frame")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
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
	Title.Text = "Title"
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

	List.Name = "List"
	List.Parent = Window
	List.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	List.BackgroundTransparency = 0.800000011920929
	List.BorderSizePixel = 0
	List.Position = UDim2.new(0, 0, 0, 37)
	List.Size = UDim2.new(0, 125, 0, 340)

	UIAspectRatioConstraint_5.Parent = List
	UIAspectRatioConstraint_5.AspectRatio = 0.36764705181121826

	UIListLayout.Parent = List
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.00999999978, 0)

	return Window
end

return Fray

