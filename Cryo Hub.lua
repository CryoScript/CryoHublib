local TweenService = game:GetService("TweenService")

if game.CoreGui:FindFirstChild("CryoLib") then
	game.CoreGui:FindFirstChild("CryoLib"):Destroy()
end

local Library = {}
function Library:CreateWindow(Title, FirstTabText)
local isGuiOpen = true
	
	local CryoLib = Instance.new("ScreenGui")
	local Main_1 = Instance.new("Frame")
	local TabsHolder_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local Tabs_1 = Instance.new("ScrollingFrame")
	
	local ElementsHolder_1 = Instance.new("Frame")
	
	local TopBar_1 = Instance.new("Frame")
	local UICorner_8 = Instance.new("UICorner")
	local Title_1 = Instance.new("TextLabel")
	local UIPadding_16 = Instance.new("UIPadding")
	local CloseBtn_1 = Instance.new("ImageButton")
	
	CryoLib.Name = "CryoLib"
	CryoLib.Parent = game.CoreGui

	Main_1.Name = "Main"
	Main_1.Parent = CryoLib
	Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Main_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Main_1.BackgroundTransparency = 1
	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Main_1.BorderSizePixel = 0
	Main_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main_1.Size = UDim2.new(0, 480,0, 350)
Main_1.Active = true
Main_1.Draggable = true
	TabsHolder_1.Name = "TabsHolder"
	TabsHolder_1.Parent = Main_1
	TabsHolder_1.BackgroundColor3 = Color3.fromRGB(23,23,23)
	TabsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TabsHolder_1.BorderSizePixel = 0
	TabsHolder_1.Position = UDim2.new(0, 0,0.114285715, 0)
	TabsHolder_1.Size = UDim2.new(0, 162,0, 310)

	UICorner_1.Parent = TabsHolder_1
	UICorner_1.CornerRadius = UDim.new(0,3)

	Tabs_1.Name = "Tabs"
	Tabs_1.Parent = TabsHolder_1
	Tabs_1.Active = true
	Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tabs_1.BackgroundTransparency = 1
	Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.BorderSizePixel = 0
	Tabs_1.Size = UDim2.new(0, 162,0, 310)
	Tabs_1.ClipsDescendants = true
	Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	Tabs_1.CanvasPosition = Vector2.new(0, 0)
	Tabs_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
	Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never
	Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Tabs_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.ScrollBarImageTransparency = 1
	Tabs_1.ScrollBarThickness = 1
	Tabs_1.ScrollingDirection = Enum.ScrollingDirection.XY
	Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
	
	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0.356249988, 0,0.114285715, 0)
	ElementsHolder_1.Size = UDim2.new(0, 309,0, 310)
	
	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(23,23,23)
	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.Size = UDim2.new(0, 480,0, 32)

	UICorner_8.Parent = TopBar_1
	UICorner_8.CornerRadius = UDim.new(0,3)

	Title_1.Name = "Title"
	Title_1.Parent = TopBar_1
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0, 0,0.09375, 0)
	Title_1.Size = UDim2.new(0, 436,0, 25)
	Title_1.Font = Enum.Font.Ubuntu
	Title_1.Text = Title
	Title_1.TextColor3 = Color3.fromRGB(190,190,190)
	Title_1.TextSize = 14
	Title_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_16.Parent = Title_1
	UIPadding_16.PaddingLeft = UDim.new(0,6)

	CloseBtn_1.Name = "CloseBtn"
	CloseBtn_1.Parent = TopBar_1
	CloseBtn_1.Active = true
	CloseBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	CloseBtn_1.BackgroundTransparency = 1
	CloseBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseBtn_1.BorderSizePixel = 0
	CloseBtn_1.Position = UDim2.new(0.939583361, 0,0.15625, 0)
	CloseBtn_1.Size = UDim2.new(0, 20,0, 20)
	CloseBtn_1.Image = "rbxassetid://17654478312"
	CloseBtn_1.ImageColor3 = Color3.fromRGB(190,190,190)
	
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIPadding_3 = Instance.new("UIPadding")
	
	UIListLayout_1.Parent = Tabs_1
	UIListLayout_1.Padding = UDim.new(0,2)
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

	UIPadding_3.Parent = Tabs_1
	UIPadding_3.PaddingBottom = UDim.new(0,11)
	UIPadding_3.PaddingTop = UDim.new(0,11)
	
	local TabTextElement_1 = Instance.new("TextLabel")
		local UIPadding_17 = Instance.new("UIPadding")
		TabTextElement_1.Name = "TabTextElement"
		TabTextElement_1.Parent = Main_1
		TabTextElement_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabTextElement_1.BackgroundTransparency = 1
		TabTextElement_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabTextElement_1.BorderSizePixel = 0
		TabTextElement_1.Position = UDim2.new(0.356249988, 0,0.114285715, 0)
		TabTextElement_1.Size = UDim2.new(0, 309,0, 36)
		TabTextElement_1.Font = Enum.Font.Ubuntu
		TabTextElement_1.Text = FirstTabText
		TabTextElement_1.TextColor3 = Color3.fromRGB(190,190,190)
		TabTextElement_1.TextSize = 14
		TabTextElement_1.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_17.Parent = TabTextElement_1
		UIPadding_17.PaddingLeft = UDim.new(0,12)
		
		CloseBtn_1.MouseButton1Click:Connect(function()

		if isGuiOpen then

			TabsHolder_1.Visible = false
			ElementsHolder_1.Visible = false
            Main_1.Size = UDim2.new(0, 480,0, 32)
            TabTextElement_1.Visible = false
		else

			TabsHolder_1.Visible = true
			ElementsHolder_1.Visible = true
			Main_1.Size = UDim2.new(0, 480,0, 350)
 TabTextElement_1.Visible = true
		end

		isGuiOpen = not isGuiOpen

	end)
	
	
	local Tabs = {}
	local first = true
	local currentTab = nil
	function Tabs:CreateTab(TabLetter, TabText)
		local targetTabColorOn = 0
		local targetTabColorOff = 1
		
		local TabBtnHolder_2 = Instance.new("Frame")
		local TabBtn_2 = Instance.new("TextButton")
		local UIPadding_4 = Instance.new("UIPadding")
		local TabBtnLetter_2 = Instance.new("TextLabel")
		local UIPadding_5 = Instance.new("UIPadding")
		local Elements_1 = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_15 = Instance.new("UIPadding")
		
		TabBtnHolder_2.Name = "TabBtnHolder"
		TabBtnHolder_2.Parent = Tabs_1
		TabBtnHolder_2.BackgroundColor3 = Color3.fromRGB(48,48,48)
		TabBtnHolder_2.BackgroundTransparency = 1
		TabBtnHolder_2.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtnHolder_2.BorderSizePixel = 0
		TabBtnHolder_2.Size = UDim2.new(0, 162,0, 25)

		TabBtn_2.Name = "TabBtn"
		TabBtn_2.Parent = TabBtnHolder_2
		TabBtn_2.Active = true
		TabBtn_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabBtn_2.BackgroundTransparency = 1
		TabBtn_2.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtn_2.BorderSizePixel = 0
		TabBtn_2.Position = UDim2.new(0.19135803, 0,0, 0)
		TabBtn_2.Size = UDim2.new(0, 131,0, 25)
		TabBtn_2.Font = Enum.Font.Ubuntu
		TabBtn_2.Text = TabText
		TabBtn_2.TextColor3 = Color3.fromRGB(190,190,190)
		TabBtn_2.TextSize = 14
		TabBtn_2.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_4.Parent = TabBtn_2
		UIPadding_4.PaddingLeft = UDim.new(0,2)

		TabBtnLetter_2.Name = "TabBtnLetter"
		TabBtnLetter_2.Parent = TabBtnHolder_2
		TabBtnLetter_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabBtnLetter_2.BackgroundTransparency = 1
		TabBtnLetter_2.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtnLetter_2.BorderSizePixel = 0
		TabBtnLetter_2.Size = UDim2.new(0, 31,0, 25)
		TabBtnLetter_2.Font = Enum.Font.Ubuntu
		TabBtnLetter_2.Text = TabLetter
		TabBtnLetter_2.TextColor3 = Color3.fromRGB(190,190,190)
		TabBtnLetter_2.TextSize = 14
		TabBtnLetter_2.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_5.Parent = TabBtnLetter_2
		UIPadding_5.PaddingLeft = UDim.new(0,10)
		
		
		
		Elements_1.Name = "Elements"
		Elements_1.Parent = ElementsHolder_1
		Elements_1.BackgroundColor3 = Color3.fromRGB(23,23,23)
		Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Elements_1.BorderSizePixel = 0
		Elements_1.Size = UDim2.new(0, 309,0, 310)

		UICorner_2.Parent = Elements_1
		UICorner_2.CornerRadius = UDim.new(0,3)

		UIListLayout_2.Parent = Elements_1
		UIListLayout_2.Padding = UDim.new(0,6)
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIPadding_15.Parent = Elements_1
UIPadding_15.PaddingLeft = UDim.new(0,6)
UIPadding_15.PaddingTop = UDim.new(0,40)
		local tweenInfo = TweenInfo.new(0.2)

		local tweenton = TweenService:Create(TabBtnHolder_2, tweenInfo, {BackgroundTransparency = targetTabColorOn})
		local tweentoff = TweenService:Create(TabBtnHolder_2, tweenInfo, {BackgroundTransparency = targetTabColorOff})

		if first then
			first = false
			Elements_1.Visible = true
			currentTab = TabBtnHolder_2
			tweenton:Play()
		else
			Elements_1.Visible = false
		end

		TabBtn_2.MouseButton1Click:Connect(function()
			if currentTab then
				tweentoff:Play()
			end
			tweenton:Play()
			if currentTab and currentTab ~= TabBtnHolder_2 then
				currentTab.BackgroundTransparency = targetTabColorOff
			end
			currentTab = TabBtnHolder_2
			for i, v in next, ElementsHolder_1:GetChildren() do
				v.Visible = false
			end

			Elements_1.Visible = true
			TabTextElement_1.Text = TabBtn_2.Text
		end)
		
		local Sections = {}
		function Sections:CreateSection(TabNameText)
			
			local SectionHolder_1 = Instance.new("Frame")
			local UIStroke_1 = Instance.new("UIStroke")
			local UICorner_3 = Instance.new("UICorner")
			local Section_1 = Instance.new("ScrollingFrame")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local UIPadding_6 = Instance.new("UIPadding")
			
			SectionHolder_1.Name = "SectionHolder"
