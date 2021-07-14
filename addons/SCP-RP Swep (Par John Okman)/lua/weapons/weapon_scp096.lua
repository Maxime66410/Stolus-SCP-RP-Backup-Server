
-----------------------------------------------------

-----------------------------------------------------
SWEP.Category 			    = "SCP RP"
SWEP.PrintName				= "SCP096"			
SWEP.Author					= "Vinrax"
SWEP.Instructions			= "Now you is SCP096"
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
SWEP.ViewModel				= "models/weapons/v_arms_scp096.mdl"
SWEP.WorldModel				= ""
SWEP.IconLetter			= "w"
SWEP.Primary.Sound = ("weapons/scp96/attack1.wav") 
SWEP.HoldType 				= "knife"
if (CLIENT) then
SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/entities/weapon_scp096" )
	
	killicon.Add( "kill_icon_scp096", "vgui/icons/kill_icon_scp096", Color( 255, 255, 255, 255 ) )
end

function SWEP:Initialize()
        self:SetWeaponHoldType( self.HoldType )
end

function SWEP:Initialize()
	util.PrecacheSound("weapons/scp96/attack1.wav")
	util.PrecacheSound("weapons/scp96/attack2.wav")
	util.PrecacheSound("weapons/scp96/096_1.wav")
	util.PrecacheSound("weapons/scp96/096_2.wav")
	util.PrecacheSound("weapons/scp96/096_3.wav")
	util.PrecacheSound("weapons/scp96/096_idle1.wav")
	util.PrecacheSound("weapons/scp96/096_idle2.wav")
	util.PrecacheSound("weapons/scp96/096_idle3.wav")
end

function SWEP:NormalSpeed() -- Resets the speed
	if self.Owner:IsValid() then
	self.Owner:SetRunSpeed(360)
	self.Owner:SetWalkSpeed(210)
	end
end

function SWEP:CustomSpeed() -- New speed
	if self.Owner:IsValid() then
	self.Owner:SetRunSpeed(800)
	self.Owner:SetWalkSpeed(600)
	end
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
				bullet.Damage = 999999999
			self.Owner:FireBullets(bullet) 
	else
		self.Owner:SetAnimation( PLAYER_ATTACK1 );
		self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK );
		self.Weapon:EmitSound( "weapons/scp96/attack"..math.random(1,4)..".wav" )
	end
	
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.43 )
end

function SWEP:Deploy()
	if self.Owner:IsValid() then
	self:CustomSpeed() -- call the custom speed funciton above
	self.Owner:SetViewOffset(Vector(0,0,90))
	self.Weapon:EmitSound( "weapons/scp96/096_idle"..math.random(1,3)..".wav" )
	//self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
    //self:SetDeploySpeed( self.Weapon:SequenceDuration(0.2) )
	//self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
	
	self:SendWeaponAnim( ACT_VM_DRAW )
	timer.Simple(0.9, function(wep) self:SendWeaponAnim(ACT_VM_IDLE) end)
	end
	return true;
end

function SWEP:Holster()
	if self.Owner:IsValid() then
	self:NormalSpeed() -- call the normal speed function above
	self.Owner:SetViewOffset(Vector(0,0,60))
	end
	return true;
end
local delay = 1
function SWEP:SecondaryAttack()
if not SERVER then return end
if delay == 0 then return end
delay = 0
timer.Simple(0.3, function() delay = 1 end)
    self.Owner:EmitSound( "weapons/scp96/096_idle"..math.random(1,3)..".wav" )

end