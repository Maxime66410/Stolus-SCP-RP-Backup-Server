
net.Receive( "scp_derma_starvox_001", function( len, ply )
 local SCPTab = net.ReadTable()
 local namebutton= ""
 local largeur = 230
 local longueur = 140
 			local BaseFrame = vgui.Create( "DFrame" )
		BaseFrame:Center()
		BaseFrame:SetSize( largeur, longueur )
		BaseFrame:SetTitle( "Menu acces mod updated" )
		BaseFrame:SetVisible( true )
		BaseFrame:SetDraggable( false )
		BaseFrame:ShowCloseButton( true )
		BaseFrame:MakePopup()
		BaseFrame.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 100, 100, 255 ) )
			draw.DrawText("ID button : " .. SCPTab["ID"] .. ".","Trebuchet18",5,longueur / 5 ,Color(255, 255, 255, 255 ))
			draw.DrawText("Button is on access : " .. (SCPTab["Acces"]),"Trebuchet18",5,longueur / 5 * 2,Color(255, 255, 255, 255 ))
			surface.SetDrawColor( Color( 25, 255, 255, 255 ) )
			surface.DrawOutlinedRect( 0, 0, BaseFrame:GetSize() )
		end

	if SCPTab["Acces"] == "" then
		BaseFrame.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 100, 100, 255 ) )
			draw.DrawText("Select the acces of button","Trebuchet18",5,longueur / 4,Color(255, 255, 255, 255 ))
			surface.SetDrawColor( Color( 25, 255, 255, 255 ) )
			surface.DrawOutlinedRect( 0, 0, BaseFrame:GetSize() )
		end

		local accesselect = vgui.Create( "DComboBox", BaseFrame )
		accesselect:SetPos( 5, longueur / 5 * 2 )
		accesselect:SetSize( 130, 20 )
		accesselect:SetValue( "Choose your access ?" )
		for i,v in ipairs(checkweaponacces["Acces_CreateStv"].TabAccesCreateStv) do
			accesselect:AddChoice( v )
		end
		accesselect.OnSelect = function( panel, index, value )
			SCPTab["Acces"] = value
		end

			local textname = vgui.Create( "DTextEntry", BaseFrame ) 
		textname:SetPos( 5, longueur / 5 * 3 )
		textname:SetSize( 200, 20 )
		textname:SetText( "Writes the name of acces (Required)" )
		textname.OnChange = function( self )
			SCPTab["Nom"] = self:GetValue()
		end

			local validate = vgui.Create( "DButton", BaseFrame )
		validate:SetText( "Valid the acces" )
		validate:SetTextColor( Color( 255, 255, 255 ) )
		validate:SetPos( 5, longueur / 5 * 4 - 5 )
		validate:SetSize( 120, 30 )
		validate.Paint = function( self, w, h ) end

			validate.OnCursorEntered = function() 
				validate:SetTextColor( Color( 255, 255, 255 ) )
					validate.Paint = function( self, w, h )
						surface.SetDrawColor( Color( 0, 255, 255, 255 ) )
						surface.DrawOutlinedRect( 0, 0, validate:GetSize() )
				end
			end
		
			validate.OnCursorExited = function ()
				validate:SetTextColor( Color( 255, 255, 255 ) )
					validate.Paint = function( self, w, h )
			end

		end

		validate.DoClick = function()
			BaseFrame:Remove()
			net.Start("scp_controle_starvox_001")
			net.WriteTable(SCPTab)
			net.WriteString("save")
			net.SendToServer()
		end
	else
		BaseFrame:SetSize( largeur, longueur - 20 )

			local validate = vgui.Create( "DButton", BaseFrame )
		validate:SetText( "Delete access of door" )
		validate:SetTextColor( Color( 255, 255, 255 ) )
		validate:SetPos( 5, longueur / 5 * 3 - 5 )
		validate:SetSize( 110, 30 )
		validate.Paint = function( self, w, h ) end
		
			validate.OnCursorEntered = function() 
				validate:SetTextColor( Color( 255, 255, 255 ) )
					validate.Paint = function( self, w, h )
						surface.SetDrawColor( Color( 0, 255, 255, 255 ) )
						surface.DrawOutlinedRect( 0, 0, validate:GetSize() )
				end
			end
		
			validate.OnCursorExited = function ()
				validate:SetTextColor( Color( 255, 255, 255 ) )
					validate.Paint = function( self, w, h )
			end

		end

		validate.DoClick = function()
			BaseFrame:Remove()
			--print(SCPTab["ID"],MapButton,acces)
			net.Start("scp_controle_starvox_001")
			net.WriteTable(SCPTab)
			net.WriteString("delete")
			net.SendToServer()
		end
	end

end )

