// Global vars
local _blackberry = _blackberry or {};
_blackberry.f4menu = _blackberry.f4menu or {};
_blackberry.f4menu.derma = _blackberry.f4menu.derma or {};
_blackberry.f4menu.pages = _blackberry.f4menu.pages or {};
_blackberry.f4menu.activeMenu = _blackberry.f4menu.activeMenu or nil;
_blackberry.f4menu.pages.dashboard_func = _blackberry.f4menu.pages.dashboard_func or {};

local align = 25;
local sx = ScrW();
local function col_count()
	return 4;
end;
local function col_size()
	return math.floor((sx-align*col_count())/col_count());
end;
local function getSize(col_count)
	return col_size()*col_count+align*(col_count-1);
end;

// local vars
local cfg = _blackberry.f4menu.config;
local L = _blackberry.f4menu.lang;
local commandList = {};

function __local_CreateMenuWithPlayers(callback)
	local menu = DermaMenu()
	for k,v in pairs(player.GetAll()) do
		menu:AddOption(v:Name(), function() 
			callback(v); 
		end);
	end;
	menu:Open();
end;

/////////////////////////////////////////////
/*---------------------------------------------------------------------------
GLOBAL
---------------------------------------------------------------------------*/
local command_item = {}; 
command_item.customCheck = function(ply)
	if (cfg["disable_commands"]) then return false; end;
	return true;
end;
command_item.name = L["group_cmd"];
command_item.items = {};
command_item.items[#command_item.items+1] = {
	L["cmd_911"],
	function(ply) 
		Derma_StringRequest(L["cmd_911"], L["enter_text"], "", function(text)
			RunConsoleCommand("say", "/911 " ..  text);
			_blackberry.f4menu.Close();
		end);
	end
}
command_item.items[#command_item.items+1] = {
	L["rp_name"],
	function(ply) 
		Derma_StringRequest(L["rp_name"], L["enter_text"], "", function(text)
			RunConsoleCommand("say", "/rpname "..text);
			_blackberry.f4menu.Close();
		end);
	end
}
command_item.items[#command_item.items+1] = {
	L["change_job"],
	function(ply) 
		Derma_StringRequest(L["change_job"], L["enter_text"], "", function(text)
			RunConsoleCommand("say", "/job "..text);
			_blackberry.f4menu.Close();
		end);
	end
}
command_item.items[#command_item.items+1] = {
	L["drop_weapon"],
	function(ply) 
		_blackberry.f4menu.Close();
		RunConsoleCommand("say", "/dropweapon");
	end
}
command_item.items[#command_item.items+1] = {
	L["drop_money"],
	function(ply) 
		Derma_StringRequest(L["drop_money"], L["enter_text"], "50", function(text)
			RunConsoleCommand("say", "/dropmoney " .. text);
			_blackberry.f4menu.Close();
		end);
	end
}
command_item.items[#command_item.items+1] = {
	L["license_req"],
	function(ply) 
		_blackberry.f4menu.Close();
		RunConsoleCommand("say", "/requestlicense");
	end
}
command_item.items[#command_item.items+1] = {
	L["advert"],
	function(ply) 
		Derma_StringRequest(L["advert"], L["enter_text"], "", function(text)
			RunConsoleCommand("say", "/advert " .. text);
			_blackberry.f4menu.Close();
		end);
	end
}
command_item.items[#command_item.items+1] = {
	L["demote"],
	function(ply) 
		__local_CreateMenuWithPlayers(function(ply)
			Derma_StringRequest(L["demote"], "Enter reason", "", function(text)
				RunConsoleCommand("say", "/demote " .. '' ..  ply:Name() .. ' ' .. text);
				_blackberry.f4menu.Close();
			end)
		end);
	end
}
table.insert(commandList, command_item); command_item = nil;
/////////////////////////////////////////////
/*---------------------------------------------------------------------------
Civil Protection
---------------------------------------------------------------------------*/
local command_item = {}; 
command_item.customCheck = function(ply)
	if (cfg["disable_commands"]) then return false; end;
	if (ply:isCP()) then return true; end;
	return false;
