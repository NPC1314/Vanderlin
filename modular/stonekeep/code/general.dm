/* * * * * * * * * * * **
 *						*
 *		 General		*
 *						*
 *						*
 * * * * * * * * * * * **/

// =================================================================================
//////////////////////////////////////////////
//											//
//					BATHTUB					//
//											//
//////////////////////////////////////////////
/obj/structure/table/wood/bathtub
	name = "bathtub"
	desc = "A relaxing bath in hot water, or a endurance test in freezing water, depending on how lazy you are when warming water."
	icon = 'modular/stonekeep/icons/pews.dmi'
	icon_state = "bathtub"
	resistance_flags = FLAMMABLE
	climb_offset = 0
	climb_time = 30
	climb_sound = 'sound/foley/waterwash (1).ogg'

/obj/structure/table/wood/bathtub/Initialize()
	. = ..()
	add_overlay(mutable_appearance(icon, "bathtub_bathing", ABOVE_MOB_LAYER, GAME_PLANE_UPPER))


/* cant be arsed to refactor this shit, upstream did a whole soap thing that well use instead fuckit)
// -------------- SOAP -----------------
/obj/item/soap
	name = "soap"
	desc = ""
	gender = PLURAL
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "soap"
	w_class = WEIGHT_CLASS_TINY
	item_flags = NOBLUDGEON
	throwforce = 0
	throw_speed = 1
	throw_range = 7
	cleanspeed = 35 //slower than mop
	uses = 10
	grid_width = 32
	grid_height = 32

/obj/item/soap/attack(mob/living/carbon/human/target, mob/living/carbon/user)
	user.changeNext_move(CLICK_CD_MELEE)
	var/turf/bathspot = get_turf(target)				// Checks for being in a bath and being undressed
	if(!istype(bathspot, /turf/open/water/bath))
		if((!locate(/obj/structure/table/wood/bathtub) in target.loc))
			to_chat(user, span_warning("They must be in the bath water!"))
			return
	if(!ishuman(target))
		to_chat(user, span_warning("They don't want to be soaped..."))
		return

	if(istype(target.wear_armor, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with armor on."))
		return

	if(istype(target.wear_shirt, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with clothing on."))
		return

	if(istype(target.cloak, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with clothing on."))
		return

	if(istype(target.wear_pants, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with pants on."))
		return

	if(istype(target.shoes, /obj/item/clothing))
		to_chat(user, span_warning("Can't get a proper bath with shoes on."))
		return

	user.visible_message("<span class='info'>[user] begins scrubbing [target] with the [src].</span>")	// Applies the special bonus only if Nitemaiden using the soap
	playsound(src.loc, pick('sound/items/soaping.ogg'), 100)
	if(do_after(user, 5 SECONDS, target = target))
		if((user.job == "Nitemaiden"))
			user.visible_message(span_info("[user] expertly scrubs and soothes [target] with the [src]."))
			to_chat(target, span_warning("I feel so relaxed and clean!"))
			target.apply_status_effect(/datum/status_effect/buff/clean_plus)
			target.tiredness = 0
			target.remove_status_effect(/datum/status_effect/debuff/sleepytime)
		else
			user.visible_message(span_info("[user] tries their best to scrub [target] with the [src]."))
			to_chat(target, span_warning("Its worth a little soap in my eyes to get clean."))
		wash_atom(target, CLEAN_STRONG)
		uses -= 1
		if(uses == 0)
			qdel(src)
*/

// =================================================================================
/*------\
| Crops |
\------*/

/datum/plant_def
	icon = 'modular/stonekeep/icons/crops.dmi'


// =============================================================================
// ==============================	FOOD	====================================

/obj/item/reagent_containers/food/snacks
	icon = 'modular/stonekeep/icons/food.dmi'


// =================================================================================
/*-------\
| Papers |
\-------*/

/obj/item/paper/note_about_dwarfs
	name = "report to Guild on steel deliveries"
	info = "Last yils deliverie of steele from the dwarf outposte in the northeast: 83 ingots of finest steel. None hath been delivered this yil, this will not do. For the good of the Makers Guild, this must be investigated."

/obj/item/paper/reminder_about_dwarfs
	name = "note about steel deliveries"
	info = "Makers! The northern dwarves delivery of steele is much delayed this yil. Make do or go get it from them, the Guild cannot do more to solve this."


/obj/item/paper/note_about_malum
	name = "a missive from the oracle"
	info = "Bad omens cloud the mountains. Malum has been desecrated, and bad fortune might befall us if the source is not found and purified."



/obj/item/paper/note_about_tollhouse
	name = "report on the olde tollhouse"
	info = "My liege! Inspection of the olde tollhouse in the marshes revealed it to be in better shape than afeared. Some crenelation hath fallen off, but the lockes are still in good order, and the keyes kept in the Stewards chest still well accounted for. It could be restored to function should you wishe it liege."

/obj/item/paper/angry_about_pigs
	name = "letter from neighbour"
	info = "Elder. Your pigs escaped yet again and plundered my cabbage patch before running west. Next time I will make ham of them. You have been warned."




/obj/item/paper/certificate
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "certificate"
/obj/item/paper/certificate/update_icon_state()
	icon_state = "certificate"
/obj/item/paper/certificate/Initialize()
	..()
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "certificate"

/obj/item/paper/certificate/health
	name = "feldsher health certificate"
	info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date. (signed by the town feldsher, the date is a few weeks ago)"
/obj/item/paper/certificate/expired_health
	info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date.  (signed by the town feldsher, the date is half a year ago)"
/obj/item/paper/certificate/fake_health
	info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date.  (signature is undreadable, the date is a few weeks ago)"

/obj/item/paper/certificate/maybe/New()
	. = ..()
	if(prob(50))
		info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date. (signed by the town feldsher, the date is a few weeks ago)"
	else
		info = "The wearer hath passed the feldshers monthly inspection as mandated by the pestilence laws, and is not a bearer of maladies to infect our towne.   \
	Thus they are allowede legally to ply the nitemaidens trade. I so swear on this date.  (signed by the town feldsher, the date is half a year ago)"

/obj/item/paper/certificate/adventurer
	name = "adventurer guild certificate"
	info = "The wearer hath been approved by the Guild Master as a reputable Adventurer."
/obj/item/paper/certificate/adventurer_fake
	name = "adventurer guild certificate"
	info = "The wearer hath been approved by the Guild Master as a reputable Adventurer. It lacks a wax seal."

/obj/item/paper/townhouse_deed
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "certificate"
	name = "townhouse deed"
	info = "The personage named in this deede hath purchased the right to the propertie marked herein."
/obj/item/paper/townhouse_deed/Initialize()
	..()
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "certificate"



// =================================================================================
/*------\
| Items |
\------*/



/obj/item/reagent_containers/glass/bucket/pot/copper
	icon = 'modular/stonekeep/icons/cooking.dmi'
	color = "#d2cdcb"

