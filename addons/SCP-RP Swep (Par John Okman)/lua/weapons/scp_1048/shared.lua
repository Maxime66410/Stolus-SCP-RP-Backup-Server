
-----------------------------------------------------
AddCSLuaFile()
SWEP.Author = "[HLλ]John Oakman"
SWEP.Contact = ""
SWEP.Purpose = "Arme de SCP 1048"
SWEP.Instructions = "Changer discrétement quelqu'un après l'avoir amadoué et manipulé en une de vos créations | Clique gauche pour crier..."
SWEP.Category = "SCP RP"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.ViewModel = "models/weapons/v_stunbaton.mdl"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"

SWEP.PrintName = "SCP 1048 SWEP"
SWEP.Slot = 3
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1 
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.SwingSound = "Weapon_Crowbar.Single"
SWEP.HitSound = "weapons/stunstick/stunstick_fleshhit1.wav"

SWEP.HoldType = "normal"

SWEP.AllowDrop = true
SWEP.Kind = WEAPON_MELEE


SWEP.Delay = 1
SWEP.delaylol = 0
SWEP.Range = 100
SWEP.Damage = 0
SWEP.RemoveCan = true
SWEP.OwnerPos = ""
SWEP.DocAndResearch = {
	TEAM_BRIGHT, 
	TEAM_RIGHTS, 
	TEAM_CLEF, 
	TEAM_KONDRAKI, 
	TEAM_GEARS,
	TEAM_RESEARCHER
}
SWEP.MTF = {
	TEAM_MTF, 
	TEAM_MTFSNIPER, 
	TEAM_MTFBREACHER, 
	TEAM_MTFHEAVY, 
	EAM_MTFLEADER, 
	TEAM_MTFMEDIC, 
	TEAM_SECURITY, 
	TEAM_NINE
}

function SWEP:RevertNormal(ent)
	ent.IsZombie = false
	if SERVER then
		ent:SetModel(self.EntModel)
	end
end

if SERVER then
	util.AddNetworkString("SCP_Taken_Over")
end

function SWEP:PrimaryAttack()
    local ply = self.Owner
    local tr = util.TraceHull {
        start = ply:GetShootPos(),
        endpos = ply:GetShootPos() + ply:GetAimVector() * 1500,
        filter = ply,
        mins = Vector(-10, -10, -10),
        maxs = Vector(10, 10, 10)
    }
    
    local ent = tr.Entity
    if not IsValid(ply) then return end
    	ply:SetAnimation(PLAYER_ATTACK1)
    if tr.StartPos:Distance(tr.HitPos) < 150 then
        self:EmitSound(self.HitSound)
    else
        self:EmitSound(self.SwingSound)
    end

    local vm = self:GetOwner():GetViewModel()
    if not IsValid(vm) then return end
    vm:SendViewModelMatchingSequence(vm:LookupSequence("attackch"))
    vm:SetPlaybackRate(1 + 1/3)
    local duration = vm:SequenceDuration() / vm:GetPlaybackRate()
    local time = CurTime() + duration
    self:SetNextPrimaryFire(time)

    if ent:IsPlayer() and ent != ply and !ent.IsZombie then
		 if ent:Team()  == TEAM_SCP131 or ent:Team() == TEAM_SCP999 or ent:Team() == TEAM_SCP079
			or ent:Team() == TEAM_SCP008 or ent:Team() == TEAM_SCP1048 or ent:Team() == TEAM_SCP106 or ent:Team()== TEAM_SCP049
			or ent:Team() == TEAM_SCP035 or ent:Team() == TEAM_SCP173 or ent:Team() == TEAM_SCP096 or ent:Team() == TEAM_SCP682 then return end
    	if table.HasValue(self.DocAndResearch, ent:Team()) then
		
		else
			self.EntModel = ent:GetModel()
			ent.IsZombie = true
			if SERVER then
				
					ent:SetModel("models/clutter/teddybear.mdl")
			local random = math.random(1,2)
				if random == 1 then 
					ent:SetMaterial("")
				elseif random == 2 then
					ent:SetMaterial("")
				end
				
				
				net.Start("SCP_Taken_Over")
					net.WriteEntity(ply)
				net.Send(ent)
				hook.Add("PlayerDeath", "Revert_To_Model"..ply:SteamID(), function(pl)
					if pl == ent and ent.IsZombie then
						self:RevertNormal(ent)
					end
				end)
				hook.Add("OnPlayerChangedTeam", "Revert_To_Model2"..ply:SteamID(), function(pl)
				if pl == ent and ent.IsZombie then
						self:RevertNormal(ent)
					end
				end) 
				
				ent:StripWeapons() 
				ent:Give("scpcouteau")
				ent:SetHealth(1000)
			end
		end
    end
end

function SWEP:SecondaryAttack()
if not SERVER then return end

   if self.delaylol == 1 then self.Owner:PrintMessage(HUD_PRINTTALK, "2 minute de cooldown...") return end
   self.Owner:EmitSound("scprp/shriek.mp3")
   self.delaylol = 1
   timer.Simple(120, function() self.delaylol = 0 end)
   self.Owner:EmitSound("scprp/shriek.mp3")
   for k,v in pairs(ents.FindInSphere(self.Owner:GetPos(), 200)) do
		if not v:IsPlayer() then continue
		else if not v:IsLineOfSightClear(self.Owner) then continue end
			if (v == self.Owner or (v:Team() == TEAM_SCP131A or v:Team() == TEAM_SCP131B or v:Team() == TEAM_SCP096 or v:Team() == TEAM_SCP173 or v:Team() == TEAM_SCP035 or v:Team() == TEAM_SCP049
			 or v:Team() == TEAM_SCP075 or v:Team() == TEAM_SCP106 or v:Team() == TEAM_SCP1048 or v:Team() == TEAM_SCP008 or v:Team() == TEAM_SCP079 or v:Team() == TEAM_SCP006FR
			 or v:Team() == TEAM_SCP999 or v:Team() == TEAM_SCP682 or v:Team() == TEAM_SCP029 or v:Team() == TEAM_SCP087 or v:Team() == TEAM_SCP666 or v:Team() == TEAM_IA))
						then continue else
  
					timer.Simple(5, function()
						v:ConCommand("say /me sent des oreilles pousser partout sur son corp...")
					end) 
					timer.Simple(10, function()
						v:ConCommand("say /me sent des oreilles pousser dans sa gorge...")
					end)
					timer.Simple(15, function()
						v:ConCommand("say /me suffoque...")
					end)
					timer.Simple(16, function() 
						v:TakeDamage( 10, self.Owner, "scp_1048" )
					end)
					timer.Simple(17, function() 
						v:TakeDamage( 20, self.Owner, "scp_1048" )
					end)
					timer.Simple(18, function() 
						v:TakeDamage( 30, self.Owner, "scp_1048" )
					end)
					timer.Simple(19, function() 
						v:TakeDamage( 40, self.Owner, "scp_1048" )
					end)
					timer.Simple(20, function() 
						v:TakeDamage( 10000000, self.Owner, "scp_1048" )
					end)
			end
		end
	end
end

function SWEP:Reload()
    if true then return false end
end

function SWEP:Think()
    return false
end

if CLIENT then
	net.Receive("SCP_Taken_Over", function()
		local ply = net.ReadEntity()
		RunConsoleCommand("say", "/ad J'ai été infecté par: "..ply:Nick())
	end)
end


