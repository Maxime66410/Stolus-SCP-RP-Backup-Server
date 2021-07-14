SWEP.Category = "scp_button"

if SERVER then 
	AddCSLuaFile ("shared.lua")
	SWEP.Weight = 5
	SWEP.AutoSwitchTo = false
	SWEP.AutoSwitchFrom = false
elseif CLIENT then 
	SWEP.PrintName = "Carte d'acces 4"
	SWEP.Slot = 4
	SWEP.SlotPos = 1
	SWEP.DrawAmmo = false
	SWEP.DrawCrosshair = false
end
SWEP.Base = "acces_base"
SWEP.Author = "Starvox"
SWEP.Contact = "http://steamcommunity.com/profiles/76561198034541706/"
SWEP.Instructions = "Keycard version 1.0 by Starvox"

SWEP.ViewModel = "models/weapons/c_tfa_clonecard_c4.mdl"
SWEP.WorldModel = "models/weapons/w_tfa_clonecard_c4.mdl"
 
SWEP.Spawnable = true 
SWEP.AdminSpawnable = true 

SWEP.WElements = {
	["element_name"] = { type = "Model", model = SWEP.WorldModel, bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.514, 3.296, -2.567), angle = Angle(92.337, -1.17, 10.519), size = Vector(2.079, 2.079, 2.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}