SectionHolder_1.Parent = Elements_1
SectionHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SectionHolder_1.BackgroundTransparency = 1
SectionHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
SectionHolder_1.BorderSizePixel = 0
SectionHolder_1.Size = UDim2.new(0, 145,0, 263)

UIStroke_1.Parent = SectionHolder_1
UIStroke_1.Color = Color3.fromRGB(190,190,190)
UIStroke_1.Thickness = 0.5

UICorner_3.Parent = SectionHolder_1
UICorner_3.CornerRadius = UDim.new(0,3)

Section_1.Name = "Section"
Section_1.Parent = SectionHolder_1
Section_1.Active = true
Section_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Section_1.BackgroundTransparency = 1
Section_1.BorderColor3 = Color3.fromRGB(0,0,0)
Section_1.BorderSizePixel = 0
Section_1.Size = UDim2.new(0, 145,0, 263)
Section_1.ClipsDescendants = true
Section_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
Section_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
Section_1.CanvasPosition = Vector2.new(0, 0)
Section_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
Section_1.ElasticBehavior = Enum.ElasticBehavior.Never
Section_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
Section_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Section_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
Section_1.ScrollBarImageTransparency = 1
Section_1.ScrollBarThickness = 1
Section_1.ScrollingDirection = Enum.ScrollingDirection.Y
Section_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
Section_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
Section_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

