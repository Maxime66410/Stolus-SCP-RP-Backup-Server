hook.Add("PlayerNoClip", "allownoclipjob", function(ply)
if IsValid(ply) and (ply:Team() == TEAM_SCP1048 or ply:Team() == TEAM_SCP049 or ply:Team() == TEAM_SCP106 or ply:Team() == TEAM_SCP096 or ply:Team() == TEAM_SCP173 or ply:Team() == TEAM_SCP343 or ply:Team() == TEAM_SCP011 or ply:Team()== Mtx) then return true end
end)