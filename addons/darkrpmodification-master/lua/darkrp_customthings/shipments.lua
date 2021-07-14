--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]


---------------------------------------------------------------------------]]
--------------------------------SCPARME------------------------------------]]
---------------------------------------------------------------------------]]

DarkRP.createShipment("Machette", {
    model = "models/items/sniper_round_box.mdl",
    entity = "m9k_machete",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_SCP188FR}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Sword", {
    model = "models/items/sniper_round_box.mdl",
    entity = "m9k_damascus",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_SCP188FR}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})


---------------------------------------------------------------------------]]
--------------------------------VENDEURARME--------------------------------]]
---------------------------------------------------------------------------]]

DarkRP.createShipment(".44 Magnum", {
    model = "models/weapons/w_colt_python.mdl",
    entity = "robotnik_mw2_44",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("AA-12", {
    model = "models/weapons/w_hk_g36c.mdl",
    entity = "robotnik_mw2_aa12",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("ACR", {
    model = "models/weapons/w_hk_g36c.mdl",
    entity = "robotnik_mw2_acr",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("AK-47", {
    model = "models/weapons/w_ak47_m9k.mdl",
    entity = "robotnik_mw2_ak",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment(".44 Magnum", {
    model = "models/weapons/w_colt_python.mdl",
    entity = "robotnik_mw2_44",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("AT4", {
    model = "models/weapons/w_rl7.mdl",
    entity = "robotnik_mw2_at4",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("AUG HBAR", {
    model = "models/weapons/w_auga3.mdl",
    entity = "robotnik_mw2_aug",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Barret .50 Cal", {
    model = "mmodels/weapons/w_barrett_m98b.mdl",
    entity = "robotnik_mw2_brt",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Desert Eagle", {
    model = "models/weapons/w_tcom_deagle.mdl",
    entity = "robotnik_mw2_de",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Dragunov", {
    model = "models/weapons/w_dragunov_svu.mdl",
    entity = "robotnik_mw2_drg",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("F2000", {
    model = "models/weapons/w_imi_tar21.mdl",
    entity = "robotnik_mw2_f2",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("FAL", {
    model = "models/weapons/w_fn_fal.mdl",
    entity = "robotnik_mw2_fal",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Famas", {
    model = "models/weapons/w_tct_famas.mdl",
    entity = "robotnik_mw2_fam",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("G18", {
    model = "models/weapons/w_hk45c.mdl",
    entity = "robotnik_mw2_g18",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Intervention", {
    model = "models/weapons/w_snip_m24_6.mdl",
    entity = "robotnik_mw2_int",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("L86 LSW", {
    model = "models/weapons/w_mach_russ_pkm.mdl",
    entity = "robotnik_mw2_lsw",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("M1014", {
    model = "models/weapons/w_spas_12.mdl",
    entity = "robotnik_mw2_m10",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("M16A4", {
    model = "models/weapons/w_m4a1_iron.mdl",
    entity = "robotnik_mw2_m16",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("M21 EBR", {
    model = "models/weapons/w_hk_psg1.mdl",
    entity = "robotnik_mw2_ebr",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("M240", {
    model = "models/weapons/w_ares_shrike.mdl",
    entity = "robotnik_mw2_240",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("M4A1", {
    model = "models/weapons/w_hk_416.mdl",
    entity = "robotnik_mw2_m4",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("M9", {
    model = "models/weapons/w_pist_fokkususp.mdl",
    entity = "robotnik_mw2_m9",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("M93 Raffica", {
    model = "models/weapons/w_sig_229r.mdl",
    entity = "robotnik_mw2_raf",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("MG4", {
    model = "models/weapons/w_m249_machine_gun.mdl",
    entity = "robotnik_mw2_mg4",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Mini Uzi", {
    model = "models/weapons/w_uzi_imi.mdl",
    entity = "robotnik_mw2_uzi",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Model 1887", {
    model = "models/weapons/w_winchester_1887.mdl",
    entity = "robotnik_mw2_87",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("MP5K", {
    model = "models/weapons/w_mp7_silenced.mdl",
    entity = "robotnik_mw2_mp5",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("P90", {
    model = "models/weapons/w_fn_p90.mdl",
    entity = "robotnik_mw2_p90",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("PP2000", {
    model = "models/weapons/w_intratec_tec9.mdl",
    entity = "robotnik_mw2_pp",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Ranger", {
    model = "models/weapons/w_double_barrel_shotgun.mdl",
    entity = "robotnik_mw2_rngr",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("RPD", {
    model = "models/weapons/w_tommy_gun.mdl",
    entity = "robotnik_mw2_rpd",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("RPG-7", {
    model = "models/weapons/w_rl7.mdl",
    entity = "robotnik_mw2_rpg",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})


DarkRP.createShipment("SCAR-H", {
    model = "models/weapons/w_fn_scar_h.mdl",
    entity = "robotnik_mw2_scrh",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("SPAS-12", {
    model = "models/weapons/w_mossberg_590.mdl",
    entity = "robotnik_mw2_sps",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Striker", {
    model = "models/weapons/w_intratec_tec9.mdl",
    entity = "robotnik_mw2_stkr",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("TAR-21", {
    model = "models/weapons/w_imi_tar21.mdl",
    entity = "robotnik_mw2_tar",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Thumper", {
    model = "models/weapons/w_nitro.mdl",
    entity = "robotnik_mw2_m79",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("TMP", {
    model = "models/weapons/w_intratec_tec9.mdl",
    entity = "robotnik_mw2_tmp",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("UMP45", {
    model = "models/weapons/w_hk_ump45.mdl",
    entity = "robotnik_mw2_ump",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("USP .45", {
    model = "models/weapons/w_sig_229r.mdl",
    entity = "robotnik_mw2_usp",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Vector", {
    model = "models/weapons/w_kriss_vector.mdl",
    entity = "robotnik_mw2_vec",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("WA2000", {
    model = "models/weapons/w_magpul_pdr.mdl",
    entity = "robotnik_mw2_wa",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

---------------------------------------------------------------------------]]
--------------------------------MOBILSCIENTIST-----------------------------]]
---------------------------------------------------------------------------]]

DarkRP.createShipment("Chaise-1", {
    model = "models/props_c17/FurnitureChair001a.mdl",
    entity = "FurnitureChair001a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Chaise-2", {
    model = "models/props_c17/chair02a.mdl",
    entity = "chair02a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Table basse", {
    model = "models/props_c17/FurnitureDrawer002a.mdl",
    entity = "FurnitureDrawer002a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Table-1", {
    model = "models/props_c17/FurnitureTable001a.mdl",
    entity = "FurnitureTable001a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Table-2", {
    model = "models/props_c17/FurnitureTable002a.mdl",
    entity = "FurnitureTable002a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Table-3", {
    model = "models/props_c17/FurnitureTable003a.mdl",
    entity = "FurnitureTable003a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Chaise-3", {
    model = "models/props_interiors/Furniture_chair01a.mdl",
    entity = "Furniture_chair01a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Chaise-4", {
    model = "models/props_interiors/Furniture_chair03a.mdl",
    entity = "Furniture_chair03aa",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Sac a main", {
    model = "models/props_c17/BriefCase001a.mdl",
    entity = "BriefCase001a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Valise", {
    model = "models/props_c17/SuitCase001a.mdl",
    entity = "SuitCase001a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Cactus", {
    model = "models/props_lab/cactus.mdl",
    entity = "cactus.mdl",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Seau", {
    model = "models/props_junk/MetalBucket01a.mdl",
    entity = "MetalBucket01a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Seau peinture", {
    model = "models/props_junk/metal_paintcan001a.mdl",
    entity = "metal_paintcan001a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Seau peinture", {
    model = "models/props_junk/metal_paintcan001a.mdl",
    entity = "metal_paintcan001a",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

---------------------------------------------------------------------------]]
--------------------------------OBJSCPDIVERS-------------------------------]]
---------------------------------------------------------------------------]]

DarkRP.createShipment("Blue First Aid Kit", {
    model = "models/vinrax/props/firstaidkit.mdl",
    entity = "ent_bfak",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Document", {
    model = "models/props_lab/clipboard.mdl",
    entity = "ent_document",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("First Aid Kit", {
    model = "models/vinrax/props/firstaidkit.mdl",
    entity = "ent_fak",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Hazmat Suit", {
    model = "models/props_junk/cardboard_box001a.mdl",
    entity = "ent_hazmat_suit",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Heavy Inv Vest", {
    model = "models/props_junk/metal_paintcan001a.mdl",
    entity = "ent_inv_vest_heavy",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("MasterCard", {
    model = "models/props/scp/keycard/keycard.mdl",
    entity = "card_mastercard",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Metal Panel", {
    model = "models/props/scp/metalpanel148/metalpanel148.mdl",
    entity = "ent_metalpanel",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Red Night Vision", {
    model = "models/props/scp/nvg/nvg.mdl",
    entity = "ent_rednightvision",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Green Night Vision", {
    model = "models/props/scp/nvg/nvg.mdl",
    entity = "ent_nightvision",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Blue Night Vision", {
    model = "models/props/scp/nvg/nvg.mdl",
    entity = "ent_supernightvision",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Playing Card", {
    model = "models/props/scp/keycard/keycard.mdl",
    entity = "card_playingcard",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Radio Transceiver", {
    model = "models/props/scp/radio/radio.mdl",
    entity = "ent_radio",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Red Vision Eye Drops", {
    model = "models/props/scp/eyedrops/eyedrops.mdl",
    entity = "ent_eyedrops_red",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("ReVision Eye Drops", {
    model = "models/props/scp/eyedrops/eyedrops.mdl",
    entity = "ent_eyedrops",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("S-NAV 300 Navigateur", {
    model = "models/props/scp/snav/snav.mdl",
    entity = "ent_snav",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("SCP-500-1", {
    model = "models/props/scp/pill/pill.mdl",
    entity = "ent_500-1",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Strange Bottle", {
    model = "models/props/scp/eyedrops/eyedrops.mdl",
    entity = "ent_strange_bottle",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Seringue", {
    model = "models/props/scp/syringe/syringe.mdl",
    entity = "ent_syringe",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})

DarkRP.createShipment("Tactical Vest", {
    model = "models/props/scp/vest/vest.mdl",
    entity = "ent_inv_vest",
    price = 0, 
    amount = 1,
    separate = false,
    pricesep = 0,
    noship = false,
    allowed = {TEAM_ASSISTANT,TEAM_CHERCHEURNO,TEAM_CHERCHEURBIO,TEAM_CHERCHEURPHY,TEAM_CHERCHEURBIOPHY,TEAM_CHERCHEURSENIO,TEAM_SPVISEURBIO,TEAM_SPVISEURPHY,TEAM_SPVISEURBIOPHY,TEAM_PROFESSEUR,TEAM_SPGRPRECHERCHE,TEAM_WEAPONSELLER}, 
    shipmodel = "models/items/item_item_crate.mdl",
    -- Insert customCheck here if you have one and want one.
})
