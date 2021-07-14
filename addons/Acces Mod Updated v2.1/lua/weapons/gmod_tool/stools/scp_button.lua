TOOL.Category = "Acces Mod"
TOOL.Name = "Acces Mod"
TOOL.Command = nil
TOOL.ConfigName = "Acces Mod"

TOOL.Information = {
	{ name = "left" }
}
if ( CLIENT ) then
	language.Add( "Tool.scp_button.name", "Acces Mod V0.3" )
	language.Add( "Tool.scp_button.desc", "Used to configure buttons or door for access [Superadmin only]" )
	language.Add( "Tool.scp_button.left", "Click on a button or door to configure. You must be able to use the toolgun on the buttons or doors" )
end

 local MapGame = game.GetMap()
function TOOL:LeftClick( trace )
	if SERVER then
		if not IsValid(self:GetOwner()) or not self:GetOwner():IsSuperAdmin() then return end
		GetClasseStv	=	trace.Entity
		if not IsValid(trace.Entity) or not GetClasseStv:IsStvAcces() then return end
		local IdButton = trace.Entity:MapCreationID()
		local checktab  = sql.Query("SELECT * FROM SCP_BUTTON WHERE id = " .. sql.SQLStr(IdButton) )
		if checktab == false then
			error("Error SQL SCP_BUTTON bug")
	    return
	  end
		if checktab == nil then
				local SCP_Tab_save = {
				ID = IdButton,
				Map = MapGame,
				Acces = "",
				Nom = ""}
			net.Start("scp_derma_starvox_001")
			net.WriteTable(SCP_Tab_save)	
			net.WriteString("")
			net.Send(self:GetOwner())
	    return
		end
	local SCP_Tab_save = util.JSONToTable( checktab[1]["tab"] ) 
	PrintTable(SCP_Tab_save)

	 net.Start("scp_derma_starvox_001")
	 net.WriteTable(SCP_Tab_save)
	 net.Send(self:GetOwner())

	 end

	 return true
end
 
function TOOL:RightClick( trace )
end

function TOOL.BuildCPanel(panel)

end
