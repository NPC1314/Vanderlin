/datum/job/merchant
	title = "Merchant"
	flag = MERCHANT
	department_flag = SERFS
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE )
	faction = FACTION_TOWN
	min_pq = 0
	bypass_lastclass = TRUE
	total_positions = 1
	spawn_positions = 1

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Rakshari"
	)

	tutorial = "You were born into wealth, \
	learning from before you could talk about the basics of mathematics. \
	Counting coins is a simple pleasure for any person, but youve made it an artform. \
	These people are addicted to your wares and you are the literal beating heart of this economy: \
	Dont let these filthy-covered troglodytes ever forget that."
	display_order = MERCHANT_ORDER
	outfit = /datum/outfit/job/stonekeep/merchant
	give_bank_account = 100
	selection_color = "#2a348b"
	cmode_music = 'sound/music/cmode/combat_giza.ogg'

/datum/outfit/job/stonekeep/merchant/pre_equip(mob/living/carbon/human/H)
	..()

	neck = /obj/item/clothing/neck/horus
	backr = /obj/item/storage/backpack/satchel
	backpack_contents = list(/obj/item/storage/belt/pouch/coins/veryrich = 1, /obj/item/merctoken = 1)
	beltr = /obj/item/weapon/sword/iron/jian
	belt = /obj/item/storage/belt/leather/plaquesilver
	beltl = /obj/item/storage/keyring/merchant_hamlet
	armor = /obj/item/clothing/shirt/robe/merchant
	head = /obj/item/clothing/head/chaperon
	ring = /obj/item/clothing/ring/gold/guild_mercator
	shoes = /obj/item/clothing/shoes/boots/leather

	if(H.gender == MALE)
		shirt = /obj/item/clothing/shirt/undershirt/sailor
		pants = /obj/item/clothing/pants/tights/sailor

	else
		shirt = /obj/item/clothing/shirt/tunic/blue

	if(H.dna.species.id == "Rakshari")
		head = /obj/item/clothing/head/roguehood/pashmina
		shoes = /obj/item/clothing/shoes/gladiator


	ADD_TRAIT(H, TRAIT_SEEPRICES, type)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_FOREIGNER, TRAIT_GENERIC)

	H.change_stat("intelligence", 2)
	H.change_stat("perception", 1)
	H.change_stat("strength", -1)

	H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 5, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/lockpicking, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)

