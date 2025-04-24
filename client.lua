RegisterNetEvent("breathalyzer:result")
AddEventHandler("breathalyzer:result", function(targetName, bac)
    TriggerEvent("chat:addMessage", {
        color = { 255, 255, 0 },
        args = {
            "^4[Breathalyzer]",
            targetName .. "'s BAC is: " .. bac .. "%"
        }
    })
end)
