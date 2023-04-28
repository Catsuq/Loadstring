-- Fixed Some error thats all.
-- Rewrite :) Now it fully works.
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
