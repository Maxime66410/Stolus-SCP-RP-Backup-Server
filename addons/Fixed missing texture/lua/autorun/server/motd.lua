AddCSLuaFile("autorun/client/motd.lua")

function OpenMOTDOnSpawn(ply)
	if string.Left(game.GetMap(),2) != "bb" then 
		ply:ConCommand("SCPM")
	end
end

hook.Add("PlayerInitialSpawn","MOTDSPawnHook",OpenMOTDOnSpawn)

function OpenChatCommand( ply, text, Team, death)
	local Explode = string.Explode(" ",text)
	if string.Left(game.GetMap(),2) != "bb" then 
		if text == "!motd" then
			ply:ConCommand("SCPM")
		elseif text == "!mode" then
			ply:ConCommand("OpenModeMenu")
		end
	end
end
hook.Add( "PlayerSay", "Start", OpenChatCommand)