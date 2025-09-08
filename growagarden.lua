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

local Main = TabSection:CreateTab({ Name = "Main", Icon = Icons:GetIcon('view_in_ar','Material'), Columns = 2 }, "INDEX")
local Game = TabSection:CreateTab({ Name = "Game Scripts", Icon = Icons:GetIcon('view_in_ar','Material'), Columns = 2 }, "INDEX")

local Groupbox = Game:CreateGroupbox({ Name = "Popular Scripts", Column = 1 }, "INDEX")

local Button = Groupbox:CreateButton({
    Name = "ZapHub",
    Icon = NebulaIcons:GetIcon('check', 'Material'),
    Callback = function()
          Starlight:Notification({
    Title = "Fetching Script",
    Icon = Icons:GetIcon('sparkle','Material'),
    Content = "Loading Grow a Garden module...",
}, "INDEX")
      wait(2)
        Starlight:Destroy()
loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()

    end,
}, "INDEX")

local Button = Groupbox:CreateButton({
    Name = "Koronis",
    Icon = NebulaIcons:GetIcon('check', 'Material'),
    Callback = function()
          Starlight:Notification({
    Title = "Fetching Script",
    Icon = Icons:GetIcon('sparkle','Material'),
    Content = "Loading Grow a Garden module...",
}, "INDEX")
      wait(2)
        Starlight:Destroy()
loadstring(game:HttpGet("https://koronis.xyz/hub.lua"))()

    end,
}, "INDEX")
local Label = Groupbox:CreateLabel({
    Name = "Koronis is not supported by Solara or Xeno."
}, "INDEX")
