/datum/job/captain
	title = "Sheriff"
	flag = SK_SHERIFF
	department_flag = GARRISON
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	faction = FACTION_TOWN
	bypass_lastclass = TRUE
	display_order = SHERIFF_ORDER
	total_positions = 1
	spawn_positions = 1

	spells = list(/obj/effect/proc_holder/spell/self/convertrole/guard)
	allowed_races = list(
		"Humen",
		"Elf",
		"Dwarf"
	)
	allowed_sexes = list(MALE)
	tutorial = "Appointed by your liege Lord to uphold their Law and be their champion in times of strife. You command the garrison, to help keep order and peace within the Lords demesne and defend it against the many dangers of the land."
	outfit = /datum/outfit/job/stonekeep/sheriff
	give_bank_account = 120
	spells = list(/obj/effect/proc_holder/spell/self/convertrole/guard)

	selection_color = "#a13322"
	cmode_music = 'modular/stonekeep/sound/cmode/combat_quarte.ogg'

/datum/job/captain/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Sir"
		if(H.gender == FEMALE)
			honorary = "Dame"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"

/datum/outfit/job/stonekeep/sheriff/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/helmet/bascinet
	gloves = /obj/item/clothing/gloves/plate
	wrists = /obj/item/clothing/wrists/bracers
	pants = /obj/item/clothing/pants/trou/leather/heavy
	armor = /obj/item/clothing/armor/plate
	cloak = /obj/item/clothing/cloak/stabard/surcoat
	neck = /obj/item/clothing/neck/bevor
	shirt = /obj/item/clothing/armor/gambeson
	shoes = /obj/item/clothing/shoes/boots/armor
	backr = /obj/item/storage/backpack/satchel
	belt = /obj/item/storage/belt/leather/black
	beltl = /obj/item/flashlight/flare/torch/lantern
	beltr = /obj/item/weapon/mace/steel
	r_hand = /obj/item/weapon/knife/dagger/steel

	backpack_contents = list(/obj/item/storage/keyring/captain = 1, /obj/item/signal_horn = 1, /obj/item/weapon/knife/dagger/steel = 1)
	if(H.mind)
		H.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
		H.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/wrestling, 5, TRUE)
		H.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
		H.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.adjust_skillrank(/datum/skill/combat/polearms, 4, TRUE)
		H.adjust_skillrank(/datum/skill/combat/whipsflails, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/shields, 4, TRUE)
		H.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.change_stat("strength", 3)
		H.change_stat("perception", 2)
		H.change_stat("intelligence", 1)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 2)
		H.change_stat("speed", 1)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)
	H.verbs |= /mob/proc/haltyell

/datum/outfit/job/stonekeep/sheriff
	job_bitflag = BITFLAG_ROYALTY | BITFLAG_GARRISON

/obj/effect/proc_holder/spell/self/convertrole
	name = "Recruit Beggar"
	desc = "Recruit someone to your cause."
	overlay_state = "recruit_bog"
	antimagic_allowed = TRUE
	recharge_time = 100
	/// Role given if recruitment is accepted
	var/new_role = "Beggar"
	/// Faction shown to the user in the recruitment prompt
	var/recruitment_faction = "Beggars"
	/// Message the recruiter gives
	var/recruitment_message = "Serve the beggars, %RECRUIT!"
	/// Range to search for potential recruits
	var/recruitment_range = 3
	/// Say message when the recruit accepts
	var/accept_message = "I will serve!"
	/// Say message when the recruit refuses
	var/refuse_message = "I refuse."

/obj/effect/proc_holder/spell/self/convertrole/cast(list/targets,mob/user = usr)
	. = ..()
	var/list/recruitment = list()
	for(var/mob/living/carbon/human/recruit in (get_hearers_in_view(recruitment_range, user) - user))
		//not allowed
		if(!can_convert(recruit))
			continue
		recruitment[recruit.name] = recruit
	if(!length(recruitment))
		to_chat(user, span_warning("There are no potential recruits in range."))
		return
	var/inputty = input(user, "Select a potential recruit!", "[name]") as null|anything in recruitment
	if(inputty)
		var/mob/living/carbon/human/recruit = recruitment[inputty]
		if(!QDELETED(recruit) && (recruit in get_hearers_in_view(recruitment_range, user)))
			INVOKE_ASYNC(src, PROC_REF(convert), recruit, user)
		else
			to_chat(user, span_warning("Recruitment failed!"))
	else
		to_chat(user, span_warning("Recruitment cancelled."))

/obj/effect/proc_holder/spell/self/convertrole/proc/can_convert(mob/living/carbon/human/recruit)
	//wtf
	if(QDELETED(recruit))
		return FALSE
	//need a mind
	if(!recruit.mind)
		return FALSE
	//only migrants and peasants
	if(!(recruit.job in GLOB.peasant_positions) && \
		!(recruit.job in GLOB.allmig_positions))
		return FALSE
	//need to see their damn face
	if(!recruit.get_face_name(null))
		return FALSE
	return TRUE

/obj/effect/proc_holder/spell/self/convertrole/proc/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	if(QDELETED(recruit) || QDELETED(recruiter))
		return FALSE
	recruiter.say(replacetext(recruitment_message, "%RECRUIT", "[recruit]"), forced = "[name]")
	var/prompt = alert(recruit, "Do you wish to become a [new_role]?", "[recruitment_faction] Recruitment", "Yes", "No")
	if(QDELETED(recruit) || QDELETED(recruiter) || !(recruiter in get_hearers_in_view(recruitment_range, recruit)))
		return FALSE
	if(prompt != "Yes")
		if(refuse_message)
			recruit.say(refuse_message, forced = "[name]")
		return FALSE
	if(accept_message)
		recruit.say(accept_message, forced = "[name]")
	if(new_role)
		recruit.job = new_role
		recruit.advjob = new_role
		recruit.migrant_type = null
	return TRUE

/obj/effect/proc_holder/spell/self/convertrole/guard
	name = "Recruit Guardsmen"
	new_role = "Garrison Recruit"
	overlay_state = "recruit_guard"
	recruitment_faction = "Garrison"
	recruitment_message = "Join the Garrison, %RECRUIT!"
	accept_message = "I swear fealty to the Crown and its garrison!"
	refuse_message = "I refuse."

/obj/effect/proc_holder/spell/self/convertrole/guard/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	. = ..()
	if(!.)
		return
	recruit.verbs |= /mob/proc/haltyell

