/datum/job/magician
	title = "Court Wizard"
	flag = SK_WIZARD
	department_flag = NOBLEMEN
	total_positions = 1
	spawn_positions = 1
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_MAGICIAN
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1
	min_pq = 0
	bypass_lastclass = TRUE
	allowed_patrons = list(/datum/patron/divine/noc, /datum/patron/inhumen/zizo)

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
	)
	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)
	allowed_sexes = list(MALE, FEMALE)
	tutorial = "Dream interpreter, soothsayer, astrologer and valued courtier. A scholar of Noc, or a secret worshipper of Zizo. \
	Indebted to the ruler for funding yils of mystical studies in these dark times, \
	only wisdom and arcane knowledge amassed during a long life will allow a mage to unlock their full potential."
	outfit = /datum/outfit/job/stonekeep/courtwizard

	magic_user = TRUE
	give_bank_account = 120
	cmode_music = 'modular/stonekeep/sound/cmode/combat_scholar.ogg'

/datum/outfit/job/stonekeep/courtwizard/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/wizhat/gen
	backr = /obj/item/storage/backpack/satchel
	cloak = /obj/item/clothing/cloak/black_cloak
	armor = /obj/item/clothing/shirt/robe/black
	ring = /obj/item/clothing/ring/gold
	belt = /obj/item/storage/belt/leather/plaquesilver
	beltr = /obj/item/storage/keyring/mage
	shoes = /obj/item/clothing/shoes/shortboots
	backpack_contents = list(/obj/item/reagent_containers/glass/bottle/killersice = 1,  /obj/item/chalk = 1)
	if(H.mind)
		if(!(H.patron == /datum/patron/divine/noc || /datum/patron/inhumen/zizo))
			H.set_patron(/datum/patron/divine/noc)

		H.adjust_skillrank(/datum/skill/misc/reading, 6, TRUE)
		H.adjust_skillrank(/datum/skill/magic/arcane, pick(6,5), TRUE)
		H.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
		H.adjust_skillrank(/datum/skill/craft/alchemy, 5, TRUE)
		if(H.age == AGE_OLD)
			var/prev_real_name = H.real_name
			var/prev_name = H.name
			var/honorary = "Archmage"
			H.real_name = "[honorary] [prev_real_name]"
			H.name = "[honorary] [prev_name]"
			armor = /obj/item/clothing/shirt/robe/courtmage
			head = /obj/item/clothing/head/wizhat
			H.change_stat("speed", -1)
			H.change_stat("intelligence", 1)
			if(H.dna.species.id == "human")
				belt = /obj/item/storage/belt/leather/plaquegold
				if(H.gender == MALE)
					armor = /obj/item/clothing/shirt/robe/wizard
					H.dna.species.soundpack_m = new /datum/voicepack/male/wizard()
		ADD_TRAIT(H, TRAIT_SEEPRICES, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_LEGENDARY_ALCHEMIST, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
		H.virginity = TRUE
		H.change_stat("strength", -2)
		H.change_stat("intelligence", 4)
		H.change_stat("constitution", -2)
		H.change_stat("speed", -2)
		H.mind.adjust_spellpoints(8)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/knock)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/ethereal_jaunt)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/learnspell)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)

		H.generate_random_attunements(rand(4,6))


//............... Unique Court Mage Stuff ...........................
/obj/item/clothing/head/wizhat
/obj/item/clothing/head/wizhat/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind && user.mind.assigned_role == "Court Wizard")
		if(slot == ITEM_SLOT_HEAD && istype(user))
			user.apply_status_effect(/datum/status_effect/buff/thinking_cap)
		else
			user.remove_status_effect(/datum/status_effect/buff/thinking_cap)
	else return

/obj/item/clothing/head/wizhat/dropped(mob/living/user, slot)
	. = ..()
	user.remove_status_effect(/datum/status_effect/buff/thinking_cap)


/datum/status_effect/buff/thinking_cap
	id = "thinkingcap"
	alert_type = /atom/movable/screen/alert/status_effect/buff/thinking_cap
	effectedstats = list("intelligence" = 1)
	duration = 180 MINUTES

/datum/status_effect/buff/thinking_cap/on_apply()
	. = ..()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.remove_stress(/datum/stressevent/wheresmyhat)

/datum/status_effect/buff/thinking_cap/on_remove()
	. = ..()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_stress(/datum/stressevent/wheresmyhat)

/datum/stressevent/wheresmyhat
	timer = 10 MINUTES
	stressadd = 1
	desc = "<span class='red'>I miss my hat....</span>"

/atom/movable/screen/alert/status_effect/buff/thinking_cap
	name = "My mind is clear"
	desc = "<span class='nicegreen'>My hat deflects mind-clouding rays of Zizo...</span>\n"
	icon = 'icons/mob/actions/roguespells.dmi'
	icon_state = ""

