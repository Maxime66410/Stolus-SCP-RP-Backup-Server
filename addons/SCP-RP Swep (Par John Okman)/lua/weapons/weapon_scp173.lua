
-----------------------------------------------------

-----------------------------------------------------

-----------------------------------------------------
SWEP.Category 			    = "SCP RP"
SWEP.PrintName				= "SCP 173"			
SWEP.Author					= "[HL?]John Oakman"
SWEP.Instructions			= "Clique gauche pour tuer | Clique droit pour se téléporter"
SWEP.ViewModelFOV = 56
SWEP.Spawnable 				= true
SWEP.AdminOnly 				= false
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Delay          = 2
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "None"
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "None"
SWEP.Weight					= 3
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false
SWEP.Slot					= 0
SWEP.SlotPos				= 4
SWEP.DrawAmmo				= false
SWEP.DrawCrosshair			= true
SWEP.IdleAnim				= true
SWEP.ViewModel				= "models/weapons/v_knife_x.mdl"
SWEP.WorldModel				= "models/weapons/w_extreme_ratio.mdl"
SWEP.IconLetter			= "w"
SWEP.Primary.Sound = ("Weapon_Knife.Slash") 
SWEP.HoldType 				= "knife"


function SWEP:Initialize()
        self:SetWeaponHoldType( self.HoldType )
end
 
function SWEP:PrimaryAttack()
	
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.3 )
	
 	local trace = self.Owner:GetEyeTrace();
	if trace.HitPos:Distance(self.Owner:GetShootPos()) <= 75 then
				bullet = {}
				bullet.Num    = 1
				bullet.Src    = self.Owner:GetShootPos()
				bullet.Dir    = self.Owner:GetAimVector()
				bullet.Spread = Vector(0, 0, 0)
				bullet.Tracer = 0
				bullet.Force  = 25
				bullet.Damage = 999
			self.Owner:FireBullets(bullet) 
		self.Weapon:EmitSound("Weapon_Knife.Hit")
	else
		self.Weapon:EmitSound( "Weapon_Knife.Slash" )
	end
	
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.43 )
end

local delay = 1
function SWEP:SecondaryAttack()
if delay == 0 then return end
delay = 0
timer.Simple(0.5, function() delay = 1 end)
if !SERVER then return end
	trace = self.Owner:GetEyeTraceNoCursor()
	local droptofloor = ents.Create( "prop_physics" )
if ( !IsValid( droptofloor ) ) then return end // Check whether we successfully made an entity, if not - bail
droptofloor:SetModel( "models/props_junk/watermelon01.mdl" )
droptofloor:SetPos( trace.HitPos )
droptofloor:Spawn()
droptofloor:DropToFloor()
	self.Owner:SetPos(trace.HitPos)
	self.Owner:EmitSound("ambient/materials/rock"..math.random(1,3)..".wav")
	
droptofloor:Remove()
end

local target 
local dontloop = false
function SWEP:Reload()
if delay == 0 then return end
delay = 0
timer.Simple(1, function() delay = 1 end)

if !SERVER then return end
dontloop = false
	for k, v in ipairs(ents.FindInSphere(self.Owner:GetPos(), 750)) do
		if dontloop then return end
		if v != self.Owner and v:IsPlayer() and v:Alive() and self.Owner:IsLineOfSightClear(v) 
		
		and not (v:Team() == TEAM_SCP131A or v:Team() == TEAM_SCP131B or v:Team() == TEAM_SCP096 or v:Team() == TEAM_SCP173 or v:Team() == TEAM_SCP035 or v:Team() == TEAM_SCP049
 or v:Team() == TEAM_SCP075 or v:Team() == TEAM_SCP106 or v:Team() == TEAM_SCP1048 or v:Team() == TEAM_SCP008 or v:Team() == TEAM_SCP079 or v:Team() == TEAM_SCP006FR
 or v:Team() == TEAM_SCP999 or v:Team() == TEAM_SCP682 or v:Team() == TEAM_SCP029 or v:Team() == TEAM_SCP966 or v:Team() == TEAM_SCP666 or v:Team() == TEAM_IA)
		
		then 
			self.Owner:SetPos(v:GetPos())
			timer.Simple(1, function() self.Owner:EmitSound("ambient/materials/rock"..math.random(1,3)..".wav") end)
			v:EmitSound("scprp/NeckSnap1.mp3")
			v:ConCommand("play scprp/horror"..math.random(1,4)..".wav")
			v:Kill()
			dontloop = true 
		end
	end

end




