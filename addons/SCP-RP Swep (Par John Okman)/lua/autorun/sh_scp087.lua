
-----------------------------------------------------

-----------------------------------------------------
if CLIENT then

local function draw087()

if LocalPlayer():GetNWBool("draw087") then
	    surface.SetDrawColor( 255, 255, 255, 255 ) -- Next three lines draw the hand (your code)
        surface.SetMaterial( Material("scprp/pic"..math.random(1,6)..".jpg"))
        surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
end

end
hook.Add("HUDPaint", "draw087", draw087)
end


if SERVER then
AddCSLuaFile("sh_scp087.lua")

resource.AddFile("materials/scprp/pic1.jpg")
resource.AddFile("materials/scprp/pic2.jpg")
resource.AddFile("materials/scprp/pic3.jpg")
resource.AddFile("materials/scprp/pic4.jpg")
resource.AddFile("materials/scprp/pic5.jpg")
resource.AddFile("materials/scprp/pic6.jpg")
resource.AddFile("sound/scprp/horror1.wav")
resource.AddFile("sound/scprp/horror2.wav")
resource.AddFile("sound/scprp/horror3.wav")
resource.AddFile("sound/scprp/horror4.wav")

	hook.Add("PlayerDeath", "removedraw087", function(ply)
		ply:SetNWBool("draw087", false)
	end)

end