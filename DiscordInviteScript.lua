coroutine.wrap(function() -- in a different thread just in case invite module is broken
    local inviteModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
    inviteModule.Prompt({
	    name = "ˡᵒˡ",
	    invite = "https://discord.gg/ucxgy9r7ck",
    })
end)()