/obj/item/reagent_containers/glass/bucket/pot/stone
	icon = 'modular/stonekeep/icons/cooking.dmi'
	icon_state = "pote_stone"
	drop_sound = 'modular/stonekeep/sound/stone_scrape.ogg'

/obj/item/kitchen/spoon
	icon = 'modular/stonekeep/icons/cooking.dmi'


/obj/item/grown/log/tree
	lefthand_file = 'modular/stonekeep/icons/onmob/lefthand.dmi'
	righthand_file = 'modular/stonekeep/icons/onmob/righthand.dmi'
	experimental_inhand = FALSE
/obj/item/grown/log/tree/small
	icon_state = "logsmall"
/obj/item/grown/log/tree/stake
/obj/item/grown/log/tree/stick
	item_state = "stick"
/obj/item/natural/wood/plank
	lefthand_file = 'modular/stonekeep/icons/onmob/lefthand.dmi'
	righthand_file = 'modular/stonekeep/icons/onmob/righthand.dmi'
	experimental_inhand = FALSE
/obj/item/natural/bundle/plank
	lefthand_file = 'modular/stonekeep/icons/onmob/lefthand.dmi'
	righthand_file = 'modular/stonekeep/icons/onmob/righthand.dmi'
	experimental_inhand = FALSE

/obj/item/grown/log/tree/small/essence	// disabled in this shitty way, its a literal powerup icon coin for mario to bop head on, very gamey ROGTODO
	name = ""
	desc = ""
	icon_state = ""
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT


// =============================================================================
// ========================		WEATHER EDITS		============================

/obj/item/flashlight/flare/torch
	var/openflame = TRUE

/obj/item/flashlight/flare/torch/lantern
	dropshrink = 0.7
	openflame = FALSE
/obj/item/flashlight/flare/torch/lantern/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -4,"nx" = 9,"ny" = -4,"wx" = -3,"wy" = -4,"ex" = 2,"ey" = -4,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/machinery/light/fueled/torchholder
	var/unlit_torch
/obj/machinery/light/fueled/torchholder/Initialize()
	if(unlit_torch)
		torchy = new /obj/item/flashlight/flare/torch(src)
	else
		torchy = new /obj/item/flashlight/flare/torch(src)
		torchy.spark_act()
	. = ..()


// braziers, torches, magic fire, lamps etc are rain resistant, standing fires and candles are not
/obj/machinery/light/fueled/wallfire/candle/Initialize()
	. = ..()
	GLOB.weather_act_upon_list += src

/obj/machinery/light/fueled/wallfire/candle/Destroy()
	GLOB.weather_act_upon_list -= src
	. = ..()

/obj/machinery/light/fueled/firebowl/standing/Initialize()
	. = ..()
	GLOB.weather_act_upon_list += src
/obj/machinery/light/fueled/firebowl/standing/Destroy()
	GLOB.weather_act_upon_list -= src
	. = ..()

/obj/machinery/light/fueled/firebowl/standing/blue/Initialize()
	. = ..()
	GLOB.weather_act_upon_list -= src
/obj/machinery/light/fueled/firebowl/standing/lamp/Initialize()
	. = ..()
	GLOB.weather_act_upon_list -= src

/obj/item/candle/Initialize()
	. = ..()
	GLOB.weather_act_upon_list += src
/obj/item/candle/Destroy()
	GLOB.weather_act_upon_list -= src
	. = ..()

/obj/item/flashlight/flare/torch/weather_act_on(weather_trait, severity)
	if(weather_trait != PARTICLEWEATHER_RAIN)
		return
	if(!openflame)
		return
	extinguish()

/obj/machinery/light/fueled/firebowl/standing/weather_act_on(weather_trait, severity)
	if(weather_trait != PARTICLEWEATHER_RAIN)
		return
	extinguish()

/datum/particle_weather/rain_gentle/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(1,3))
	L.SoakMob(FULL_BODY)
	if(L.fire_stacks > 0)
		if(prob(1))
			L.adjust_fire_stacks(-1)

/datum/particle_weather/rain_storm/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(3,5))
	L.SoakMob(FULL_BODY)
	if(L.fire_stacks > 0)
		if(prob(1))
			L.adjust_fire_stacks(-1)



// =============================================================================
// ========================		BLOOD PREMAPPED		============================
/*	..................   For premapped blood skipping timers, diseases etc   ................... */
/obj/effect/decal/cleanable/blood_neu
	name = "blood"
	desc = ""
	icon = 'icons/effects/blood.dmi'
	icon_state = "floor1"
	nomouseover = TRUE
	var/wash_precent = 0
	COOLDOWN_DECLARE(wash_cooldown)

/obj/effect/decal/cleanable/blood_neu/weather_act_on(weather_trait, severity)
	if(weather_trait != PARTICLEWEATHER_RAIN || !COOLDOWN_FINISHED(src, wash_cooldown))
		return
	wash_precent += min(10, severity / 4)
	alpha = 255 *((100 - wash_precent) * 0.01)
	if(wash_precent >= 100)
		qdel(src)
	COOLDOWN_START(src, wash_cooldown, 15 SECONDS)

/obj/effect/decal/cleanable/blood_neu/Initialize()
	. = ..()
	pixel_x = rand(-5,5)
	pixel_y = rand(5,5)
	GLOB.weather_act_upon_list += src

/obj/effect/decal/cleanable/blood_neu/Destroy()
	GLOB.weather_act_upon_list -= src
	return ..()

/obj/effect/decal/cleanable/blood_neu/random/Initialize()
	. = ..()
	icon_state = pick("floor1", "floor2", "floor3", "floor4", "floor5", "floor6", "splatter1", "splatter2", "splatter3", "splatter4", "splatter5", "splatter6", "gibl1", "gibl2", "gibl3", "gibl4", "gibl5")

/obj/effect/decal/cleanable/blood_neu/tracks
	icon_state = "tracks"


/*	..................   Misc   ................... */
/obj/item/statue/gnome	// for the wizards tower
	name = "petrified gnome"
	desc = "A literal gnome, turned to stone by powerful magicks. Rather unsettling, or a fascinating experiment, depending on your point of view."
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "petrignome"
	smeltresult = null
	drop_sound = 'sound/foley/dropsound/brick_drop.ogg'
	attacked_sound = 	'modular/stonekeep/sound/stone_scrape.ogg'

