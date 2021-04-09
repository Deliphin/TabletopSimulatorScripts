--If you want items to be visible regardless of these scripted hidden zones, give them the tag 'AlwaysVisible'. This does not apply to vanilla hidden zones, however.
--Remove the colours you want to able to see through the hidden zone.
players    = {"White","Brown","Red","Orange","Yellow","Green","Teal","Blue","Purple","Pink","Grey"}
zoneGUID   = "a8cf04"

function onObjectEnterScriptingZone(zone, obj) --Object enters scripted zone
    if zone.getGUID() == zoneGUID then
        if obj.hasTag("AlwaysVisible") == false then --Does obj not have AlwaysVisible tag
            obj.setInvisibleTo(players) --Make invisible to 'players' when entering
        end
    end
end

function onObjectLeaveScriptingZone(zone, obj) --Object leaves scripted zone
    if zone.getGUID() == zoneGUID then
        obj.setInvisibleTo({}) --Make not invisible to 'players' when leaving
    end
end
