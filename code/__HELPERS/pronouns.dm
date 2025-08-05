//pronoun procs, for getting pronouns without using the text macros that only work in certain positions
//datums don't have gender, but most of their subtypes do!
/datum/proc/p_they(capitalized, temp_gender)
	. = "it"
	if(capitalized)
		. = capitalize(.)

/datum/proc/p_their(capitalized, temp_gender)
	. = "its"
	if(capitalized)
		. = capitalize(.)

/datum/proc/p_them(capitalized, temp_gender)
	. = "it"
	if(capitalized)
		. = capitalize(.)

/datum/proc/p_have(temp_gender)
	. = "has"

/datum/proc/p_are(temp_gender)
	. = "is"

/datum/proc/p_were(temp_gender)
	. = "was"

/datum/proc/p_do(temp_gender)
	. = "does"

/datum/proc/p_theyve(capitalized, temp_gender)
	. = p_they(capitalized, temp_gender) + "'" + copytext(p_have(temp_gender), 3)

/datum/proc/p_theyre(capitalized, temp_gender)
	. = p_they(capitalized, temp_gender) + "'" + copytext(p_are(temp_gender), 2)

/datum/proc/p_s(temp_gender) //is this a descriptive proc name, or what?
	. = "s"

/datum/proc/p_es(temp_gender)
	. = "es"

//like clients, which do have gender.
/client/p_they(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "they"
	switch(temp_gender)
		if(FEMALE)
			. = "she"
		if(MALE)
			. = "he"
	if(capitalized)
		. = capitalize(.)

/client/p_their(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "their"
	switch(temp_gender)
		if(FEMALE)
			. = "her"
		if(MALE)
			. = "his"
	if(capitalized)
		. = capitalize(.)

/client/p_them(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "them"
	switch(temp_gender)
		if(FEMALE)
			. = "her"
		if(MALE)
			. = "him"
	if(capitalized)
		. = capitalize(.)

/client/p_have(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "has"
	if(temp_gender == PLURAL || temp_gender == NEUTER)
		. = "have"

/client/p_are(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "is"
	if(temp_gender == PLURAL || temp_gender == NEUTER)
		. = "are"

/client/p_were(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "was"
	if(temp_gender == PLURAL || temp_gender == NEUTER)
		. = "were"

/client/p_do(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "does"
	if(temp_gender == PLURAL || temp_gender == NEUTER)
		. = "do"

/client/p_s(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	if(temp_gender != PLURAL && temp_gender != NEUTER)
		. = "s"

/client/p_es(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	if(temp_gender != PLURAL && temp_gender != NEUTER)
		. = "es"

//mobs(and atoms but atoms don't really matter write your own proc overrides) also have gender!
/mob/p_they(capitalized, temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	. = "it"
	if(pronouns && !ignore_pronouns)
		switch(pronouns)
			if(HE_HIM)
				. = "he"
			if(SHE_HER)
				. = "she"
			if(THEY_THEM)
				. = "they"
			if(IT_ITS)
				. = "it"
	else
		switch(temp_gender)
			if(FEMALE)
				. = "she"
			if(MALE)
				. = "he"
			if(PLURAL)
				. = "they"
	if(capitalized)
		. = capitalize(.)

/mob/p_their(capitalized, temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	. = "its"
	if(pronouns && !ignore_pronouns)
		switch(pronouns)
			if (HE_HIM)
				. = "his"
			if(SHE_HER)
				. = "her"
			if(THEY_THEM)
				. = "their"
			if(IT_ITS)
				. = "its"
	else
		switch(temp_gender)
			if(FEMALE)
				. = "her"
			if(MALE)
				. = "his"
			if(PLURAL)
				. = "their"
	if(capitalized)
		. = capitalize(.)

/mob/p_them(capitalized, temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	. = "it"
	if(pronouns && !ignore_pronouns)
		switch(pronouns)
			if(HE_HIM)
				. = "him"
			if(SHE_HER)
				. = "her"
			if(THEY_THEM)
				. = "them"
			if(IT_ITS)
				. = "it"
	else
		switch(temp_gender)
			if(FEMALE)
				. = "her"
			if(MALE)
				. = "him"
			if(PLURAL)
				. = "them"
	if(capitalized)
		. = capitalize(.)

/mob/p_have(temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	. = "has"
	if(temp_gender == PLURAL || (!ignore_pronouns && pronouns == THEY_THEM))
		. = "have"

/mob/p_are(temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	. = "is"
	if(temp_gender == PLURAL || (!ignore_pronouns && pronouns == THEY_THEM))
		. = "are"

/mob/p_were(temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	. = "was"
	if(temp_gender == PLURAL || (!ignore_pronouns && pronouns == THEY_THEM))
		. = "were"

/mob/p_do(temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	. = "does"
	if(temp_gender == PLURAL || (!ignore_pronouns && pronouns == THEY_THEM))
		. = "do"

/mob/p_s(temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	if(temp_gender != PLURAL || (!ignore_pronouns && pronouns != THEY_THEM))
		. = "s"

/mob/p_es(temp_gender, ignore_pronouns = FALSE)
	if(!temp_gender)
		temp_gender = gender
	if(temp_gender != PLURAL || (!ignore_pronouns && pronouns != THEY_THEM))
		. = "es"

//humans need special handling, because they can have their gender hidden
/mob/living/carbon/human/p_they(capitalized, temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_their(capitalized, temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_them(capitalized, temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_have(temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_are(temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_were(temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_do(temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_s(temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/p_es(temp_gender, ignore_pronouns = FALSE)
	var/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((obscured & ITEM_SLOT_PANTS) && skipface)
		temp_gender = PLURAL
	return ..()
