
-----------------------------------------------------

-----------------------------------------------------
if SERVER then
AddCSLuaFile()
hook.Add("PlayerDeath", "scpbite096", function(ply)

ply:SetNWBool("seenby096", false)

	if ply:Team() == TEAM_SCP096 then
			if timer.Exists("096chaseplayer"..ply:SteamID()) then timer.Destroy("096chaseplayer"..ply:SteamID()) end
			if timer.Exists("096startplayer"..ply:SteamID()) then timer.Destroy("096startplayer"..ply:SteamID()) end
			if timer.Exists("096idle"..ply:SteamID()) then timer.Destroy("096idle"..ply:SteamID()) end
		ply:StopSound("096alert")
		ply:StopSound("096chase")
		ply:StopSound("096start")
		ply:StopSound("096idle")
	end
end)

hook.Add("PlayerDisconnected", "scpbitejeej096", function(ply)

ply:SetNWBool("seenby096", false)

	if ply:Team() == TEAM_SCP096 then
			if timer.Exists("096chaseplayer"..ply:SteamID()) then timer.Destroy("096chaseplayer"..ply:SteamID()) end
			if timer.Exists("096startplayer"..ply:SteamID()) then timer.Destroy("096startplayer"..ply:SteamID()) end
			if timer.Exists("096idle"..ply:SteamID()) then timer.Destroy("096idle"..ply:SteamID()) end
		ply:StopSound("096alert")
		ply:StopSound("096chase")
		ply:StopSound("096start")
		ply:StopSound("096idle")
	end
end)

hook.Add("PlayerSpawn", "scpbitejeejrp096", function(ply)
ply:SetNWBool("seenby096", false)
			if timer.Exists("096chaseplayer"..ply:SteamID()) then timer.Destroy("096chaseplayer"..ply:SteamID()) end
			if timer.Exists("096startplayer"..ply:SteamID()) then timer.Destroy("096startplayer"..ply:SteamID()) end
			if timer.Exists("096idle"..ply:SteamID()) then timer.Destroy("096idle"..ply:SteamID()) end
		ply:StopSound("096alert")
		ply:StopSound("096chase")
		ply:StopSound("096start")
		ply:StopSound("096idle") 
end)

concommand.Add("096omni", function(ply)
	if !ply:IsSuperAdmin() then return end
		for k,v in pairs(player.GetAll()) do
			if v:Team() == TEAM_SCP096 then continue end
					v:PrintMessage(HUD_PRINTTALK, "Vous lavez vu... vous ne lui echapperez pas...")
					v:ConCommand("play shaklin/scp/096/start.mp3")
					v:SetNWBool("seenby096", true)
		end
end)

concommand.Add("096unomni", function(ply)
	if !ply:IsSuperAdmin() then return end
		for k,v in pairs(player.GetAll()) do

					v:SetNWBool("seenby096", false)
		end
end)

hook.Add("Think","target096",function()
    
    for _,ply in ipairs(player.GetAll()) do
		if ply:GetNWBool("seenby096") then continue end
		trace = ply:GetEyeTrace()
		if ply:Team() == TEAM_SCP035 or ply:Team() == TEAM_SCP049 or ply:Team() == TEAM_SCP079 or ply:Team() == TEAM_SCP173 or ply:Team() == TEAM_SCP006FR or ply:Team() == TEAM_SCP008 or ply:Team() == TEAM_SCP087 or ply:Team() == TEAM_SCP1048 
		or ply:Team() == TEAM_SCP106 or ply:Team() == TEAM_SCP131A or ply:Team() == TEAM_SCP131B or ply:Team() == TEAM_SCP513 or ply:Team() == TEAM_SCP666 or ply:Team() == TEAM_SCP682 or ply:Team() == TEAM_SCP895 or ply:Team() == TEAM_SCP999 or ply:Team() == TEAM_SCP029 or ply:Team() == TEAM_IA or ply:Team() == TEAM_ROBOT or ply:Team() == TEAM_SCP082 or ply:Team() == TEAM_CHIEN or ply:Team() == TEAM_BEBE or ply:Team() == TEAM_SOMMEIL or ply:Team() == TEAM_BIGHDKD or ply:Team() == TEAM_ADMIN or ply:Team() == TEAM_OMBRE or ply:Team() == TEAM_SCP860 or ply:Team() == TEAM_SCP202
		then continue end
				if IsValid(trace.Entity) and trace.Entity:IsPlayer() and ply:Alive() and trace.Entity:Team() == TEAM_SCP096 then
					ply:SetNWBool("seenby096", true)
					ply:PrintMessage(HUD_PRINTTALK, "Vous lavez vu... vous ne lui echapperez pas...")
					ply:ConCommand("play shaklin/scp/096/start.mp3")
					trace.Entity:ConCommand("say /actif")
					trace.Entity:PrintMessage(HUD_PRINTTALK, ply:Name().." vous a vu...")
				end
				
	end	
end)

end

if CLIENT then

hook.Add("PreDrawOpaqueRenderables", "drawlines096", function()
	if LocalPlayer():Team() == TEAM_SCP096 then
		for k,v in pairs(player.GetAll()) do
			if v:GetNWBool("seenby096") then  
				
				render.DrawLine( LocalPlayer():GetPos() + Vector( 0, 0,  0.001 ), v:EyePos() + Vector( 0, 0,  0.001 ), Color(255,0,0,255), true)
				render.DrawLine( LocalPlayer():GetPos() + Vector( 0,  0.001, 0 ), v:EyePos() + Vector( 0,  0.001, 0 ), Color(255,0,0,255), true)
				render.DrawLine( LocalPlayer():GetPos() + Vector(  0.001, 0, 0 ), v:EyePos() + Vector(  0.001, 0, 0 ), Color(255,0,0,255), true)

			end
		end
	end
end)

end







