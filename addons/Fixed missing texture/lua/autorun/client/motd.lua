function Welcome ()

local desc_line_1 = "Bienvenue dans la Fondation, en signant votre contrat vous avez consenti à écouter les membres du personnels de sécurité et scientifique afin d'être libéré après un mois de travail au sein de la fondation, en cas d'erreur commis par votre faute durant votre mois de travail, votre contrat pourra être révoqué. N'oubliez pas que votre comportement pourra être sanctionné par les membres de la sécurité. Vous allez recevoir votre matricule de désignation, souvenez vous de celui-ci, le personnel utilisera ce matricule pour vous appelez."
local desc_line_2 = "Bienvenue sur le serveur, La Fondation, nous esperons que le serveur vous plaira, n'oubliez pas de rejoindre le groupe steam pour être au courant des dernières nouveautés."
-------- Config -------------------

local motdw = "http://www.furrany.webou.net/"
local addons = "https://steamcommunity.com/sharedfiles/filedetails/?id=1683513617"
local groups = "http://steamcommunity.com/groups/gmod"

----------------------------------------



local default = Color(0,0, 0, 255)

LocalPlayer():SetNWBool("disable_blur", false)
local matBlurScreen = Material( "pp/blurscreen" )
local function RenderBlur()
    local x, y = 0, 0
    DisableClipping( true )
    surface.SetMaterial( matBlurScreen )  
    surface.SetDrawColor( 255, 255, 255, 255 )
    for i=0.33, 1, 0.33 do
        matBlurScreen:SetFloat( "$blur", 1 )
        matBlurScreen:Recompute()
        if ( render ) then render.UpdateScreenEffectTexture() end -- Todo: Make this available to menu Lua
        surface.DrawTexturedRect( x * -1, y * -1, ScrW(), ScrH() )
    end
    surface.SetDrawColor( 10, 10, 10, 200 * 1 )
    surface.DrawRect( x * -1, y * -1, ScrW(), ScrH() )
    DisableClipping( false )
end
 
local function HUD_Blur()
    if (LocalPlayer():GetNWBool("disable_blur") == false) then
        RenderBlur()
    end
end

surface.CreateFont( "etoile_qua", { font = "Bauhaus", size = ScrW()*0.015, weight = 100, antialias = 1 } )
surface.CreateFont( "etoile_qua2", { font = "Bauhaus", size = ScrW()*0.015, weight = 100, antialias = 1 } )
surface.CreateFont( "etoile_qua1", { font = "Bauhaus", size = ScrW()*0.015, weight = 100, antialias = 1 } )
surface.CreateFont( "exemple_text02", { font = "Courier New", size = ScrW()*0.009, weight = 10, antialias = 1 } )
surface.CreateFont( "SCP Font Title 02", {
    font = "Bauhaus",    
	size = ScrW()*0.0135,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = true,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
})