/obj/item/statue/gnome/attackby(obj/item/W, mob/living/user, params)
	user.changeNext_move(CLICK_CD_MELEE)
	var/list/offhand_types = typecacheof(list(/obj/item/weapon/hammer, /obj/item/natural/stone, /obj/item/natural/stoneblock))
	var/item = user.get_inactive_held_item()
	if(user.used_intent.type == /datum/intent/chisel && is_type_in_typecache(item, offhand_types))
		var/skill_level = user.get_skill_level(/datum/skill/craft/masonry)
		var/work_time = (4 SECONDS - (skill_level * 5))
		if(istype(W, /obj/item/weapon/chisel))
			var/obj/item/weapon/chisel/chisel = W
			work_time *= chisel.time_multiplier
		playsound(src.loc, pick('sound/combat/hits/onrock/onrock (1).ogg', 'sound/combat/hits/onrock/onrock (2).ogg', 'sound/combat/hits/onrock/onrock (3).ogg', 'sound/combat/hits/onrock/onrock (4).ogg'), 100)
		user.visible_message("<span class='info'>[user] begins chiseling [src] into blocks.</span>")
		if(do_after(user, work_time))
			playsound(src.loc, 'modular/stonekeep/sound/vo/mobs/gnome/scream.ogg', 20)
			sleep(10)
			new /obj/item/natural/stoneblock(get_turf(src.loc))
			if(prob(50))
				new /obj/effect/decal/cleanable/debris/stone(get_turf(src))
			playsound(src.loc, 'sound/foley/smash_rock.ogg', 100)
			sleep()
			user.visible_message(span_info("There is a faint cry of agony as the statue is demolished. Must be the wind."))
			qdel(src)
			user.adjust_experience(/datum/skill/craft/masonry, (user.STAINT*0.2)) // STONEKEEP EDIT
			// user.mind.add_sleep_experience(/datum/skill/craft/masonry, (user.STAINT*0.2))
		return TRUE
	if(istype(W, /obj/item/stonetofleshpotion))
		playsound(src, 'sound/foley/waterenter.ogg', 100, FALSE)
		qdel(W)
		sleep(10)
		small_shake()
		sleep(1)
		small_shake()
		sleep(1)
		small_shake()
		sleep(1)
		small_shake()
		sleep(1)
		small_shake()
		sleep(1)
		small_shake()
		sleep(1)
		big_shake()
		sleep(1)
		big_shake()
		sleep(1)
		big_shake()
		sleep(1)
		big_shake()
		sleep(1)
		big_shake()
		playsound(get_turf(src), 'sound/foley/break_clay.ogg', 90, TRUE)
		new /obj/effect/decal/cleanable/debris/stone(get_turf(src))
		new /mob/living/simple_animal/hostile/insanegnome(get_turf(src))
		playsound(src.loc, 'modular/stonekeep/sound/vo/mobs/gnome/laugh.ogg', 90)
		sleep(3)
		qdel(src)
	. = ..()

/obj/item/statue/gnome/proc/small_shake()
	var/start_y = pixel_y
	pixel_y = start_y + 1
	sleep(1)
	pixel_y = start_y  // Move down

/obj/item/statue/gnome/proc/big_shake()
	var/start_y = pixel_y
	var/start_x = pixel_x
	pixel_y = start_y + 2
	sleep(1)
	pixel_y = start_y  // Move down
	pixel_x = start_x + 1
	sleep(1)
	pixel_x = start_x
	pixel_y = start_y + 2
	pixel_y = start_y  // Ensure it resets to the original position
	pixel_x = start_x

/obj/item/stonetofleshpotion
	name = "strange clay bottle"
	desc = "It is stenciled in small letter: LET THY FLESH TURN FROM STONE TO FLESH ONCE AGAINE!"
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "stonetoflesh"
	sellprice = 10
	adventurer_artefact = TRUE
/obj/item/stonetofleshpotion/throw_impact(atom/hit_atom, datum/thrownthing/thrownthing)
	. = ..()
	new /obj/effect/decal/cleanable/shreds/clay(get_turf(src))
	playsound(get_turf(src), 'sound/foley/break_clay.ogg', 90, TRUE)
	new /obj/effect/decal/cleanable/food/mess(get_turf(src))
	qdel(src)



/obj/structure/fluff/shipssprote
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "sprote"
	mouse_opacity = 0
	color = "#5a4621"
	pixel_y = -16


/obj/effect/decal/miasma
	name = ""
	desc = ""
	icon = 'icons/roguetown/mob/rotten.dmi'
	icon_state = "deadite"
	mouse_opacity = 0


/obj/structure/remains
	name = "remains"
	icon = 'icons/effects/blood.dmi'
	color = "#d6b3a5"
	plane = GAME_PLANE
	layer = BELOW_OPEN_DOOR_LAYER
	gender = PLURAL
	density = FALSE
/obj/structure/remains/human
	name = "humen remains"
	icon_state = "remains"
/obj/structure/remains/humanc
	name = "humen remains"
	icon_state = "remainslarva"
/obj/structure/remains/generic
	name = "animal remains"
	icon_state = "skele"
	icon = 'icons/roguetown/mob/monster/saiga.dmi'

/obj/structure/fluff/walldeco/rags
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "wallrags1"
/obj/structure/fluff/walldeco/rags/alt
	icon_state = "wallrags2"
/obj/structure/fluff/walldeco/rags/skull
	icon_state = "wallskull"




// =============================================================================
// ==============================	FLORA	====================================

/*	..................   Pigflowers   ................... */
/obj/structure/flora/rogueflower // ausbushes recolored
	name = "flowers"
	icon = 'modular/stonekeep/icons/pigflora.dmi'
	icon_state = "reedbush_1"
/obj/structure/flora/rogueflower/Initialize()
	dir = pick(GLOB.cardinals)
	. = ..()

/obj/structure/flora/rogueflower/random
	icon_state = "ppflowers"
/obj/structure/flora/rogueflower/random/Initialize()
	icon_state = pick("lavendergrass", "ywflowers", "brflower", "ppflowers")
	. = ..()

/obj/structure/flora/rogueflower/fallenleaves
	icon_state = "leaves"
	alpha = 200
/obj/structure/flora/rogueflower/fallenleaves/Crossed(mob/living/L)
	. = ..()
	playsound(L.loc, "plantcross", 50, FALSE, -1)

/obj/structure/flora/rogueflower/reedbush
	icon_state = "reedbush"

/obj/structure/flora/rogueflower/lavendergrass
	icon_state = "lavendergrass"

/obj/structure/flora/rogueflower/ywflowers
	icon_state = "ywflowers"

/obj/structure/flora/rogueflower/brflowers
	icon_state = "brflowers"

/obj/structure/flora/rogueflower/ppflowers
	icon_state = "ppflowers"

/obj/structure/flora/grass/stalky
	name = ""
	desc = ""

	icon_state = "stalkygrass"
	opacity = FALSE

/obj/structure/flora/grass/stalky/Initialize()
	dir = pick(GLOB.cardinals)
	. = ..()


/obj/structure/flora/grass/herb
	icon = 'modular/stonekeep/icons/pigflora.dmi'
	alpha = 230

/*	..................   Bear pelt better   ................... */
/obj/structure/bearpelt
	icon = 'modular/stonekeep/icons/bear.dmi'
	alpha = 240
	color = "#cdcbba"

