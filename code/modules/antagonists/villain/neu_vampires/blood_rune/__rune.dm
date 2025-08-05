GLOBAL_LIST_EMPTY(runes)
GLOBAL_LIST_EMPTY(rune_appearances_cache)

/mob/proc/occult_muted()
	if (reagents && reagents.has_reagent(/datum/reagent/water/blessed))
		return TRUE
	return FALSE

//Requires either a target/location or both
//Requires a_icon holding the animation
//Requires either a_icon_state of the animation or the flick_anim
//Does not require sleeptime, specifies for how long the animation should be allowed to exist before returning to pool
//Does not require animation direction, but you can specify
//Does not require a name
/proc/anim(turf/location as turf, target as mob|obj, a_icon, a_icon_state as text, flick_anim as text, sleeptime = 15, direction as num, name as text, lay as num, offX as num, offY as num, col as text, alph as num, plane as num, trans, invis, animate_movement, blend)
//This proc throws up either an icon or an animation for a specified amount of time.
//The variables should be apparent enough.
	if(!location && target)
		location = get_turf(target)
		if (!location)//target in nullspace
			return
	if(location && !target)
		target = location
	if(!location && !target)
		return
	var/obj/effect/abstract/animation = new /obj/effect/abstract(location)
	if(name)
		animation.name = name
	if(direction)
		animation.dir = direction
	if(alph)
		animation.alpha = alph
	if(invis)
		animation.invisibility = invis
	if(blend)
		animation.blend_mode = blend
	animation.icon = a_icon
	animation.animate_movement = animate_movement
	animation.mouse_opacity = 0
	if(!lay)
		animation.layer = target:layer+1
	else
		animation.layer = lay
	if(target && istype(target, /atom))
		if(!plane)
			animation.plane = target:plane
		else
			animation.plane = plane
	if(offX)
		animation.pixel_x = offX
	if(offY)
		animation.pixel_y = offY
	if(col)
		animation.color = col
	if(trans)
		animation.transform = trans
	if(a_icon_state)
		animation.icon_state = a_icon_state
	else
		animation.icon_state = "blank"
		flick(flick_anim, animation)

	spawn(max(sleeptime, 5))
		qdel(animation)

	return animation

/obj/effect/blood_rune //Abstract, currently only supports blood as a reagent without some serious overriding.
	name = "rune"
	desc = "A strange collection of symbols drawn in blood."
	anchored = 1
	icon = 'icons/deityrunes.dmi'
	icon_state = ""
	layer = ABOVE_OPEN_TURF_LAYER
	plane = GAME_PLANE

	mouse_opacity = 1 //So we can actually click these

	//Whether the rune is pulsating
	var/animated = 0
	var/activated = 0 // how many times the rune was activated. goes back to 0 if a word is erased.

	//A rune is made of up to 3 words.
	var/datum/rune_word/word1
	var/datum/rune_word/word2
	var/datum/rune_word/word3

	//When a rune is created, we see if there's any data to copy from the blood used (colour, DNA, viruses) for all 3 words
	var/datum/reagent/blood/blood1
	var/datum/reagent/blood/blood2
	var/datum/reagent/blood/blood3

	//Used when a nullrod is preventing a rune's activation TODO: REWORK NULL ROD INTERACTIONS
	var/nullblock = 0

	//The spell currently triggered by the rune. Prevents a rune from being used by different cultists at the same time.
	var/datum/rune_spell/active_spell = null

	//Prevents the same rune from being concealed/revealed several times on a row.
	var/conceal_cooldown = 0

/obj/effect/blood_rune/Initialize(mapload)
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_ENTERED = PROC_REF(on_entered),
		COMSIG_ATOM_EXITED = PROC_REF(on_exited)
	)

	AddElement(/datum/element/connect_loc, loc_connections)


	LAZYADD(GLOB.runes, src)




/obj/effect/blood_rune/Destroy()

	if (word1)
		erase_word(word1.english, blood1)
		word1 = null
	if (word2)
		erase_word(word2.english, blood2)
		word2 = null
	if (word3)
		erase_word(word3.english, blood3)
		word3 = null

	blood1 = null
	blood2 = null
	blood3 = null

	if (active_spell)
		active_spell.abort()
		active_spell = null

	LAZYREMOVE(GLOB.runes, src)

	. = ..()

