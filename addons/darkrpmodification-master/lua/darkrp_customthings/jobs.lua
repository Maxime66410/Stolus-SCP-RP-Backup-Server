
TEAM_ASSISTANT = DarkRP.createJob("Assistant", {
	color = Color(158, 149, 149, 255),
	model = {
		"models/bmscientistcits/p_female_01.mdl",
		"models/bmscientistcits/p_female_03.mdl",
		"models/bmscientistcits/p_female_04.mdl"
	},
	description = [[Vous venez dâ€™arriver dans la Fondation. Vous Ãªtes un des plus grands scientifiques de notre ere. Vous nâ€™avez pas le droit dâ€™experimenter, seulement dâ€™accompagner et prendre notes. Vous pouvez accompagner nâ€™importe quelle experience. Vous nâ€™avez pas a Ãªtre arme.]],
	weapons = {"clone_card_c1","keys"},
	command = "assistant",
	category = "Departement Scientifique",
	max = 5,
	salary = 200,
	admin = 0,
	level = 2,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 50, 0, 50 ) ) end,
	PlayerSpawn = function(ply)
		if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_CHERCHEURNO = DarkRP.createJob("Chercheur Novice", {
	color = Color(90, 104, 33, 255),
	model = {
		"models/player/kerry/class_scientist_1.mdl",
		"models/player/kerry/class_scientist_2.mdl",
		"models/player/kerry/class_scientist_3.mdl",
		"models/player/kerry/class_scientist_4.mdl",
		"models/player/kerry/class_scientist_5.mdl",
		"models/player/kerry/class_scientist_6.mdl",
		"models/player/kerry/class_scientist_7.mdl",
		"models/bmscientistcits/p_female_01.mdl"
	},
	description = [[Vous Ãªtes tres jeune dans la Fondation. Vous pouvez experimenter les anomalies SÃ»r et Euclide avec le personnel du groupe de recherche qui travail sur lâ€™anomalie en question. Vous Ãªtes niveau 2, mais devez avoir une autorisation pour nâ€™importe quelle experimentation. Vous nâ€™avez pas le droit a avoir des armes.]],
	weapons = {"weapon_physcannon","clone_card_c2","keys"},
	command = "chercheur01",
	max = 8,
	salary = 300,
	admin = 0,
	level = 4,
	vote = false,
	hasLicense = false,
	category = "Departement Scientifique",
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 50, 0, 50 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Chercheur Novice est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Chercheur Novice est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_CHERCHEURBIO = DarkRP.createJob("Chercheur Biologiste", {
	color = Color(226, 154, 12, 255),
	model = {
		"models/bmscientistcits/p_female_01.mdl",
		"models/bmscientistcits/p_female_07.mdl",
		"models/bmscientistcits/p_female_02.mdl",
		"models/bmscientistcits/p_female_06.mdl",
		"models/bmscientistcits/p_male_01.mdl",
		"models/bmscientistcits/p_male_04.mdl",
		"models/bmscientistcits/p_male_07.mdl",
		"models/bmscientistcits/p_male_09.mdl",
		"models/bmscientistcits/p_male_10.mdl"
	},
	description = [[Vous Ãªtes un Chercheur avec une specialite, et devez experimenter seulement dessus. Vous Ãªtes semi-autonome, câ€™est a dire que vous repondez sous un directeur de votre groupe de recherche. Vous nâ€™avez pas a Ãªtre arme. Vous Ãªtes niveau 2. Vous devez prendre des assistants pour leur faire decouvrir les groupes de recherche. Vous devez faire des experiences regulieres et devez faire des rapports. Vous pouvez experimenter seulement les anomalies de votre groupe de recherche, les classes SÃ»r, Euclide.]],
	weapons = {"keys","weapon_physgun","clone_card_c2"},
	command = "chercheurbio",
	category = "Departement Scientifique",
	max = 8,
	salary = 400,
	admin = 0,
	level = 4,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 75, 0, 75 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
   	ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
   	table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
   	end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Chercheur Biologiste est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Chercheur Biologiste est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_CHERCHEURPHY = DarkRP.createJob("Chercheur Physicien", {
	color = Color(226, 154, 12, 255),
	model = {
		"models/bmscientistcits/p_female_01.mdl",
		"models/bmscientistcits/p_female_07.mdl",
		"models/bmscientistcits/p_female_02.mdl",
		"models/bmscientistcits/p_female_06.mdl",
		"models/bmscientistcits/p_male_01.mdl",
		"models/bmscientistcits/p_male_04.mdl",
		"models/bmscientistcits/p_male_07.mdl",
		"models/bmscientistcits/p_male_09.mdl",
		"models/bmscientistcits/p_male_10.mdl"
	},
	description = [[Vous Ãªtes un Chercheur avec une specialite, et devez experimenter seulement dessus. Vous Ãªtes semi-autonome, câ€™est a dire que vous repondez sous un directeur de votre groupe de recherche. Vous nâ€™avez pas a Ãªtre arme. Vous Ãªtes niveau 2. Vous devez prendre des assistants pour leur faire decouvrir les groupes de recherche. Vous devez faire des experiences regulieres et devez faire des rapports. Vous pouvez experimenter seulement les anomalies de votre groupe de recherche, les classes SÃ»r, Euclide.]],
	weapons = {"keys","weapon_physgun","clone_card_c2"},
	command = "chercheurphy",
	category = "Departement Scientifique",
	max = 8,
	salary = 400,
	admin = 0,
	level = 4,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 50, 0, 50 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Chercheur Physicien est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Chercheur Physicien est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_CHERCHEURBIOPHY = DarkRP.createJob("Chercheur BioPhysicien", {
	color = Color(226, 154, 12, 255),
	model = {
		"models/bmscientistcits/p_female_01.mdl",
		"models/bmscientistcits/p_female_07.mdl",
		"models/bmscientistcits/p_female_02.mdl",
		"models/bmscientistcits/p_female_06.mdl",
		"models/bmscientistcits/p_male_01.mdl",
		"models/bmscientistcits/p_male_04.mdl",
		"models/bmscientistcits/p_male_07.mdl",
		"models/bmscientistcits/p_male_09.mdl",
		"models/bmscientistcits/p_male_10.mdl"
	},
	description = [[Vous Ãªtes un Chercheur avec une specialite, et devez experimenter seulement dessus. Vous Ãªtes semi-autonome, câ€™est a dire que vous repondez sous un directeur de votre groupe de recherche. Vous nâ€™avez pas a Ãªtre arme. Vous Ãªtes niveau 2. Vous devez prendre des assistants pour leur faire decouvrir les groupes de recherche. Vous devez faire des experiences regulieres et devez faire des rapports. Vous pouvez experimenter seulement les anomalies de votre groupe de recherche, les classes SÃ»r, Euclide.]],
	weapons = {"keys","weapon_physgun","clone_card_c2"},
	command = "chercheurbiophy",
	category = "Departement Scientifique",
	max = 8,
	salary = 400,
	admin = 0,
	level = 4,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 75, 0, 75 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Chercheur BioPhysicien est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Chercheur BioPhysicien est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_CHERCHEURSENIO = DarkRP.createJob("Chercheur Senior", {
	color = Color(204, 204, 204, 255),
	model = {
		"models/player/scientist.mdl",
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous etes un chercheur senior.]],
	weapons = {"keys","clone_card_c3","gmod_tool","weapon_physcannon"},
	command = "chercheursenior",
	category = "Departement Scientifique",
	max = 5,
	salary = 500,
	admin = 0,
	level = 6,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 75, 0, 75 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Chercheur Senior est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Chercheur Senior est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_SPVISEURBIO = DarkRP.createJob("Superviseur Biologiste", {
	color = Color(204, 204, 204, 255),
	model = {
		"models/player/blackmesa_scientific.mdl",
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous Ãªtes un Chercheur ancien dans la Fondation promu Gerant dâ€™un groupe de Recherche. Vous devez Ãªtre tres present. Vous Ãªtes niveau 3. Vous nâ€™avez pas a Ãªtre arme, vous dirigez seulement votre equipe de recherche, et ne donnez pas dâ€™ordres aux autres equipes. Vous savez expliquer votre specialite aux nouveaux. Vous experimentez seulement sur votre specialite, les classes SÃ»r, Euclide, Keter.]],
	weapons = {"clone_card_c3","keys","gmod_tool","weapon_physcannon"},
	command = "spviseurbio",
	category = "Departement Scientifique",
	max = 1,
	salary = 600,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 75, 0, 75 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Superviseur Biologiste est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Superviseur Biologiste est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_SPVISEURPHY = DarkRP.createJob("Superviseur Physicien", {
	color = Color(204, 204, 204, 255),
	model = {
		"models/player/blackmesa_scientific.mdl",
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous Ãªtes un Chercheur ancien dans la Fondation promu Gerant dâ€™un groupe de Recherche. Vous devez Ãªtre tres present. Vous Ãªtes niveau 3. Vous nâ€™avez pas a Ãªtre arme, vous dirigez seulement votre equipe de recherche, et ne donnez pas dâ€™ordres aux autres equipes. Vous savez expliquer votre specialite aux nouveaux. Vous experimentez seulement sur votre specialite, les classes SÃ»r, Euclide, Keter.]],
	weapons = {"clone_card_c3","keys","gmod_tool","weapon_physcannon"},
	command = "spviseurphy",
	category = "Departement Scientifique",
	max = 1,
	salary = 600,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 75, 0, 75 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Superviseur Physicien est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Superviseur Physicien est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_SPVISEURBIOPHY = DarkRP.createJob("Superviseur BioPhysicien", {
	color = Color(204, 204, 204, 255),
	model = {
		"models/player/blackmesa_scientific.mdl",
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous Ãªtes un Chercheur ancien dans la Fondation promu Gerant dâ€™un groupe de Recherche. Vous devez Ãªtre tres present. Vous Ãªtes niveau 3. Vous nâ€™avez pas a Ãªtre arme, vous dirigez seulement votre equipe de recherche, et ne donnez pas dâ€™ordres aux autres equipes. Vous savez expliquer votre specialite aux nouveaux. Vous experimentez seulement sur votre specialite, les classes SÃ»r, Euclide, Keter.]],
	weapons = {"clone_card_c3","keys","gmod_tool","weapon_physcannon"},
	command = "spviseurbiophy",
	category = "Departement Scientifique",
	max = 1,
	salary = 600,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerSpawn =  function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Superviseur BioPhysicien est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Superviseur BioPhysicien est mort.")
		end
	end	
})


---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_PROFESSEUR = DarkRP.createJob("Professeur", {
	color = Color(11, 170, 181, 255),
	model = {
		"models/players/mj_tew2_kidman.mdl"
	},
	description = [[Vous Ãªtes un Professeur. Vous enseignez au personnel scientifique selon leur accreditation"]],
	weapons = {"keys","clone_card_c3","gmod_tool","weapon_physgun"},
	command = "professeur",
	category = "Departement Scientifique",
	max = 3,
	salary = 500,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 75, 0, 75 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Professeur est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Professeur est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_SPGRPRECHERCHE = DarkRP.createJob("Superviseur des Groupes de Recherche", {
	color = Color(51, 108, 219, 255),
	model = {
		"models/player/blackmesa_scientific.mdl",
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous Ãªtes le Superviseur des Groupes de Recherches, vous organisez les Groupes de Recherche aux ordres des Directeurs. Vous pouvez experimenter. Vous Ãªtes celui qui transmet des rapports entre les differents groupes et les directeurs. Vous nâ€™avez pas plein pouvoirs, et nâ€™avez pas le droit dâ€™Ãªtre arme. Vous Ãªtes niveau 4."]],
	weapons = {"keys","weapon_physgun","clone_card_c4","gmod_tool","weapon_physcannon"},
	command = "spviseurgrprecherche",
	category = "Departement Scientifique",
	max = 1,
	salary = 600,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un SPVDGDR est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un SPVDGDR est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_DAPDR = DarkRP.createJob("Dir Adj Pole de Recherche", {
	color = Color(132, 132, 132, 255),
	model = {
		"models/sirgibs/ragdolls/detective_magnusson_player.mdl"
	},
	description = [[Vous Ãªtes le Directeur-Adjoint du PÃ´le de Recherche, vous dirigez tout le personnel Scientifique et les experimentations quand il nâ€™y a pas le Directeur du PÃ´le de Recherche. Vous organisez des reunions, attribuez des equipes de recherches aux Assistants et vous ne faites pas dâ€™experimentation. Vous Ãªtes niveau 4. Vous nâ€™avez pas plein pouvoirs, vous nâ€™avez pas a Ãªtre arme, vous dirigez les scientifiques seulement lors de lâ€™absence du Directeur."]],
	weapons = {"keys","weapon_physgun","clone_card_c4","gmod_tool","weapon_physcannon"},
	command = "dapdr",
	category = "Departement Scientifique",
	max = 1,
	salary = 600,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Dir Adj Pole Recherche est mort.")
		else
			DarkRP.notifyAll(0, 4, "Dir Adj Pole Recherche est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_DAPDR2 = DarkRP.createJob("Dir Pole de Recherche", {
	color = Color(132, 132, 132, 255),
	model = {
		"models/player/kerry/class_scientist_1.mdl"
	},
	description = [["Vous Ãªtes le Directeur du PÃ´le de Recherche, vous dirigez tout le personnel Scientifique et les experimentations. Vous organisez des reunions, attribuez des equipes de recherches aux Assistants et vous ne faites pas dâ€™experimentation. Vous Ãªtes niveau 4. Vous nâ€™avez pas plein pouvoirs, vous nâ€™avez pas a Ãªtre arme, vous ne dirigez que les Scientifiques. Vous nâ€™avez pas a experimenter."]],
	weapons = {"keys","weapon_physgun","clone_card_c4","gmod_tool","weapon_physcannon"},
	command = "dpdr",
	category = "Departement Scientifique",
	max = 1,
	salary = 600,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"superadmin","user","VIP"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Dir Pole Recherche est mort.")
		else
			DarkRP.notifyAll(0, 4, "Dir Pole Recherche est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_DDUSITE = DarkRP.createJob("Directeur du site", {
	color = Color(132, 132, 132, 255),
	model = {
		"models/player/suits/male_07_closed_coat_tie.mdl",
		"models/player/suits/male_07_closed_tie.mdl",
		"models/player/suits/male_07_open.mdl",
		"models/player/suits/male_07_open_tie.mdl",
		"models/player/suits/male_07_open_waistcoat.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_07_shirt_tie.mdl"
	},
	description = [["Vous Ãªtes le directeur du site. Vous dirigez tout les effectifs du site que vous dirigez, vous organisez des reunions et vous vous occupez dâ€™accepter les experimentation sur des SCP dangereux. Vous Ãªtes le plus haut grade du site."]],
	weapons = {"keys","weapon_physgun","clone_card_c5","gmod_tool","weapon_physcannon","sg_adrenaline","robotnik_mw2_m9"},
	command = "drdusite",
	category = "Departement Administratif",
	max = 1,
	salary = 1000,
	admin = 0,
	level = 15,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_5" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(150)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"superadmin","user","VIP"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Directeur du site est mort.")
		else
			DarkRP.notifyAll(0, 4, "Directeur du site est mort.")
		end
	end	
})

TEAM_O5 = DarkRP.createJob("Membre de l'O5", {
	color = Color(132, 132, 132, 255),
	model = {
		"models/gonzo/scpoperatives/scpcaseofficer/scpcaseofficer.mdl",
		"models/gonzo/scpoperatives/scpdirector/scpdirector.mdl",
		"models/gonzo/scpoperatives/scpinfiltrator/scpinfiltrator.mdl",
		"models/gonzo/scpoperatives/scpoperative/scpoperative.mdl"
	},
	description = [["Vous Ãªtes le directeur du site. Vous dirigez tout les effectifs du site que vous dirigez, vous organisez des reunions et vous vous occupez dâ€™accepter les experimentation sur des SCP dangereux. Vous Ãªtes le plus haut grade du site."]],
	weapons = {"keys","weapon_physgun","clone_card_c5","gmod_tool","weapon_physcannon","robotnik_mw2_m9","robotnik_mw2_ump"},
	command = "o5",
	category = "Departement Administratif",
	max = 5,
	salary = 2500,
	admin = 0,
	level = 30,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_5" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(150)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"superadmin","user","VIP"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Directeur du site est mort.")
		else
			DarkRP.notifyAll(0, 4, "Directeur du site est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
---------------------------MILITAIRES--------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_CADET = DarkRP.createJob("Cadet", {
	color = Color(186, 174, 174, 255),
	model = {
		"models/fart/ragdolls/css/counter_gign_nomask_player.mdl",
		"models/fart/ragdolls/css/counter_gign_player.mdl"
	},
	description = [["Vous Ãªtes cadet, Vous Ãªtes l'elite militaire et vous venez de vous faire remarquer puis engager dans la grande et glorieuse â€œFondation SCPâ€. Vous Ãªtes le plus bas grade du Departement de la Securite, votre travail consiste a garder le bloc des classes D pour que le calme y regne sans a avoir recours a votre arme de poing mais uniquement votre matraque. Si vous voulez sortir du bloc des classes D, un agent doit vous accompagner, vous Ãªtes accredite lvl 1"]],
	weapons = {"pocket","keys","weapon_physcannon","salute","weapon_physgun","stunstick","clone_card_c1","robotnik_mw2_m9","wep_jack_job_drpradio","sg_adrenaline"},
	command = "cadet",
	category = "Departement de la Securite",
	max = 8,
	salary = 85,
	admin = 0,
	level = 2,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
			if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    ply:SetHealth(150)
	end,
    CustomCheckFailMsg = "Metier Full",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Cadet est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Cadet est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_AGENT = DarkRP.createJob("Officier de Securite", {
	color = Color(186, 174, 174, 255),
	model = {
		"models/whitemtfguard/player/white_mtf_guard_player.mdl",
		"models/player/guard_pack/guard_01.mdl",
		"models/player/guard_pack/guard_02.mdl",
		"models/player/guard_pack/guard_03.mdl",
		"models/player/guard_pack/guard_04.mdl",
		"models/player/guard_pack/guard_05.mdl",
		"models/player/guard_pack/guard_06.mdl",
		"models/player/guard_pack/guard_07.mdl",
		"models/player/guard_pack/guard_08.mdl",
		"models/player/guard_pack/guard_09.mdl"
	},
	description = [["Vous Ãªtes cadet, Vous Ãªtes l'elite militaire et vous venez de vous faire remarquer puis engager dans la grande et glorieuse â€œFondation SCPâ€. Vous Ãªtes le plus bas grade du Departement de la Securite, votre travail consiste a garder le bloc des classes D pour que le calme y regne sans a avoir recours a votre arme de poing mais uniquement votre matraque. Si vous voulez sortir du bloc des classes D, un agent doit vous accompagner, vous Ãªtes accredite lvl 1"]],
	weapons = {"pocket","keys","weapon_physcannon","salute","weapon_physgun","stunstick","clone_card_c2","robotnik_mw2_g18","wep_jack_job_drpradio","sg_adrenaline"},
	command = "agent",
	category = "Departement de la Securite",
	max = 12,
	salary = 90,
	admin = 0,
	level = 3,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(150)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Officier de Securite est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Officier de Securite est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_UM = DarkRP.createJob("U.M", {
	color = Color(186, 174, 174, 255),
	model = {
		"models/player/pmc_3/pmc__02.mdl",
		"models/player/pmc_3/pmc__03.mdl",
		"models/player/pmc_3/pmc__04.mdl",
		"models/player/pmc_3/pmc__05.mdl",
		"models/player/pmc_3/pmc__06.mdl",
		"models/player/pmc_3/pmc__07.mdl",
		"models/player/pmc_3/pmc__08.mdl",
		"models/player/pmc_3/pmc__09.mdl",
		"models/player/pmc_3/pmc__10.mdl",
		"models/player/pmc_3/pmc__11.mdl",
		"models/player/pmc_3/pmc__12.mdl",
		"models/player/pmc_3/pmc__13.mdl",
		"models/player/pmc_3/pmc__14.mdl"
	},
	description = [["Vous Ãªtes UM (Unite Medicale), Vous avez evolue depuis que vous Ãªtes Agent, vous Ãªtes maintenant specialise dans la medecine et vous devez sauver vos coequipiers lors dâ€™une attaque dâ€™un GdI ou dâ€™une breche de confinement dâ€™un SCP, vous avez sinon les mÃªme capacite quâ€™un AIT, vous Ãªtes accredite lvl 3."]],
	weapons = {"robotnik_mw2_f2","salute","robotnik_mw2_g18","stunskick","weapon_physcannon","keys","clone_card_c3","fas2_deagle","wep_jack_job_drpradio","gmod_tool","sg_adrenaline"},
	command = "um",
	category = "Departement de la Securite",
	max = 10,
	salary = 120,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un U.M est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un U.M est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
TEAM_AIT = DarkRP.createJob("A.I.T", {
	color = Color(132, 132, 132, 255),
	model = {
		"models/player/pmc_1/pmc__02.mdl",
		"models/player/pmc_1/pmc__03.mdl",
		"models/player/pmc_1/pmc__04.mdl",
		"models/player/pmc_1/pmc__05.mdl",
		"models/player/pmc_1/pmc__06.mdl",
		"models/player/pmc_1/pmc__07.mdl",
		"models/player/pmc_1/pmc__08.mdl",
		"models/player/pmc_1/pmc__09.mdl",
		"models/player/pmc_1/pmc__10.mdl",
		"models/player/pmc_1/pmc__11.mdl",
		"models/player/pmc_1/pmc__12.mdl",
		"models/player/pmc_1/pmc__13.mdl",
		"models/player/pmc_1/pmc__14.mdl",
		"models/auditor/r6s/frost/chr_jtf2_grizzlie.mdl"
	},
	description = [[Vous Ãªtes AIT (Agent Dâ€™intervention Tactique), Vous avez evolue depuis que vous Ãªtes Agent maintenant vous Ãªtes un personnel extrÃªmement entraÃ®ne prÃªt a intervenir ou escorter le personnel a des entites dangereuse et les proteger des GdI (Groupes d'interÃªt) si besoin, des dangers que represente ces menaces, vous Ãªtes accredite lvl 3."]],
	weapons = {"pocket","keys","weapon_physcannon","salute","weapon_physgun","clone_card_c3","robotnik_mw2_g18","robotnik_mw2_m4","robotnik_mw2_de","wep_jack_job_drpradio","sg_adrenaline"},
	command = "ait",
	category = "Departement de la Securite",
	max = 10,
	salary = 125,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un A.I.T est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un A.I.T est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_UR = DarkRP.createJob("U.R", {
	color = Color(111, 173, 147, 255),
	model = {
		"models/npc/portal/male_02_garde.mdl",
		"models/npc/portal/male_04_garde.mdl",
		"models/npc/portal/male_09_garde.mdl",
		"models/npc/portal/male_07_garde.mdl",
		"models/npc/portal/male_05_garde.mdl",
		"models/npc/portal/male_08_garde.mdl",
	},
	description = [[Vous Ãªtes UR (Unite de Remise en confinement), Vous avez evolue depuis que vous Ãªtes Agent maintenant specialise dans la remise en confinement des SCP de toute classification present sur le site, vous devez intervenir a chaque breche de confinement et neutraliser la menace, vous Ãªtes accredite 4 pour un acces physique, itere 3 pour avoir toutes les connaissances sur les dossier des scp sur le site."]],
	weapons = {"weapon_752_m2_flamethrower","pocket","keys","weapon_physcannon","salute","weapon_physgun","clone_card_c4","robotnik_mw2_p90","robotnik_mw2_44","wep_jack_job_drpradio","weapon_extinguisher","sg_adrenaline"},
	command = "ur",
	category = "Departement de la Securite",
	max = 10,
	salary = 150,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Une U.R est morte.")
		else
			DarkRP.notifyAll(0, 4, "Une U.R est morte.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_COMMANDANT = DarkRP.createJob("Officier Superieur de Securite", {
	color = Color(112, 112, 112, 255),
	model = {
		"models/player/pmc_4/pmc__07.mdl"
	},
	description = [[Vous Ãªtes un Officier Superieur de Securite, vous avez enormement travaille dans une equipe Tactique, et pouvez aisement les epauler dans leurs travaux. Vous Ãªtes sous les ordres des differents commandants des ET. Vous devez rendre des rapports a vos Superieurs. Vous Ãªtes accredite niveau 3.]],
	weapons = {"salute","robotnik_mw2_ak","robotnik_mw2_g18","weapon_physcannon","gmod_tool","wep_jack_job_drpradio","clone_card_c3","sg_adrenaline"},
	command = "commandantO5",
	category = "Departement de la Securite",
	max = 5,
	salary = 255,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "L'Officier Superieur est mort.")
		else
			DarkRP.notifyAll(0, 4, "L'Officier Superieur est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
TEAM_FIMSCP = DarkRP.createJob("Agent F.I.M", {
	color = Color(186, 174, 174, 255),
	model = {
		"models/player/pmc_2/pmc__02.mdl",
		"models/player/pmc_2/pmc__03.mdl",
		"models/player/pmc_2/pmc__04.mdl",
		"models/player/pmc_2/pmc__05.mdl",
		"models/player/pmc_2/pmc__06.mdl",
		"models/player/pmc_2/pmc__07.mdl",
		"models/player/pmc_2/pmc__08.mdl",
		"models/player/pmc_2/pmc__09.mdl",
		"models/player/pmc_2/pmc__10.mdl",
		"models/player/pmc_2/pmc__11.mdl",
		"models/player/pmc_2/pmc__12.mdl",
		"models/player/pmc_2/pmc__13.mdl",
		"models/player/pmc_2/pmc__14.mdl"
	},
	description = [[Vous Ãªtes un agent de force dâ€™intervention mobile. Vous obeissez aux ordres du commandant de votre escouade et si vous nâ€™Ãªtes pas dans une de celle ci, vous pouvez toujours candidater.]],
	weapons = {"salute","robotnik_mw2_g18","keys","robotnik_mw2_tar","wep_jack_job_drpradio","clone_card_c3","weapon_physcannon","pocket","fas2_m21","gmod_tool","sg_adrenaline"},
	command = "agentfim",
	category = "Departement de la Securite",
	max = 10,
	salary = 300,
	admin = 0,
	level = 12,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Agent F.I.M est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Agent F.I.M est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_CMDAIT = DarkRP.createJob("CMD AIT", {
	color = Color(19, 147, 140, 255),
	model = {
		"models/player/pmc_1/pmc__01.mdl"
	},
	description = [[Vous Ãªtes Commandant AIT, vous avez a present les AIT sous vos ordres ainsi que les agents, recrues et Officiers Superieurs de Securite, vous pouvez donner des ordre aux recrues, agents et AIT mais pas aux Commandant UM et UR ni aux UM et UR,vous devez faire des rapports sur votre ET a vos superieurs. Vous Ãªtes accredite lvl 4]],
	weapons = {"clone_card_c4","keys","weapon_physgun","gmod_tool","Salute","robotnik_mw2_de","robotnik_mw2_aug","wep_jack_job_drpradio","weapon_physcannon","robotnik_mw2_m10","sg_adrenaline"},
	command = "cmdait",
	category = "Departement de la Securite",
	max = 1,
	salary = 350,
	admin = 0,
	level = 12,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "CMD AIT mort.")
		else
			DarkRP.notifyAll(0, 4, "CMD AIT mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_CMDUR = DarkRP.createJob("CMD UR", {
	color = Color(19, 147, 140, 255),
	model = {
		"models/player/pmc_5/pmc__01.mdl"
	},
	description = [[Vous Ãªtes Commandant UR, vous avez a present les UR sous vos ordres ainsi que les que les agents, recrues et Officiers Superieurs de Securite, vous pouvez donner des ordre aux recrues, agents, officiers superieurs de securite et UR mais pas aux Commandants AIT et UM ni aux AIT et UM, vous devez faire des rapports sur votre ET a vos superieurs. Vous Ãªtes accredite lvl 4.]],
	weapons = {"clone_card_c4","keys","weapon_physgun","gmod_tool","Salute","robotnik_mw2_m10","weapon_752_m2_flamethrower","wep_jack_job_drpradio","weapon_physcannon","robotnik_mw2_uzi","robotnik_mw2_de","sg_adrenaline"},
	command = "cmdur",
	category = "Departement de la Securite",
	max = 1,
	salary = 350,
	admin = 0,
	level = 13,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "CMD UR mort.")
		else
			DarkRP.notifyAll(0, 4, "CMD UR mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_CMDUM = DarkRP.createJob("CMD UM", {
	color = Color(19, 147, 140, 255),
	model = {
		"models/player/pmc_3/pmc__01.mdl"
	},
	description = [[Vous Ãªtes Commandant UM, vous avez a present les UM sous vos ordre ainsi que les que les agents, recrues et Officiers Superieurs de Securite, vous pouvez donner des ordre aux recrues, agents, UM et officiers superieurs de securite, mais pas aux Commandant AIT et UR ni aux AIT et UR, vous devez faire des rapports sur votre ET a vos superieurs. Vous Ãªtes accredite lvl 4]],
	weapons = {"clone_card_c4","keys","weapon_physgun","gmod_tool","Salute","robotnik_mw2_m10","weapon_752_m2_flamethrower","wep_jack_job_drpradio","weapon_physcannon","robotnik_mw2_uzi","robotnik_mw2_de","sg_adrenaline"},
	command = "cmdum",
	category = "Departement de la Securite",
	max = 1,
	salary = 350,
	admin = 0,
	level = 13,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "CMD UM mort.")
		else
			DarkRP.notifyAll(0, 4, "CMD UM mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_IAFONDA = DarkRP.createJob("Intelligence Artificielle Autonome", {
	color = Color(189, 212, 255, 255),
	model = {
		"models/arachnit/gmod/invisible_pm/invisible_pm.mdl"
	},
	description = [[CLOAK OBLIGATOIRE: L'I.A de la Fondation est tout comme 079 capable d'ouvrir les portes, parler dans les hauts-parleurs sauf que celle-ci est avec la Fondation etant donne que ces derniers l'ont crees. Cette IA peut parler dans les Hauts-Parleurs, dans la radio, avertir les deconfinnements, contrÃ´ler les UT-X50 et plein d'autres choses.]],
	weapons = {"weapon_camo","clone_card_c3navy","wep_jack_job_drpradio","voice_amplifier","manhack_welder","gmod_tool"},
	command = "iafondation",
	category = "Departement de la Securite",
	max = 1,
	salary = 469,
	admin = 0,
	level = 30,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(99999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "L'I.A est debranche.")
		else
			DarkRP.notifyAll(0, 4, "L'I.A est debranche.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_CMDET = DarkRP.createJob("Commandant ET", {
	color = Color(19, 147, 140, 255),
	model = {
		"models/player/pmc_4/pmc__01.mdl",
		"models/player/pmc_6/pmc__01.mdl"
	},
	description = [[Vous dirigez les trois equipes Tactiques, câ€™est a dire UM, UR, AIT. Vous recevez des ordres du Vice-Commandant et du Commandant, vous pouvez donner des ordres aux Commandants UM, UR, AIT. Vous Ãªtes accredite niveau 4]],
	weapons = {"clone_card_c5","keys","weapon_physgun","gmod_tool","Salute","sg_adrenaline","robotnik_mw2_de","wep_jack_job_drpradio","weapon_physcannon","robotnik_mw2_scrh","sg_adrenaline"},
	command = "cmdet",
	category = "Departement de la Securite",
	max = 1,
	salary = 350,
	admin = 0,
	level = 15,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_5" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(300)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Le Commandant ET est mort.")
		else
			DarkRP.notifyAll(0, 4, "Le Commandant ET est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_INSTRUCTEUR = DarkRP.createJob("Instructeur", {
	color = Color(149, 216, 144, 255),
	model = {
		"models/bmscientistcits/p_female_01.mdl",
		"models/bmscientistcits/p_female_03.mdl",
		"models/bmscientistcits/p_female_04.mdl"
	},
	description = [[Vous Ãªtes Instructeur, apres de longues annees dans laquelle vous etiez eleve, vous allez enseigner a de nouveaux personnels. vous enseignez a tout le personnel de securite. Vous Ãªtes niveau 3.]],
	weapons = {"pocket","keys","weapon_physgun","gmod_tool","Salute","robotnik_mw2_de","clone_card_c3","wep_jack_job_drpradio","weapon_physcannon","robotnik_mw2_ak","robotnik_mw2_raf","robotnik_mw2_sps","sg_adrenaline"},
	command = "instructeur",
	category = "Departement de la Securite",
	max = 3,
	salary = 255,
	admin = 0,
	level = 13,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Instructeur est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Instructeur est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_VICECMD = DarkRP.createJob("Directeur Adjoint de la Securite", {
	color = Color(149, 216, 144, 255),
	model = {
		"models/ninja/mgs4_pieuvre_armament_merc.mdl",
		"models/auditor/r6s/707/dokidokibae/chr_707_dokkaebi.mdl"
	},
	description = [[Vous Ãªtes le Vice commandant de la securite, vous avez gravi tous les echelons avec succes et vous voila presque en haut, en l'absence du Commandant vous gerez le personnel du Departement de la Securite et vous Ãªtes responsable de ce quâ€™il se passe, votre securite doit Ãªtre competente tout comme vous, vous Ãªtes accredite lvl 4]],
	weapons = {"pocket","keys","weapon_physgun","gmod_tool","Salute","robotnik_mw2_m4","clone_card_c4","wep_jack_job_drpradio","weapon_physcannon","weapon_cuff_elastic","robotnik_mw2_f2","stunstick","robotnik_mw2_m16","sg_adrenaline"},
	command = "vicecmd",
	category = "Departement de la Securite",
	max = 1,
	salary = 425,
	admin = 0,
	level = 20,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(350)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"admin","superadmin","user","VIP"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Vice Cmd de la Securite est mort.")
		else
			DarkRP.notifyAll(0, 4, "Vice Cmd de la Securite est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
TEAM_CMDSE = DarkRP.createJob("Directeur de la Securite", {
	color = Color(149, 216, 144, 255),
	model = {
		"models/player/cellassault1player.mdl",
		"models/player/cellassault2player.mdl",
		"models/player/cellassault3player.mdl"
	},
	description = [[Vous Ãªtes le Commandant de la securite, vous Ãªtes le plus haut grade de la securite sur la Zone-ThÃªta, vos ordres sont prioritaires sur tous les autres, vous creez des escouades pour faire des patrouilles et vous devez lire chacun des rapports de vos agents, vous gerez leurs promotions. Quand vous n'Ãªtes pas la vÃ´tre vice-commandant prend la releve. Vous Ãªtes accredite Lvl 4]],
	weapons = {"pocket","keys","weapon_physgun","gmod_tool","Salute","robotnik_mw2_m10","clone_card_c5","wep_jack_job_drpradio","weapon_physcannon","weapon_cuff_elastic","robotnik_mw2_fam","stunstick","robotnik_mw2_uzi","sg_adrenaline"},
	command = "cmdsecu",
	category = "Departement de la Securite",
	max = 1,
	salary = 500,
	admin = 0,
	level = 25,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_5" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(350)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"superadmin","user","VIP"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Cmd de la Securite est mort.")
		else
			DarkRP.notifyAll(0, 4, "Cmd de la Securite est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
---------------------------------VIP---------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_UTR1 = DarkRP.createJob("UTR-1 - VIP", {
	color = Color(44, 165, 14, 255),
	model = {
		"models/player/anon/anon.mdl"
	},
	description = [[Vous Ãªtes un Robot fabrique par le DI&ST et programme par le DIAA, vous ecoutez aux ordres de niveau 3 ou plus, en priorite lâ€™IAA et au D.I.A.A.]],
	weapons = {"gmod_tool","clone_card_c3","wep_jack_job_drpradio","robotnik_mw2_raf","robotnik_mw2_m16","salute","robotnik_mw2_de","sg_medkit"},
	command = "utr1",
	category = "Departement de la Securite",
	max = 3,
	salary = 850,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 250, 0, 250 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(500)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "UTR-1 est mort.")
		else
			DarkRP.notifyAll(0, 4, "UTR-1 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
TEAM_MDA = DarkRP.createJob("Membre du DA - VIP", {
	color = Color(44, 165, 14, 255),
	model = {
		"models/combineadmin/player/male_01.mdl",
		"models/combineadmin/player/female_01.mdl",
		"models/combineadmin/player/female_02.mdl"
	},
	description = [[Vous Ãªtes un Membre du Departement Administratif, vous pouvez Ãªtre le secretaire dâ€™un Directeur de branch, ou recuperer les rapports pour lâ€™administration.]],
	weapons = {"gmod_tool","weapon_physgun","clone_card_c2","weapon_physcannon","keys"},
	command = "mda",
	category = "Departement Administratif",
	max = 3,
	salary = 850,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Membre du DA est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Membre du DA est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
TEAM_URVIP = DarkRP.createJob("UR LOURD - VIP", {
	color = Color(44, 165, 14, 255),
	model = {
		"models/player/pmc_6/pmc__07.mdl"
	},
	description = [[Vous Ãªtes une Unite de Reconfinement equipe lourdement. Vous devez faire la mÃªme chose quâ€™un UR classique, mais devez Ãªtre aux premiers rangs.]],
	weapons = {"gmod_tool","weapon_physgun","clone_card_c4","weapon_physcannon","keys","salute","robotnik_mw2_g18","weapon_752_m2_flamethrower","robotnik_mw2_f2"},
	command = "urlourd",
	category = "Departement de la Securite",
	max = 2,
	salary = 850,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un UR Lourd est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un UR Lourd est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
TEAM_AITVIP = DarkRP.createJob("AIT LOURD - VIP", {
	color = Color(44, 165, 14, 255),
	model = {
		"models/player/r6s_mute.mdl"
	},
	description = [[Vous Ãªtes un AIT equipe lourdement. Vous devez faire la mÃªme chose quâ€™un AIT classique, mais devez Ãªtre aux premiers rangs.]],
	weapons = {"pocket","keys","weapon_physcannon","salute","weapon_physgun","clone_card_c3","robotnik_mw2_acr","robotnik_mw2_m16","robotnik_mw2_de","sg_medkit"},
	command = "aitlourd",
	category = "Departement de la Securite",
	max = 2,
	salary = 850,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un AIT Lourd est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un AIT Lourd est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
TEAM_ICVIP = DarkRP.createJob("Agent de lâ€™IC LOURD - VIP", {
	color = Color(44, 165, 14, 255),
	model = {
		"models/player/auditor/r6s/thatcher.mdl"
	},
	description = [[Vous Ãªtes un membre lourdement arme de votre EIT si celle-ci le permet.]],
	weapons = {"pocket","keys","weapon_physcannon","salute","weapon_physgun","clone_card_c1","robotnik_mw2_acr","robotnik_mw2_m16","robotnik_mw2_de","sg_medkit"},
	command = "iclourd",
	category = "INSURRECTION DU CHAOS",
	max = 2,
	salary = 850,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
			if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Agent de lâ€™IC est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Agent de lâ€™IC est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_DIST = DarkRP.createJob("Specialiste du confinement - VIP", {
	color = Color(204, 0, 255, 255),
	model = {
		"models/fart/ragdolls/css/counter_sas_player.mdl"
	},
	description = [[Vous Ãªtes un Specialiste du Confinement. Vous Ãªtes du DI&ST et vous Ãªtes appeles pour la reparation de confinements et/ou concevoir ceux-ci.]],
	weapons = {"gmod_tool","clone_card_c3","keys","weapon_physcannon","wep_jack_job_drpradio","sg_medkit","robotnik_mw2_mg4"},
	command = "dist",
	category = "DI&ST",
	max = 5,
	salary = 850,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Membre du DI&ST est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Membre du DI&ST est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_DRIC = DarkRP.createJob("Docteur de Medicus IC - VIP", {
	color = Color(226, 218, 5, 255),
	model = {
		"models/lt_c/sniper_elite/dr_schwaiger.mdl"
	},
	description = [[Vous Ãªtes un membre de la cellule Medicus. Vous Ãªtes envoyes pour soigner les blesses sur le front.]],
	weapons = {"gmod_tool","weapon_medkit","keys","robotnik_mw2_m10","Salute","sg_medkit","med_kit"},
	command = "dric",
	category = "INSURRECTION DU CHAOS",
	max = 1,
	salary = 850,
	admin = 0,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
    ply:SetHealth(150)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Docteur est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Docteur est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_DRIC = DarkRP.createJob("Agent de lâ€™IC", {
	color = Color(226, 218, 5, 255),
	model = {
		"models/player/pmc_5/pmc__02.mdl",
		"models/player/pmc_5/pmc__03.mdl",
		"models/player/pmc_5/pmc__04.mdl",
		"models/player/pmc_5/pmc__05.mdl",
		"models/player/pmc_5/pmc__06.mdl",
		"models/player/pmc_5/pmc__07.mdl",
		"models/player/pmc_5/pmc__08.mdl",
		"models/player/pmc_5/pmc__09.mdl",
		"models/player/pmc_5/pmc__10.mdl",
		"models/player/pmc_5/pmc__11.mdl",
		"models/player/pmc_5/pmc__12.mdl",
		"models/player/pmc_5/pmc__13.mdl",
		"models/player/pmc_5/pmc__14.mdl"
	},
	description = [[Vous Ãªtes un agent de lâ€™Insurrection du Chaos. Vous Ãªtes un membre de lâ€™EIT CaC ou un membre dâ€™une autre EIT si vous avez decide de vous specialiser. Votre classe peut Ãªtre Sigma, Delta ou Gamma.]],
	weapons = {"robotnik_mw2_ak","gmod_tool","keys","clone_card_c1","robotnik_mw2_de","Salute","robotnik_mw2_uzi","wep_jack_job_drpradio","weapon_physcannon"},
	command = "idc",
	category = "INSURRECTION DU CHAOS",
	max = 10,
	salary = 150,
	admin = 0,
	level = 4,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
			if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Agent de lâ€™IC est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Agent de lâ€™IC est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_LTIC = DarkRP.createJob("Lieutenant de l'IC - IC", {
	color = Color(226, 218, 5, 255),
	model = {
		"models/player/pmc_5/pmc__01.mdl"
	},
	description = [[Vous Ãªtes un Lieutenant dâ€™une EIT. Vous Ãªtes le second du commandant de lâ€™EIT ou vous dirigez une equipe qui compose lâ€™EIT tout en respectant les ordres donnes par le commandant. Vous Ãªtes de classe BÃªta.]],
	weapons = {"gmod_tool","keys","clone_card_c1","robotnik_mw2_m9","Salute","robotnik_mw2_m16","robotnik_mw2_pp","wep_jack_job_drpradio","weapon_physcannon","robotnik_mw2_rpg"},
	command = "ltidc",
	category = "INSURRECTION DU CHAOS",
	max = 4,
	salary = 155,
	admin = 0,
	level = 6,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 175, 0, 175 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(225)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Agent de lâ€™IC est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Agent de lâ€™IC est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_CMDIC = DarkRP.createJob("Commandant d'EIT - IC", {
	color = Color(226, 218, 5, 255),
	model = {
		"models/player/pmc_5/pmc__01.mdl"
	},
	description = [[Vous Ãªtes un commandant dâ€™EIT, vous dirigez les membres de votre EIT et coordonnez les operations de votre EIT. Vous Ãªtes de classe Alpha.]],
	weapons = {"gmod_tool","keys","clone_card_c1","robotnik_mw2_de","Salute","robotnik_mw2_fam","robotnik_mw2_uzi","wep_jack_job_drpradio","weapon_physcannon"},
	command = "cmdidc",
	category = "INSURRECTION DU CHAOS",
	max = 1,
	salary = 180,
	admin = 0,
	level = 5,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un CMD de lâ€™IC est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un CMD de lâ€™IC est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_ARMURIER = DarkRP.createJob("Intendant(e)", {
	color = Color(158, 149, 149, 255),
	model = {
		"models/player/suits/male_03_closed_coat_tie.mdl"},
	description = [[Vous Ãªtes un Intendant, vous vendez des armes au personnel qualifie]],
	weapons = {"clone_card_c1"},
	command = "intendant",
	category = "Civil",
	max = 2,
	salary = 55,
	admin = 0,
	level = 2,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 50, 0, 50 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end
})

---------------------------------------------------------------------------]]
TEAM_CLASSED = DarkRP.createJob("Classe D", {
	color = Color(226, 154, 12, 255),
	model = {
		"models/player/kerry/class_d_1.mdl",
		"models/player/kerry/class_d_2.mdl",
		"models/player/kerry/class_d_3.mdl",
		"models/player/kerry/class_d_4.mdl",
		"models/player/kerry/class_d_5.mdl",
		"models/player/kerry/class_d_6.mdl",
		"models/player/kerry/class_d_7.mdl",
		"models/humans/orange1/player/female_01.mdl",
		"models/humans/orange1/player/female_02.mdl",
		"models/humans/orange1/player/female_03.mdl",
		"models/humans/orange1/player/female_04.mdl",
		"models/humans/orange1/player/female_06.mdl",
		"models/humans/orange1/player/female_07.mdl",
		"models/humans/orange1/player/male_01.mdl",
		"models/humans/orange1/player/male_02.mdl",
		"models/humans/orange1/player/male_03.mdl",
		"models/humans/orange1/player/male_04.mdl",
		"models/humans/orange1/player/male_05.mdl",
		"models/humans/orange1/player/male_06.mdl",
		"models/humans/orange1/player/male_07.mdl",
		"models/humans/orange1/player/male_08.mdl",
		"models/humans/orange1/player/male_09.mdl"},
	description = [[Vous Ãªtes un membre du personnel de classe D]],
	weapons = {""},
	command = "classed",
	category = "Civil",
	max = 40,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,	
})

---------------------------------------------------------------------------]]
TEAM_CONCIERGE = DarkRP.createJob("Concierge", {
	color = Color(204, 204, 204, 255),
	model = {
		"models/player/kerry/class_jan_2.mdl",
		"models/player/kerry/class_jan_3.mdl",
		"models/player/kerry/class_jan_4.mdl",
		"models/player/kerry/class_jan_5.mdl",
		"models/player/kerry/class_jan_6.mdl",
		"models/player/kerry/class_jan_7.mdl"
	},
	description = [[Vous Ãªtes un Concierge, vous Ãªtes du Departement de la logistique, vous vous occupez de la maintenance des lieux]],
	weapons = {"clone_card_c1","salute"},
	command = "concierge",
	category = "Civil",
	max = 4,
	salary = 35,
	admin = 0,
	level = 2,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 50, 0, 50 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end
})

---------------------------------------------------------------------------]]
--------------------------------SCP----------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_SCP1048 = DarkRP.createJob("SCP-1048", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/cpthazama/scp/1048.mdl",
		"models/cpthazama/scp/1048a.mdl"
	},
	description = [[Vous etes SCP 1048]],
	weapons = {"scp_1048","none","weapon_camo","clone_card_c3"},
	command = "scp1048",
	category = "SCP Classe Keter",
	max = 1,
	salary = 1048,
	admin = 0,
	level = 12,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
		if  ( SERVER ) then
				ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
	end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.9, GAMEMODE.Config.runspeed * 2.0)
    ply:SetHealth(999999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-1048 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-1048 est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_SCP035 = DarkRP.createJob("SCP-035", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/vinrax/player/035_player.mdl",
		"models/logone/player/035_player.mdl"
	},
	description = [[Vous etes SCP 035]],
	weapons = {"scpcouteau","weapon_camo","none","clone_card_c3"},
	command = "scp035",
	category = "SCP Classe Keter",
	max = 1,
	salary = 350,
	admin = 0,
	level = 12,
	vote = false,
	hasLicense = false,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
		if  ( SERVER ) then
				ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
	end
    ply:SetHealth(999999)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-035 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-035 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP049 = DarkRP.createJob("SCP-049", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/scp/049/scp.mdl"
	},
	description = [[Vous etes SCP 049]],
	weapons = {"weapon_fists","none","scpcouteau","scp049swep","the_cure","scp_049"},
	command = "scp049",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 490,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
		if  ( SERVER ) then
				ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
	end
    ply:SetHealth(999999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-049 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-049 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP082 = DarkRP.createJob("SCP-082", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/players/mj_dbd_laurie.mdl"
	},
	description = [[Vous etes SCP 082]],
	weapons = {"weapon_fists","none"},
	command = "scp082",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 820,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	modelScale = 1.2,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 200 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
			if  ( SERVER ) then
				ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
	end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(9999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-082 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-082 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP106 = DarkRP.createJob("SCP-106", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/scp/106/scp.mdl",
		"models/scp/106/unity/unity_scp_106_player.mdl"
	},
	description = [[Vous etes SCP 106]],
	weapons = {"106_weapon","weapon_camo","weapon_scp106","weapon_sillyzombieclaw","none"},
	command = "scp106",
	category = "SCP Classe Keter",
	max = 1,
	salary = 1060,
	admin = 0,
	level = 12,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
			if  ( SERVER ) then
				ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
	end
    ply:SetHealth(9999999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-106 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-106 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP096 = DarkRP.createJob("SCP-096", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/scp096anim/player/scp096pm_raf.mdl"
	},
	description = [[Vous etes SCP 096]],
	weapons = {"weapon_scp096","keys","none","pocket"},
	command = "scp096",
	category = "SCP Classe Euclid",
	max = 960,
	salary = 0,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
		if  ( SERVER ) then
			ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
	end
    ply:SetHealth(9999999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-096 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-096 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP131 = DarkRP.createJob("SCP-131 - VIP", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/scprp/scp131a2.mdl",
		"models/scprp/scp131b2.mdl"
	},
	description = [[Vous etes SCP 131]],
	weapons = {"none"},
	command = "scp131",
	category = "SCP Classe Safe",
	max = 2,
	salary = 131,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
		if  ( SERVER ) then
			ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
	end
    ply:SetHealth(650)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","user","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-131 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-131 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP999 = DarkRP.createJob("SCP-999 - VIP", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/scp/999/jq/scp_999_pmjq.mdl"
	},
	description = [[Vous etes SCP 999]],
	weapons = {"clone_card_c2","hello","med_kit"},
	command = "scp999",
	category = "SCP Classe Safe",
	max = 1,
	salary = 999,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(999999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","user","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-999 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-999 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP682 = DarkRP.createJob("SCP-682", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/scp_682/scp_682.mdl"
	},
	description = [[Vous etes SCP-682.]],
	weapons = {"weapon_scp682","none"},
	command = "scp682",
	category = "SCP Classe Keter",
	max = 1,
	salary = 682,
	admin = 0,
	level = 12,
	vote = false,
	hasLicense = false,
	modelScale = 1.2,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(9999999)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-682 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-682 est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_SCP202 = DarkRP.createJob("SCP-202", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/kuma96/assaultron/assaultron_pm.mdl"
	},
	description = [[Vous etes SCP 202]],
	weapons = {"none","weapon_sillyzombieclaw"},
	command = "scp202",
	category = "SCP Classe Safe",
	max = 1,
	salary = 202,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(300)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-202 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-202 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP173 = DarkRP.createJob("SCP-173", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/cpthazama/scp/173.mdl"
	},
	description = [[Vous etes SCP 173]],
	weapons = {"weapon_scp173","none"},
	command = "scp173",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 1730,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(9999999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-173 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-173 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP066 = DarkRP.createJob("SCP-066", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/scp/066/scp.mdl"
	},
	description = [[Vous etes SCP 066]],
	weapons = {"weapon_scp066","scp066_weapon_tfs","none","keys","pocket"},
	command = "scp066",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 660,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
						if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-066 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-066 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP966 = DarkRP.createJob("SCP-966", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/vasey105/scp/scp966/scp-966.mdl"
	},
	description = [[Vous etes SCP 966]],
	weapons = {"weapon_sillyzombieclaw_v2","weapon_camo","scpcouteau"},
	command = "scp966",
	category = "SCP Classe Euclid",
	max = 2,
	salary = 0,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(99999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhitList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-966 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-966 est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_SCP343 = DarkRP.createJob("SCP-343 - VIP", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/gow3_zeus.mdl"
	},
	description = [[Vous etes SCP-343.]],
	weapons = {"clone_card_c1","med_kit","weapon_scp106","gmod_tool","weapon_physgun","manhack_welder","weapon_cpt_spell_base","voice_amplifier","realistic_hook","weapon_stalkerscream","weapon_physcannon","weapon_camo","wep_jack_job_drpradio"},
	command = "scp343",
	category = "SCP Classe Safe",
	max = 1,
	salary = 3434,
	admin = 0,
	level = 20,
	vote = false,
	hasLicense = false,
	modelScale = 1.2,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    ply:SetHealth(999999)
	end,
    customCheck = function(ply) return 
    table.HasValue({"superadmin","admin","VIP"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-343 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-343 est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
TEAM_SCP939 = DarkRP.createJob("SCP-939", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/scpbreach/scp939redone/scp_939_redone_pm.mdl",
		"models/scp/939/unity/unity_scp_939.mdl"
	},
	description = [[Vous etes SCP-939.]],
	weapons = {"weapon_scp939swep","weapon_camo","none"},
	command = "scp939",
	category = "SCP Classe Keter",
	max = 2,
	salary = 3999,
	admin = 0,
	level = 12,
	vote = false,
	hasLicense = false,
	modelScale = 1.0,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(5000)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-939 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-939 est mort.")
		end
	end	
})


---------------------------------------------------------------------------]]
TEAM_SCP2006 = DarkRP.createJob("SCP-1507", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/tsbb/animals/flamingo.mdl",
	},
	description = [[Vous Ãªtes SCP 1507]],
	weapons = {"m9k_damascus","clone_card_c1"},
	command = "scp1507",
	category = "SCP Classe Euclid",
	max = 8,
	salary = 1507,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-1507 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-1507 est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
TEAM_SCP188FR = DarkRP.createJob("SCP-188-FR", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/dawson/death_a_grim_bundle_pms/death/death.mdl",
		"models/dawson/death_a_grim_bundle_pms/death_classic/death_classic.mdl",
		"models/dawson/death_a_grim_bundle_pms/death_painted/death_painted.mdl"
	},
	description = [[Vous Ãªtes SCP-188-FR]],
	weapons = {"m9k_machete","clone_card_c1","m9k_damascus"},
	command = "scp188fr",
	category = "SCP Classe Safe",
	max = 1,
	salary = 1888,
	admin = 0,
	level = 8,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    ply:SetHealth(300)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-188-FR est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-188-FR est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
TEAM_SCP006FR = DarkRP.createJob("SCP-006-FR", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/kuristaja/walker/walker.mdl"
	},
	description = [[Vous etes SCP-006-FR.]],
	weapons = {"m9k_machete","none","keys","pocket"},
	command = "scp006fr",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 1685,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	modelScale = 1.2,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(300)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-006-FR est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-006-FR est mort.")
		end
	end	
})


---------------------------------------------------------------------------]]
TEAM_SCP513 = DarkRP.createJob("SCP-513-1", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/arachnit/gmod/invisible_pm/invisible_pm.mdl"
	},
	description = [[Vous etes SCP-513-1. Vous apparaissez quand la Cloche sonne.]],
	weapons = {"keys","m9k_knife","pocket","scp-513"},
	command = "scp513",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 513,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(999999)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-513-1 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-513-1 est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
---------------------------------SCP-FIN-----------------------------------]]
---------------------------------------------------------------------------]]

TEAM_SCP1111 = DarkRP.createJob("Chien d'Attaque SCP - VIP", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/pierce/police_k9.mdl"
	},
	description = [[Vous etes un chien d'attaque de la Fondation SCP.]],
	weapons = {"weapon_pet"},
	command = "scp1111",
	category = "Departement de la Securite",
	max = 2,
	salary = 250,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.9)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un chien est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un chien est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]

TEAM_SCHIENIC = DarkRP.createJob("Chien d'Attaque IC - VIP", {
	color = Color(90, 104, 33, 255),
	model = {
		"models/falloutdog/falloutdog.mdl"
	},
	description = [[Vous etes un chien d'attaque de l'Insurrection du Chaos.]],
	weapons = {"weapon_pet"},
	command = "chienic",
	category = "INSURRECTION DU CHAOS",
	max = 2,
	salary = 250,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
	PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.9)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un chien est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un chien est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_INFIRMIER = DarkRP.createJob("Docteur", {
	color = Color(158, 149, 149, 255),
	model = {
		"models/redninja/pmedic01.mdl",
		"models/redninja/pmedic02.mdl",
		"models/redninja/pmedic01f.mdl",
		"models/redninja/pmedic02f.mdl"
	},
	description = [[Vous Ãªtes un medecin, vous soignez avec des /me et des /roll]],
	weapons = {"weapon_medkit","clone_card_c1","salute","sg_medkit","sg_adrenaline","med_kit"},
	command = "infirmier",
	category = "Civil",
	max = 2,
	salary = 650,
	admin = 0,
	level = 2,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 50, 0, 50 ) ) end,
	PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
})

---------------------------------------------------------------------------]]
TEAM_DSI = DarkRP.createJob("Agent DSI", {
	color = Color(111, 173, 147, 255),
	model = {
		"models/player/kerry/class_securety.mdl",
		"models/player/r6s_iq.mdl",
		"models/player/bobert/aoharley.mdl",
		"models/player/blackmesa_scientific.mdl"
	},
	description = [[Vous operez pour le Departement de Securite Interieur, Vous traquez les traitres et sanctionner les incompetents, Vous etes la police de la police.]],
	weapons = {"robotnik_mw2_m16","mwr_colt45","robotnik_mw2_de","stunstick","salute","wep_jack_job_drpradio","clone_card_c3","gmod_tool","weapon_cuff_rope","robotnik_mw2_fam","sg_adrenaline"},
	command = "agentdsi",
	category = "Departement de la Securite",
	max = 10,
	salary = 550,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.3)
    ply:SetHealth(200)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Agent DSI est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Agent DSI est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
TEAM_CDSI = DarkRP.createJob("Commandement DSI", {
	color = Color(111, 173, 147, 255),
	model = {
		"models/player/n7legion/killingfloor2/horzine_sec_suit_male.mdl"
	},
	description = [[Vous operez pour le Departement de Securite Interieur, Vous traquez les traitres et sanctionner les incompetents, Vous etes la police de la police.]],
	weapons = {"robotnik_mw2_scrh","robotnik_i2_m14ebr","robotnik_mw2_uzi","salute","wep_jack_job_drpradio","clone_card_c5","gmod_tool","stunstick","sg_adrenaline"},
	command = "cmdsi",
	category = "Departement de la Securite",
	max = 3,
	salary = 650,
	admin = 0,
	level = 20,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 200, 0, 200 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_5" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.3)
    ply:SetHealth(300)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Commandant DSI est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Commandant DSI est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]
TEAM_SCP087 = DarkRP.createJob("SCP-087-1", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/scp/scp_087_b_3.mdl"
	},
	description = [[Vous etes SCP-087-1. Vous apparaissez seulement dans les escaliers. Utilisez la demon vision pour voir dans le noir.]],
	weapons = {"weapon_stalkerscream","demon_vision"},
	command = "scp087",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 870,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
								if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(999999)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-087-B-3 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-087-B-3 est mort.")
		end
	end	
})
---------------------------------------------------------------------------]]
---------------------------------------------------------------------------]]

TEAM_STAFFSCP = DarkRP.createJob("STAFF SCP", {
	color = Color(158, 149, 149, 255),
	model = {
		"models/burd/scp1471/scp1471.mdl"
	},
	description = [[Administrateur SCP RP. Besoin d'un Admin?]],
	weapons = {"clone_card_c5","keys","gmod_tool","weapon_physgun","facepunch"},
	command = "staff",
	max = 20,
	salary = 666,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,	
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 150, 0, 150 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_5" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(999999999)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier Admin",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Admin est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Admin est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]
TEAM_VALYRIEN = DarkRP.createJob("Agent Valyrien", {
	color = Color(214, 45, 170, 255),
	model = {
		"models/player/pmc_2/pmc__01.mdl",
        "models/player/pmc_2/pmc__02.mdl",
        "models/player/pmc_2/pmc__03.mdl",
        "models/player/pmc_2/pmc__04.mdl",
        "models/player/pmc_2/pmc__05.mdl",
        "models/player/pmc_2/pmc__06.mdl",
        "models/player/pmc_2/pmc__07.mdl",
        "models/player/pmc_2/pmc__08.mdl",
        "models/player/pmc_2/pmc__09.mdl",
        "models/player/pmc_2/pmc__09.mdl",
        "models/player/pmc_2/pmc__11.mdl",
        "models/player/pmc_2/pmc__12.mdl",
        "models/player/pmc_2/pmc__13.mdl",
        "models/player/pmc_2/pmc__14.mdl",
		"models/player/imc_blisk.mdl"
	},
	description = [[Vous etes un agent Valyrien, vous prennez part aux operations militaires en Europe.]],
	weapons = {"robotnik_mw2_m10","robotnik_mw2_ak","robotnik_mw2_44","stunstick","salute","wep_jack_job_drpradio","clone_card_c3","gmod_tool","weapon_cuff_rope","weapon_bf3_famas"},
	command = "agentvalyrien",
	category = "Departement de la Securite",
	max = 10,
	salary = 350,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.3)
    ply:SetHealth(250)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin","AdminTest","user"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Agent Valyrien est mort")
		else
			DarkRP.notifyAll(0, 4, "Un Agent Valyrien est mort")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_DADUSITE = DarkRP.createJob("Directeur Adjoint du site", {
	color = Color(132, 132, 132, 255),
	model = {
		"models/combineadmin/player/female_02.mdl"
	},
	description = [["Vous Ãªtes le directeur adjoint du site. Vous dirigez tout les effectifs, vous organisez des reunions et vous vous occupez dâ€™accepter les experimentation sur des SCP dangereux. Tout cela en l'absence du Directeur du Site."]],
	weapons = {"keys","weapon_physgun","clone_card_c4","gmod_tool","weapon_physcannon"},
	command = "diradjsite",
	category = "Departement Administratif",
	max = 1,
	salary = 650,
	admin = 0,
	level = 20,
	vote = false,
	hasLicense = false,
	hasRadio = true,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_4" )
    end
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0, GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(150)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"admin","AdminTest","superadmin"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier WhiteList",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Directeur Adjoint du site est mort.")
		else
			DarkRP.notifyAll(0, 4, "Directeur Adjoint du site est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_INGE = DarkRP.createJob("Ingenieur en robotique", {
	color = Color(204, 0, 255, 255),
	model = {
		"models/player/blackmesa_scientific.mdl",
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous Ãªtes un ingenieur du DI&ST specialise dans la robotique.]],
	weapons = {"gmod_tool","clone_card_c3","keys","weapon_physcannon","wep_jack_job_drpradio"},
	command = "ingenieur",
	category = "DI&ST",
	max = 5,
	salary = 455,
	admin = 0,
	level = 13,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Ingenieur du DI&ST est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Ingenieur du DI&ST est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_CHERDIAA = DarkRP.createJob("Chercheur de la D.I.A.A.", {
	color = Color(204, 0, 255, 255),
	model = {
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous Ãªtes un chercheur de la Division des Intelligences Artificielles Autonomes, vous vous occupez du bon fonctionnement des IAAs et IAs du site.]],
	weapons = {"gmod_tool","clone_card_c3","keys","weapon_physcannon","wep_jack_job_drpradio"},
	command = "diaa",
	category = "DI&ST",
	max = 10,
	salary = 255,
	admin = 0,
	level = 13,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 100, 0, 100 ) ) end,
	PlayerSpawn = function(ply)
							if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_3" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Chercheur du D.I.A.A. est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Chercheur du D.I.A.A. est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_TECHNITIEN = DarkRP.createJob("Technicien", {
	color = Color(204, 0, 255, 255),
	model = {
		"models/player/blackmesa_scientific.mdl",
		"models/player/bobert/aoharley.mdl"
	},
	description = [[Vous Ãªtes un Technicien dans le DI&ST.]],
	weapons = {"gmod_tool","clone_card_c2","keys","weapon_physcannon","wep_jack_job_drpradio"},
	command = "technicien01",
	category = "DI&ST",
	max = 5,
	salary = 255,
	admin = 0,
	level = 5,
	vote = false,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerSpawn = function(ply)
					if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(100)
	end,
	customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
	CustomCheckFailMsg = "Metier VIP",
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un Technicien du DI&ST est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un Technicien du DI&ST est mort.")
		end
	end	
})


---------------------------------------------------------------------------]]

TEAM_SCP053 = DarkRP.createJob("SCP-053", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/dewobedil/no_game_no_life/shiro/default_p.mdl"
	},
	description = [[Vous etes SCP-053.]],
	weapons = {"scpcouteau","none","keys","pocket"},
	command = "scp053",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 530,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	modelScale = 0.8,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    ply:SetHealth(300)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-053 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-053 est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP011 = DarkRP.createJob("SCP-011-FR", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/arachnit/gmod/invisible_pm/invisible_pm.mdl"
	},
	description = [[Vous etes SCP-011-FR.]],
	weapons = {"scpcouteau"},
	command = "scp011",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 110,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	modelScale = 0.8,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_1" )
    end
    ply:SetHealth(9999999)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-011-FR est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-011-FR est mort.")
		end
	end	
})

---------------------------------------------------------------------------]]

TEAM_SCP0198 = DarkRP.createJob("SCP-029", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/faith.mdl"
	},
	description = [[Vous etes SCP-029.]],
	weapons = {"none","keys","pocket","weapon_cpt_possessor","predator_combistick","scpcouteau","weapon_sillyzombieclaw"},
	command = "scp0299",
	category = "SCP Classe Euclid",
	max = 1,
	salary = 290,
	admin = 0,
	level = 10,
	vote = false,
	hasLicense = false,
	modelScale = 0.9,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(999)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "SCP-029 est mort.")
		else
			DarkRP.notifyAll(0, 4, "SCP-029 est mort.")
		end
	end	
})


---------------------------------------------------------------------------]]

TEAM_WEAPONSELLER = DarkRP.createJob("Vendeur d'arme", {
	color = Color(252, 13, 13, 255),
	model = {
		"models/player/blackmesa_guard.mdl"
	},
	description = [[Vous etes vendeur d'arme pour les AIT, UR, UM.]],
	weapons = {"none","keys","pocket","clone_card_c1"},
	command = "weaponseller",
	category = "Civil",
	max = 1,
	salary = 45,
	admin = 0,
	level = 2,
	vote = false,
	hasLicense = false,
	candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerLoadout = function(ply)     ply:SetArmor( math.Clamp( ( ply:Armor() or 100 ) + 0, 0, 0 ) ) end,
    PlayerSpawn = function(ply)
				if  ( SERVER ) then
		ply:SCP_Inventory_GiveLoadout( "card_lvl_2" )
    end
    ply:SetHealth(125)
	end,
    customCheck = function(ply) return 
    table.HasValue({"VIP","user","admin","superadmin","AdminTest"}, ply:GetNWString("usergroup"))
    end,
		PlayerDeath = function(ply, weapon, killer)
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "Un vendeur d'arme est mort.")
		else
			DarkRP.notifyAll(0, 4, "Un vendeur d'arme vient de mourir.")
		end
	end	
})

---------------------------------------------------------------------------]]
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CLASSED


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)