// makes barrels climbable, its really weird they arent.
/obj/structure/fermentation_keg
	climbable = TRUE
	climb_time = 20
	climb_offset = 16
	drag_slowdown = 4

/obj/structure/closet/crate
	drag_slowdown = 4

/datum/supply_pack/rogue/narcotics/soap	// correct soap now
	name = "Herbal Soap"
	cost = 20
	contains = /obj/item/soap


// =============================================================================
// ========================		MORNING STUBBLE		============================
/* suspected of memory leak by RW
/datum/sprite_accessory/facial_hair/stubble
	name = "Stubble"
	icon = 'modular/stonekeep/icons/facial.dmi'
	icon_state = "facial_stubble"
	gender = MALE
	specuse = list("human", "dwarf", "elf", "tiefling", "halforc")

/mob/living/carbon/human/proc/try_grow_beard()

	if(!(dna?.species))
		return

	// Certain races dont grow beards
	if(!(dna.species in RACES_WITH_BEARD_GROWTH))
		return

	if(!(STUBBLE in dna.species.species_traits))
		return

	if(mob_biotypes & MOB_UNDEAD)
		return

	// Change this if you want female dwarves with beard growth
	if(gender != MALE)
		return

	var/datum/bodypart_feature/hair/facial/beard = get_bodypart_feature_of_slot(BODYPART_FEATURE_FACIAL_HAIR)
	if(!beard)
		return

	if(beard.accessory_type == /datum/sprite_accessory/facial_hair/shaved)
		beard.accessory_type = /datum/sprite_accessory/facial_hair/stubble
		to_chat(src, span_warning("My face itches."))
		update_hair()

*/
// =============================================================================
// ================		DARK ELF DARKLING SYSTEM		========================
/* disabled for now, annoying to make darkling component actually work ROGTODO
/datum/status_effect/debuff/darkling_glare
	id = "darkling_glare"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/darkling_glare
	effectedstats = list("perception" = -1)
	duration = 10 SECONDS

/atom/movable/screen/alert/status_effect/debuff/darkling_glare
	name = "Eye Strain"
	desc = "My eyes are starting to water, the light burns."
	icon_state = "stressb"

/datum/status_effect/debuff/darkling_migraine
	id = "darkling_migraine"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/darkling_migraine
	effectedstats = list("endurance" = -1, "intelligence" = -1) //Will basically always be stacked with the eye strain penalty
	duration = 20 SECONDS

/atom/movable/screen/alert/status_effect/debuff/darkling_migraine
	name = "Migraine"
	icon_state = "muscles"
	desc = "My head is pounding, I need to get away from the light and rest a while!"


/datum/stressevent/darkling_toobright
	stressadd = 1
	desc = span_red("It's too bright, the light hurts my eyes.")
	timer = 30 SECONDS
/datum/stressevent/darkling_migraine
	stressadd = 3
	desc = "My head is pounding, I can barely think. I need to get away from the light and rest a while!"
	timer = 1 MINUTES


/datum/species/elf/dark/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	C.AddComponent(/datum/component/darkling)

/datum/species/elf/dark/on_species_loss(mob/living/carbon/C)
	. = ..()
	C.GetComponent(/datum/component/darkling).Destroy()			//Cleanup, in case you somehow change species. Like becoming a skeleton.

/datum/status_effect/buff/darkling_darkly
	id = "Darkling"
	alert_type =  /atom/movable/screen/alert/status_effect/buff/darkling_darkly
	effectedstats = list("perception" = 1)
	duration = 5 SECONDS

/atom/movable/screen/alert/status_effect/buff/darkling_darkly
	name = "Darkling"
	desc = "You are at home in the dark. Unbothered. In your lane. Moisturized."
	icon_state = "stressg"
*/





/datum/status_effect/debuff/badvision
	effectedstats = list("perception" = -6, "speed" = -2,"fortune" = -5)
	duration = 100



/obj/item/reagent_containers/food/snacks/fat
	cooktime = 15 SECONDS


// -------------- TALLOW (fried fat for crafting) -----------------
/obj/item/reagent_containers/food/snacks/tallow
	name = "tallow"
	desc = "Fatty tissue is harvested from slain creachurs and rendered of its membraneous sinew to produce a hard shelf-stable \
	grease. Useful for making processed leather clothing, but little else. Can be sliced into smaller pieces before use to be less wasteful. Inedible"
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "tallow"
	tastes = list("grease" = 1, "oil" = 1, "regret" =1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)
	bitesize = 2
	slice_path = /obj/item/reagent_containers/food/snacks/tallow/piece
	slices_num = 2
	slice_batch = FALSE
	slice_sound = TRUE
	eat_effect = /datum/status_effect/debuff/uncookedfood

/obj/item/reagent_containers/food/snacks/tallow/update_icon()
	if(slices_num)
		icon_state = "tallow"
	else
		icon_state = "tallowslice"

/obj/item/reagent_containers/food/snacks/tallow/on_consume(mob/living/eater)
	..()
	changefood(slice_path, eater)

/obj/item/reagent_containers/food/snacks/tallow/piece
	name = "piece of tallow"
	desc = "Inedible. Ready for use in crafting."
	icon_state = "tallowslice"
	bitesize = 1
	slices_num = FALSE
	slice_path = FALSE
	eat_effect = /datum/status_effect/debuff/uncookedfood
	list_reagents = list(/datum/reagent/consumable/nutriment = 1)

// =================================================================
// ================		TEMPLE FLUFF		========================

/*	..................   Astrata Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/astrata
	name = "The Sun Queen"
	desc = ""
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "astrata"
	plane = -3
	pixel_x = -19

/*	..................   Necra Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/necra
	name = "The Undermaiden"
	desc = ""
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "necra"
	plane = -3
	pixel_x = -16

/*	..................   Dendor Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/dendor
	name = "The Tree Father"
	desc = ""
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "mystical"
	plane = -3
	pixel_x = -10

/*	..................   Abyssor Shrine   ................... */
/obj/structure/fluff/psycross/crafted/shrine/abyssor
	name = "The World Whale"
	desc = ""
	icon = 'modular/stonekeep/icons/96x96.dmi'
	icon_state = "abyssor"
	bound_width = 64
	plane = -3
	pixel_x = -25

/*	..................   Abandoned Malum Shrine (Dromkis revenge)   ................... */	// Not meant to be craftable, its abandoned and got a reward for relight it, special for malumites
/obj/structure/fluff/psycross/crafted/shrine/malum
	name = "abandoned statue of Malum"
	desc = "The fire has gone out, the statue cold. The bowl on top is made to hold coal."
	icon = 'modular/stonekeep/icons/64x64.dmi'
	icon_state = "malum"
	bound_width = 64
	plane = -3
	var/datum/looping_sound/fireloop/soundloop
	var/refueled
	var/on