/obj/effect/blood_rune/examine(mob/user)
	. = ..()
	if(can_read_rune(user) || isobserver(user))
		var/datum/rune_spell/rune_name = get_rune_spell(null, null, "examine", word1, word2, word3)
		. += span_info("It reads: <i>[word1 ? "[word1.rune]" : ""][word2 ? " [word2.rune]" : ""][word3 ? " [word3.rune]" : ""]</i>. [rune_name ? " That's a <b>[initial(rune_name.name)]</b> rune." : "It doesn't match any rune spells."]")
		if(rune_name)
			. += initial(rune_name.desc)
			if (istype(active_spell, /datum/rune_spell/portalentrance))
				var/datum/rune_spell/portalentrance/PE = active_spell
				if (PE.network)
					. += span_info("This entrance was attuned to the <b>[PE.network]</b> path.")
			if (istype(active_spell, /datum/rune_spell/portalexit))
				var/datum/rune_spell/portalexit/PE = active_spell
				if (PE.network)
					. += span_info("This exit was attuned to the <b>[PE.network]</b> path.")


/obj/effect/blood_rune/proc/can_read_rune(mob/living/user) //Overload for specific criteria.
	return user.clan

/obj/effect/blood_rune/salt_act()
	var/turf/T = get_turf(src)
	anim(target = T, a_icon = 'icons/effects/vampire.dmi', flick_anim = "rune_break", plane = ABOVE_LIGHTING_PLANE)
	if (active_spell)
		active_spell.salt_act(T)
	qdel(src)

/obj/effect/blood_rune/proc/write_word(word, datum/reagent/blood/blood)
	if (!word)
		return
	var/turf/T = get_turf(src)
	var/write_color = COLOR_BLOOD
	if (blood)
		write_color = GLOB.blood_types[blood.data["blood_type"]]?.color
	anim(target = T, a_icon = 'icons/deityrunes.dmi', flick_anim = "[word]-write", lay = layer+0.1, col = write_color, plane = plane)

/obj/effect/blood_rune/proc/erase_word(word, datum/reagent/blood/blood)
	if (!word)
		return
	var/turf/T = get_turf(src)
	var/erase_color = COLOR_BLOOD
	if (blood)
		erase_color = GLOB.blood_types[blood.data["blood_type"]]?.color
	anim(target = T, a_icon = 'icons/deityrunes.dmi', flick_anim = "[word]-erase", lay = layer+0.1, col = erase_color, plane = plane)

/obj/effect/blood_rune/proc/cast_word(word)
	if (!word)
		return
	var/obj/effect/abstract/A = anim(target = get_turf(src), a_icon = 'icons/deityrunes.dmi', a_icon_state = "[word]-tear", lay = layer+0.2, plane = plane)
	animate(A, alpha = 0, time = 5)

/obj/effect/blood_rune/ex_act(severity)
	switch (severity)
		if (1)
			qdel(src)
		if (2)
			if (prob(15))
				qdel(src)


/obj/effect/blood_rune/update_icon(draw_up_to = 3)
	. = ..()
	var/datum/rune_spell/spell = get_rune_spell(null, null, "examine", word1, word2, word3)

	if (active_spell)
		return

	overlays.len = 0

	if(spell && activated)
		animated = 1
		draw_up_to = 3
	else
		animated = 0

	var/lookup = ""
	if (word1)
		lookup += "[word1.english]-[animated]-[GLOB.blood_types[blood1.data["blood_type"]]?.color]]"
	if (word2 && draw_up_to >= 2)
		lookup += "-[word2.english]-[animated]-[GLOB.blood_types[blood2.data["blood_type"]]?.color]]"
	if (word3 && draw_up_to >= 3)
		lookup += "-[word3.english]-[animated]-[GLOB.blood_types[blood3.data["blood_type"]]?.color]]"

	var/image/rune_render
	if (lookup in GLOB.rune_appearances_cache)
		rune_render = image(GLOB.rune_appearances_cache[lookup])
	else
		var/image/I1 = image('icons/deityrunes.dmi', src, "")
		if (word1)
			I1.icon_state = word1.english
			if (blood1)
				I1.color = GLOB.blood_types[blood1.data["blood_type"]]?.color || COLOR_BLOOD

		var/image/I2 = image('icons/deityrunes.dmi', src, "")
		if (word2 && draw_up_to >= 2)
			I2.icon_state = word2.english
			if (blood2)
				I2.color = GLOB.blood_types[blood2.data["blood_type"]]?.color || COLOR_BLOOD
		var/image/I3 = image('icons/deityrunes.dmi', src, "")
		if (word3 && draw_up_to >= 3)
			I3.icon_state = word3.english
			if (blood3)
				I3.color = GLOB.blood_types[blood3.data["blood_type"]]?.color || COLOR_BLOOD

		rune_render = image('icons/deityrunes.dmi', src, "")
		rune_render.overlays += I1
		rune_render.overlays += I2
		rune_render.overlays += I3

		if(animated)
			if (word1)
				var/image/I =  image('icons/deityrunes.dmi', src, "[word1.english]-tear")
				I.color = "black"
				I.appearance_flags = RESET_COLOR
				rune_render.overlays += I
			if (word2)
				var/image/I =  image('icons/deityrunes.dmi', src, "[word2.english]-tear")
				I.color = "black"
				I.appearance_flags = RESET_COLOR
				rune_render.overlays += I
			if (word3)
				var/image/I =  image('icons/deityrunes.dmi', src, "[word3.english]-tear")
				I.color = "black"
				I.appearance_flags = RESET_COLOR
				rune_render.overlays += I

			rune_render.overlays += emissive_appearance('icons/deityrunes.dmi', word1.english, src)
			rune_render.overlays += emissive_appearance('icons/deityrunes.dmi', word2.english, src)
			rune_render.overlays += emissive_appearance('icons/deityrunes.dmi', word3.english, src)

		LAZYADDASSOC(GLOB.rune_appearances_cache, lookup, rune_render)
	overlays += rune_render

	if(animated)
		idle_pulse()
	else
		animate(src)

