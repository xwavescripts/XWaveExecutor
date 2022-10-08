-- In Game Executor
-- Supports: Evon,Fluxus,Krnl,Kareant,DeskBlox,ExploitX, And Dansploit.

local XWaveExecutor = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local Warning = Instance.new("TextLabel")
local ScriptBox = Instance.new("TextBox")
local Inject = Instance.new("TextButton")
local Execute = Instance.new("TextButton")

--Properties:

XWaveExecutor.Name = "XWaveExecutor"
XWaveExecutor.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
XWaveExecutor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = XWaveExecutor
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BorderSizePixel = 16
main.Position = UDim2.new(0.0545886084, 0, 0.119047619, 0)
main.Size = UDim2.new(0, 687, 0, 299)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(146, 255, 134)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(237, 255, 207)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Position = UDim2.new(0.0308575183, 0, 0.0234113708, 0)
Title.Size = UDim2.new(0, 643, 0, 51)
Title.Font = Enum.Font.Cartoon
Title.Text = "XWaveExecutor (In-Game-Executor)"
Title.TextColor3 = Color3.fromRGB(105, 145, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner.Parent = Title

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(82, 108, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient_2.Parent = Title

Warning.Name = "Warning"
Warning.Parent = main
Warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Warning.BackgroundTransparency = 1.000
Warning.Position = UDim2.new(0, 0, 0.89733839, 0)
Warning.Size = UDim2.new(0, 678, 0, 27)
Warning.Font = Enum.Font.Cartoon
Warning.Text = "Warning: This Might Not Work For Some Executors."
Warning.TextColor3 = Color3.fromRGB(0, 0, 0)
Warning.TextSize = 29.000
Warning.TextWrapped = true

ScriptBox.Name = "ScriptBox"
ScriptBox.Parent = main
ScriptBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptBox.BorderSizePixel = 4
ScriptBox.Position = UDim2.new(0.0625909716, 0, 0.357859522, 0)
ScriptBox.Size = UDim2.new(0, 604, 0, 137)
ScriptBox.Font = Enum.Font.Roboto
ScriptBox.Text = ""
ScriptBox.TextColor3 = Color3.fromRGB(0, 0, 0)
ScriptBox.TextScaled = true
ScriptBox.TextSize = 14.000
ScriptBox.TextWrapped = true

Inject.Name = "Inject"
Inject.Parent = main
Inject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inject.BorderSizePixel = 0
Inject.Position = UDim2.new(0.145560414, 0, 0.217391297, 0)
Inject.Size = UDim2.new(0, 192, 0, 33)
Inject.Font = Enum.Font.Cartoon
Inject.Text = "Inject"
Inject.TextColor3 = Color3.fromRGB(0, 0, 0)
Inject.TextScaled = true
Inject.TextSize = 14.000
Inject.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = main
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.590975225, 0, 0.217391297, 0)
Execute.Size = UDim2.new(0, 192, 0, 33)
Execute.Font = Enum.Font.Cartoon
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextScaled = true
Execute.TextSize = 14.000
Execute.TextWrapped = true

-- Scripts:

local function XWaveExecutorLUA4() -- ScriptBox.Execute 
	local script = Instance.new('LocalScript', ScriptBox)

	
end
coroutine.wrap(XWaveExecutorLUA4)()
local function XWaveExecutorLUA3() -- ScriptBox.Inject 
	local script = Instance.new('LocalScript', ScriptBox)

	
end
coroutine.wrap(XWaveExecutorLUA3)()
local function XWaveExecutorLUA2() -- Inject.  
	local script = Instance.new('LocalScript', Inject)

	local MainAPI = require(_G.API, game)
	local module = MainAPI.Load()
	
	MainAPI.Inject()
	
	if module.HasInjected then
		script.Parent.Parent.Execute.InjectAPI:GetAPI(module.SuccessExecute)
	end
end
coroutine.wrap(XWaveExecutorLUA2)()
local function XWaveExecutorLUA() -- Execute.  
	local script = Instance.new('LocalScript', Execute)

	local MainAPI = require(_G.API, game)
	local module = MainAPI.Load()
	
	MainAPI.Execute(script.Parent.Parent.ScriptBox.Text)
	
	if module.HasExecuted then
		module.MakeSure(module.HasInjected)
	end
	if not module.HasInjected then
		module.CanExecute = false
	end
end
coroutine.wrap(XWaveExecutorLUA)()
local function XWaveExecutorLUA1() -- Execute.InjectAPI 
	local script = Instance.new('LocalScript', Execute)

	local MainAPI = require(_G.API, game)
	local module = MainAPI.Load()
	
	MainAPI.Execute(script.Parent.Parent.ScriptBox.Text)
	
	if module.HasExecuted then
		module.MakeSure(module.HasInjected)
	end
	if not module.HasInjected then
		module.CanExecute = false
	end
end
coroutine.wrap(XWaveExecutorLUA1)()