/obj/structure/fluff/psycross/crafted/shrine/malum/Initialize()
	. = ..()
	addtimer(CALLBACK(src, /obj/structure/fluff/psycross/crafted/shrine/malum/proc/has_the_temple_been_purified), 60 MINUTES)

/obj/structure/fluff/psycross/crafted/shrine/malum/attackby(obj/item/A, mob/user, params)
	if(istype(A, /obj/item/ore/coal))
		if(refueled)
			return
		else
			icon_state = "malum_fueled"
			refueled = TRUE
			playsound(src.loc, 'modular/stonekeep/sound/stone_scrape.ogg', 100)
			qdel(A)
/obj/structure/fluff/psycross/crafted/shrine/malum/spark_act()
	fire_act()
/obj/structure/fluff/psycross/crafted/shrine/malum/fire_act(added, maxstacks)
	if(refueled)
		if(!on)
			playsound(src.loc, 'sound/items/firelight.ogg', 100)
			soundloop = new /datum/looping_sound/fireloop(src,FALSE)
			soundloop.start()
			on = TRUE
			name = "statue of Malum"
			icon_state = "malum_fire"
			set_light(4, 3, 20, l_color = LIGHT_COLOR_YELLOW)
			update_icon()
			soundloop.start()
			malums_blessings()
			return TRUE
/obj/structure/fluff/psycross/crafted/shrine/malum/Destroy()
	QDEL_NULL(soundloop)
	. = ..()

/obj/structure/fluff/psycross/crafted/shrine/malum/proc/malums_blessings(mob/living/carbon/human)
	for(var/mob/living/carbon/H in hearers(7, loc))
		switch(H.patron?.type)
			if(/datum/patron/divine/malum)
				H.adjust_triumphs(1)
				H.apply_status_effect(/datum/status_effect/buff/craft_buff)
				playsound(H, 'modular/stonekeep/sound/triumph_w.ogg', 100, FALSE, -5)
			else
				H.apply_status_effect(/datum/status_effect/buff/craft_buff)

/obj/structure/fluff/psycross/crafted/shrine/malum/proc/has_the_temple_been_purified()
//	if(!on)
	shrine_not_purified()

/obj/structure/fluff/psycross/crafted/shrine/malum/proc/shrine_not_purified()
	var/outcome = rand(1,100)
	switch(outcome)
		if(1 to 40)
			var/datum/round_event_control/haunts/HA = new()
			HA.runEvent()
		if(41 to 70)
			var/datum/round_event_control/skellyinvade/SI = new()
			SI.runEvent()
		if(71 to 100)
			var/datum/round_event_control/gobinvade/GI = new()
			GI.runEvent()



/obj/structure/chair/pew
	icon = 'modular/stonekeep/icons/pews.dmi'

/obj/structure/chair/pew/left/proc/GetLeftPewArmrest()
	return mutable_appearance('modular/stonekeep/icons/pews.dmi', "pewend_left_armrest")

/obj/structure/chair/pew/right/proc/GetRightPewArmrest()
	return mutable_appearance('modular/stonekeep/icons/pews.dmi', "pewend_right_armrest")
/* obsolete with Borbops distillery
/obj/item/reagent_containers/food/snacks
	var/hard_distill

/obj/item/reagent_containers/food/snacks/produce/vegetable/onion
	can_distill = FALSE
	hard_distill = TRUE

/obj/item/reagent_containers/food/snacks/produce/potato
	can_distill = FALSE
	hard_distill = TRUE
*/

/*
/obj/structure/fermentation_keg/distillery	// ROGTODO obsolete
	name = "distillery"
	desc = "Copper vat that turns certain produce into hard liquor."
	icon = 'modular/stonekeep/icons/distillery.dmi'
	icon_state = "distillery"
	anchored = TRUE
	layer = ABOVE_MOB_LAYER
	plane = GAME_PLANE_UPPER
	var/datum/looping_sound/distillery/soundloop

/datum/looping_sound/distillery
	mid_sounds = list('modular/stonekeep/sound/distillery.ogg'=1)
	mid_length = 7 SECONDS
	volume = 70

/obj/structure/fermentation_keg/distillery/Initialize()
	. = ..()
	soundloop = new(src, FALSE)
	soundloop.start()

/obj/structure/fermentation_keg/distillery/Destroy()
	explosion(src.loc,-1,-1,2, flame_range = 4)	// small explosion, plus a very large fireball.
	return ..()
/obj/structure/fermentation_keg/distillery/try_ferment(obj/item/reagent_containers/food/snacks/fruit, mob/user, batch_process)
	if(!fruit.hard_distill)
		if(!batch_process)
			to_chat(user, span_warning("Not suitable for distillation."))
		return FALSE
	else if(!user.transferItemToLoc(fruit,src))
		if(!batch_process)
			to_chat(user, span_warning("[fruit] is stuck to my hand!"))
		return FALSE
	if(!batch_process)
		to_chat(user, span_info("I place [fruit] into [src]."))
	addtimer(CALLBACK(src, PROC_REF(makeWine), fruit), rand(1 MINUTES, 3 MINUTES))
	return TRUE
*/

//................	Debris decals (result from crafting or destroying items thats just visual)	............... //
/obj/effect/decal/cleanable/debris
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/crafting.dmi'
	icon_state = "tiny"
	beauty = -20
/obj/effect/decal/cleanable/debris/Initialize()
	. = ..()
	setDir(pick(GLOB.cardinals))

/obj/effect/decal/cleanable/debris/ex_act()
	qdel(src)


/obj/effect/decal/cleanable/debris/glassy
	name = "glass shards"
	icon_state = "tiny"
	beauty = -100
/obj/effect/decal/cleanable/debris/glassy/Crossed(mob/living/L)
	. = ..()
	playsound(loc,'sound/foley/glass_step.ogg', 50, FALSE)

/obj/effect/decal/cleanable/debris/stony
	name = "stone chippings"
	icon_state = "pebbly"

/obj/effect/decal/cleanable/debris/woody	// sawdust gets cleared by weather
	name = "sawdust"
	icon_state = "woody"
/obj/effect/decal/cleanable/debris/woody/Initialize()
	START_PROCESSING(SSprocessing, src)
	GLOB.weather_act_upon_list += src
	. = ..()
/obj/effect/decal/cleanable/debris/woody/Destroy()
	STOP_PROCESSING(SSprocessing, src)
	GLOB.weather_act_upon_list -= src
	. = ..()
/obj/effect/decal/cleanable/debris/woody/weather_act_on(weather_trait, severity)
	qdel(src)

/obj/effect/decal/cleanable/debris/clay
	name = "clay shards"
	icon_state = "clay"