/obj/effect/proc/idle_pulse()
	//This masterpiece of a color matrix stack produces a nice animation no matter which color the rune is.
	animate(src, color = list(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 10, loop = -1)//1
	animate(color = list(1.125, 0.06, 0, 0, 0, 1.125, 0.06, 0, 0.06, 0, 1.125, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 2)//2
	animate(color = list(1.25, 0.12, 0, 0, 0, 1.25, 0.12, 0, 0.12, 0, 1.25, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 2)//3
	animate(color = list(1.375, 0.19, 0, 0, 0, 1.375, 0.19, 0, 0.19, 0, 1.375, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1.5)//4
	animate(color = list(1.5, 0.27, 0, 0, 0, 1.5, 0.27, 0, 0.27, 0, 1.5, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1.5)//5
	animate(color = list(1.625, 0.35, 0.06, 0, 0.06, 1.625, 0.35, 0, 0.35, 0.06, 1.625, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//6
	animate(color = list(1.75, 0.45, 0.12, 0, 0.12, 1.75, 0.45, 0, 0.45, 0.12, 1.75, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//7
	animate(color = list(1.875, 0.56, 0.19, 0, 0.19, 1.875, 0.56, 0, 0.56, 0.19, 1.875, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//8
	animate(color = list(2, 0.67, 0.27, 0, 0.27, 2, 0.67, 0, 0.67, 0.27, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 5)//9
	animate(color = list(1.875, 0.56, 0.19, 0, 0.19, 1.875, 0.56, 0, 0.56, 0.19, 1.875, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//8
	animate(color = list(1.75, 0.45, 0.12, 0, 0.12, 1.75, 0.45, 0, 0.45, 0.12, 1.75, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//7
	animate(color = list(1.625, 0.35, 0.06, 0, 0.06, 1.625, 0.35, 0, 0.35, 0.06, 1.625, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//6
	animate(color = list(1.5, 0.27, 0, 0, 0, 1.5, 0.27, 0, 0.27, 0, 1.5, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//5
	animate(color = list(1.375, 0.19, 0, 0, 0, 1.375, 0.19, 0, 0.19, 0, 1.375, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//4
	animate(color = list(1.25, 0.12, 0, 0, 0, 1.25, 0.12, 0, 0.12, 0, 1.25, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//3
	animate(color = list(1.125, 0.06, 0, 0, 0, 1.125, 0.06, 0, 0.06, 0, 1.125, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)//2


/obj/effect/blood_rune/proc/one_pulse()
	animate(src, color = list(1.625, 0.35, 0.06, 0, 0.06, 1.625, 0.35, 0, 0.35, 0.06, 1.625, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)
	animate(color = list(2, 0.67, 0.27, 0, 0.27, 2, 0.67, 0, 0.67, 0.27, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 2)
	animate(color = list(1.875, 0.56, 0.19, 0, 0.19, 1.875, 0.56, 0, 0.56, 0.19, 1.875, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)
	animate(color = list(1.75, 0.45, 0.12, 0, 0.12, 1.75, 0.45, 0, 0.45, 0.12, 1.75, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)
	animate(color = list(1.625, 0.35, 0.06, 0, 0.06, 1.625, 0.35, 0, 0.35, 0.06, 1.625, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 0.75)
	animate(color = list(1.5, 0.27, 0, 0, 0, 1.5, 0.27, 0, 0.27, 0, 1.5, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 0.75)
	animate(color = list(1.375, 0.19, 0, 0, 0, 1.375, 0.19, 0, 0.19, 0, 1.375, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 0.5)
	animate(color = list(1.25, 0.12, 0, 0, 0, 1.25, 0.12, 0, 0.12, 0, 1.25, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 0.5)
	animate(color = list(1.125, 0.06, 0, 0, 0, 1.125, 0.06, 0, 0.06, 0, 1.125, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 0.25)
	animate(color = list(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0), time = 1)

	spawn (10)
		if(animated)
			idle_pulse()
		else
			animate(src)


/obj/effect/blood_rune/proc/on_entered(turf/entered_turf, atom/movable/mover)
	if (ismob(mover))
		var/mob/user = mover
		var/datum/rune_spell/rune_effect = get_rune_spell(user, src, "walk" , word1, word2, word3)
		if (rune_effect)
			rune_effect.Added(mover)

/obj/effect/blood_rune/proc/on_exited(turf/entered_turf, atom/movable/mover)
	if (active_spell && ismob(mover))
		active_spell.Removed(mover)

/obj/effect/blood_rune/attack_hand(mob/living/user)
	trigger(user)

/obj/effect/blood_rune/attackby(obj/I, mob/user)
	..()
	if(istype(I, /obj/item/clothing/neck/psycross))
		to_chat(user, span_notice("You disrupt the vile magic with the deadening field of \the [I]!") )
		qdel(src)
		return
	if(istype(I, /obj/item/tome))
		trigger(user)
	if(istype(I, /obj/item/talisman))
		var/obj/item/talisman/T = I
		T.imbue(user, src)
	return

/obj/effect/blood_rune/proc/trigger(mob/living/user, talisman_trigger = 0)

	if(!user.clan)
		to_chat(user, span_danger("You can't mouth the arcane scratchings without fumbling over them.") )
		return

	if(iscarbon(user))
		var/mob/living/carbon/C = user
		if (C.occult_muted())
			to_chat(user, span_danger("You find yourself unable to focus your mind on the arcane words of the rune.") )
			return

	if(!user.has_taboo(TATTOO_SILENT))
		if(user.is_muzzled())
			to_chat(user, span_danger("You are unable to speak the words of the rune because of the muzzle.") )
			return

		if(HAS_TRAIT(user, TRAIT_MUTE))
			to_chat(user, span_danger("You don't have the ability to perform rituals without voicing the incantations, there has to be some way...") )
			return

	if(!word1 || !word2 || !word3)
		return fizzle(user)

	add_hiddenprint(user)

	if(active_spell)//rune is already channeling a spell? let's see if we can interact with it somehow.
		if(talisman_trigger)
			var/datum/rune_spell/active_spell_typecast = active_spell
			if(!istype(active_spell_typecast))
				return
			active_spell_typecast.midcast_talisman(user)
		else
			active_spell.midcast(user)
		return

	reveal()//concealed rune get automatically revealed upon use (either through using Seer or an attuned talisman). Placed after midcast: exception for Path talismans.

	active_spell = get_rune_spell(user, src, "ritual", word1, word2, word3)

	if (!active_spell)
		return fizzle(user)
	else
		if (active_spell.destroying_self)
			active_spell = null

/obj/effect/blood_rune/proc/fizzle(mob/living/user)
	var/silent = user.has_taboo(TATTOO_SILENT)
	if(!silent)
		user.say(pick("B'ADMINES SP'WNIN SH'T", "IC'IN O'OC", "RO'SHA'M I'SA GRI'FF'N ME'AI", "TOX'IN'S O'NM FI'RAH", "IA BL'AME TOX'IN'S", "FIR'A NON'AN RE'SONA", "A'OI I'RS ROUA'GE", "LE'OAN JU'STA SP'A'C Z'EE SH'EF", "IA PT'WOBEA'RD, IA A'DMI'NEH'LP", "I'F ON'Y I 'AD 'TAB' E"))
	one_pulse()
	visible_message(span_warning("The markings pulse with a small burst of light, then fall dark.") , \
	span_warning("The markings pulse with a small burst of light, then fall dark.") , \
	span_warning("You hear a faint fizzle.") )

/obj/effect/blood_rune/proc/conceal()
	if(active_spell && !active_spell.can_conceal)
		active_spell.abort(RITUALABORT_CONCEAL)
	alpha = 0
	if (word1)
		erase_word(word1.english, blood1)
	if (word2)
		erase_word(word2.english, blood2)
	if (word3)
		erase_word(word3.english, blood3)
	spawn(6)
		invisibility = INVISIBILITY_OBSERVER
		alpha = 127

/obj/effect/blood_rune/proc/reveal() //Returns 1 if rune was revealed from a invisible state.
	if(invisibility != 0)
		invisibility = 0
		if (!(active_spell?.custom_rune))
			overlays.len = 0
			if (word1)
				write_word(word1.english, blood1)
			if (word2)
				write_word(word2.english, blood2)
			if (word3)
				write_word(word3.english, blood3)
			spawn(8)
				alpha = 255
				update_icon()
		else
			alpha = 255
		conceal_cooldown = 1
		spawn(100)
			if (src && loc)
				conceal_cooldown = 0
		return 1
	return 0

/proc/write_rune_word(turf/T, datum/rune_word/word = null, datum/reagent/blood/source, mob/caster = null)
	if (!word)
		return RUNE_WRITE_CANNOT

	if (!source)
		source = new

	source.color = GLOB.blood_types[source.data["blood_type"]]?.color || COLOR_BLOOD
	//Add word to a rune if there is one, otherwise create one. However, there can be no more than 3 words.
	//Returns 0 if failure, 1 if finished a rune, 2 if success but rune still has room for words.

	var/newrune = FALSE
	var/obj/effect/blood_rune/rune = locate() in T
	if(!rune)
		rune = new /obj/effect/blood_rune(T)
		newrune = TRUE

	if (rune.word1 && rune.word2 && rune.word3)
		return RUNE_WRITE_CANNOT

	if (caster)
		if (newrune)
			log_admin("BLOODCULT: [key_name(caster)] has created a new rune at [T.loc] (@[T.x], [T.y], [T.z]).")
			message_admins("BLOODCULT: [key_name(caster)] has created a new rune at [ADMIN_JMP(T)].")
		rune.add_hiddenprint(caster)

	rune.write_word(word.english, source)

	if (!rune.word1)
		rune.word1 = word
		rune.blood1 = new()
		rune.blood1.data = source.data
		spawn (8)
			rune.update_icon(1)

	else if (!rune.word2)
		rune.word2 = word
		rune.blood2 = new()
		rune.blood2.data = source.data
		spawn (8)
			rune.update_icon(2)

	else if (!rune.word3)
		rune.word3 = word
		rune.blood3 = new()
		rune.blood3.data = source.data
		spawn (8)
			rune.update_icon(3)

	//rune.manage_diseases(source)

	if (rune.blood3)
		return RUNE_WRITE_COMPLETE
	return RUNE_WRITE_CONTINUE

/proc/erase_rune_word(turf/T)
	var/obj/effect/blood_rune/rune = locate() in T
	if(!rune)
		return null

	var/word_erased

	if(rune.word3)
		rune.erase_word(rune.word3.english, rune.blood3)
		word_erased = rune.word3.rune
		rune.word3 = null
		rune.blood3 = null
		if (rune.active_spell)
			rune.active_spell.abort(RITUALABORT_ERASED)
			rune.active_spell = null
			rune.overlays.len = 0
		rune.update_icon()
	else if(rune.word2)
		rune.erase_word(rune.word2.english, rune.blood2)
		word_erased = rune.word2.rune
		rune.word2 = null
		rune.blood2 = null
		rune.update_icon()
	else if(rune.word1)
		rune.erase_word(rune.word1.english, rune.blood1)
		word_erased = rune.word1.rune
		rune.word1 = null
		rune.blood1 = null
		qdel(rune)
	else
		message_admins("Error! Trying to erase a word from a rune with no words!")
		qdel(rune)
		return null
	rune.activated = 0
	return word_erased


/proc/write_full_rune(turf/T, spell_type, datum/reagent/blood/source, mob/caster = null)
	if (!spell_type)
		return

	var/datum/rune_spell/spell_instance = spell_type
	var/datum/rune_word/word1_instance = initial(spell_instance.word1)
	var/datum/rune_word/word2_instance = initial(spell_instance.word2)
	var/datum/rune_word/word3_instance = initial(spell_instance.word3)
	write_rune_word(T, GLOB.rune_words[initial(word1_instance.english)], source, caster)
	write_rune_word(T, GLOB.rune_words[initial(word2_instance.english)], source, caster)
	write_rune_word(T, GLOB.rune_words[initial(word3_instance.english)], source, caster)

	return locate(/obj/effect/blood_rune) in T