UIListLayout_3.Parent = Section_1
UIListLayout_3.Padding = UDim.new(0,3)
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_6.Parent = Section_1
UIPadding_6.PaddingTop = UDim.new(0,4)

local Elements = {}
function Elements:CreateLabel(LabelText)

local Label_1 = Instance.new("Frame")
local LabelText_1 = Instance.new("TextLabel")

Label_1.Name = "Label"
Label_1.Parent = Section_1
Label_1.BackgroundColor3 = Color3.fromRGB(48,48,48)
Label_1.BackgroundTransparency = 1
Label_1.BorderColor3 = Color3.fromRGB(0,0,0)
Label_1.BorderSizePixel = 0
Label_1.Position = UDim2.new(0, 0,0.32432431, 0)
Label_1.Size = UDim2.new(0, 145,0, 16)

LabelText_1.Name = "LabelText"
LabelText_1.Parent = Label_1
LabelText_1.Active = true
LabelText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
LabelText_1.BackgroundTransparency = 1
LabelText_1.BorderColor3 = Color3.fromRGB(0,0,0)
LabelText_1.BorderSizePixel = 0
LabelText_1.Size = UDim2.new(0, 145,0, 16)
LabelText_1.Font = Enum.Font.Ubuntu
LabelText_1.Text = LabelText
LabelText_1.TextColor3 = Color3.fromRGB(190,190,190)
LabelText_1.TextSize = 12