/obj/item/kitchen/platter/clay/throw_impact(atom/hit_atom, datum/thrownthing/thrownthing)
	new /obj/effect/decal/cleanable/debris/clay(get_turf(src))
	playsound(get_turf(src), 'sound/foley/break_clay.ogg', 90, TRUE)
	..()
	qdel(src)

/obj/item/reagent_containers/glass/bowl/clay/throw_impact(atom/hit_atom, datum/thrownthing/thrownthing)
	new /obj/effect/decal/cleanable/debris/clay(get_turf(src))
	playsound(get_turf(src), 'sound/foley/break_clay.ogg', 90, TRUE)
	..()
	qdel(src)



/obj/item/reagent_containers/glass/cup/attackby(obj/item/I, mob/living/user, params)
	. = ..()
	user.changeNext_move(CLICK_CD_MELEE)
	if(!reagents.total_volume)
		if(istype(I,/obj/item/natural/cloth))
			if(do_after(user, 3 SECONDS, src))
				user.visible_message("<span class='notice'>[user] cleans [src] with a rag.</span>")

/obj/item/paper/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.3,"sx" = 0,"sy" = -1,"nx" = 6,"ny" = -1,"wx" = 1,"wy" = 0,"ex" = 7,"ey" = -1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 2,"sflip" = 0,"wflip" = 0,"eflip" = 8)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)



/obj/item/perfume
	dropshrink = 0.5

/obj/item/sleepingbag
	dropshrink = 0.7
	icon = 'modular/stonekeep/icons/structure.dmi'

/obj/structure/bed/sleepingbag
	icon = 'modular/stonekeep/icons/structure.dmi'


/obj/structure/handcart/corpse
	name = "corpse cart"
	color = "#b4b4b6"


/obj/item/flashlight/flare/torch/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.7,"sx" = -6,"sy" = 4,"nx" = 8,"ny" = 4,"wx" = -7,"wy" = 3,"ex" = 2,"ey" = 6,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 2,"sturn" = 2,"wturn" = -2,"eturn" = -2,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/reagent_containers/food/snacks/egg
	name = "cackleberry"



/obj/item/reagent_containers/glass/bottle
	dropshrink = 0.7




// =========================================================
// ================		KEYS		========================

/obj/item/key/captain
	name = "sheriffs key"

/obj/item/key/mason
	name = "mason key"
	desc = "This bronze key is stamped with the Makers Guild symbol."
	icon_state = "brownkey"
	lockid = "mason"

/obj/item/key/guildring
	name = "guild ring"
	desc = "The wearer is a proud member of the Makers' guild. It looks like its made to fit into some kind of lock."
	icon_state = "guild_mason"
	lockid = "guild"
	w_class = WEIGHT_CLASS_TINY
	icon = 'icons/roguetown/clothing/rings.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/rings.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/rings.dmi'
	sleevetype = "shirt"
	slot_flags = ITEM_SLOT_RING
	resistance_flags = FIRE_PROOF | ACID_PROOF
	dropshrink = 0.8

/obj/item/key/woodsman
	name = "woodsman key"
	icon_state = "rustkey"
	lockid = "woodsman"

/obj/item/key/garrison
	name = "garrison key"

/obj/item/key/graveyard
	name = "graveyard key"
	desc = "This rusty key belongs to the Gravekeepers."
	icon_state = "rustkey"
	lockid = "graveyard"

/obj/item/key/innkeep
	name = "innkeepers key"
	desc = ""
	icon_state = "birdkey"
	lockid = "innkeep"

/obj/item/key/bathguesti
	name = "bathguest key"
	desc = ""
	icon_state = "brownkey"
	lockid = "bathguesti"

/obj/item/key/bathguestii
	name = "bathguest key"
	desc = ""
	icon_state = "brownkey"
	lockid = "bathguestii"

/obj/item/key/nitemaster
	name = "nitemasters key"
	desc = "The master key of the bath house."
	icon_state = "greenkey"
	lockid = ACCESS_APOTHECARY

/obj/item/key/tollhouse
	name = "tollhouse key"
	desc = ""
	icon_state = "spikekey"
	lockid = "tollhouse"

/obj/item/key/adventurersguild
	name = "guild key"
	desc = "This key is stamped with the Adventurers Guild emblem, two gauntlets shaking hands."
	icon_state = "mazekey"
	lockid = "adventurer"

/obj/item/storage/keyring/nitemaster
	keys = list(/obj/item/key/nitemaster, /obj/item/key/bathhouse)

/obj/item/storage/keyring/innkeep_hamlet
	keys = list(/obj/item/key/tavern, /obj/item/key/innkeep, /obj/item/key/roomi, /obj/item/key/roomii, /obj/item/key/roomiii, /obj/item/key/roomiv, /obj/item/key/roomv)

/obj/item/storage/keyring/servinggirl
	keys = list(/obj/item/key/tavern, /obj/item/key/bathhouse)

/obj/item/storage/keyring/merchant_hamlet
	keys = list(/obj/item/key/merchant)

/obj/item/storage/meatbag
	dropshrink = 0.8


/obj/item/paper/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -1,"nx" = 13,"ny" = -1,"wx" = 4,"wy" = 0,"ex" = 2,"ey" = -1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 2,"sflip" = 0,"wflip" = 0,"eflip" = 8)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)


/obj/item/reagent_containers/food/snacks/crow/dead
	icon = 'icons/roguetown/mob/monster/crow.dmi'


// PINTLEDESTRUCTION

/datum/status_effect/debuff/pintledestruction
	id = "pintlegone"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/pintledestruction
	duration = 60 MINUTES

/atom/movable/screen/alert/status_effect/debuff/pintledestruction
	name = "Wine-Curse"
	desc = "Oh Gods...it's dead..."
	icon_state = "muscles"

/datum/status_effect/debuff/pintledestruction/on_apply()
	. = ..()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_stress(/datum/stressevent/sadfate)
	ADD_TRAIT(owner, TRAIT_LIMPDICK, TRAIT_GENERIC)

/datum/status_effect/debuff/pintledestruction/on_remove()
	. = ..()
	REMOVE_TRAIT(owner, TRAIT_LIMPDICK, TRAIT_GENERIC)
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.remove_stress(/datum/stressevent/sadfate)



/obj/item/reagent_containers/glass/bottle/antidote
	name = "antidote potion"

/obj/item/reagent_containers/glass/bottle/healthpot
	name = "health potion"


/obj/item/storage/keyring/priest
	keys = list(/obj/item/key/priest, /obj/item/key/church, /obj/item/key/graveyard, /obj/item/key/inquisition)


// =========================================================
// ============		Underworld Toll added	================
/mob/living/carbon/spirit/Initialize(mapload, cubespawned=FALSE, mob/spawner)
	. = ..()
	addtimer(CALLBACK(src, PROC_REF(give_patron_toll)), 10 SECONDS)


// =============================================
// ============		Bear pelt	================