end;
command_item.name = L["group_police"];
command_item.items = {};
command_item.color = Color(0, 16, 135);
command_item.items[#command_item.items+1] = {
	L["cp_order"],
	function(ply) 
		__local_CreateMenuWithPlayers(function(ply)
			Derma_StringRequest(L["cp_order"], "Enter reason", "", function(text)
				RunConsoleCommand("say", "/warrant " .. '' .. ply:Name() .. ' ' .. text);
				_blackberry.f4menu.Close();
			end)
		end);
	end
}
command_item.items[#command_item.items+1] = {
	L["cp_wanted"],
	function(ply) 
		__local_CreateMenuWithPlayers(function(ply)
			Derma_StringRequest(L["cp_wanted"], "Enter reason", "", function(text)
				RunConsoleCommand("say", "/wanted " .. '' .. ply:Name() .. ' ' .. text);
				_blackberry.f4menu.Close();
			end)
		end);
	end
}
command_item.items[#command_item.items+1] = {
	L["unwanted"],
	function(ply)
		__local_CreateMenuWithPlayers(function(ply)
			RunConsoleCommand("say", "/unwanted " .. '' .. ply:Name());
			_blackberry.f4menu.Close();
		end);
	end
}
table.insert(commandList, command_item); command_item = nil;
/////////////////////////////////////////////
/*---------------------------------------------------------------------------
Mayor
---------------------------------------------------------------------------*/
local command_item = {}; 
command_item.customCheck = function(ply)
	if (cfg["disable_commands"]) then return false; end;
	if ply:isMayor() then return true end
	return false;
end;
command_item.name = L["cmd_mayor"];
command_item.items = {};
command_item.color = Color(214, 0, 48);
command_item.items[#command_item.items+1] = {
	L["change_agenda"],
	function(ply) 
		Derma_StringRequest(L["change_agenda"], L["enter_text"], "", function(text)
			RunConsoleCommand("say", "/agenda "..text);
			_blackberry.f4menu.Close();
		end)
	end
}
command_item.items[#command_item.items+1] = {
	L["new_rule"],
	function(ply) 
		Derma_StringRequest(L["new_rule"], L["enter_text"], "", function(text)
			RunConsoleCommand("say", "/addlaw "..text);
			_blackberry.f4menu.Close();
		end)
	end
}
command_item.items[#command_item.items+1] = {
	L["place_laws"],
	function(ply) 
		_blackberry.f4menu.Close();
		RunConsoleCommand("say", "/placelaws");
	end
}
command_item.items[#command_item.items+1] = {
	L["lottery"],
	function(ply) 
		Derma_StringRequest(L["lottery"], L["lottery_sub"], "50", function(text)
			RunConsoleCommand("say", "/lottery "..text);
			_blackberry.f4menu.Close();
		end)
	end
}
command_item.items[#command_item.items+1] = {
	L["lockdown"],
	function(ply) 
		_blackberry.f4menu.Close();
		RunConsoleCommand("say", "/lockdown");
	end
}
command_item.items[#command_item.items+1] = {
	L["unlockdown"],
	function(ply) 
		_blackberry.f4menu.Close();
		RunConsoleCommand("say", "/unlockdown");
	end
}
table.insert(commandList, command_item); command_item = nil;
/////////////////////////////////////////////
//	End commands start code
/////////////////////////////////////////////

