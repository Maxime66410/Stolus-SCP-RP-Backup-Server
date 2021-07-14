local meta = FindMetaTable("Entity")
    checkweaponacces = {

		["Acces_CreateStv"] = {
			TabAccesCreateStv = {
            --Here it's for create a new lvl acces
				"1",
				"2",
				"3",
				"4",
				"5",
				"6"
			},
		},
        --Create a new weapons for open the acces
        ["carte_1"] = {
            armecheck = {
                "1",
            },
        },
        
        ["carte_2"] = {
            armecheck = {
            	"1",
                "2"
            },
        },

        ["carte_3"] = {
            armecheck = {
            	"1",
                "2",
                "3"
            },
        },

        ["carte_4"] = {
            armecheck = {
            	"1",
                "2",
                "3",
                "4"
            },
        },

        ["carte_5"] = {
            armecheck = {
            	"1",
                "2",
                "3",
                "4",
                "5"
            },
        },

        ["carte_6"] = {
            armecheck = {
            	"1",
                "2",
                "3",
                "4",
                "5",
                "6"
            },
        },
                
    }

function meta:IsStvAcces()
    if not IsValid(self) then return false end
    local StvClass = self:GetClass()

    if StvClass == "func_door" or
        StvClass == "func_door_rotating" or
        StvClass == "prop_door_rotating" or
        StvClass == "func_movelinear" or
        StvClass == "func_button" or
        StvClass == "prop_dynamic" then
        return true
    end
    return false
end