end
function Elements:CreateButton(ButtonText,Callback)
		Callback = Callback or function()

			end



			local targetButtonColorOn = Color3.fromRGB(110,110,110)

			local targetButtonColorOff = Color3.fromRGB(190,190,190)
local Button_1 = Instance.new("Frame")
local ButtonBtn_1 = Instance.new("TextButton")

Button_1.Name = "Button"
Button_1.Parent = Section_1
Button_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Button_1.BackgroundTransparency = 1
Button_1.BorderColor3 = Color3.fromRGB(0,0,0)
Button_1.BorderSizePixel = 0
Button_1.Size = UDim2.new(0, 145,0, 25)

ButtonBtn_1.Name = "ButtonBtn"
ButtonBtn_1.Parent = Button_1
ButtonBtn_1.Active = true
ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ButtonBtn_1.BackgroundTransparency = 1
ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
ButtonBtn_1.BorderSizePixel = 0
ButtonBtn_1.Size = UDim2.new(0, 145,0, 25)
ButtonBtn_1.Font = Enum.Font.Ubuntu
ButtonBtn_1.Text = ButtonText
ButtonBtn_1.TextColor3 = Color3.fromRGB(190,190,190)
ButtonBtn_1.TextSize = 14

		local tweenInfo = TweenInfo.new(0.2)



			local tweenbon = TweenService:Create(ButtonBtn_1, tweenInfo, {TextColor3 = targetButtonColorOn})

			local tweenboff = TweenService:Create(ButtonBtn_1, tweenInfo, {TextColor3 = targetButtonColorOff})



			ButtonBtn_1.MouseButton1Click:Connect(function()

				tweenbon:Play()

				wait(0.1)

				tweenboff:Play()

				Callback()

			end)

end

function Elements:CreateToggle(ToggleText,Callback)

Callback = Callback or function()

			end



			local toggled = false

			local debounce = false



			local targetButtonColorOnb = Color3.fromRGB(190,190,190)

			local targetButtonColorOffb = Color3.fromRGB(48,48,48) 


local Toggle_2 = Instance.new("Frame")
local ToggleText_2 = Instance.new("TextLabel")
local UIPadding_8 = Instance.new("UIPadding")
local Toggler_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Section_1
Toggle_2.BackgroundColor3 = Color3.fromRGB(48,48,48)
Toggle_2.BackgroundTransparency = 1
Toggle_2.BorderColor3 = Color3.fromRGB(0,0,0)
Toggle_2.BorderSizePixel = 0
Toggle_2.Size = UDim2.new(0, 145,0, 25)

