/*---------------------------------------------------------------------------
	> START: Don't touch this!!!!!
---------------------------------------------------------------------------*/
/*-don't touch-*/	// Global vars core.config["minimalistic"]
/*-don't touch-*/	local _blackberry = _blackberry or {};
/*-don't touch-*/	_blackberry.scoreboard = _blackberry.scoreboard or {};
/*-don't touch-*/	local core = _blackberry.scoreboard;
/*-don't touch-*/	core.config = core.config or {};
/*---------------------------------------------------------------------------
	> END: Don't touch this!!!!!
=============================================================================
	Config vars - Touch it :)
---------------------------------------------------------------------------*/

core.config["title"]			= "Stolus-Team SCP-RP";		// Name of window
core.config["main_color"] 		= Color(255, 209, 55);		// Default: Color(255, 209, 55)
core.config["fadmin"]			= true;  					// Add commands from fadmin
core.config["sort_by_default"]	= "Jobs";					// Available: Jobs or Names
core.config["double_line"]		= false;

core.config["staff_replace"]	= {							// replace usergroup to normal show
	["superadmin"]				= "Super Admin",
	["admin"]					= "Admin"
}