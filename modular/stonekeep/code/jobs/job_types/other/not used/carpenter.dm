/datum/job/roguetown/carpenter
	title = "Carpenter"
	tutorial = "Woodsmen and women that dedicate their lives to chopping wood \
	for profit, and expertly building things out of it."
	faction = FACTION_TOWN
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar"
	)
	total_positions = 0
	spawn_positions = 0
	flag = LUMBERJACK
	department_flag = PEASANTS
	display_order = JDO_CARPENTER
	outfit = /datum/outfit/job/roguetown/carpenter
	min_pq = -50

/datum/outfit/job/roguetown/carpenter/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
		H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/carpentry, 5, TRUE)
		H.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/athletics, pick(3,3,4), TRUE)
		H.adjust_skillrank(/datum/skill/labor/lumberjacking, 3, TRUE)
		if(prob(5))
			H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
			H.adjust_skillrank(/datum/skill/labor/lumberjacking, 1, TRUE)
			H.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)

	head = pick(/obj/item/clothing/head/hatfur, /obj/item/clothing/head/hatblu, /obj/item/clothing/head/brimmed)
	neck = /obj/item/clothing/neck/coif
	armor = /obj/item/clothing/armor/gambeson/light/striped
	pants = /obj/item/clothing/pants/trou
	shirt = /obj/item/clothing/shirt/undershirt/random
	wrists = /obj/item/clothing/wrists/bracers/leather
	shoes = /obj/item/clothing/shoes/boots/leather
	belt = /obj/item/storage/belt/leather
	beltr = /obj/item/storage/belt/pouch/coins/poor
	beltl = /obj/item/weapon/hammer/steel
	backr = /obj/item/weapon/axe/iron
	backl = /obj/item/storage/backpack/backpack
	backpack_contents = list(/obj/item/flint = 1, /obj/item/weapon/knife/villager = 1, /obj/item/key/artificer = 1)
	H.change_stat("strength", 1)
	H.change_stat("endurance", 1) // Tree chopping builds endurance
	H.change_stat("intelligence", 1)
	H.change_stat("constitution", 1)
	H.change_stat("speed", -1)