ToggleText_2.Name = "ToggleText"
ToggleText_2.Parent = Toggle_2
ToggleText_2.Active = true
ToggleText_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
ToggleText_2.BackgroundTransparency = 1
ToggleText_2.BorderColor3 = Color3.fromRGB(0,0,0)
ToggleText_2.BorderSizePixel = 0
ToggleText_2.Size = UDim2.new(0, 110,0, 25)
ToggleText_2.Font = Enum.Font.Ubuntu
ToggleText_2.Text = ToggleText
ToggleText_2.TextColor3 = Color3.fromRGB(190,190,190)
ToggleText_2.TextSize = 14
ToggleText_2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_8.Parent = ToggleText_2
UIPadding_8.PaddingLeft = UDim.new(0,7)

Toggler_2.Name = "Toggler"
Toggler_2.Parent = Toggle_2
Toggler_2.BackgroundColor3 = Color3.fromRGB(48,48,48)
Toggler_2.BorderColor3 = Color3.fromRGB(0,0,0)
Toggler_2.BorderSizePixel = 0
Toggler_2.Position = UDim2.new(0.820689678, 0,0.159999996, 0)
Toggler_2.Size = UDim2.new(0, 16,0, 16)

UICorner_5.Parent = Toggler_2
UICorner_5.CornerRadius = UDim.new(0,3)

TextButton_2.Parent = Toggler_2
TextButton_2.Active = true
TextButton_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextButton_2.BackgroundTransparency = 1
TextButton_2.BorderColor3 = Color3.fromRGB(0,0,0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Size = UDim2.new(0, 16,0, 16)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextSize = 14
local tweenInfo = TweenInfo.new(0.2)



			local tweenbon = TweenService:Create(Toggler_2, tweenInfo, {BackgroundColor3 = targetButtonColorOnb})

			local tweenboff = TweenService:Create(Toggler_2, tweenInfo, {BackgroundColor3 = targetButtonColorOffb})



			TextButton_2.MouseButton1Click:Connect(function()

				if debounce == false then

					if toggled == false then

						debounce = true

						tweenbon:Play()

						debounce = false

						toggled = true

						pcall(Callback, toggled)

					elseif toggled == true then

						debounce = true

						tweenboff:Play()

						debounce = false

						toggled = false

						pcall(Callback, toggled)

					end

				end

			end)

		end
		
function Elements:CreateSlider(SliderText, min, max, Callback)
local Slider_1 = Instance.new("Frame")
local SliderText_1 = Instance.new("TextLabel")
local UIPadding_9 = Instance.new("UIPadding")
local SliderText_2 = Instance.new("TextLabel")
local UIPadding_10 = Instance.new("UIPadding")
local SliderHolder_1 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local SliderBtn_1 = Instance.new("TextButton")
local SliderInner_1 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")

Slider_1.Name = "Slider"
Slider_1.Parent = Section_1
Slider_1.BackgroundColor3 = Color3.fromRGB(48,48,48)
Slider_1.BackgroundTransparency = 1
Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)
Slider_1.BorderSizePixel = 0
Slider_1.Position = UDim2.new(0, 0,0.397683412, 0)
Slider_1.Size = UDim2.new(0, 145,0, 34)

SliderText_1.Name = "SliderText"
SliderText_1.Parent = Slider_1
SliderText_1.Active = true
SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderText_1.BackgroundTransparency = 1
SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderText_1.BorderSizePixel = 0
SliderText_1.Size = UDim2.new(0, 99,0, 11)
SliderText_1.Font = Enum.Font.Ubuntu
SliderText_1.Text = SliderText
SliderText_1.TextColor3 = Color3.fromRGB(190,190,190)
SliderText_1.TextSize = 13
SliderText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_9.Parent = SliderText_1
UIPadding_9.PaddingLeft = UDim.new(0,7)
UIPadding_9.PaddingTop = UDim.new(0,7)

SliderText_2.Name = "SliderText"
SliderText_2.Parent = Slider_1
SliderText_2.Active = true
SliderText_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderText_2.BackgroundTransparency = 1
SliderText_2.BorderColor3 = Color3.fromRGB(0,0,0)
SliderText_2.BorderSizePixel = 0
SliderText_2.Position = UDim2.new(0.758620679, 0,0, 0)
SliderText_2.Size = UDim2.new(0, 35,0, 11)
SliderText_2.Font = Enum.Font.Ubuntu
SliderText_2.Text = min
SliderText_2.TextColor3 = Color3.fromRGB(190,190,190)
SliderText_2.TextSize = 13
SliderText_2.TextXAlignment = Enum.TextXAlignment.Right

