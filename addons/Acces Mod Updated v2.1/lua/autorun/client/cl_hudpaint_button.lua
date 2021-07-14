local ent_scp
local ent_scp_nom

net.Receive("NET_SCPButtons_Shows", function()
    ent_scp = net.ReadEntity()
    ent_scp_nom = net.ReadTable()
    if ent_scp_nom["Nom"] == "" then
    	ent_scp_nom["Nom"] = "Pas de nom attribuer"
    end
end)

hook.Add("HUDPaint", "UN_IDENTIFIANT_UNIQUE_46546", function()
	local localplayer = LocalPlayer()
	local TraceEntity = localplayer:GetEyeTrace().Entity
    if TraceEntity == ent_scp and localplayer:GetPos():Distance(TraceEntity:GetPos()) <= 100 then
    	draw.DrawText(ent_scp_nom["Nom"],"Trebuchet24",(ScrW() / 2),(ScrH() / 2 - 50),Color(255,255,255,255), TEXT_ALIGN_CENTER)
        if DarkRP then
           --TraceEntity:drawOwnableInfo()
        end
    end
end)

hook.Add( "PreDrawHalos", "AddHalosstv", function()
    local localplayer = LocalPlayer()
    local TraceEntity = localplayer:GetEyeTrace().Entity
    local tableauteststv = {TraceEntity}
    if TraceEntity == ent_scp and localplayer:GetPos():Distance(TraceEntity:GetPos()) <= 100 then
        halo.Add( tableauteststv, Color( 75, 75, 75 ), 5, 5, 2 ) 
    else
        ent_scp = nil
        ent_scp_nom = nil 
    end
end )