function _blackberry.f4menu.pages.dashboard_func.initProfile(panel)
	local profile_panel = vgui.Create("DScrollPanel", panel);
	profile_panel:SetSize(col_size(), panel:GetTall());

	local profile_item_list = vgui.Create( "DIconLayout", profile_panel )
	profile_item_list:Dock(FILL);
	profile_item_list:SetSpaceX(0);
	profile_item_list:SetSpaceY(8);

	local sbar = profile_panel:GetVBar();
	sbar:SetWide(2);
	function sbar:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnUp:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnDown:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnGrip:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end

	local header = vgui.Create("DPanel", profile_item_list);
	header:SetSize(250,35);
	header.Paint = function(self, w, h)
		draw.SimpleText(L["my_profile"], "Raleway 26", 0, h/2, Color(255, 255, 255, 255), 0, 1);

		surface.SetFont("Raleway 26");
		local width, height = surface.GetTextSize(L["my_profile"]);
		draw.RoundedBox(0, 0, h-1, width/2, 1, Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b));
	end;

	local name = vgui.Create("DPanel", profile_item_list);
	name:SetSize(250,35);
	name.Paint = function(self, w, h)
		draw.SimpleText(L["d_name"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(LocalPlayer():Name(), "Raleway 20", 0, 15+20/2, Color(255, 255, 255, 150), 0, 1);
	end;

	local rank = vgui.Create("DPanel", profile_item_list);
	rank:SetSize(250,35);
	rank.Paint = function(self, w, h)
		draw.SimpleText(L["d_rank"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(LocalPlayer():GetUserGroup(), "Raleway 20", 0, 15+20/2, Color(255, 255, 255, 150), 0, 1);
	end;

	local job = vgui.Create("DPanel", profile_item_list);
	job:SetSize(250,35);
	job.Paint = function(self, w, h)
		draw.SimpleText(L["d_job"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(LocalPlayer():getDarkRPVar("job"), "Raleway 20", 0, 15+20/2, Color(255, 255, 255, 150), 0, 1);
	end;

	local money = vgui.Create("DPanel", profile_item_list);
	money:SetSize(250,35)
	money.Paint = function(self, w, h)
		draw.SimpleText(L["d_money"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(DarkRP.formatMoney(LocalPlayer():getDarkRPVar("money")), "Raleway 20", 0, 15+20/2, Color(255, 255, 255, 150), 0, 1);

		draw.SimpleText(L["d_salary"], "Raleway 15", w, 15/2, Color(255, 255, 255, 255), 2, 1);
		draw.SimpleText(DarkRP.formatMoney(LocalPlayer():getDarkRPVar("salary")), "Raleway 20", w, 15+20/2, Color(255, 255, 255, 150), 2, 1);
	end;

	local gunlicense = vgui.Create("DPanel", profile_item_list);
	gunlicense:SetSize(250,25)
	gunlicense.Paint = function(self, w, h)
		if (LocalPlayer():getDarkRPVar("HasGunlicense")) then
			draw.SimpleText(L["license_have"], "Raleway 18", 0, 20/2, Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b, 255), 0, 1);
		else
			draw.SimpleText(L["license_not_have"], "Raleway 18", 0, 20/2, Color(255, 255, 255, 255), 0, 1);
		end
	end;

	local header = vgui.Create("DPanel", profile_item_list);
	header:SetSize(250,35);
	header.Paint = function(self, w, h)
		draw.SimpleText(L["my_stats"], "Raleway 26", 0, h/2, Color(255, 255, 255, 255), 0, 1);

		surface.SetFont("Raleway 26");
		local width, height = surface.GetTextSize(L["my_stats"]);
		draw.RoundedBox(0, 0, h-1, width/2, 1, Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b));
	end;

	local health = vgui.Create("DPanel", profile_item_list);
	health:SetSize(250,40);
	health.Paint = function(self, w, h)
		draw.RoundedBox(0, 0, 20, w, 20, Color(0, 0, 0, 100));
		draw.RoundedBox(0, 0, 20, w/100*math.Clamp(LocalPlayer():Health(),0,100), 20, Color(214, 0, 48, 100));

		draw.SimpleText(L["health"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(math.Clamp(LocalPlayer():Health(),0,100).." %", "Raleway 15", w, 15/2, Color(255, 255, 255, 150), 2, 1);
	end;

	local armor = vgui.Create("DPanel", profile_item_list);
	armor:SetSize(250,40);
	armor.Paint = function(self, w, h)
		draw.RoundedBox(0, 0, 20, w, 20, Color(0, 0, 0, 100));
		draw.RoundedBox(0, 0, 20, w/100*math.Clamp(LocalPlayer():Armor(),0,100), 20, Color(0, 16, 135, 100));

		draw.SimpleText(L["armor"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(math.Clamp(LocalPlayer():Armor(),0,100).." %", "Raleway 15", w, 15/2, Color(255, 255, 255, 150), 2, 1);
	end;
end;

function _blackberry.f4menu.pages.dashboard_func.initStaffAndStats(panel)
	local staff_panel = vgui.Create("DScrollPanel", panel);
	staff_panel:SetSize(col_size(), panel:GetTall());
	staff_panel:SetPos(col_size()+25);
	staff_panel.Paint = function(self, w, h)
	end;

	local staff_item_list = vgui.Create( "DIconLayout", staff_panel )
	staff_item_list:Dock(FILL);
	staff_item_list:SetSpaceX(0);
	staff_item_list:SetSpaceY(8);

	local sbar = staff_panel:GetVBar();
	sbar:SetWide(2);
	function sbar:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnUp:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnDown:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnGrip:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end

	local header = vgui.Create("DPanel", staff_item_list);
	header:SetSize(250,35);
	header.Paint = function(self, w, h)
		draw.SimpleText("Statistic", "Raleway 26", 0, h/2, Color(255, 255, 255, 255), 0, 1);

		surface.SetFont("Raleway 26");
		local width, height = surface.GetTextSize("Statistic");
		draw.RoundedBox(0, 0, h-1, width/2, 1, Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b));
	end;

	local players = vgui.Create("DPanel", staff_item_list);
	players:SetSize(250,40);
	players.Paint = function(self, w, h)
		draw.RoundedBox(0, 0, 20, w, 20, Color(0, 0, 0, 100));
		draw.RoundedBox(0, 0, 20, w/game.MaxPlayers()*(#player.GetAll()), 20, Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b, 100));

		draw.SimpleText(L["players"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(#player.GetAll().." / "..game.MaxPlayers(), "Raleway 15", w, 15/2, Color(255, 255, 255, 150), 2, 1);
	end;

	local servermoney = vgui.Create("DPanel", staff_item_list);
	servermoney:SetSize(250,35);
	servermoney.Paint = function(self, w, h)
		draw.SimpleText(L["money_on_server"], "Raleway 15", 0, 15/2, Color(255, 255, 255, 255), 0, 1);
		draw.SimpleText(DarkRP.formatMoney(GetGlobalInt("_blackberry.f4menu.globalmoney")), "Raleway 20", 0, 15+20/2, Color(255, 255, 255, 150), 0, 1);
	end;

	local header = vgui.Create("DPanel", staff_item_list);
	header:SetSize(250,35);
	header.Paint = function(self, w, h)
		draw.SimpleText(L["staff"], "Raleway 26", 0, h/2, Color(255, 255, 255, 255), 0, 1);
		
		surface.SetFont("Raleway 26");
		local width, height = surface.GetTextSize(L["staff"]);
		draw.RoundedBox(0, 0, h-1, width/2, 1, Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b));
	end;

	for k,v in pairs(player.GetAll()) do
		if (!v:IsAdmin()) then continue; end;
		local staff_profile = vgui.Create("DPanel", staff_item_list);
		staff_profile:SetSize(250,64);
		staff_profile.Paint = function(self, w, h)
			draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100));
			draw.RoundedBox(0, 0, 0, 64, 64, Color(0, 0, 0, 50));
			draw.SimpleText(v:Name(), "Raleway 18", 64+2, 20/2, Color(255, 255, 255, 255), 0, 1);
			draw.SimpleText(v:GetUserGroup(), "Raleway 15", 64+2, 20+15/2, Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b, 150), 0, 1);
		end;

		local Avatar = vgui.Create("AvatarImage", staff_profile);
		Avatar:SetSize(60, 60);
		Avatar:SetPos(2, 2);
		Avatar:SetPlayer(v, 64);
	end
end;


function _blackberry.f4menu.pages.dashboard_func.initCommands(panel)
	local panel_size = panel:GetWide()-col_size()*2-25*2;
	local panel_duble = false;
	local cmd_panel_second, cmd_item_list_second;
	if (panel_size >= 529) then
		panel_size = panel_size - col_size() - 25;

		cmd_panel_second = vgui.Create("DScrollPanel", panel);
		cmd_panel_second:SetSize(panel_size, panel:GetTall());
		cmd_panel_second:SetPos(col_size()*2+25*2+250+25);
		cmd_panel_second.Paint = function(self, w, h)
		end;

		cmd_item_list_second = vgui.Create("DIconLayout", cmd_panel_second)
		cmd_item_list_second:Dock(FILL);
		cmd_item_list_second:SetSpaceX(0);
		cmd_item_list_second:SetSpaceY(8);

		panel_duble = true;

		local sbar = cmd_panel_second:GetVBar();
		sbar:SetWide(2);
		function sbar:Paint(w, h)
			draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
		end
		function sbar.btnUp:Paint(w, h)
			draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
		end
		function sbar.btnDown:Paint(w, h)
			draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
		end
		function sbar.btnGrip:Paint(w, h)
			draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
		end
	end

	local cmd_panel = vgui.Create("DScrollPanel", panel);
	cmd_panel:SetSize(!panel_duble and panel_size or col_size(), panel:GetTall());
	cmd_panel:SetPos(col_size()*2+25*2);
	cmd_panel.Paint = function(self, w, h)
	end;

	local cmd_item_list = vgui.Create( "DIconLayout", cmd_panel )
	cmd_item_list:Dock(FILL);
	cmd_item_list:SetSpaceX(0);
	cmd_item_list:SetSpaceY(8);

	local sbar = cmd_panel:GetVBar();
	sbar:SetWide(2);
	function sbar:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnUp:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnDown:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end
	function sbar.btnGrip:Paint(w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
	end

	local item_count = 1;
	for k, v in pairs(commandList) do
		if (v.customCheck && isfunction(v.customCheck) && !v.customCheck(LocalPlayer())) then
			continue;
		end

		if (panel_duble) then
			if (math.floor(k / 2) == k / 2/*76561198041868510*/) then
				local header = vgui.Create("DPanel", cmd_item_list_second);
				header:SetSize(panel_size,35);
				header.Paint = function(self, w, h)
					draw.SimpleText(v.name, "Raleway 26", 0, h/2, Color(255, 255, 255, 255), 0, 1);

					surface.SetFont("Raleway 26");
					local width, height = surface.GetTextSize(v.name);
					draw.RoundedBox(0, 0, h-1, width/2, 1, v.color or Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b));
				end;

				for _, item in pairs(v.items) do
					local btn_panel = vgui.Create("DPanel", cmd_item_list_second);
					btn_panel:SetSize(panel_size-4,22);
					btn_panel.Paint = function(self, w, h)
					end;
					local btn = _blackberry.f4menu.derma.createButtonlist(item[1], 1);
					btn:SetParent(btn_panel);
					btn.DoClick = function()
						item[2](LocalPlayer());
					end;
					btn.starttime = SysTime()+(item_count)*0.1;
					item_count = item_count + 1;
				end
			else
				local header = vgui.Create("DPanel", cmd_item_list);
				header:SetSize(250,35);
				header.Paint = function(self, w, h)
					draw.SimpleText(v.name, "Raleway 26", 0, h/2, Color(255, 255, 255, 255), 0, 1);

					surface.SetFont("Raleway 26");
					local width, height = surface.GetTextSize(v.name);
					draw.RoundedBox(0, 0, h-1, width/2, 1, v.color or Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b));
				end;

				for _, item in pairs(v.items) do
					local btn_panel = vgui.Create("DPanel", cmd_item_list);
					btn_panel:SetSize(250,22);
					btn_panel.Paint = function(self, w, h)
					end;
					local btn = _blackberry.f4menu.derma.createButtonlist(item[1], 1);
					btn:SetParent(btn_panel);
					btn.DoClick = function()
						item[2](LocalPlayer());
					end;
					btn.starttime = SysTime()+(item_count)*0.1;
					item_count = item_count + 1;
				end
			end
			continue;
		end

		local header = vgui.Create("DPanel", cmd_item_list);
		header:SetSize(panel_size,35);
		header.Paint = function(self, w, h)
			draw.SimpleText(v.name, "Raleway 26", 0, h/2, Color(255, 255, 255, 255), 0, 1);

			surface.SetFont("Raleway 26");
			local width, height = surface.GetTextSize(v.name);
			draw.RoundedBox(0, 0, h-1, width/2, 1, v.color or Color(_blackberry.f4menu.config["main_color"].r, _blackberry.f4menu.config["main_color"].g, _blackberry.f4menu.config["main_color"].b));
		end;

		for _, item in pairs(v.items) do
			local btn_panel = vgui.Create("DPanel", cmd_item_list);
			btn_panel:SetSize(panel_size-4,22);
			btn_panel.Paint = function(self, w, h)
			end;
			local btn = _blackberry.f4menu.derma.createButtonlist(item[1], 1);
			btn:SetParent(btn_panel);
			btn.DoClick = function()
				item[2](LocalPlayer());
			end;
			btn.starttime = SysTime()+(item_count)*0.1;
			item_count = item_count + 1;
		end
	end
end;


function _blackberry.f4menu.pages.dashboard(parent)
	_blackberry.f4menu.pages.dashboard_func.initProfile(parent)
	_blackberry.f4menu.pages.dashboard_func.initStaffAndStats(parent)
	_blackberry.f4menu.pages.dashboard_func.initCommands(parent)
end;