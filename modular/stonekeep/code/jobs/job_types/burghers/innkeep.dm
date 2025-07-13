/datum/job/innkeep
	title = "Innkeep"
	flag = SK_INNKEEP
	department_flag = SERFS
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	faction = FACTION_TOWN
	bypass_lastclass = TRUE
	total_positions = 1
	spawn_positions = 1

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Aasimar"
	)

	tutorial = "Liquor, lodging, and lavish meals... your business is the beating heart of Rockhill. You're the one who provides the the hardworking townsfolk with a place to eat and drink their sorrows away, and accommodations for weary travelers passing through."

	outfit = /datum/outfit/job/stonekeep/innkeep
	display_order = INNKEEP_ORDER
	give_bank_account = 60
	cmode_music = 'modular/stonekeep/sound/cmode/combat_quarte.ogg'


/datum/outfit/job/stonekeep/innkeep/pre_equip(mob/living/carbon/human/H)
	..()
	H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.adjust_skillrank(/datum/skill/labor/butchering, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
	if(H.gender == MALE)
		pants = /obj/item/clothing/pants/tights/random
		shirt = /obj/item/clothing/shirt/shortshirt/random
		shoes = /obj/item/clothing/shoes/shortboots
		belt = /obj/item/storage/belt/leather
		beltl = /obj/item/storage/belt/pouch/coins/mid
		beltr = /obj/item/reagent_containers/glass/bottle/beer/blackgoat
		neck = /obj/item/storage/keyring/innkeep_hamlet
		cloak = /obj/item/clothing/cloak/apron/waist
		H.change_stat("strength", 2)
		H.change_stat("endurance", 1)
	else
		armor = /obj/item/clothing/shirt/dress
		shoes = /obj/item/clothing/shoes/shortboots
		neck = /obj/item/storage/belt/pouch/coins/mid
		belt = /obj/item/storage/belt/leather
		beltl = /obj/item/storage/keyring/innkeep_hamlet
		beltr = /obj/item/reagent_containers/glass/bottle/beer/blackgoat
		H.change_stat("endurance", 1)
		H.change_stat("constitution", 1)
		H.change_stat("speed", 1)
