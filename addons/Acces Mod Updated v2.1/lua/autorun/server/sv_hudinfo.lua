util.AddNetworkString("NET_SCPButtons_Shows")

hook.Add("Think", "SCPButtons_CheckEyeTracePlayer_0001", function()
  for k1, v1 in pairs(player.GetAll()) do
  	if not IsValid(v1) then continue end

  	local TraceEntity = v1:GetEyeTrace().Entity

  	if TraceEntity:IsStvAcces() then
        local IdButton  = TraceEntity:MapCreationID()
        local ResultSQLtab = sql.Query("SELECT tab FROM SCP_BUTTON WHERE id = " .. sql.SQLStr(IdButton) )
        local ResultSQLid = sql.Query("SELECT id FROM SCP_BUTTON WHERE id = " .. sql.SQLStr(IdButton) )
        if ResultSQLid == false then print( sql.LastError() ) continue end
        if (ResultSQLid == nil) then return end
        local scptab = util.JSONToTable( ResultSQLtab[1]["tab"] ) 
          net.Start("NET_SCPButtons_Shows")
          net.WriteEntity(TraceEntity)
          net.WriteTable(scptab)
          net.Send(v1)

  	end
  end
end)
