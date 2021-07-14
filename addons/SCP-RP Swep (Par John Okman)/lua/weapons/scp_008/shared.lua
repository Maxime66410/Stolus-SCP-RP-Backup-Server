
-----------------------------------------------------
AddCSLuaFile()
SWEP.Author = "[HLλ]John Oakman"
SWEP.Contact = ""
SWEP.Purpose = "Arme de SCP 008"
SWEP.Instructions = "Répendez la maladie"
SWEP.Category = "SCP RP"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.ViewModel = "models/weapons/v_stunbaton.mdl"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"

SWEP.PrintName = "SCP 008 SWEP"
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
SWEP.Range = 100
SWEP.Damage = 0
SWEP.RemoveCan = true
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
			 if ent:Team() == TEAM_SCP131B or ent:Team() == TEAM_SCP131A or ent:Team() == TEAM_SCP999 or ent:Team() == TEAM_SCP006FR or ent:Team() == TEAM_SCP079
			or ent:Team() == TEAM_SCP008 or ent:Team() == TEAM_SCP1048 or ent:Team() == TEAM_SCP106 or ent:Team() == TEAM_SCP966 or ent:Team() == TEAM_SCP049
			or ent:Team() == TEAM_SCP035 or ent:Team() == TEAM_SCP173 or ent:Team() == TEAM_SCP096 or ent:Team() == TEAM_SCP682 then return end
    	if table.HasValue(self.DocAndResearch, ent:Team()) then
		
		else
			self.EntModel = ent:GetModel()
			ent.IsZombie = true
			if SERVER then
				
					ent:SetModel("models/player/zombie_classic.mdl")

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
				ent:SetHealth(250)
				ent:StripWeapons()
				ent:Give("weapon_fists")
				ent:Give("scp_008")
			end
		end
    end
end

function SWEP:SecondaryAttack()
   if true then return false end
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