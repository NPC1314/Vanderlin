/datum/job/stonekeep/archivist
	title = "Archivist"
	tutorial = "A well-traveled and well-learned seeker of knowledge, the Archivist's mind has been touched by Noc himself. They settled in Enigma some time ago, coming to Stonekeep with the hope of unraveling its mysteries. If they can expand their library and teach the masses, the world may yet enter a new age of enlightenment."
	flag = SK_ARCHIVIST
	department_flag = NOBLEMEN
	total_positions = 0
	spawn_positions = 0

	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Aasimar"
	)
	spells = list(/obj/effect/proc_holder/spell/self/learnspell, /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)

	outfit = /datum/outfit/job/stonekeep/archivist
	display_order = 9
	give_bank_account = 100
	allowed_patrons = list(/datum/patron/divine/noc)

/datum/outfit/job/stonekeep/archivist/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.dna.species.id == "Dwarf")
		shirt = /obj/item/clothing/shirt/undershirt/puritan
		armor = /obj/item/clothing/armor/leather/jacket/apothecary
		pants = /obj/item/clothing/pants/tights/black
	else
		if(H.gender == FEMALE)
			armor = /obj/item/clothing/shirt/robe/archivist
		else
			shirt = /obj/item/clothing/shirt/undershirt/puritan
			armor = /obj/item/clothing/shirt/robe/archivist
			pants = /obj/item/clothing/pants/tights/black
	H.virginity = TRUE
	shoes = /obj/item/clothing/shoes/boots
	belt = /obj/item/storage/belt/leather/plaquesilver
	beltl = /obj/item/storage/keyring/archivist
	backl = /obj/item/storage/backpack/satchel
	neck = /obj/item/clothing/neck/psycross/noc
	backpack_contents = list(/obj/item/literary/apprentice = 1)

	if(H.mind)
		if(H.patron != /datum/patron/divine/noc)
			H.set_patron(/datum/patron/divine/noc)

		H.grant_language(/datum/language/elvish)
		H.grant_language(/datum/language/dwarvish)
		H.grant_language(/datum/language/zybantine)
		H.grant_language(/datum/language/celestial)
		H.grant_language(/datum/language/hellspeak)
		H.grant_language(/datum/language/oldpsydonic)
		H.grant_language(/datum/language/orcish)
	H.adjust_skillrank(/datum/skill/misc/reading, 6, TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/alchemy, 3, TRUE)
	H.adjust_skillrank(/datum/skill/magic/arcane, 3, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/magic/arcane, 2, TRUE)
	H.change_stat("strength", -1)
	H.change_stat("intelligence", 8)
	H.change_stat("constitution", -1)
	H.change_stat("endurance", -1)
	H.change_stat("speed", -1)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