/obj/item/bearpelt
	name = "rolled up bear pelt"
	desc = "Weighs a ton, but it provides a comfortable bedding."
	icon = 'modular/stonekeep/icons/structure.dmi'
	lefthand_file = 'modular/stonekeep/icons/onmob/lefthand.dmi'
	righthand_file = 'modular/stonekeep/icons/onmob/righthand.dmi'
	experimental_inhand = FALSE
	icon_state = "bearpelt_rolled"
	w_class =  WEIGHT_CLASS_HUGE
	grid_height = 96
	grid_width = 96

/obj/item/bearpelt/MiddleClick(mob/user, params)
	..()
	var/turf/T = get_turf(loc)
	if(!isfloorturf(T))
		to_chat(user, "<span class='warning'>I need ground to plant this on!</span>")
		return
	for(var/obj/A in T)
		if(A.density && !(A.flags_1 & ON_BORDER_1))
			to_chat(user, "<span class='warning'>There is already something here!</span>")
			return
	user.visible_message("<span class='notice'>[user] begins placing \the [src] down on the ground.</span>")
	if(do_after(user, 5 SECONDS, src, (IGNORE_HELD_ITEM)))
		new /obj/structure/bed/bear(get_turf(src))
		qdel(src)

/obj/structure/bed/bear
	name = "bear pelt"
	icon = 'modular/stonekeep/icons/bear.dmi'
	alpha = 240
	max_buckled_mobs = 2
	attacked_sound = 'sound/foley/cloth_rip.ogg'
	break_sound = 'sound/foley/cloth_rip.ogg'
	debris = list(/obj/item/natural/fur/mole = 1)
	pixel_y = -16
	pixel_x = -16
	var/mob/living/goldilocks

/obj/structure/bed/bear/MiddleClick(mob/user, params)
	. = ..()
	user.visible_message("<span class='notice'>[user] begins rolling up \the [src].</span>")
	if(do_after(user, 10 SECONDS, target = src))
		user.put_in_hands(new /obj/item/bearpelt(get_turf(src)))
		qdel(src)

/obj/structure/bed/bear/post_buckle_mob(mob/living/M)
	. = ..()
	M.set_mob_offsets("bed_buckle", _x = 0, _y = 0)
	if(length(buckled_mobs) > 1 && !goldilocks) //  Push the second buckled mob a bit higher from the normal lying position
		M.set_mob_offsets("bed_buckle", _x = 0, _y = 12)
		goldilocks = M

/obj/structure/bed/bear/post_unbuckle_mob(mob/living/M)
	..()
	M.reset_offsets("bed_buckle")
	if(M == goldilocks)
		goldilocks = null


/datum/component/storage/concrete/grid/cloak
	max_w_class = WEIGHT_CLASS_SMALL
	screen_max_rows = 2
	screen_max_columns = 1


/obj/item/clothing/ring/adventurer
	dropshrink = 1
	icon = 'modular/stonekeep/icons/misc.dmi'

/obj/item/clothing/ring/adventurer/copper
	name = "copper certification"
	desc = "The wearer is rated as a novice adventurer."
	icon_state = "copper"
	sellprice = 2

/obj/item/clothing/ring/adventurer/bronze
	name = "bronze certification"
	desc = "The wearer is rated as a proven adventurer."
	icon_state = "bronze"
	sellprice = 2

/obj/item/clothing/ring/adventurer/iron
	name = "iron certification"
	desc = "The wearer is rated as a skilled adventurer."
	icon_state = "iron"
	sellprice = 2

/obj/item/clothing/ring/adventurer/silver
	name = "silver certification"
	desc = "The wearer is rated as a experienced adventurer."
	icon_state = "silver"
	sellprice = 2

/obj/item/clothing/ring/adventurer/gold
	name = "gold certification"
	desc = "The wearer is rated as a very skilled adventurer."
	icon_state = "gold"
	sellprice = 2



/obj/item/natural/bundle/stoneblock/four
	amount = 4


/obj/item/book/adventurersguild
	name = "Adventuring, the guild masters manual"
	desc = "Todd the Barbarian"
	bookfile = "Adventuring.json"
	random_cover = TRUE


/obj/structure/fluff/walldeco/masonflag
	icon = 'modular/stonekeep/icons/misc.dmi'



/obj/item/storage/keyring/garrison
	keys = list(/obj/item/key/manor, /obj/item/key/garrison, /obj/item/key/walls)


/datum/alch_grind_recipe/manabloom
	valid_input = /obj/item/reagent_containers/food/snacks/produce/manabloom
	valid_outputs = list(/obj/item/reagent_containers/powder/manabloom = 1)







// ................... Event Ring of loot ....................... (rare treasure, not for purchase no pre spawn)

// ---------------------- RARE RING (STR) ----------------------------
/obj/item/clothing/ring/gold/goldstrengh
	name = "ring of strengh"
	desc = "An old golden ring, inscribed with arcane words. Just being near it imbues you with otherworldly strength."
	icon_state = "rare_ring_str"
	detail_tag = "_detail"
	detail_color = CLOTHING_RED_OCHRE


/obj/item/clothing/ring/gold/goldstrengh/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind)
		if(slot == ITEM_SLOT_RING && istype(user))
			RegisterSignal(user, COMSIG_MOB_UNEQUIPPED_ITEM, PROC_REF(item_removed))
			user.apply_status_effect(/datum/status_effect/buff/goldstrengh)

/obj/item/clothing/ring/gold/goldstrengh/proc/item_removed(mob/living/carbon/wearer, obj/item/dropped_item)
	SIGNAL_HANDLER
	if(dropped_item != src)
		return
	UnregisterSignal(wearer, COMSIG_MOB_UNEQUIPPED_ITEM)
	wearer.remove_status_effect(/datum/status_effect/buff/goldstrengh)

// ---------------------- RARE RING (SPD) ----------------------------
/obj/item/clothing/ring/gold/goldspeed
	name = "ring of speed"
	desc = "An old golden ring, inscribed with arcane words. Just being near it imbues you with otherworldly speed."
	icon_state = "rare_ring_spd"
	detail_tag = "_detail"
	detail_color = CLOTHING_SKY_BLUE

/obj/item/clothing/ring/gold/goldspeed/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind)
		if(slot == ITEM_SLOT_RING && istype(user))
			RegisterSignal(user, COMSIG_MOB_UNEQUIPPED_ITEM, PROC_REF(item_removed))
			user.apply_status_effect(/datum/status_effect/buff/goldspeed)

/obj/item/clothing/ring/gold/goldspeed/proc/item_removed(mob/living/carbon/wearer, obj/item/dropped_item)
	SIGNAL_HANDLER
	if(dropped_item != src)
		return
	UnregisterSignal(wearer, COMSIG_MOB_UNEQUIPPED_ITEM)
	wearer.remove_status_effect(/datum/status_effect/buff/goldspeed)

