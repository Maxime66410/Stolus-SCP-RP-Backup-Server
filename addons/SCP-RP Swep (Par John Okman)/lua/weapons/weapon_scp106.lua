
-----------------------------------------------------
SWEP.Category 			    = "SCP RP"
SWEP.PrintName				= "SCP106"			
SWEP.Author					= "[HLλ]John Oakman"
SWEP.Instructions			= "Clique gauche pour frapper | Clique droit pour envoyer dans la dimension de poche"
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
				bullet.Damage = 200
			self.Owner:FireBullets(bullet) 
		self.Weapon:EmitSound("Weapon_Knife.Hit")
	else
		self.Weapon:EmitSound( "Weapon_Knife.Slash" )
	end
	
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.43 )
end

function SWEP:SecondaryAttack()
	if not SERVER then return end
	local trace = self.Owner:GetEyeTrace()
	if trace.Entity:IsPlayer() then trace.Entity:SetPos(Vector(-788.348328, -10810.458008, 744.031250)) end

end









