local function randstr_func(l, u)
	
	local randstr = tostring(string.char(math.random(97, 122)))
	local randlen = math.random(l, u)
	
	for j = 1, randlen, 1 do
		local rchr = math.random(0, 2)
		
		if (rchr == 0) then randstr = randstr .. tostring(string.char(math.random(48, 57)))
		elseif (rchr == 1) then randstr = randstr .. tostring(string.char(math.random(65, 90)))
		elseif (rchr == 2) then randstr = randstr .. tostring(string.char(math.random(97, 122)))
		end

	end

	return randstr
end

local net_name = randstr_func(10, 15)
while(util.NetworkStringToID(net_name) ~= 0) do
	net_name = randstr_func(10, 15)
end
util.AddNetworkString(net_name)

local external_value = randstr_func(5, 10)
local require_value = randstr_func(5, 10)

net.Receive(net_name, function(len, ply)
	file.Append("ae_global_func_log.txt", "Time and date: [" .. tostring(os.date("%H:%M:%S - %d/%m/%Y", os.time())) .. "] SteamID: [" .. tostring(ply:SteamID()) .. "]" .. "\r\n" .. "\r\n")
	ply:Ban(30, false)
	ply:Kick([[Global "external" function detected.]])
end)

CreateConVar("external", external_value, { FCVAR_CHEAT, FCVAR_PROTECTED, FCVAR_NOT_CONNECTED, FCVAR_USERINFO, FCVAR_UNREGISTERED, FCVAR_REPLICATED, FCVAR_UNLOGGED, FCVAR_DONTRECORD, FCVAR_SPONLY })
CreateConVar("require", require_value, { FCVAR_CHEAT, FCVAR_PROTECTED, FCVAR_NOT_CONNECTED, FCVAR_USERINFO, FCVAR_UNREGISTERED, FCVAR_REPLICATED, FCVAR_UNLOGGED, FCVAR_DONTRECORD, FCVAR_SPONLY })

if(not file.Exists("ae_no_response_log.txt", "DATA")) then
	file.Append("ae_no_response_log.txt", [[This file contains logs related to incorrect "external"/"require" cvar query response. (Player was kicked)]] .. "\r\n" .. "\r\n")
end

if(not file.Exists("ae_global_func_log.txt", "DATA")) then
	file.Append("ae_global_func_log.txt", [[This file contains logs related to external global function detection. (Player was banned for 30 minutes)]] .. "\r\n" .. "\r\n")
end

local function InitAE(ply)
	if(not ply:IsBot()) then
		ply:SendLua([[CreateConVar("external","]]..external_value..[[",{FCVAR_CHEAT,FCVAR_PROTECTED,FCVAR_NOT_CONNECTED,FCVAR_USERINFO,FCVAR_UNREGISTERED,FCVAR_REPLICATED,FCVAR_UNLOGGED,FCVAR_DONTRECORD,FCVAR_SPONLY});vgui.GetControlTable("DHTML").ConsoleMessage=function() end]])
		ply:SendLua([[CreateConVar("require","]]..require_value..[[",{FCVAR_CHEAT,FCVAR_PROTECTED,FCVAR_NOT_CONNECTED,FCVAR_USERINFO,FCVAR_UNREGISTERED,FCVAR_REPLICATED,FCVAR_UNLOGGED,FCVAR_DONTRECORD,FCVAR_SPONLY})]])
		ply:SendLua([[local b = net.Start local e = net.SendToServer local c = isfunction jit.attach(function(f) if(c(external)) then b("]]..net_name..[[") e() end end, "bc")]])
		ply.ae_prev_time = 0
		ply.ae_times_failed = 0
		timer.Create("ae_timer_"..ply:SteamID64(), 10, 0, function()
			if (IsValid(ply)) then
				if (SysTime() - ply.ae_prev_time >= 2.5) then
					if (not ply:IsTimingOut() and ply:PacketLoss() < 80) then
						if ((ply:GetInfo("external") ~= external_value) or (ply:GetInfo("require") ~= require_value)) then
							ply.ae_times_failed = ply.ae_times_failed + 1
							if(timer.Exists("ae_timer_"..ply:SteamID64())) then timer.Adjust("ae_timer_"..ply:SteamID64(), 3) end
							if (ply.ae_times_failed >= 8) then
								file.Append("ae_no_response_log.txt", "Time and date: [" .. tostring(os.date("%H:%M:%S - %d/%m/%Y", os.time())) .. "] SteamID: [" .. tostring(ply:SteamID()) .. "]" .. "\r\n" .. "\r\n")
								ply:Kick([[No "external"/"require" cvar query response]])
							end
						else
							timer.Remove("ae_timer_"..ply:SteamID64())
							ply.ae_times_failed = nil
							ply.ae_prev_time = nil
							return
						end
					else
						if(timer.Exists("ae_timer_"..ply:SteamID64())) then timer.Adjust("ae_timer_"..ply:SteamID64(), 3) end
					end
					ply.ae_prev_time = SysTime()
				end
			end
		end)
	end
end

hook.Add("PlayerAuthed", "AE_Detection", InitAE)
hook.Add("PlayerDisconnected", "AE_Disconnect", function(ply) if(timer.Exists("ae_timer_"..ply:SteamID64())) then timer.Remove("ae_timer_"..ply:SteamID64()) end end)