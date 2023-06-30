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

RegisterCommand('PlayVideo', function(source, args)
    PlayVideo(args[1])
end, false)

RegisterCommand('StopVideo', function(source, args)
    StopVideo((args[1] ~= nil))
end, false)

RegisterCommand('SetNuiDisplay', function(source, args)
    SetNuiDisplay((args[1] == 'on') and true or false)
end, false)

exports('PlayVideo', function(...)
    PlayVideo(...)
end)

exports('StopVideo', function(...)
    StopVideo(...)
end)

exports('SetNuiDisplay', function(...)
    SetNuiDisplay(...)
end)
