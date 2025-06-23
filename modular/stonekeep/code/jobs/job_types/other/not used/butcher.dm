/datum/job/roguetown/butcher
	title = "Butcher"
	flag = BEASTMASTER
	department_flag = PEASANTS
	faction = FACTION_TOWN
	total_positions = 0
	spawn_positions = 0

	allowed_races = list(
		"Humen",
		"Rakshari",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Half-Orc"
	)
	tutorial = "Some say youre a strange individual, some say youre a cheat while some claim you are a savant in the art of sausage making. Without your skilled hands and knifework most of the livestock around the town would be wasted. "


	outfit = /datum/outfit/job/roguetown/beastmaster
	display_order = JDO_BUTCHER
	give_bank_account = TRUE
	min_pq = -20
	bypass_lastclass = TRUE
	cmode_music = 'sound/music/cmode/towner/CombatTowner.ogg'

/datum/outfit/job/roguetown/beastmaster/pre_equip(mob/living/carbon/human/H)
	..()

	belt = /obj/item/storage/belt/leather
	beltr= /obj/item/storage/meatbag
	beltl= /obj/item/key/butcher
	backl = /obj/item/storage/backpack/satchel
	armor = /obj/item/clothing/armor/leather/vest/butcher
	shoes = /obj/item/clothing/shoes/boots/leather
	backpack_contents = list(/obj/item/kitchen/spoon, /obj/item/reagent_containers/food/snacks/truffles, /obj/item/weapon/knife/hunting)

	if(H.gender == MALE)
		pants = /obj/item/clothing/pants/trou
		wrists = /obj/item/clothing/wrists/bracers/leather
	else
		armor = /obj/item/clothing/shirt/dress/gen/random

	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC) // Used to dismembering live stock, desensitized to it.

	H.change_stat("strength", 1)
	H.change_stat("constitution", 2) // Built sturdy due to HIGH PROTEIN DIET
	H.change_stat("intelligence", -1)

	if(H.mind)
		H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE) // Not a trained cook, but knows a thing or two
		H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.adjust_skillrank(/datum/skill/labor/taming, 5, TRUE)
		H.adjust_skillrank(/datum/skill/craft/tanning, 2, TRUE) // Better than a soilson, but doesn't outshine a hunter or a weaver
		H.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.adjust_skillrank(/datum/skill/labor/butchering, 5, TRUE)

