local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()
local Icons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

-- Notifications
Starlight:Notification({
    Title = "Initializing...",
    Icon = Icons:GetIcon("sparkle", "Material"),
    Content = "Loading Starlight interface.",
}, "INDEX")

wait(2)

Starlight:Notification({
    Title = "Loading Modules...",
    Icon = Icons:GetIcon("sparkle", "Material"),
    Content = "Fetching required scripts and libraries.",
}, "INDEX")

wait(2)

Starlight:Notification({
    Title = "Applying Settings...",
    Icon = Icons:GetIcon("sparkle", "Material"),
    Content = "Applying user configuration.",
}, "INDEX")

wait(2)

Starlight:Notification({
    Title = "Preparing UI...",
    Icon = Icons:GetIcon("sparkle", "Material"),
    Content = "Setting up tabs and scripts.",
}, "INDEX")

wait(3)

Starlight:Notification({
    Title = "Ready!",
    Icon = Icons:GetIcon("check", "Material"),
    Content = "Starlight is fully loaded.",
}, "INDEX")

wait(1)

-- Window
local Window = Starlight:CreateWindow({
    Name = "Starlight",
    Subtitle = "v1.0",
    Icon = Icons:GetIcon("star_half", "Material"),
    LoadingSettings = { 
        Title = "Starlight", 
        Subtitle = "Welcome to Starlight" 
    },
    ConfigurationSettings = { 
        FolderName = "starlight" 
    },
})

-- Tabs
local TabSection = Window:CreateTabSection("Main")

local MainTab = TabSection:CreateTab({
    Name = "Main",
    Icon = Icons:GetIcon("dashboard", "Material"),
    Columns = 2,
}, "INDEX")

local GameTab = TabSection:CreateTab({
    Name = "Game Scripts",
    Icon = Icons:GetIcon("sports_esports", "Material"),
    Columns = 2,
}, "INDEX")

local UniversalTab = TabSection:CreateTab({
    Name = "Universal Scripts",
    Icon = Icons:GetIcon("public", "Material"),
    Columns = 2,
}, "INDEX")

-- Groupboxes
local PopularGamesBox = GameTab:CreateGroupbox({
    Name = "Popular Games",
    Column = 1,
}, "INDEX")

PopularGamesBox:CreateButton({
    Name = "Grow a Garden",
    Icon = Icons:GetIcon("eco", "Material"),
    Callback = function()
        Starlight:Notification({
            Title = "Fetching...",
            Icon = Icons:GetIcon("sparkle", "Material"),
            Content = "Grow a Garden script.",
        }, "INDEX")

        task.wait(2)

        if Window and Window.Destroy then
            Window:Destroy()
        elseif Window and Window.Close then
            Window:Close()
        end

        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/alexanderfossdalhaines/gag/refs/heads/main/growagarden.lua"))()
        end)

        if not success then
            warn("Failed to load Grow a Garden script:", err)
        end
    end,
}, "INDEX")

-- Info Groupbox
local InfoBox = MainTab:CreateGroupbox({
    Name = "Info",
    Column = 1,
}, "INDEX")

InfoBox:CreateParagraph({
    Name = "About",
    Content = "Starlight is a script hub striving to be the top choice. We focus on quality over quantity. All scripts are tested and safe, and any key systems are clearly indicated.",
}, "INDEX")

InfoBox:CreateDivider()

local execName = identifyexecutor and identifyexecutor() or "Unknown"

InfoBox:CreateParagraph({
    Name = "Notice",
    Content = "Some scripts may not work with " .. execName,
}, "INDEX")

InfoBox:CreateDivider()

InfoBox:CreateParagraph({
    Name = "News",
    Content = [[
Every update, 5 new games will be added—maybe more if I’m feeling bored. You can suggest games to add in our Discord server.
]],
}, "INDEX")

InfoBox:CreateButton({
    Name = "Copy Discord Link",
    Icon = Icons:GetIcon("content_copy", "Material"),
    Style = 1,
    Callback = function()
        setclipboard("discord link")
    end,
}, "INDEX")

-- Changelogs Groupbox
local ChangelogBox = MainTab:CreateGroupbox({
    Name = "Changelogs",
    Column = 2,
}, "INDEX")

ChangelogBox:CreateParagraph({
    Name = "Latest Updates",
    Content = [[
v1.0 (Initial Release)
- Added support for 50 games
- Added 20 universal & FE scripts
- Auto-detect executor support for scripts
- Added configuration settings
- Added news section on main page
- Added credits
- Added search function
- Added safety disclaimers
- Added multiple help sections
- Fixed minor GUI bugs
]],
}, "INDEX")

