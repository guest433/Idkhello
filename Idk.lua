print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")print ("error")
print ("error")
print ("error")print ("error")
print ("error")
print ("error")print ("error")
print ("error")
print ("error")print ("error")
print ("error")
print ("error")print ("error")
print ("error")print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")
print ("error")

error ("hello there's a warning incoming and your account got hack pls change your password)
warning ("..game.Players.Name
    
wait(2)
game.StarterGui:SetCore("SendNotification", {
    
    Title = "preparing script";

    Text = "";

})

Wait (3)
game.StarterGui:SetCore("SendNotification", {

    Title = "script loding";

    Text = "";

})

Wait (1)
game.StarterGui:SetCore("SendNotification", {

    Title = "script loaded can be movable";

    Text = "";


})

wait (1.6)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ItzmHub"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local guiFrame = Instance.new("Frame")
guiFrame.Name = "Itzm Hub Frame"
guiFrame.Size = UDim2.new(0.2, 0, 0.5, 0)
guiFrame.Position = UDim2.new(0.7, 0, 0.0, -guiFrame.Size.Y.Offset/2)
guiFrame.BackgroundTransparency = 1
guiFrame.BackgroundColor3 = Color3.new(0, 0, 0)
guiFrame.BorderSizePixel = 0
guiFrame.Parent = screenGui

local mainSection = Instance.new("Frame")
mainSection.Name = "MainSection"
mainSection.Size = UDim2.new(1, 0, 1, -50)
mainSection.BackgroundTransparency = 0.4
mainSection.Parent = guiFrame
mainSection.BackgroundColor3 = Color3.new (0, 0, 0)


local avatarLabel = Instance.new("ImageLabel")
avatarLabel.Name = "Avatar"
avatarLabel.Size = UDim2.new(0.5, 0, 0.7, 0)
avatarLabel.Position = UDim2.new(0.25, 0, 0, 0)
avatarLabel.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?userId=" .. tostring(game.Players.LocalPlayer.UserId) .. "&x=150&y=150"
avatarLabel.Parent = mainSection

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "Name"
nameLabel.Size = UDim2.new(1, 0, 0.1, 0)
nameLabel.Position = UDim2.new(0, 0, 0.5, 0)
nameLabel.BackgroundTransparency = 1
nameLabel.Font = Enum.Font.SourceSansBold
nameLabel.Text = "Name: " .. game.Players.LocalPlayer.Name
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.Parent = mainSection

local displayNameLabel = Instance.new("TextLabel")
displayNameLabel.Name = "DisplayName"
displayNameLabel.Size = UDim2.new(1, 0, 0.1, 0)
displayNameLabel.Position = UDim2.new(0, 0, 0.6, 0)
displayNameLabel.BackgroundTransparency = 1
displayNameLabel.Font = Enum.Font.SourceSansBold
displayNameLabel.Text = "Display Name: " .. game.Players.LocalPlayer.DisplayName
displayNameLabel.TextColor3 = Color3.new(1, 1, 1)
displayNameLabel.TextScaled = true
displayNameLabel.Parent = mainSection

local idLabel = Instance.new("TextLabel")
idLabel.Name = "ID"
idLabel.Size = UDim2.new(1, 0, 0.1, 0)
idLabel.Position = UDim2.new(0, 0, 0.7, 0)
idLabel.BackgroundTransparency = 1
idLabel.Font = Enum.Font.SourceSansBold
idLabel.Text = "ID: " .. game.Players.LocalPlayer.UserId
idLabel.TextColor3 = Color3.new(1, 1, 1)
idLabel.TextScaled = true
idLabel.Parent = mainSection

local fpsLabel = Instance.new("TextLabel")
fpsLabel.Name = "FPS"
fpsLabel.Size = UDim2.new(1, 0, 0.1, 0)
fpsLabel.Position = UDim2.new(0, 0, 0.8, 0)
fpsLabel.BackgroundTransparency = 1
fpsLabel.Font = Enum.Font.SourceSansBold
fpsLabel.Text = "FPS: " .. math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.TextScaled = true
fpsLabel.Parent = mainSection

local playerCountLabel = Instance.new("TextLabel")
playerCountLabel.Name = "PlayerCount"
playerCountLabel.Size = UDim2.new(1, 0, 0.1, 0)
playerCountLabel.Position = UDim2.new(0, 0, 0.9, 0)
playerCountLabel.BackgroundTransparency = 1
playerCountLabel.Font = Enum.Font.SourceSansBold
playerCountLabel.Text = "Players: " .. #game.Players:GetPlayers()
playerCountLabel.TextColor3 = Color3.new(1, 1, 1)
playerCountLabel.TextScaled = true
playerCountLabel.Parent = mainSection

local mainButton = Instance.new("TextButton")
mainButton.Name = "MainButton"
mainButton.Text = "Main"
mainButton.Font = Enum.Font.SourceSansBold
mainButton.TextColor3 = Color3.new(1, 1, 1)
mainButton.TextScaled = true
mainButton.Parent = guiFrame

local function showSection(section)
    for _, child in ipairs(guiFrame:GetChildren()) do
        if child:IsA("Frame") and child ~= mainSection then
            child.Visible = false
        end
    end
    section.Visible = true
end

showSection(mainSection)

mainButton.MouseButton1Click:Connect(function()
    showSection(mainSection)
end)

if game:GetService("UserInputService").TouchEnabled then
    local touchStartPos
    local guiStartPos

    guiFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            touchStartPos = input.Position
            guiStartPos = guiFrame.Position
        end
    end)

    guiFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            local touchDelta = input.Position - touchStartPos
            guiFrame.Position = guiStartPos + UDim2.new(0, touchDelta.X, 0, touchDelta.Y)
        end
    end)
