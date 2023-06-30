local videoNui = false

function PlayVideo(video)
    SendNuiMessage(json.encode({ video = video }))
    SetNuiDisplay(true)
end

function StopVideo(focus)
    local nuiFocus = (focus) and true or false
    SendNuiMessage(json.encode({ stop = true }))
    if not nuiFocus then
        SetNuiDisplay(false)
    end
end

function SetNuiDisplay(status)
    SendNuiMessage(json.encode({ display = status }))
    SetNuiFocus(status, status)
    videoNui = status
end

RegisterNuiCallback('close', function()
    StopVideo()
end)

exports('PlayVideo', function(...)
    PlayVideo(...)
end)

exports('StopVideo', function(...)
    StopVideo(...)
end)

exports('SetNuiDisplay', function(...)
    SetNuiDisplay(...)
end)
