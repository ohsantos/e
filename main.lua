-- RE WRITE


local whitelisted = game:HttpGet("https://raw.githubusercontent.com/Korabi-dev/roblox-crasher/main/whitelisted.json")
whitelisted = game:GetService("HttpService"):JSONDecode(whitelisted)
if not whitelisted then whitelisted = {users = {}} end

function notif(title, text, duration)
local options = {
Title = title,
Text = text,
Duration = duration,
}
game:GetService("StarterGui"):SetCore("SendNotification", options)
end

function hop()
local httpres = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .."/servers/Public?sortOrder=Asc&limit=100")
httpres = game:GetService("HttpService"):JSONDecode(httpres)
local servers = httpres.data
if not servers then warn("Servers couldnt be fetched") end
for i, server in pairs(servers) do 
    if server.id ~= game.JobId and server.playing ~= server.maxPlayers then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, server.id, game:GetService("Players").LocalPlayer)
    end 
end
end

function kill(msg)
    notif("Script Killed!", msg .. " | You will now be teleported to a different server", 10)
    "UR FAT ASS FUCKING MOM?":Kill()
end

for i , v in pairs(whitelisted.users) do 
    if game:GetService("Players"):FindFirstChild(v) or game:GetService("Players"):GetPlayerByUserId(v) then
    kill("A whitelisted player is in the server") 
    hop()
    end
end


function chat(msg)
    game:GetService("Players"):Chat(msg)
end


function grab()
    coroutine.wrap(function()
        while task.wait() do
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
end
end)
end

function crash() 
grab()
task.wait(1)
coroutine.wrap(function() 
    for i = 1, 5 do
    chat("gear me 94794847")
    end
    
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
                if v:IsA("Tool") then
                     game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
    end
    
    while task.wait() do 
    chat("size me 0000000000000000000.3")
    end
end)
end


notif("Kohl Smasher", "Loaded.", 5)
crash()
task.wait(5)
hop()
