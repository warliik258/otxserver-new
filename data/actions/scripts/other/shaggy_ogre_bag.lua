-- <action itemid="25419" script="other/shaggy_ogre_bag.lua"/>

local items = {
	opals = 24850, --opals
	mysterious_voodoo_skull = 5669, --mysterious voodoo skull
	titan_axe = 7413, --titan axe
	ogre_klubba  = 24827, --ogre klubba 
	spiked_squelcher = 7452, --spiked squelcher 
	shamanic_mask = 24848, --shamanic mask
	feather_headdress = 3970, --feather headdress
	ogre_choppa = 24828, --ogre choppa
	furry_club = 7432, -- furry club
	bast_skirt = 3983, --bast skirt
	skull_fetish = 24847, --skull fetish
	tribal_mask = 3967, --tribal mask
	tusk_shield = 3973,  --tusk shield
	ogre_ear_stud = 24844,  --ogre ear stud
	shamanic_talisman = 24840,  --shamanic talisman
	ogre_nose_ring = 24845, --ogre nose ring
	onyx_chips = 24849, --onyx chips
	roasted_meat = 24843, --roasted meat
	ogre_scepta = 24839, --ogre scepta
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local rand = math.random(1, 100)
	
	if rand <= 15 then
	player:addItem(items.roasted_meat, 5)
	elseif rand >= 16 and rand <= 20 then
	player:addItem(items.shamanic_talisman, 1)
	elseif rand >= 21 and rand <= 25 then
	player:addItem(items.ogre_nose_ring, 1)
	elseif rand >= 26 and rand <= 30 then
	player:addItem(items.ogre_ear_stud, 1)
	elseif rand >= 31 and rand <= 35 then
	player:addItem(items.tusk_shield, 1)
	elseif rand >= 36 and rand <= 40 then
	player:addItem(items.tribal_mask, 1)
	elseif rand >= 41 and rand <= 45 then
	player:addItem(items.skull_fetish, 1)
	elseif rand >= 16 and rand <= 50 then
	player:addItem(items.opals, 2)
	elseif rand >= 51 and rand <= 55 then
	player:addItem(items.onyx_chips, 3)
	elseif rand >= 16 and rand <= 60 then
	player:addItem(items.furry_club, 1)
	elseif rand >= 61 and rand <= 65 then
	player:addItem(items.bast_skirt, 1)
	elseif rand >= 16 and rand <= 70 then
	player:addItem(items.ogre_choppa, 1)
	elseif rand >= 71 and rand <= 75 then
	player:addItem(items.feather_headdress, 1)
	elseif rand >= 16 and rand <= 80 then
	player:addItem(items.shamanic_mask, 1)
	elseif rand >= 81 and rand <= 85 then
	player:addItem(items.spiked_squelcher, 1)
	elseif rand >= 86 and rand <= 89 then
	player:addItem(items.ogre_klubba, 1)
	elseif rand >= 90 and rand <= 94 then
	player:addItem(items.titan_axe, 1)
	elseif rand >= 95 and rand <= 96 then
	player:addItem(items.mysterious_voodoo_skull, 1)
	elseif rand >= 97 and rand <= 98 then
	player:addItem(items.ogre_scepta, 1)
	elseif rand >= 99 and rand <= 100 then

	end
	
	item:remove(1)

	return true
end
