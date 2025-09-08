local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()
local Icons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

-- Create window
local Window = Starlight:CreateWindow({
    Name = "Starlight",
    Subtitle = "v1.0",
    Icon = Icons:GetIcon("star", "Material"), -- Star theme for Starlight
    LoadingSettings = { 
        Title = "Starlight", 
        Subtitle = "Welcome to Starlight" 
    },
    ConfigurationSettings = { 
        FolderName = "starlight" 
    },
})

-- Tab section
local TabSection = Window:CreateTabSection("Tab Section")

-- Create tabs inside section with meaningful icons
local Main = TabSection:CreateTab({
    Name = "Main",
    Icon = Icons:GetIcon("info", "Material"), -- Info tab
    Columns = 2,
}, "INDEX")

local Game = TabSection:CreateTab({
    Name = "Game Scripts",
    Icon = Icons:GetIcon("gamepad", "Material"), -- Gaming icon
    Columns = 2,
}, "INDEX")

local Universal = TabSection:CreateTab({
    Name = "Universal Scripts",
    Icon = Icons:GetIcon("public", "Material"), -- Global/universal theme
    Columns = 2,
}, "INDEX")

-- Groupbox inside Game tab
local Groupbox = Game:CreateGroupbox({
    Name = "Popular Games",
    Column = 1,
}, "INDEX")

-- Button
Groupbox:CreateButton({
    Name = "Grow a Garden",
    Icon = Icons:GetIcon("local_florist", "Material"), -- Gardening theme
    Callback = function()
        -- Notification
        Starlight:Notification({
            Title = "Fetching..",
            Icon = Icons:GetIcon("sparkle", "Material"),
            Content = "Grow a Garden Scripts.",
        }, "INDEX")

        task.wait(2)

        -- Close window safely
        if Window and Window.Destroy then
            Window:Destroy()
        elseif Window and Window.Close then
            Window:Close()
        end

        -- Execute external script
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/alexanderfossdalhaines/gag/refs/heads/main/growagarden.lua"))()
        end)

        if not success then
            warn("Failed to load Grow a Garden script:", err)
        end
    end,
}, "INDEX")
