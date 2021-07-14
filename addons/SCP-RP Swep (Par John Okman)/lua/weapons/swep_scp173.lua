
-----------------------------------------------------
if (SERVER) then
	AddCSLuaFile("swep_scp173.lua");
	
	SWEP.Weight = 0;
	SWEP.AutoSwitchTo = false;
	SWEP.AutoSwitchFrom = false;
elseif (CLIENT) then
	SWEP.Author = "SpydeyHD";
	SWEP.Purpose = "SWEP which allows SCP-173 to teleport within a certain range and kill the person as that location every 10 seconds.";
	SWEP.Instructions = "Left/right click to teleport.";
	SWEP.PrintName = "SCP-173 SWEP";
	SWEP.Slot = 2;
	SWEP.SlotPos = 1;
	SWEP.DrawAmmo = false;
	SWEP.DrawCrosshair = true;
end;

SWEP.AccurateCrosshair = true;
SWEP.Category = "SCP SWEPs";
SWEP.Spawnable = true;
SWEP.AdminSpawnable = true;
SWEP.ViewModel = "";
SWEP.WorldModel = "";
SWEP.Primary.ClipSize = -1;
SWEP.Primary.DefaultClip = -1;
SWEP.Primary.Automatic = false;
SWEP.Primary.Ammo = "";
SWEP.Secondary.ClipSize = -1;
SWEP.Secondary.DefaultClip = -1;
SWEP.Secondary.Automatic = false;
SWEP.Secondary.Ammo = "";

range = 350;

function SWEP:DrawHUD()
	draw.WordBox(10, ScrW() - 300, ScrH() - 50, "Time left until next teleport: "..math.Clamp(math.ceil(self:GetNextPrimaryFire() - CurTime()), 0, 10), "Trebuchet24", Color(0, 0, 0), Color(255, 255, 0));
end;

function SWEP:PrimaryAttack()
	if (SERVER) then
		self:TeleKill(self.Owner:GetEyeTrace());
	end;
end;

function SWEP:SecondaryAttack()
	if (SERVER) then
		self:TeleKill(self.Owner:GetEyeTrace());
	end;
end;

function SWEP:TeleKill(trace)
	local owner = self.Owner;
	local target = trace.Entity;

	if (self:GetNextPrimaryFire() <= CurTime()) then
		if (target and target:IsPlayer()) then
			if (UseCheck(owner, target, "kill", target:GetPos(), 350, "173")) then	
				target:KillSilent();
				DarkRP.notify(target, 1, 2, "You were killed by SCP-173.");
				DarkRP.notify(owner, 1, 4, "Teleportation complete and target killed.");
				owner:SetPos(DarkRP.findEmptyPos(target:GetPos(), {owner}, 100, 30, Vector(16, 16, 64)));

				self:SetNextPrimaryFire(CurTime() + 10);
			end;
		else
			if (UseCheck(owner, target, "kill", trace.HitPos, 350, "173")) then
				DarkRP.notify(owner, 1, 2, "Teleportation complete.");
				owner:SetPos(DarkRP.findEmptyPos(trace.HitPos, {owner}, 100, 30, Vector(16, 16, 64)));

				self:SetNextPrimaryFire(CurTime() + 10);
			end;
		end;
	else
		DarkRP.notify(owner, 1, 4, "You cannot use the SWEP again yet.");
	end;
end;