end
    
Wait (1)
game.StarterGui:SetCore("SendNotification", {

    Title = "preparing gui";

    Text = "";


})

Wait (1)
game.StarterGui:SetCore("SendNotification", {

    Title = "gui loading";

    Text = "";


})
Wait (1)

game.StarterGui:SetCore("SendNotification", {

    Title = "gui has an error pls wait";

    Text = "";


})

Wait (5)
game.StarterGui:SetCore("SendNotification", {

    Title = "2nd error pls wait";

    Text = "";


})

Wait (5)
game.StarterGui:SetCore("SendNotification", {

    Title = "........ your still here";

    Text = "";


})

Wait (1.4)
game.StarterGui:SetCore("SendNotification", {

    Title = "pls wait 1.5 sec";

    Text = "";

})

Wait (1.5)
game.StarterGui:SetCore("SendNotification", {

    Title = "hi";

    Text = "script loaded";

  })
    
wait (1.5)
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("itzm hub", "Synapse")

wait(1.9)
local Home = Window:NewTab("Home")
local HomeSection = Home:NewSection("Home")

local Player = game.Players.LocalPlayer

local playerNameLabel = HomeSection:NewLabel("hello: " .. Player.Name)
local displayNameLabel = HomeSection:NewLabel("Display Name: " .. Player.DisplayName)
local playerIdLabel = HomeSection:NewLabel("Player ID: " .. Player.UserId)

game:GetService("RunService").Heartbeat:Connect(updatePlayerInfo)

wait(2.4)
local Script= Window:NewTab("Script")
local ScriptSection = Script:NewSection("Script")

local games = Window:NewTab("games")
local gamesSection = games:NewSection("games")

wait(1.9)
gamesSection:NewButton("Ability Wars", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/guest433/Smth/main/Yes'))()
end)

print(successfullylodedthescript)

