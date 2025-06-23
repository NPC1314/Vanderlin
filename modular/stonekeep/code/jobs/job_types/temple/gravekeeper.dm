/datum/job/stonekeep/gravekeeper
	title = "Gravekeeper"
	flag = SK_GRAVETENDER
	department_flag = CHURCHMEN
	faction = FACTION_TOWN
	total_positions = 2
	spawn_positions = 2

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Dark Elf",
		"Aasimar"
	)
	tutorial = "As a servant of Necra, you embody the sanctity of her domain, ensuring the dead rest peacefully within the earth. You are the bane of grave robbers and necromancers, and your holy magic brings undead back into Necra's embrace: the only rightful place for lost souls."

	outfit = /datum/outfit/job/stonekeep/gravekeeper
	display_order = GRAVEKEEPER_ORDER
	give_bank_account = TRUE
	min_pq = -25
	bypass_lastclass = TRUE
	cmode_music = 'sound/music/cmode/church/combat_templar.ogg'

/datum/outfit/job/stonekeep/gravekeeper/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.patron != /datum/patron/divine/necra)
		H.set_patron(/datum/patron/divine/necra)
	head = /obj/item/clothing/head/padded/deathshroud
	neck = /obj/item/clothing/neck/psycross/silver/necra
	pants = /obj/item/clothing/pants/trou/leather/mourning
	armor = /obj/item/clothing/shirt/robe/necra
	shoes = /obj/item/clothing/shoes/boots
	belt = /obj/item/storage/belt/leather
	beltl = /obj/item/storage/keyring/gravetender
	beltr = /obj/item/storage/belt/pouch
	backr = /obj/item/weapon/shovel

	H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE) // these are basically the acolyte skills with a bit of other stuff
	H.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/magic/holy, 3, TRUE)
	H.change_stat("strength", 1)
	H.change_stat("intelligence", 2)
	H.change_stat("endurance", 2)
	H.change_stat("perception", -1) // similar to acolyte's stats
	H.change_stat("fortune", -1) // Tradeoff for never being cursed when unearthing graves.
	ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC) // Operating with corpses every day.
	ADD_TRAIT(H, TRAIT_GRAVEROBBER, TRAIT_GENERIC) // In case they need to move tombs or anything.

	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
	C.grant_spells(H)
