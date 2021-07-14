
-----------------------------------------------------

-----------------------------------------------------

-----------------------------------------------------
SWEP.Category 			    = "SCP RP"
SWEP.PrintName				= "IA SWEP"			
SWEP.Author					= "[HLλ]John Oakman"
SWEP.Instructions			= "Clique gauche pour ouvrir et clique droit pour fermer un porte | Reload pour changer de mode | Clique droit pour unlocker et Clique gauche pour locker"
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
local Mode = "Open/Close"

function SWEP:Initialize()
        self:SetWeaponHoldType( self.HoldType )
		self.Weapon:SetMaterial("models/props_combine/stasisshield_sheet")
end



function SWEP:PrimaryAttack()
	if not SERVER then return end
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.1 )
	local trace = self.Owner:GetEyeTrace()
	
	if Mode == "Open/Close" then 
		if trace.Entity:GetClass() == "func_door" then  
			trace.Entity:Fire("open")
		end
	elseif Mode == "Lock/Unlock" then
		if trace.Entity:GetClass() == "func_door" then
			trace.Entity:Fire("lock")
		end
	end
end

function SWEP:SecondaryAttack()
	if not SERVER then return end
	self.Weapon:SetNextPrimaryFire( CurTime() + 0.3 )
	local trace = self.Owner:GetEyeTrace()
	
	if Mode == "Open/Close" then
		if trace.Entity:GetClass() == "func_door" then  
			trace.Entity:Fire("close")
		end
	elseif Mode == "Lock/Unlock" then
		if trace.Entity:GetClass() == "func_door" then
			trace.Entity:Fire("unlock")
		end
	end
	
end
local attente = 1
function SWEP:Reload()
if not SERVER then return end
if attente == 0 then return end
attente = 0
	if Mode == "Open/Close" then
	Mode = "Lock/Unlock" self.Owner:PrintMessage(HUD_PRINTTALK, "Mode change pour Lock/Unlock")
	elseif Mode == "Lock/Unlock" then
	Mode = "Open/Close" self.Owner:PrintMessage(HUD_PRINTTALK, "Mode change pour Open/Close") end
timer.Simple(0.5, function() attente = 1 end)
end




