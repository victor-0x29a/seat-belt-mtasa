



sound = {}
function manageAlert(active)
    if active then 
        sound = playSound("effects/alert.mp3", true)
    else 
        stopSound(sound)
    end
    
end

addEvent("victor:cinto:sound", true)
addEventHandler("victor:cinto:sound", getRootElement(), function(type)
    if type == 1 then
        manageAlert(false)
        playSound("effects/lock.mp3")
    elseif type == 2 then
        manageAlert(true)
        playSound("effects/open.mp3")
    elseif type == 3 then
        manageAlert(false)
    elseif type == 4 then
        manageAlert(true)
    end
end)