UIPadding_10.Parent = SliderText_2
UIPadding_10.PaddingRight = UDim.new(0,7)
UIPadding_10.PaddingTop = UDim.new(0,7)

SliderHolder_1.Name = "SliderHolder"
SliderHolder_1.Parent = Slider_1
SliderHolder_1.BackgroundColor3 = Color3.fromRGB(48,48,48)
SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderHolder_1.BorderSizePixel = 0
SliderHolder_1.Position = UDim2.new(0.0340000018, 0,0.629999995, 0)
SliderHolder_1.Size = UDim2.new(0, 135,0, 6)

UICorner_6.Parent = SliderHolder_1
UICorner_6.CornerRadius = UDim.new(0,3)

SliderBtn_1.Name = "SliderBtn"
SliderBtn_1.Parent = SliderHolder_1
SliderBtn_1.Active = true
SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderBtn_1.BackgroundTransparency = 1
SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderBtn_1.BorderSizePixel = 0
SliderBtn_1.Size = UDim2.new(0, 135,0, 6)
SliderBtn_1.Font = Enum.Font.SourceSans
SliderBtn_1.Text = ""
SliderBtn_1.TextSize = 14

SliderInner_1.Name = "SliderInner"
SliderInner_1.Parent = SliderBtn_1
SliderInner_1.BackgroundColor3 = Color3.fromRGB(190,190,190)
SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderInner_1.BorderSizePixel = 0
SliderInner_1.Position = UDim2.new(-4.52112261e-07, 0,0, 0)
SliderInner_1.Size = UDim2.new(0, 0, 0, 6)

UICorner_7.Parent = SliderInner_1
UICorner_7.CornerRadius = UDim.new(0,3)

local isDragging = false



			SliderBtn_1.InputBegan:Connect(function(input)

				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then

					isDragging = true

				end

			end)



			game:GetService("UserInputService").InputEnded:Connect(function(input)

				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then

					isDragging = false

				end

			end)



			game:GetService("RunService").RenderStepped:Connect(function()

				if isDragging then

					local mousePosition = game:GetService("UserInputService"):GetMouseLocation()

					local sliderPosition = SliderBtn_1.AbsolutePosition

					local sliderWidth = SliderBtn_1.AbsoluteSize.X

					local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)

					SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)



					-- Calculate and display value label

					local value = fillWidth / sliderWidth

					local displayValue = min + (max - min) * value

					SliderText_2.Text = tostring(math.floor(displayValue + 0.5))

					Callback(displayValue)

				end

			end)
end
function Elements:CreateBox(BoxText,Callback)
local Box_1 = Instance.new("Frame")
local BoxText_1 = Instance.new("TextLabel")
local UIPadding_11 = Instance.new("UIPadding")
local TextBox_1 = Instance.new("TextBox")
local UIPadding_12 = Instance.new("UIPadding")
Box_1.Name = "Box"
Box_1.Parent = Section_1
Box_1.BackgroundColor3 = Color3.fromRGB(48,48,48)
Box_1.BackgroundTransparency = 1
Box_1.BorderColor3 = Color3.fromRGB(0,0,0)
Box_1.BorderSizePixel = 0
Box_1.Position = UDim2.new(0, 0,0.540540516, 0)
Box_1.Size = UDim2.new(0, 145,0, 20)

BoxText_1.Name = "BoxText"
BoxText_1.Parent = Box_1
BoxText_1.Active = true
BoxText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
BoxText_1.BackgroundTransparency = 1
BoxText_1.BorderColor3 = Color3.fromRGB(0,0,0)
BoxText_1.BorderSizePixel = 0
BoxText_1.Size = UDim2.new(0, 92,0, 20)
BoxText_1.Font = Enum.Font.Ubuntu
BoxText_1.Text = BoxText
BoxText_1.TextColor3 = Color3.fromRGB(190,190,190)
BoxText_1.TextSize = 13
BoxText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_11.Parent = BoxText_1
UIPadding_11.PaddingLeft = UDim.new(0,7)

