-- Define the library structure
local Library = {}
Library.__index = Library

-- Constructor function to create a new instance of the library
function Library.new()
    local self = setmetatable({}, Library)
    self.Windows = {}
    return self
end

-- Function to create a new window
function Library:CreateWindow(name)
    local Window = {}
    Window.Elements = {}

    -- Create the main frame for the window
    Window.Frame = Instance.new("Frame")
    Window.Frame.Name = name
    Window.Frame.Parent = game.Players.LocalPlayer.PlayerGui
    Window.Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Window.Frame.BorderSizePixel = 0
    Window.Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Window.Frame.Size = UDim2.new(0, 200, 0, 250)
    Window.Frame.Draggable = true

    -- Top bar creation
    Window.TopBar = Instance.new("Frame")
    Window.TopBar.Name = "TopBar"
    Window.TopBar.Parent = Window.Frame
    Window.TopBar.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    Window.TopBar.BorderSizePixel = 0
    Window.TopBar.Position = UDim2.new(0, 0, 0, 0)
    Window.TopBar.Size = UDim2.new(1, 0, 0, 23)

    -- Title text
    Window.Title = Instance.new("TextLabel")
    Window.Title.Name = "Title"
    Window.Title.Parent = Window.TopBar
    Window.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Window.Title.BorderSizePixel = 0
    Window.Title.Position = UDim2.new(0, 5, 0, 0)
    Window.Title.Size = UDim2.new(0.75, -10, 1, 0)
    Window.Title.Font = Enum.Font.Ubuntu
    Window.Title.Text = name
    Window.Title.TextColor3 = Color3.fromRGB(152, 152, 152)
    Window.Title.TextSize = 14
    Window.Title.TextXAlignment = Enum.TextXAlignment.Left

    -- Minimize button
    Window.Minimize = Instance.new("ImageButton")
    Window.Minimize.Name = "Minimize"
    Window.Minimize.Parent = Window.TopBar
    Window.Minimize.BackgroundTransparency = 1
    Window.Minimize.BorderSizePixel = 0
    Window.Minimize.Position = UDim2.new(1, -20, 0, 1)
    Window.Minimize.Size = UDim2.new(0, 18, 0, 18)
    Window.Minimize.Image = "rbxasset://textures/DevConsole/Minimize.png"

    -- Elements holder
    Window.ElementsHolder = Instance.new("Frame")
    Window.ElementsHolder.Name = "ElementsHolder"
    Window.ElementsHolder.Parent = Window.Frame
    Window.ElementsHolder.BackgroundColor3 = Color3.fromRGB(18, 4, 3)
    Window.ElementsHolder.BorderSizePixel = 0
    Window.ElementsHolder.Position = UDim2.new(0, 0, 0, 23)
    Window.ElementsHolder.Size = UDim2.new(1, 0, 1, -23)

    -- Function to create a button in the window
    function Window:CreateButton(text, callback)
        local ButtonFrame = Instance.new("Frame")
        ButtonFrame.Name = "ButtonFrame"
        ButtonFrame.Parent = Window.ElementsHolder
        ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonFrame.BackgroundTransparency = 1
        ButtonFrame.BorderSizePixel = 0
        ButtonFrame.Size = UDim2.new(1, 0, 0, 18)

        local Button = Instance.new("TextButton")
        Button.Name = "Button"
        Button.Parent = ButtonFrame
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1
        Button.BorderSizePixel = 0
        Button.Size = UDim2.new(1, 0, 1, 0)
        Button.Font = Enum.Font.SourceSans
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.TextSize = 16
        Button.Text = text

        Button.MouseButton1Click:Connect(function()
            callback()
        end)

        table.insert(Window.Elements, ButtonFrame)

        return ButtonFrame
    end

    -- Function to create a label in the window
    function Window:CreateLabel(text)
        local LabelFrame = Instance.new("Frame")
        LabelFrame.Name = "LabelFrame"
        LabelFrame.Parent = Window.ElementsHolder
        LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelFrame.BackgroundTransparency = 1
        LabelFrame.BorderSizePixel = 0
        LabelFrame.Size = UDim2.new(1, 0, 0, 18)

        local Label = Instance.new("TextLabel")
        Label.Name = "Label"
        Label.Parent = LabelFrame
        Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label.BorderSizePixel = 0
        Label.Size = UDim2.new(1, 0, 1, 0)
        Label.Font = Enum.Font.SourceSans
        Label.TextColor3 = Color3.fromRGB(152, 152, 152)
        Label.TextSize = 15
        Label.Text = text

        table.insert(Window.Elements, LabelFrame)

        return LabelFrame
    end

    -- Function to create a toggle in the window
    function Window:CreateToggle(text, callback)
        local ToggleFrame = Instance.new("Frame")
        ToggleFrame.Name = "ToggleFrame"
        ToggleFrame.Parent = Window.ElementsHolder
        ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleFrame.BackgroundTransparency = 1
        ToggleFrame.BorderSizePixel = 0
        ToggleFrame.Size = UDim2.new(1, 0, 0, 18)

        local ToggleName = Instance.new("TextLabel")
        ToggleName.Name = "ToggleName"
        ToggleName.Parent = ToggleFrame
        ToggleName.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
        ToggleName.BackgroundTransparency = 1
        ToggleName.BorderSizePixel = 0
        ToggleName.Size = UDim2.new(0, 132, 1, 0)
        ToggleName.Font = Enum.Font.SourceSans
        ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleName.TextSize = 15
        ToggleName.TextXAlignment = Enum.TextXAlignment.Left
        ToggleName.Text = text

        local ToggleIndicator = Instance.new("TextButton")
        ToggleIndicator.Name = "ToggleIndicator"
        ToggleIndicator.Parent = ToggleFrame
        ToggleIndicator.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
        ToggleIndicator.BorderSizePixel = 0
        ToggleIndicator.Position = UDim2.new(0.95, -5, 0, 3)
        ToggleIndicator.Size = UDim2.new(0, 15, 0, 12)
        ToggleIndicator.Text = ""
        ToggleIndicator.TextColor3 = Color3.fromRGB(52, 52, 52)

        ToggleIndicator.MouseButton1Click:Connect(function()
            ToggleIndicator.BackgroundColor3 = ToggleIndicator.BackgroundColor3 == Color3.fromRGB(52, 52, 52) and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(52, 52, 52)
            callback(ToggleIndicator.BackgroundColor3 == Color3.fromRGB(52, 52, 52))
        end)

        table.insert(Window.Elements, ToggleFrame)

        return ToggleFrame
    end

    -- Function to create a text box in the window
    function Window:CreateBox(text, callback)
        local TextBoxFrame = Instance.new("Frame")
        TextBoxFrame.Name = "TextBoxFrame"
        TextBoxFrame.Parent = Window.ElementsHolder
        TextBoxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBoxFrame.BackgroundTransparency = 1
        TextBoxFrame.BorderSizePixel = 0
        TextBoxFrame.Size = UDim2.new(1, 0, 0, 18)

        local TextBoxName = Instance.new("TextLabel")
        TextBoxName.Name = "TextBoxName"
        TextBoxName.Parent = TextBoxFrame
        TextBoxName.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
        TextBoxName.BackgroundTransparency = 1
        TextBoxName.BorderSizePixel = 0
        TextBoxName.Size = UDim2.new(0, 77, 1, 0)
        TextBoxName.Font = Enum.Font.SourceSans
        TextBoxName.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBoxName.TextSize = 15
        TextBoxName.TextXAlignment = Enum.TextXAlignment.Left
        TextBoxName.Text = text

        local TextBox = Instance.new("TextBox")
        TextBox.Name = "TextBox"
        TextBox.Parent = TextBoxFrame
        TextBox.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
        TextBox.BorderSizePixel = 0
        TextBox.Position = UDim2.new(0.56, -5, 0, 0)
        TextBox.Size = UDim2.new(0, 95, 1, 0)
        TextBox.Font = Enum.Font.SourceSans
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 14

        TextBox.FocusLost:Connect(function(enterPressed)
            if enterPressed then
                callback(TextBox.Text)
            end
        end)

        table.insert(Window.Elements, TextBoxFrame)

        return TextBoxFrame
    end

    -- Store the window instance
    self.Windows[name] = Window
    return Window
end
