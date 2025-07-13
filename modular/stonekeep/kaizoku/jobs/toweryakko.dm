/datum/advclass/mercenary/sk/toweryakko
	name = "Tower-Yakko"
	tutorial = "You've been the operator of a network of smuggling and racketeering from the Towers on Fog Islands after your faction shifted from vigilantism to organized crime,  but you have been exiled ever since and now search for richness on lands away, but your rivals in yellow kimonos does the same."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen", //Heartfeltean.
		"Changeling",
		"Skylancer",
		"Ogrun",
		"Undine"

	)
	outfit = /datum/outfit/job/roguetown/mercenary/toweryakko
	category_tags = list(CTAG_SKMERCENARY)
	maximum_possible_slots = 6


/datum/outfit/job/roguetown/mercenary/toweryakko/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/shortboots/cloudhead/toweryakkos
	head = /obj/item/clothing/head/helmet/kettle/jingasa
	gloves = /obj/item/clothing/gloves/leather/abyssal/toweryakko
	mask = /obj/item/clothing/face/kaizoku/menpo
	belt = /obj/item/storage/belt/leather
	wrists = /obj/item/clothing/wrists/bracers/leather/khudagach
	cloak = /obj/item/clothing/cloak/stabard/haramaki/odoshi/toweryakko
	armor = /obj/item/clothing/armor/cuirass/iron/sanmaido
	backr = /obj/item/weapon/shield/abyssaltower
	beltr = /obj/item/weapon/sword/scimitar/falchion/yuntoudao
	beltl = /obj/item/flashlight/flare/torch/lantern
	shirt = /obj/item/clothing/armor/gambeson/light/hitatare/random // we remove a full chainmaille for a light gambeson
	pants = /obj/item/clothing/pants/chainlegs/iron/haidate_tatami
	backl = /obj/item/storage/backpack/satchel
	backpack_contents = list(/obj/item/storage/belt/pouch/coins/poor)
	if(!H.has_language(/datum/language/abyssal))
		H.grant_language(/datum/language/abyssal)
		to_chat(H, "<span class='info'>I can speak Abyssal with ,a before my speech.</span>")

	H.adjust_skillrank(/datum/skill/misc/swimming, pick(0,1,1), TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE) //ultrafocus on sword and shield.
	H.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE) //ultrafocus on sword and shield.
	H.adjust_skillrank(/datum/skill/misc/reading, pick(0,1,1), TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.burakumin = TRUE //They will not receive the explosive mask, as these have already been exiled. They do not require masks to exist on a society.

	H.change_stat("strength", 1)
	H.change_stat("endurance", 2)
	H.change_stat("constitution", 1)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

	if(H.mind)
		H.merctype = 9

	if(H.wear_mask)
		if(istype(H.wear_mask, /obj/item/clothing/face/eyepatch || /obj/item/clothing/face/eyepatch/left ))
			qdel(H.wear_mask)
			mask = /obj/item/clothing/face/kaizoku/menpo

//colortone for toweryakkos;	color = "#804d97"
