if syn then
syn.request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = "CODE-HERE"
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
else 
    setclipboard("https://discord.gg/SrhXcg4B27")
    game.StarterGui:SetCore("SendNotification", {
	Title = "Script"; 
	Text = "Discord Link Copied";
	Duration = 3; 
})

end
