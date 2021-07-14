 
local function DisallowSpawnMenu( )
	if not LocalPlayer():IsAdmin() then
		return false
	end
end
 
hook.Add( "SpawnMenuOpen", "DisallowSpawnMenu", DisallowSpawnMenu)