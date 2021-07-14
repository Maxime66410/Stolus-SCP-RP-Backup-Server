include ("sh_ano.lua")

local conf = ANOCONF

local function PlayerAno(ply, args)
        if args == "" then
                DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
                return ""
        end
        local DoSay = function(text)
                if text == "" then
                        DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
                        return
                end
                for k,v in pairs(player.GetAll()) do
                        local col = Color(255,0,0,255)
                        DarkRP.talkToPerson(v, col, conf.tchatmsg, Color(255, 255, 255, 255), text, ply)
                        if adminchatano then
                            timer.Create( "anochaty", 1.5, 1, function() ply:Say("/// J'ai envoyé anonymement :" ..text, false ) end )
                        end
            end
        end
        return args, DoSay
end


DarkRP.defineChatCommand(conf.cmd, PlayerAno, 1.5) 



DarkRP.declareChatCommand{
    command = "ano",
    description = "ecrivez un message anonymement",
    delay = 1.5
}



function MsgAuto()
    if AutoMSG then
        for k, v in pairs(player.GetAll()) do
         v:ChatPrint( conf.AnoMsg )
        end
    end
  end

timer.Create( "automsg", conf.TimeMsg, 0, MsgAuto)