// Global vars
local _blackberry = _blackberry or {};
_blackberry.f4menu = _blackberry.f4menu or {}; 

// Config Include
if (SERVER) then
	AddCSLuaFile(_blackberry.f4menu.dir.."/config.lua");
	AddCSLuaFile(_blackberry.f4menu.dir.."/lang.lua");
	AddCSLuaFile(_blackberry.f4menu.dir.."/derma.lua");
end
include(_blackberry.f4menu.dir.."/config.lua");
include(_blackberry.f4menu.dir.."/lang.lua");
include(_blackberry.f4menu.dir.."/derma.lua");

// Derma Init
_blackberry.f4menu.derma.init();

if (SERVER) then
	SetGlobalInt("_blackberry.f4menu.globalmoney", GetGlobalInt("_blackberry.f4menu.globalmoney"));
	hook.Add("PlayerInitialSpawn", "_blackberry.f4menu.globalmoney", function(ply)
		timer.Simple(5,function()
			if (!IsValid(ply)) then return false; end;
			SetGlobalInt("_blackberry.f4menu.globalmoney", GetGlobalInt("_blackberry.f4menu.globalmoney") + ply:getDarkRPVar("money"));
		end);
	end);
	hook.Add("playerWalletChanged", "_blackberry.f4menu.globalmoney", function(ply, num) 
		SetGlobalInt("_blackberry.f4menu.globalmoney", GetGlobalInt("_blackberry.f4menu.globalmoney") + num);
	end);
	hook.Add("PlayerDisconnected", "_blackberry.f4menu.globalmoney", function(ply)
		SetGlobalInt("_blackberry.f4menu.globalmoney", GetGlobalInt("_blackberry.f4menu.globalmoney") - ply:getDarkRPVar("money"));
	end);
end;  