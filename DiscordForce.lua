-- Resolved some errors and fully rewrote the code to ensure it works as intended.
-- Set Discord_Invite to your desired invite code and run the script. It creates the 'Enhanced Software' folder in the 'Discord Invites' folder if it does not exist, and creates 'Enhanced Software.gg' file within it if it is not present.
-- Utilizes Synapse's 'syn.request' function if it is available, or 'http.request' if not.

local request = (syn and syn.request) or (http and http.request) or http_request
local HttpService = game:GetService("HttpService")

local Discord_Invite = "MzeSqBBpCh" -- Change this to your invite code thats all :]
local FolderName = "Enhanced Software"
local Folder2 = "/Discord Invites"
local FileName = "/Enhanced Software.gg"

if not isfolder(FolderName .. Folder2) then
  makefolder(FolderName .. Folder2)
end

if not isfile(FolderName .. Folder2 .. FileName) then
  if request then
    request({
      Url = 'http://127.0.0.1:6463/rpc?v=1',
      Method = 'POST',
      Headers = {
        ['Content-Type'] = 'application/json',
        Origin = 'https://discord.com'
      },
      Body = HttpService:JSONEncode({
        cmd = 'INVITE_BROWSER',
        args = {
          code = Discord_Invite
        },
        nonce = HttpService:GenerateGUID(false)
      })
    })
  else
    game:GetService('HttpService'):JSONDecode(game:HttpGet(('https://discordapp.com/api/v6/invite/' .. Discord_Invite)))
  end
  writefile(FolderName .. Folder2 .. FileName, "Enhanced Software")
end
