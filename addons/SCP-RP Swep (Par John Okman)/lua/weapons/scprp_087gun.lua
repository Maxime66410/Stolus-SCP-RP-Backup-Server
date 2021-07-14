
-----------------------------------------------------
SWEP.Category 			    = "SCP RP"
SWEP.PrintName				= "SCP-Screamer"			
SWEP.Author					= "Younara"
SWEP.Instructions			= "Clique gauche pour screamer le joueur | Clique droit pour SE screamer"
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
SWEP.Weight					= 1
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false
SWEP.Slot					= 0
SWEP.SlotPos				= 2
SWEP.DrawAmmo				= false
SWEP.DrawCrosshair			= true
SWEP.IdleAnim				= true
SWEP.ViewModel				= "models/weapons/v_pistol.mdl"
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"
 
SWEP.HoldType 				= "pistol"


function SWEP:Initialize()
        self:SetWeaponHoldType( self.HoldType )
end


local attente = 1
function SWEP:PrimaryAttack()
	if not SERVER then return end
if attente == 0 then return end
attente = 0
timer.Simple(0.3, function() attente = 1 end)

trace = self.Owner:GetEyeTrace()
if trace.Entity:IsPlayer() then
	trace.Entity:SetNWBool("draw087", true)
	trace.Entity:TakeDamage( 0, "SCP-087", "SCP-087" )
	trace.Entity:ConCommand("play scprp/horror"..math.random(1,4)..".wav")
	timer.Simple(0.3, function() trace.Entity:SetNWBool("draw087", false) end)
end

end

local attentee = 1
function SWEP:SecondaryAttack()
	if not SERVER then return end
		if attentee == 0 then return end
		attentee = 0
		timer.Simple(0.3, function() attentee = 1 end)


	if self.Owner:IsPlayer() then
		self.Owner:SetNWBool("draw087", true)
		self.Owner:TakeDamage( 0, "SCP-087", "SCP-087" )
		self.Owner:ConCommand("play scprp/horror"..math.random(1,4)..".wav")
		timer.Simple(0.3, function() self.Owner:SetNWBool("draw087", false) end)
	end
	
end





