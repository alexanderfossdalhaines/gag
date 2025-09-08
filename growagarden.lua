local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()  
local NebulaIcons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

local Window = Starlight:CreateWindow({
    Name = "Grow a Garden",
    Subtitle = "v1.0",
    Icon = 123456789,

    LoadingSettings = {
        Title = "Grow a Garden",
        Subtitle = "Most popular & best scripts for Grow a Garden",
    },

    ConfigurationSettings = {
        FolderName = "gag"
    },
})

local TabSection = Window:CreateTabSection("Tab Section")

local Main = TabSection:CreateTab({
    Name = "Main",
    Icon = NebulaIcons:GetIcon("view_in_ar", "Material"),
    Columns = 2,
}, "INDEX")

local Groupbox = Main:CreateGroupbox({
    Name = "Info",
    Column = 1,
}, "INDEX")

local Paragraph = Groupbox:CreateParagraph({
    Name = "Keysystems",
    Content = "Some of these scripts may have key systems. You will be prompted to continue even if a key system is needed or included before the script loads.",

}, "INDEX")

local Divider = Groupbox:CreateDivider()

local Paragraph = Groupbox:CreateParagraph({
    Name = "Non-Functional Scripts",
    Content = "If any script isn’t working or risks getting you banned, report it immediately in our Discord.",

}, "INDEX")

local Button = Groupbox:CreateButton({
    Name = "Copy Discord Link",
    Icon = NebulaIcons:GetIcon('check', 'Material'),
    Callback = function()
setclipboard("discord link")
    end,
}, "INDEX")


local Game = TabSection:CreateTab({
    Name = "Game Scripts",
    Icon = NebulaIcons:GetIcon("view_in_ar", "Material"),
    Columns = 2,
}, "INDEX")

local Groupbox = Game:CreateGroupbox({
    Name = "Popular Scripts",
    Column = 1,
}, "INDEX")


local Paragraph = Groupbox:CreateParagraph({
    Name = "ZapHub",
    Content = "ZapHub is keyless and compatible with all executors.",
}, "INDEX")

Groupbox:CreateButton({
    Name = "Load",
    Icon = NebulaIcons:GetIcon("check", "Material"),
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

local Divider = Groupbox:CreateDivider()

-- Info Paragraph
local Paragraph = Groupbox:CreateParagraph({
    Name = "Koronis",
    Content = "Koronis is keyless but it does not support Solara or Xeno.",
}, "INDEX")

Groupbox:CreateButton({
    Name = "Load",
    Icon = NebulaIcons:GetIcon("check", "Material"),
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

