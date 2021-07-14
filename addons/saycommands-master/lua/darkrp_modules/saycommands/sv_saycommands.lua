--[[
	Author: Nyco
	Steam: http://steamcommunity.com/id/nycoditdylan
	Contact: ebadteam@gmail.com

	License:
	You are free to use this software however you like; however,
	you cannot redistribute this code in any way without consent
	from the original author, Nyco.
]]--

local emote = "** " -- Keeps people from faking outcome with /me command.

local function RollTheDice( ply, args )
	local DoSay = function( text )
		local roll = math.random( 0, 100 )
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " a fait un roll de " .. roll .. ".", "", 350 )
	end
	return args, DoSay
end
DarkRP.defineChatCommand( "roll", RollTheDice )

local function DoSay( ply, args )
	local DoSay = function( text )
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " montre son Passe De Citoyen.", "", 350 )
	end
	return args, DoSay
end
DarkRP.defineChatCommand( "apply", DoSay )

local function it(ply, args)
	if args == "" then
		DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
		return ""
	end

	local DoSay = function(text)
		if text == "" then
			DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
			return ""
		end
		if GAMEMODE.Config.alltalk then
			for _, target in pairs(player.GetAll()) do
				DarkRP.talkToPerson(target, team.GetColor(ply:Team()), ply:Nick() .. " " .. text)
			end
		else
			DarkRP.talkToRange(ply, ply:Nick() .. " " .. text, "", 250)
		end
	end
	return args, DoSay
end
DarkRP.defineChatCommand("it", it, 1.5)
