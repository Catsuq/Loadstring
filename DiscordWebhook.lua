local username = game:GetService("Players").LocalPlayer.Name
local executor = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or fluxus and "Fluxus" or KRNL_LOADED and "Krnl or Comet" or "Free or unkown executor"
local HttpService = game:GetService("HttpService")
local webhook_url = "https://discord.com/api/webhooks/1120229704205611011/2ba9qXjDmywbaKgko7VCyZFVR8pMvofBqY9zwmUmdVosB32iNmBewuhTxqhdyKzWLT9B"
local options = http_request or syn.request or fluxus.request
function sendMessage(msg)
   local payload = {
       ["content"] = msg
   }
   local headers = {
           ["content-type"] = "application/json"
   }
   
   local request_body_encoded = HttpService:JSONEncode(payload)
   local request_payload = {Url=webhook_url, Body=request_body_encoded, Method="POST", Headers=headers}
   options(request_payload)
end

sendMessage("bruh”´ test EXECUTE bruh”´ `INFO: { 2.2} / USER: " ..username .. " / EXECUTOR: " ..executor .. " ` <@&773952016036790272> ")
