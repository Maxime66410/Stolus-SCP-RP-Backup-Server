SWEP.Category 			    = "SCP RP Sweps"
SWEP.PrintName				= "SCP couteau"			
SWEP.Author					= "[HL?]John Oakman"
SWEP.Instructions			= "Clic gauche pour frapper"
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
SWEP.Primary.Sound = ("weapons/blades/slash.mp3") 
SWEP.HoldType 				= "knife"

function SWEP:Initialize()
        self:SetWeaponHoldType( self.HoldType )
end

function SWEP:PrimaryAttack()
	
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.3 )
	
 	local trace = self.Owner:GetEyeTrace();
	if trace.HitPos:Distance(self.Owner:GetShootPos()) <= 75 then
			self.Owner:SetAnimation( PLAYER_ATTACK1 );
			self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK );
				bullet = {}
				bullet.Num    = 1
				bullet.Src    = self.Owner:GetShootPos()
				bullet.Dir    = self.Owner:GetAimVector()
				bullet.Spread = Vector(0, 0, 0)
				bullet.Tracer = 0
				bullet.Force  = 25
				bullet.Damage = 99999999999
			self.Owner:FireBullets(bullet) 
	else
		self.Owner:SetAnimation( PLAYER_ATTACK1 );
		self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK );
		self.Weapon:EmitSound( "weapons/blades/slash"..math.random(1,4)..".mp3" )
	end
	
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.43 )
end