hook.Add("HUDPaint", "HUD_Test", HUD_Blur)


	MainMenu = vgui.Create( "DFrame" )
		MainMenu:SetPos( ScrW()*0, ScrH()*0 )
		MainMenu:SetTitle("")
		MainMenu:SetSize( ScrW(), ScrH())
		MainMenu:SetBackgroundBlur( true )
		MainMenu:SetVisible( true )
		MainMenu:SetDraggable( false )
		MainMenu:ShowCloseButton( false )
		MainMenu:MakePopup()
		MainMenu.Paint = function()
		surface.SetDrawColor(255,255,255,255)
		surface.SetMaterial(Material("hud_scp/d_affiche.png"))
		surface.DrawTexturedRect( ScrW()*0.345, ScrH()*0.088, ScrW()*0.28, ScrH()*0.7)
		draw.SimpleText("Brochure d'orientation pour Classe D", "etoile_qua" ,ScrW()*0.39,ScrH()*0.235, Color( 0, 0, 0, 255 ))
		draw.SimpleText("Cordialement le Staff.", "exemple_text02" ,ScrW()*0.368,ScrH()*0.63, Color( 0, 0, 0, 255 ))
		end
		
	 local DLabel = vgui.Create( "DLabel", MainMenu )
	DLabel.SetParent( MainMenu )
	DLabel:SetPos( ScrW() / 2.72, ScrH() / 8)
	DLabel:SetSize( ScrW()*0.245, ScrH()*0.47 )
	DLabel:SetWrap(true)
	DLabel:SetFont( "exemple_text02" )
	DLabel:SetText( desc_line_1 )
	DLabel:SetTextColor( Color( 0, 0, 0, 255 ) )
	
	local DLabel = vgui.Create( "DLabel", MainMenu )
	DLabel.SetParent( MainMenu )
	DLabel:SetPos( ScrW() / 2.72, ScrH() / 3.8)
	DLabel:SetSize( ScrW()*0.245, ScrH()*0.574 )
	DLabel:SetWrap(true)
	DLabel:SetFont( "exemple_text02" )
	DLabel:SetText( desc_line_2 )
	DLabel:SetTextColor( Color( 0, 0, 0, 255 ) )
	
	local motd = vgui.Create("HTML", MainMenu )
		motd.SetParent( MainMenu )
		motd:SetPos(ScrW(), ScrH() / 6)
		motd:MoveTo( ScrW() / 4, ScrH() / 6, 1.1, -1, 4)
		motd:SetVisible(false)
		motd:SetSize(ScrW() / 1.5, ScrH() / 1.59)
		motd:OpenURL(motdw)		---------- Change the URL only to modify the website that comes up when start. / MOTD tab
	
	local D_enter = vgui.Create( "DTextEntry", MainMenu )
		D_enter:SetPos( ScrW() / 2.077, ScrH() / 2.21)
		D_enter:SetTall( ScrH()*0.028 )
		D_enter.MaxChars = 4 
		D_enter:SetVisible(true)
		D_enter:SetNumeric( true )
		D_enter:SetWide( ScrW()*0.036 )
		D_enter:SetFont("etoile_qua2")
		D_enter:SetDrawBackground(true)
		D_enter:SetTextColor( Color( 70, 70, 70, 255 ) )
		D_enter:SetText( "0000" )
		D_enter:SetEnterAllowed( true )
		D_enter.OnTextChanged = function(self)
			local txt = self:GetValue()
			local amt = string.len(txt)
			if amt > self.MaxChars then
				self:SetText(self.OldText)
				self:SetValue(self.OldText)
			else
				self.OldText = txt
			end
		end
		D_enter.OnEnter = function()
		end
			
	local DermaButton = vgui.Create("DButton", DermaPanel)
		DermaButton:SetText( "" )	
		DermaButton:SetSize( ScrW()*0.05, ScrH()*0.04 )
		DermaButton:SetPos( ScrW() / 2.71, ScrH() / 1.42)
		DermaButton:SetFont("")
		DermaButton:SetTextColor(default)
		DermaButton:SetParent( MainMenu )
		DermaButton.Paint = function()
			draw.RoundedBox( 0, 0, 0,  ScrW()*0.05, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0.038,  ScrW()*0.050, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.RoundedBox( 0, ScrH()*0.087, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.SimpleText("Fermer","SCP Font Title 02",ScrW()*0.01,ScrH()*0.007, default)
		end
			
		DermaButton.OnCursorEntered = function()
		surface.PlaySound("garrysmod/ui_return.wav")
		end		
		DermaButton.OnCursorExited = function()
		end
		
		DermaButton.DoClick = function()
			LocalPlayer():SetNWBool("disable_blur", true)
			RunConsoleCommand("say","/rpname D-"..D_enter:GetValue())
			MainMenu:Close()
		end	

	local DermaButton = vgui.Create( "DButton", DermaPanel )
		DermaButton:SetText( "" )
		DermaButton:SetSize( ScrW()*0.05, ScrH()*0.04 )
		DermaButton:SetPos( ScrW() / 2.37, ScrH() / 1.42)
		DermaButton:SetFont("")
		DermaButton:SetTextColor(default)
		DermaButton:SetParent( MainMenu )
		DermaButton.Paint = function()
			draw.RoundedBox( 0, 0, 0,  ScrW()*0.05, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0.038,  ScrW()*0.050, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.RoundedBox( 0, ScrH()*0.087, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.SimpleText("Forum","SCP Font Title 02",ScrW()*0.012,ScrH()*0.007, Color( 0, 0, 0, 255 ))
		end
		
		DermaButton.OnCursorEntered = function()
			surface.PlaySound("garrysmod/ui_return.wav")
		end		
		DermaButton.OnCursorExited = function()
		end
		
		DermaButton.DoClick = function()
		gui.OpenURL( motdw )
		end	
		
	local DermaButton = vgui.Create( "DButton", DermaPanel )
		DermaButton:SetText( "" )
		DermaButton:SetSize( ScrW()*0.05, ScrH()*0.04 )
		DermaButton:SetPos( ScrW() / 2.102, ScrH() / 1.42)
		DermaButton:SetFont("")
		DermaButton:SetTextColor(default)
		DermaButton:SetParent( MainMenu )
		DermaButton.Paint = function()
			draw.RoundedBox( 0, 0, 0,  ScrW()*0.05, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0.038,  ScrW()*0.050, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.RoundedBox( 0, ScrH()*0.087, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.SimpleText("Collection","SCP Font Title 02",ScrW()*0.0035,ScrH()*0.007, Color( 0, 0, 0, 255 ))
		end
		
		DermaButton.OnCursorEntered = function()
			surface.PlaySound("garrysmod/ui_return.wav")
		end		
		DermaButton.OnCursorExited = function()
		end
		
		DermaButton.DoClick = function()
		gui.OpenURL( addons )
		end	
		
	local DermaButton = vgui.Create( "DButton", DermaPanel )
		DermaButton:SetText( "" )
		DermaButton:SetSize( ScrW()*0.08, ScrH()*0.04 )
		DermaButton:SetPos( ScrW() / 1.89, ScrH() / 1.42)
		DermaButton:SetFont("")
		DermaButton:SetTextColor(default)
		DermaButton:SetParent( MainMenu )
		DermaButton.Paint = function()
			draw.RoundedBox( 0, 0, 0,  ScrW()*0.072, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0.038,  ScrW()*0.072, ScrH()*0.002, default)
			draw.RoundedBox( 0, 0, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.RoundedBox( 0, ScrH()*0.127, ScrH()*0,  ScrW()*0.001, ScrH()*0.050, default)
			draw.SimpleText("Groupe Steam","SCP Font Title 02",ScrW()*0.0035,ScrH()*0.007, Color( 0, 0, 0, 255 ))
		end
		
		DermaButton.OnCursorEntered = function()
			surface.PlaySound("garrysmod/ui_return.wav")
		end		
		DermaButton.OnCursorExited = function()
		end
		
	DermaButton.DoClick = function()
		gui.OpenURL( groups )
		end	
		
		
	surface.CreateFont( "TheDefaultSettingstwo", {
	font = "Arial",
	size = 30,
	weight = 750,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = true,
	outline = false,
} )


end

concommand.Add("SCPM", Welcome )
