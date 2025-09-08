local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()  
local NebulaIcons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

local Window = Starlight:CreateWindow({
    Name = "99 Nights in the Forest",
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

local Game = TabSection:CreateTab({
    Name = "Game Scripts",
    Icon = NebulaIcons:GetIcon("view_in_ar", "Material"),
    Columns = 2,
}, "INDEX")

local Groupbox = Game:CreateGroupbox({
    Name = "Popular Scripts",
    Column = 1,
}, "INDEX")

Groupbox:CreateButton({
    Name = "ZapHub",
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

Groupbox:CreateButton({
    Name = "Koronis",
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

local Paragraph = Groupbox:CreateParagraph({
    Name = "Important info",
    Content = "Koronis does not support Solara or Xeno.",
}, "INDEX")
