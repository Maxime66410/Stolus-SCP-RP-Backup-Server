util.AddNetworkString( "scp_derma_starvox_001" )
util.AddNetworkString( "scp_controle_starvox_001" )

local MapGame = game.GetMap()

if not sql.TableExists( "SCP_BUTTON" ) then
  sql.Query( "CREATE TABLE SCP_BUTTON ( `id` INT NOT NULL, `tab` STRING NOT NULL  )" )
  print("Table SQL 'SCP_BUTTON' Created")
end

if sql.TableExists( "SCP_BUTTON" ) then
	local ResultSQLtab1 = sql.Query("SELECT tab FROM SCP_BUTTON")
	if ResultSQLtab1 == nil then
		sql.Query( "CREATE TABLE SCP_BUTTON ( `id` INT NOT NULL, `tab` STRING NOT NULL  )" )
  		print("Table SQL 'SCP_BUTTON' Created")
  	end
end

net.Receive( "scp_controle_starvox_001", function( len, ply )
	if not IsValid(ply) or not ply:IsSuperAdmin() then return end
    
	local SCPTab = net.ReadTable()
    local GetControle = net.ReadString()

	if string.lower(GetControle) == "save" then
		if SCPTab["Acces"] == "" or SCPTab["Nom"] == "" then
	      print("nil")
	      return
	    end
		local checkid = sql.Query("SELECT * FROM SCP_BUTTON WHERE id = " .. sql.SQLStr(id) )
      
		if checkid == false then
    	 error("Error SQL SCP_BUTTON bug")
			return
    	end
      
		if checkid == nil then
			local SCPTabJson = util.TableToJSON( SCPTab )
			print("Save" .. SCPTab["ID"] )
			sql.Query( "INSERT INTO SCP_BUTTON ( 'id','tab' ) VALUES ("
				..sql.SQLStr(SCPTab["ID"]) ..","
				..sql.SQLStr(SCPTabJson) ..")" )
			return
		end
	elseif GetControle == "delete" then
		print("Delete")
		sql.Query("DELETE FROM SCP_BUTTON WHERE id = " .. sql.SQLStr(SCPTab["ID"]))
	end
end)
