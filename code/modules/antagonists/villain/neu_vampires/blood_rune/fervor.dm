
/datum/rune_spell/fervor
	name = "Fervor"
	desc = "Inspire nearby cultists to purge their stuns and raise their movement speed."
	desc_talisman = "Use to inspire nearby cultists to purge their stuns and raise their movement speed."
	invocation = "Khari'd! Gual'te nikka!"
	word1 = /datum/rune_word/travel
	word2 = /datum/rune_word/technology
	word3 = /datum/rune_word/other
	page = "For a 20u blood cost, this rune immediately buffs all cultists in a 7 tile range by immediately removing any stuns, oxygen loss damage, holy water, and various other bad conditions.\
		<br><br>Additionally, it injects them with 3u of determination, negating slowdown from low health or clothing. This makes it a very potent rune in a fight, especially as a follow up to a flash bang, or prior to a fight. Best used as a talisman. "
	cost_invoke = 20
	var/effect_range = 7

/datum/rune_spell/fervor/cast()
	var/obj/effect/blood_rune/R = spell_holder
	if (istype(R))
		R.one_pulse()

	if (pay_blood())
		for(var/mob/living/L in range(effect_range, get_turf(spell_holder)))
			if (iscarbon(L))
				var/mob/living/carbon/carbon = L
				if (carbon.occult_muted())
					continue
			if(L.stat != DEAD && L.clan)
				playsound(L, 'sound/effects/vampire/fervor.ogg', 50, 0, -2)
				anim(target = L, a_icon = 'icons/effects/vampire.dmi', flick_anim = "rune_fervor", plane = ABOVE_LIGHTING_PLANE, direction = L.dir)
				L.oxyloss = 0
				L.SetParalyzed(0)
				L.SetStun(0)
				L.SetKnockdown(0)

				L.stat = CONSCIOUS
				if (L.reagents)
					L.reagents.del_reagent(/datum/reagent/water/blessed)
		qdel(spell_holder)
	qdel(src)