TextBox_1.Parent = Box_1
TextBox_1.Active = true
TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextBox_1.BackgroundTransparency = 1
TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
TextBox_1.BorderSizePixel = 0
TextBox_1.Position = UDim2.new(0.682758629, 0,0, 0)
TextBox_1.Size = UDim2.new(0, 46,0, 20)
TextBox_1.Font = Enum.Font.Ubuntu
TextBox_1.PlaceholderColor3 = Color3.fromRGB(190,190,190)
TextBox_1.PlaceholderText = "..."
TextBox_1.Text = ""
TextBox_1.TextColor3 = Color3.fromRGB(190,190,190)
TextBox_1.TextSize = 10
TextBox_1.TextXAlignment = Enum.TextXAlignment.Right

UIPadding_12.Parent = TextBox_1
UIPadding_12.PaddingRight = UDim.new(0,7)

TextBox_1.FocusLost:Connect(function()

				Callback(TextBox_1.Text)

			end)
			
end
function Elements:CreateDropdown(DropdownText, options, Callback)
local Dropdown_1 = Instance.new("Frame")
local A_DropdownBar_1 = Instance.new("Frame")
local DropdownTitle_1 = Instance.new("TextLabel")
local UIPadding_13 = Instance.new("UIPadding")
local DropdownBtn_1 = Instance.new("ImageButton")
local UIListLayout_4 = Instance.new("UIListLayout")
local B_DropdownOptions_1 = Instance.new("Frame")
local OptionsHolder_1 = Instance.new("ScrollingFrame")

local UIListLayout_5 = Instance.new("UIListLayout")
local UIPadding_14 = Instance.new("UIPadding")

Dropdown_1.Name = "Dropdown"
Dropdown_1.Parent = Section_1
Dropdown_1.AutomaticSize = Enum.AutomaticSize.Y
Dropdown_1.BackgroundColor3 = Color3.fromRGB(48,48,48)
Dropdown_1.BackgroundTransparency = 1
Dropdown_1.BorderColor3 = Color3.fromRGB(0,0,0)
Dropdown_1.BorderSizePixel = 0
Dropdown_1.Position = UDim2.new(0, 0,0.629343629, 0)
Dropdown_1.Size = UDim2.new(0, 145,0, 20)

A_DropdownBar_1.Name = "A_DropdownBar"
A_DropdownBar_1.Parent = Dropdown_1
A_DropdownBar_1.BackgroundColor3 = Color3.fromRGB(63,63,63)
A_DropdownBar_1.BackgroundTransparency = 1
A_DropdownBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
A_DropdownBar_1.BorderSizePixel = 0
A_DropdownBar_1.Size = UDim2.new(0, 145,0, 20)

DropdownTitle_1.Name = "DropdownTitle"
DropdownTitle_1.Parent = A_DropdownBar_1
DropdownTitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
DropdownTitle_1.BackgroundTransparency = 1
DropdownTitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
DropdownTitle_1.BorderSizePixel = 0
DropdownTitle_1.LayoutOrder = 5
DropdownTitle_1.Size = UDim2.new(0, 110,0, 20)
DropdownTitle_1.Font = Enum.Font.Ubuntu
DropdownTitle_1.Text = DropdownText
DropdownTitle_1.TextColor3 = Color3.fromRGB(190,190,190)
DropdownTitle_1.TextSize = 13
DropdownTitle_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_13.Parent = DropdownTitle_1
UIPadding_13.PaddingLeft = UDim.new(0,7)

DropdownBtn_1.Name = "DropdownBtn"
DropdownBtn_1.Parent = A_DropdownBar_1
DropdownBtn_1.Active = true
DropdownBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
DropdownBtn_1.BackgroundTransparency = 1
DropdownBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
DropdownBtn_1.BorderSizePixel = 0
DropdownBtn_1.Position = UDim2.new(0.875862062, 0,0.200000003, 0)
DropdownBtn_1.Rotation = -180
DropdownBtn_1.Size = UDim2.new(0, 12,0, 12)
DropdownBtn_1.Image = "rbxassetid://17654715003"