local gamesSectionB = games:NewSection("B")
gamesSectionB:NewButton("Blox Fruit HOHO Hub", "", function()
    _G.HohoVersion = "v3"
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)
wait(3.8)
gamesSectionB:NewButton("Uranium Hub", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua"))()
end)
wait(3.8)
gamesSectionB:NewButton("Pado Hub", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/REWzaKunGz1/premium/main/PadoHub'))()
end)
wait(1.8)
gamesSectionB:NewButton("IDK", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/AXCScript/KayMobile/main/Script-Loader'))()
end)

wait(1.6)
local gamesSectionC = games:NewSection("C")

local gamesSectionD = games:NewSection("D")
gamesSectionD:NewButton("Da Hood", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
end)

local gamesSectionE = games:NewSection("E")

local gamesSectionF = games:NewSection("F")

local gamesSectionG = games:NewSection("G")

local gamesSectionH = games:NewSection("H")

local gamesSectionI = games:NewSection("I")

local gamesSectionJ = games:NewSection("J")

local gamesSectionK = games:NewSection("K")

local gamesSectionL = games:NewSection("L")

local gamesSectionM = games:NewSection("M")

local gamesSectionN = games:NewSection("N")

local gamesSectionO = games:NewSection("O")

local gamesSectionP = games:NewSection("P")
gamesSectionP:NewButton("Prison Life", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Script'))() 
end)

local gamesSectionQ = games:NewSection("Q")

local gamesSectionR = games:NewSection("R")

local gamesSectionS = games:NewSection("S")
gamesSectionS:NewButton("Slap Battles Not Verified", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
end)

gamesSectionS:NewButton("Slap Battles Second Script", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles"))()
end)

print("Code has been executed successfully!")

local gamesSection = games:NewSection("U")
local gamesSection = games:NewSection("V")
local gamesSection = games:NewSection("W") 
local gamesSection = games:NewSection("X")
local gamesSection = games:NewSection("Y")
local gamesSection = games:NewSection("Z")

local Script2= Window:NewTab("hubs")
local Script2Section = Script2:NewSection("hubs")

Script2Section:NewButton("gigachad hub", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LolPrivate/Side/main/Moonsec%20V3"))()
end)
wait(2.4)
Script2Section:NewButton("version hub", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/wKc5r6CM"))()
end)
wait(2.3)
local Script3= Window:NewTab("player")
local Script3Section = Script3:NewSection("player")

Script3Section:NewSlider("walkspeed", "", 500, 16, function(s)   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Script3Section:NewSlider("JumpPower", "", 500, 50, function(s)  game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local function rejoinPlayer(player)
    local success, errorMessage = pcall(function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
    end)

    if not success then
        warn("Failed to rejoin player:", errorMessage)
    end
end
Script3Section:NewButton("Rejoin", "Rejoins the game", function()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.UserId > 0 then
            rejoinPlayer(player)
        end
    end
end)

Script3Section:NewButton("Serverhop", "", function()
    
    local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))()
    module:Teleport(game.PlaceId)
end)
Script3Section:NewButton("Less Server", "", function()
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"

    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    
    local function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return Http:JSONDecode(Raw)
    end
    
    local Server, Next
    repeat
        local Servers = ListServers(Next)
        Server = Servers.data[1]
        Next = Servers.nextPageCursor
    until Server
    
    TPS:TeleportToPlaceInstance(_place, Server.id, game.Players.LocalPlayer)
end)

wait(3.5)
Script3Section:NewButton("noclip made by me itzm", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/guest433/Idkhello/main/noclip.lua"))()
end)
-- tab
wait(3.4)
local Tab3= Window:NewTab("make your own hub")
local Tab3Section = Tab3:NewSection("Ismth")
wait(1.3)
Tab3Section:NewButton("simple spy aka remote spy", "remote spy ofc", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
end)

wait(1.6)
Tab3Section:NewButton("dark dex", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)
wait(3.4)
local Script3= Window:NewTab("others")
local Script3Section = Script3:NewSection("others")

Script3Section:NewButton("keyboard", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

ScriptSection:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)
