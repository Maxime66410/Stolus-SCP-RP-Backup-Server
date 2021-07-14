
-----------------------------------------------------
SWEP.Category 			    = "SCP RP"
SWEP.PrintName				= "SCP 999"			
SWEP.Author					= "[HLλ]John Oakman"
SWEP.Instructions			= "Clique gauche pour chatouiller"
SWEP.ViewModelFOV = 56
SWEP.Spawnable 				= true
SWEP.AdminOnly 				= false
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Delay          = 2
SWEP.Primary.Automatic		= false
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
SWEP.ViewModel				= "models/weapons/v_hands.mdl"
SWEP.WorldModel				= ""
SWEP.IconLetter			= "w"
SWEP.HoldType 				= "normal"
SWEP.ViewModelFlip      = false


function SWEP:Initialize()
        self:SetWeaponHoldType( "normal" )
		self:SetHoldType("normal")
end

function SWEP:PreDrawViewModel()
    return true
end
 
function SWEP:PrimaryAttack()
	if SERVER then
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.3 )
	
 	local trace = self.Owner:GetEyeTrace();
	if trace.HitPos:Distance(self.Owner:GetShootPos()) <= 75 then
		if not trace.Entity:IsPlayer() then return end
	trace.Entity:ConCommand("say /sleep")
	trace.Entity:PrintMessage(HUD_PRINTTALK, "Vous etes chatouille par SCP-999")
	self.Owner:SetPos(trace.Entity:GetPos())
	self.Owner:ConCommand("say /sleep")
	self.Owner:PrintMessage(HUD_PRINTTALK, "Vous chatouillez "..trace.Entity:Name().."")
	
			
	end
	
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.43 )
	end
end





