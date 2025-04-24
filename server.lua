RegisterCommand("breathalyze", function(source, args)
    local targetId = tonumber(args[1])
    if not targetId or not GetPlayerName(targetId) then
        TriggerClientEvent("chat:addMessage", source, {
            color = { 255, 0, 0 },
            args = { "^1[Breathalyzer]", "Invalid ID!" }
        })
        return
    end

    local bac = string.format("%.2f", math.random(0, 20) / 10) -- Simulate 0.0% to 2.0%
    local targetName = GetPlayerName(targetId)

    TriggerClientEvent("breathalyzer:result", source, targetName, bac)
end)
