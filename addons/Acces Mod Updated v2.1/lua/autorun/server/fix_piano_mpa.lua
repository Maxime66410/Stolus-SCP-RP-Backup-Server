hook.Add( "PostGamemodeLoaded", "_addon_fixes", function()
    -- Playable Piano
    local CanPlayerEnterVehicle = hook.GetTable()["CanPlayerEnterVehicle"]
    if CanPlayerEnterVehicle then
        local InstrumentChairHook = CanPlayerEnterVehicle["InstrumentChairHook"]
        if InstrumentChairHook then
            local old_InstrumentChairHook = InstrumentChairHook
            InstrumentChairHook = function( ply, seat )
                local inst = seat:GetOwner()
                if IsValid( inst ) and inst.Base == "gmt_instrument_base" then
                    return old_InstrumentChairHook( ply, seat )
                end
            end
            hook.Add( "CanPlayerEnterVehicle", "InstrumentChairHook", InstrumentChairHook )
        end
    end
    local PlayerUse = hook.GetTable()["PlayerUse"]
    if PlayerUse then
        local InstrumentChairModelHook = PlayerUse["InstrumentChairModelHook"]
        if InstrumentChairModelHook then
            local old_InstrumentChairModelHook = InstrumentChairModelHook
            InstrumentChairModelHook = function( ply, seat )
                local inst = seat:GetOwner()
                if IsValid( inst ) and inst.Base == "gmt_instrument_base" then
                    return old_InstrumentChairModelHook( ply, seat )
                end
            end
            hook.Add( "PlayerUse", "InstrumentChairModelHook", InstrumentChairModelHook )
        end
    end
end )