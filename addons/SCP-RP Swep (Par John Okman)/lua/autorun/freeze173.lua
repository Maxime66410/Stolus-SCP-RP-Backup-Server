
-----------------------------------------------------

-----------------------------------------------------
/*
hook.Add("Think", "Freeze173", function() 

local scp173 
for k,v in pairs(player.GetAll()) do
	if v:IsValid() and v:Team() == TEAM_SCP173 then scp173 = v end
end
//if true then  scp173:Freeze(false) return end
	for k,v in pairs(player.GetAll()) do
		if v != scp173 and v:Alive() and v:IsLineOfSightClear(scp173) then scp173:Freeze(true)
		else scp173:Freeze(false) end
	end
 end)
 */
/*
 hook.Add("Think","FreezeSeenObjects",function()
    local freezeStatus = {}
    
    for _,ply in ipairs(player.GetAll()) do
        freezeStatus[ply] = freezeStatus[ply] or false
        local seen = ents.FindInCone(ply:EyePos(),ply:EyeAngles():Forward(),10^4,75) -- 75o FOV

        for _,ent in ipairs(seen) do
            if IsValid(ent) and ent:IsPlayer() and (ent:Team() == TEAM_SCP173) then
                freezeStatus[ent] = true
            end
        end
    end

    for ply,status in pairs(freezeStatus) do
        ply:Freeze(status)
    end 
end)
 */
 
 if SERVER then

 hook.Add("PlayerInitialSpawn", "EnableBlinkOnSpawn", function(ply)
	ply:SetNWBool("Blink", true)
	ply:SetNWBool("disableblink", false)
 end)
 
  hook.Add("PlayerSpawn", "SCPBLINK", function(ply)
  if ply:Team() == TEAM_SCP096 or ply:Team() == TEAM_SCP173 or ply:Team() == TEAM_SCP035 or ply:Team() == TEAM_SCP049
	or ply:Team() == TEAM_SCP075 or ply:Team() == TEAM_SCP106 or ply:Team() == TEAM_SCP1048 or ply:Team() == TEAM_SCP008 or ply:Team() == TEAM_SCP079 or ply:Team() == TEAM_SCP006FR or ply:Team() == TEAM_SOMMEIL or ply:Team() == TEAM_BEBE or ply:Team() == TEAM_OMBRE or ply:Team() == TEAM_SCP860 or ply:Team() == TEAM_SCP202
	or ply:Team() == TEAM_SCP999 or ply:Team() == TEAM_SCP682 or ply:Team() == TEAM_SCP029 or ply:Team() == TEAM_SCP087 or ply:Team() == TEAM_SCP666 or ply:Team() == TEAM_IA or ply:Team() == TEAM_SCP131 or ply:Team() == TEAM_SCP513 then 
	ply:SetNWBool("Blink", false)
	ply:SetNWBool("disableblink", true)

	
	elseif ply:Team() == TEAM_SCP131A or ply:Team() == TEAM_SCP131 or ply:Team() == TEAM_BIGHDKD or ply:Team() == TEAM_ROBOT or ply:Team() == TEAM_ADMIN then 
	ply:SetNWBool("Blink", true)
	ply:SetNWBool("disableblink", true) 

	else 
	ply:SetNWBool("Blink", true)
	ply:SetNWBool("disableblink", false)
	end
	
 end)
 
 end
 
 
 if SERVER then
 util.AddNetworkString("sendblink")
 util.AddNetworkString("TimerBlink")
  
 net.Receive( "sendblink", function( len, pl ) 
	if ( IsValid( pl ) and pl:IsPlayer() ) then
			pl:SetNWBool("Blink", net.ReadBool())
	end
end)

net.Receive( "TimerBlink", function(len , pl)
if timer.Exists("TimerBlink"..pl:SteamID()) then timer.Destroy("TimerBlink"..pl:SteamID()) end
pl:SetNWInt("BlinkCounter", 10)
			timer.Create("TimerBlink"..pl:SteamID(), 1, 10, function() 
				pl:SetNWInt("BlinkCounter", (pl:GetNWInt("BlinkCounter") - 1)) 
				if pl:GetNWInt("BlinkCounter") == 0 then pl:SetNWInt("BlinkCounter", 10) end
			end)  
end)
	
	hook.Add("PlayerDeath", "Unfreeze173ondeath", function(ply)
		ply:Freeze(false)
	end)
 
	 hook.Add("Think", "Freeze173", function() 
local IsThereAPlayer = {}
	 for _, v in pairs(team.GetPlayers(TEAM_SCP173)) do
			for k,v2 in pairs(player.GetAll()) do
				for i,ent in pairs(ents.FindInSphere(v:GetPos(), 1500)) do
					if ent != v then
						if ent:IsPlayer() and ent:Alive()and ent:IsLineOfSightClear(v)  then table.Empty(IsThereAPlayer) table.insert(IsThereAPlayer, true) 
						else continue end
					else continue end
				end
			
			if not table.HasValue(IsThereAPlayer, true) then v:Freeze(false) return end
			if v2 == v then continue else
				if v2:Alive() and v2 != v and v2:GetNWBool("Blink") and v:Alive() and(v2:IsLineOfSightClear(v) and v2:GetPos():Distance(v:GetPos()) <= 1500 and v2:EyeAngles():Forward():Dot( (v2:GetPos() - v:GetPos()):GetNormal()) < 0)
					then v:Freeze(true) return
				elseif not(v2:GetNWBool("Blink")) and (v2:IsLineOfSightClear(v) and (v2:EyeAngles():Forward():Dot( (v2:GetPos() - v:GetPos()):GetNormal()) < 0)) then v:Freeze(false)
				elseif v2:IsLineOfSightClear(v) and not (v2:EyeAngles():Forward():Dot( (v2:GetPos() - v:GetPos()):GetNormal()) < 0) then v:Freeze(false) 
				else continue end
			end
			end
	 end 
table.Empty(IsThereAPlayer)
	end) 
end // END SERVER

if CLIENT then
	local BlinkDelay = 0
	local BlinkAlpha = 0 
	local delaytosend = 0

	hook.Add("HUDPaint","BLINKSYSTEM" , function()
	if LocalPlayer():GetNWBool("disableblink") then return end // DISABLE / ENABLE BLINK
	
	if input.IsKeyDown(KEY_H) then
		BlinkDelay = CurTime() + 0
	end
	
		if BlinkDelay < CurTime() then
			BlinkAlpha = 255
			BlinkDelay = CurTime() + 10
				LocalPlayer():SetNWBool("Blink", false)
				net.Start("sendblink")
					net.WriteBool(LocalPlayer():GetNWBool("Blink"))
				net.SendToServer()
		end
		 
		if BlinkDelay == CurTime() + 10 then 
			net.Start("TimerBlink")
			
			net.SendToServer()
		end
		
		if BlinkAlpha > 0 then
		
			BlinkAlpha = math.Approach( BlinkAlpha, 0, 1 )
			surface.SetDrawColor( 0, 0, 0, BlinkAlpha ) 
			surface.DrawRect( 0, 0, ScrW(), ScrH() )
			if delaytosend < 10 then delaytosend = delaytosend+1  
				else
				LocalPlayer():SetNWBool("Blink", true)
				net.Start("sendblink")
					net.WriteBool(LocalPlayer():GetNWBool("Blink"))
				net.SendToServer()
				delaytosend = 0
			end
		end
	end)

end

