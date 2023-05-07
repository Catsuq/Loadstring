-- Replace this with your own webhook URL
local webhookUrl = "https://discord.com/api/webhooks/your_webhook_url_here"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Tab = Window:NewTab("Bug Reporting")
local Section = Tab:NewSection("Report Bug")

-- Add a textbox to the section for users to enter bug reports
local bugTextbox = Section:NewTextBox("Bug Report", "Enter details of the bug you found here", function(txt)
    -- Create a JSON payload for the bug report
    local payload = {
        ["content"] = "**New Bug Report**\n\n" .. txt
    }

    -- Send the bug report to the webhook
    syn.request({
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(payload)
    })
end)