UIListLayout_4.Parent = Dropdown_1
UIListLayout_4.SortOrder = Enum.SortOrder.Name

B_DropdownOptions_1.Name = "B_DropdownOptions"
B_DropdownOptions_1.Parent = Dropdown_1
B_DropdownOptions_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
B_DropdownOptions_1.BackgroundTransparency = 1
B_DropdownOptions_1.BorderColor3 = Color3.fromRGB(0,0,0)
B_DropdownOptions_1.BorderSizePixel = 0
B_DropdownOptions_1.Position = UDim2.new(0, 0,1, 0)
B_DropdownOptions_1.Size = UDim2.new(0, 145,0, 54)
B_DropdownOptions_1.Visible = false

OptionsHolder_1.Name = "OptionsHolder"
OptionsHolder_1.Parent = B_DropdownOptions_1
OptionsHolder_1.Active = true
OptionsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
OptionsHolder_1.BackgroundTransparency = 1
OptionsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
OptionsHolder_1.BorderSizePixel = 0
OptionsHolder_1.Position = UDim2.new(0.0822753906, 0,0, 0)
OptionsHolder_1.Size = UDim2.new(0, 123,0, 54)
OptionsHolder_1.ClipsDescendants = true
OptionsHolder_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
OptionsHolder_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
OptionsHolder_1.CanvasPosition = Vector2.new(0, 0)
OptionsHolder_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
OptionsHolder_1.ElasticBehavior = Enum.ElasticBehavior.Never
OptionsHolder_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
OptionsHolder_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
OptionsHolder_1.ScrollBarImageColor3 = Color3.fromRGB(190,190,190)
OptionsHolder_1.ScrollBarImageTransparency = 0
OptionsHolder_1.ScrollBarThickness = 4
OptionsHolder_1.ScrollingDirection = Enum.ScrollingDirection.Y
OptionsHolder_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
OptionsHolder_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
OptionsHolder_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

UIListLayout_5.Parent = OptionsHolder_1
UIListLayout_5.Padding = UDim.new(0,5)
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_14.Parent = OptionsHolder_1
UIPadding_14.PaddingBottom = UDim.new(0,3)
UIPadding_14.PaddingTop = UDim.new(0,3)

local isDropdownOpen = false



			local function ToggleDropdown()

				isDropdownOpen = not isDropdownOpen

				local targetRotation = isDropdownOpen and 90 or -180

				local rotationTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

				local rotationTween = TweenService:Create(DropdownBtn_1, rotationTweenInfo, { Rotation = targetRotation })

				if isDropdownOpen then

					rotationTween:Play()

					B_DropdownOptions_1.Visible = true

				else

					B_DropdownOptions_1.Visible = false

					rotationTween:Play()

				end

			end



			DropdownBtn_1.MouseButton1Click:Connect(ToggleDropdown)



			for i, optionText in ipairs(options) do
local OptionBtn = Instance.new("TextButton")
				OptionBtn.Name = "OptionBtn"
OptionBtn.Parent = OptionsHolder_1
OptionBtn.Active = true
OptionBtn.BackgroundColor3 = Color3.fromRGB(255,255,255)
OptionBtn.BackgroundTransparency = 1
OptionBtn.BorderColor3 = Color3.fromRGB(0,0,0)
OptionBtn.BorderSizePixel = 0
OptionBtn.Size = UDim2.new(0, 123,0, 13)
OptionBtn.Font = Enum.Font.Ubuntu
OptionBtn.Text = optionText
OptionBtn.TextColor3 = Color3.fromRGB(190,190,190)
OptionBtn.TextSize = 10



				OptionBtn.MouseButton1Click:Connect(function()

					Callback(optionText)

					ToggleDropdown()

				end)

			end

end
return Elements
		end
		return Sections
	end
	return Tabs
end

return Library
