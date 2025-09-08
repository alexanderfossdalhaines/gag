local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()  
local NebulaIcons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

-- Create Main Window
local Window = Starlight:CreateWindow({
    Name = "Grow a Garden",
    Subtitle = "v1.0",
    Icon = NebulaIcons:GetIcon("local_florist", "Material"), -- Flower theme

    LoadingSettings = {
        Title = "Grow a Garden",
        Subtitle = "Most popular & best scripts for Grow a Garden",
    },

    ConfigurationSettings = {
        FolderName = "gag"
    },
})

local TabSection = Window:CreateTabSection("Main")

-- Main Tab
local Main = TabSection:CreateTab({
    Name = "Main",
    Icon = NebulaIcons:GetIcon("info", "Material"), -- Info tab
    Columns = 2,
}, "INDEX")

local Groupbox = Main:CreateGroupbox({
    Name = "Info",
    Column = 1,
}, "INDEX")

Groupbox:CreateParagraph({
    Name = "Keysystems",
    Content = "Some of these scripts may have key systems. You will be prompted to continue even if a key system is needed or included before the script loads.",
}, "INDEX")

Groupbox:CreateDivider()

Groupbox:CreateParagraph({
    Name = "Non-Functional Scripts",
    Content = "If any script isn’t working or risks getting you banned, report it immediately in our Discord.",
}, "INDEX")

Groupbox:CreateButton({
    Name = "Copy Discord Link",
    Icon = NebulaIcons:GetIcon("content_copy", "Material"), -- Clipboard icon
    Callback = function()
        setclipboard("discord link")
    end,
}, "INDEX")

local ChangelogBox = Main:CreateGroupbox({
    Name = "Changelogs",
    Column = 2,
}, "INDEX")

ChangelogBox:CreateParagraph({
    Name = "Latest Updates",
    Content = [[
v1.0 (Initial Release)
- Added Koronis
- Added ZapHub
- Added 20 universal & FE scripts
- Added changelogs section on main page
- Added credits
- Added search function
- Added safety disclaimers
- Added multiple help sections
- Fixed minor GUI bugs
]],
}, "INDEX")

local Divider = Groupbox:CreateDivider()

-- Game Scripts Tab
local Game = TabSection:CreateTab({
    Name = "Game Scripts",
    Icon = NebulaIcons:GetIcon("gamepad", "Material"), -- Guaranteed gaming icon
    Columns = 2,
}, "INDEX")

local Groupbox = Game:CreateGroupbox({
    Name = "Popular Scripts",
    Column = 1,
}, "INDEX")

-- ZapHub Script
Groupbox:CreateParagraph({
    Name = "ZapHub",
    Content = "ZapHub is keyless and compatible with all executors.",
}, "INDEX")

Groupbox:CreateButton({
    Name = "Load",
    Icon = NebulaIcons:GetIcon("bolt", "Material"), -- Lightning for speed
    Callback = function()
        Starlight:Notification({
            Title = "Fetching Script",
            Icon = NebulaIcons:GetIcon("sparkle", "Material"),
            Content = "Loading Grow a Garden module...",
        }, "INDEX")

        task.wait(2)
        Starlight:Destroy()
        loadstring(game:HttpGet("https://zaphub.xyz/Exec"))()
    end,
}, "INDEX")

Groupbox:CreateDivider()

-- Koronis Script
Groupbox:CreateParagraph({
    Name = "Koronis",
    Content = "Koronis is keyless but it does not support Solara or Xeno.",
}, "INDEX")

Groupbox:CreateButton({
    Name = "Load",
    Icon = NebulaIcons:GetIcon("bolt", "Material"), -- Rocket for launch
    Callback = function()
        Starlight:Notification({
            Title = "Fetching Script",
            Icon = NebulaIcons:GetIcon("sparkle", "Material"),
            Content = "Loading Grow a Garden module...",
        }, "INDEX")

        task.wait(2)
        Starlight:Destroy()
        loadstring(game:HttpGet("https://koronis.xyz/hub.lua"))()
    end,
}, "INDEX")

local Universal = TabSection:CreateTab({
    Name = "Universal Scripts",
    Icon = NebulaIcons:GetIcon("public", "Material"), -- Guaranteed gaming icon
    Columns = 2,
}, "INDEX")

local Groupbox = Universal:CreateGroupbox({
    Name = "Universal Scripts",
    Column = 1,
}, "INDEX")

local Button = Groupbox:CreateButton({
    Name = "Infinite Yield",
    Icon = NebulaIcons:GetIcon('check', 'Material'),
    Style = 2,
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
            
    end,
}, "INDEX")