// ---------------------- RARE RING (END) ----------------------------
/obj/item/clothing/ring/gold/goldend
	name = "ring of endurance"
	desc = "An old golden ring, inscribed with arcane words. Just being near it imbues you with otherworldly endurance."
	icon_state = "rare_ring_end"
	detail_tag = "_detail"
	detail_color = CLOTHING_YELLOW_OCHRE

/obj/item/clothing/ring/gold/goldend/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind)
		if(slot == ITEM_SLOT_RING && istype(user))
			RegisterSignal(user, COMSIG_MOB_UNEQUIPPED_ITEM, PROC_REF(item_removed))
			user.apply_status_effect(/datum/status_effect/buff/goldend)

/obj/item/clothing/ring/gold/goldend/proc/item_removed(mob/living/carbon/wearer, obj/item/dropped_item)
	SIGNAL_HANDLER
	if(dropped_item != src)
		return
	UnregisterSignal(wearer, COMSIG_MOB_UNEQUIPPED_ITEM)
	wearer.remove_status_effect(/datum/status_effect/buff/goldend)

// ---------------------- RARE RING (CONSTITUTION) ----------------------------
/obj/item/clothing/ring/gold/goldconst
	name = "ring of constitution"
	desc = "An old golden ring, inscribed with arcane words. Just being near it imbues you with otherworldly constitution."
	icon_state = "rare_ring_const"
	detail_tag = "_detail"
	detail_color = CLOTHING_FOREST_GREEN

/obj/item/clothing/ring/gold/goldconst/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind)
		if(slot == ITEM_SLOT_RING && istype(user))
			RegisterSignal(user, COMSIG_MOB_UNEQUIPPED_ITEM, PROC_REF(item_removed))
			user.apply_status_effect(/datum/status_effect/buff/goldconst)

/obj/item/clothing/ring/gold/goldconst/proc/item_removed(mob/living/carbon/wearer, obj/item/dropped_item)
	SIGNAL_HANDLER
	if(dropped_item != src)
		return
	UnregisterSignal(wearer, COMSIG_MOB_UNEQUIPPED_ITEM)
	wearer.remove_status_effect(/datum/status_effect/buff/goldconst)

// ---------------------- RARE RING (LUCK) ----------------------------
/obj/item/clothing/ring/gold/goldluck
	name = "ring of fortune"
	desc = "An old golden ring, inscribed with arcane words. Just being near it imbues you with otherworldly fortune."
	icon_state = "rare_ring_luck"
	detail_tag = "_detail"
	detail_color = CLOTHING_PLUM_PURPLE

/obj/item/clothing/ring/gold/goldluck/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind)
		if(slot == ITEM_SLOT_RING && istype(user))
			RegisterSignal(user, COMSIG_MOB_UNEQUIPPED_ITEM, PROC_REF(item_removed))
			user.apply_status_effect(/datum/status_effect/buff/goldluck)

/obj/item/clothing/ring/gold/goldluck/proc/item_removed(mob/living/carbon/wearer, obj/item/dropped_item)
	SIGNAL_HANDLER
	if(dropped_item != src)
		return
	UnregisterSignal(wearer, COMSIG_MOB_UNEQUIPPED_ITEM)
	wearer.remove_status_effect(/datum/status_effect/buff/goldluck)

// ---------------------- RARE RING (PERCEPTION) ----------------------------
/obj/item/clothing/ring/gold/goldper
	name = "ring of perception"
	desc = "An old golden ring, inscribed with arcane words. Just being near it imbues you with otherworldly vision."
	icon_state = "rare_ring_per"
	detail_tag = "_detail"
	detail_color = CLOTHING_ASH_GREY


/obj/item/clothing/ring/gold/goldper/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind)
		if(slot == ITEM_SLOT_RING && istype(user))
			RegisterSignal(user, COMSIG_MOB_UNEQUIPPED_ITEM, PROC_REF(item_removed))
			user.apply_status_effect(/datum/status_effect/buff/goldper)

/obj/item/clothing/ring/gold/goldper/proc/item_removed(mob/living/carbon/wearer, obj/item/dropped_item)
	SIGNAL_HANDLER
	if(dropped_item != src)
		return
	UnregisterSignal(wearer, COMSIG_MOB_UNEQUIPPED_ITEM)
	wearer.remove_status_effect(/datum/status_effect/buff/goldper)

// ---------------------- RARE RING (INT) ----------------------------
/obj/item/clothing/ring/gold/goldint
	name = "ring of intelligence"
	desc = "An old golden ring, inscribed with arcane words. Just being near it imbues you with otherworldly mental clarity."
	icon_state = "rare_ring_int"
	detail_tag = "_detail"
	detail_color = CLOTHING_SOOT_BLACK


/obj/item/clothing/ring/gold/goldint/equipped(mob/living/user, slot)
	. = ..()
	if(user.mind)
		if(slot == ITEM_SLOT_RING && istype(user))
			RegisterSignal(user, COMSIG_MOB_UNEQUIPPED_ITEM, PROC_REF(item_removed))
			user.apply_status_effect(/datum/status_effect/buff/goldint)

/obj/item/clothing/ring/gold/goldint/proc/item_removed(mob/living/carbon/wearer, obj/item/dropped_item)
	SIGNAL_HANDLER
	if(dropped_item != src)
		return
	UnregisterSignal(wearer, COMSIG_MOB_UNEQUIPPED_ITEM)
	wearer.remove_status_effect(/datum/status_effect/buff/goldint)



/datum/container_craft/oven/bakedcat
	name = "Baked Cat"
	requirements = list(/obj/item/reagent_containers/food/snacks/flayedcat = 1)
	output = /obj/item/reagent_containers/food/snacks/friedcat

/datum/container_craft/oven/bakefrog
	name = "Baked Frog"
	requirements = list(/obj/item/reagent_containers/food/snacks/fogdart = 1)
	output = /obj/item/reagent_containers/food/snacks/friedfrog

/datum/container_craft/pan/cat
	name = "Fried Cat"
	crafting_time = 20 SECONDS
	requirements = list(/obj/item/reagent_containers/food/snacks/flayedcat = 1)
	output = /obj/item/reagent_containers/food/snacks/friedcat
	cooked_smell = /datum/pollutant/food/fried_meat

/datum/container_craft/pan/froge
	name = "Fried Froge"
	crafting_time = 20 SECONDS
	requirements = list(/obj/item/reagent_containers/food/snacks/fogdart = 1)
	output = /obj/item/reagent_containers/food/snacks/friedfrog
	cooked_smell = /datum/pollutant/food/fried_meat


/datum/container_craft/pan/tallow
	name = "Tallow"
	crafting_time = 20 SECONDS
	requirements = list(/obj/item/reagent_containers/food/snacks/fat = 1)
	output = /obj/item/reagent_containers/food/snacks/tallow
	cooked_smell = /datum/pollutant/food/fried_meat
