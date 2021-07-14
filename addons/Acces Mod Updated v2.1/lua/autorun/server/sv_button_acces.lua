hook.Add( "PlayerUse", "starvox_scp_button002", function( ply, ent )
        local IdButton     = ent:MapCreationID()
        local ResultSQLtab = sql.Query("SELECT tab FROM SCP_BUTTON WHERE id = " .. sql.SQLStr(IdButton) )
   		local ResultSQLtab1 = sql.Query("SELECT tab FROM SCP_BUTTON")
    if not IsValid(ent) or not ent:IsStvAcces() then return end
    if ply.SCP_Buttons_Next and ply.SCP_Buttons_Next > CurTime() then return false end

        ply.SCP_Buttons_Next = CurTime() + 1
    
    if ResultSQLtab == nil then return end
        
        local scptab 		= util.JSONToTable( ResultSQLtab[1]["tab"] )
        local AccesToString = tostring(scptab["Arme"])
        local AccesToLower  = string.lower( AccesToString )
    
    if checkweaponacces[ply:GetActiveWeapon():GetClass()] and checkweaponacces[ply:GetActiveWeapon():GetClass()].armecheck[tonumber(scptab["Acces"])] then 
            ply:ChatPrint("[Systeme]Access authorize")
        else
            ply:ChatPrint("[Systeme]Acces denied") 
        return false 
    end

end)


