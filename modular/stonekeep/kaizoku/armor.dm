// =================================================================
// ========================		ARMOR	============================

//................ Armored surcoat (Heartfelt) ............... //
/obj/item/clothing/armor/medium/surcoat/heartfelt
	name = "heartfelt kikko gusoku"
	desc = "A lordly protection in Heartfelt colors. Masterfully crafted coat of hexagon plates, for important nobility."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "heartfelt_kikko"
	item_state = "heartfelt_kikko"
	allowed_sex = list(MALE,FEMALE)
	sellprice = VALUE_SNOWFLAKE_STEEL+BONUS_VALUE_SMALL

	body_parts_covered = COVERAGE_FULL

//................ Armored surcoat (Heartfelt Hand) ............... //
/obj/item/clothing/armor/medium/surcoat/heartfelt/hand
	name = "turtleshell royal coat"
	desc = "A suit of defensive plates donned by heartfeltian aristocracy. Crafted from rare silks sourced from Fog Islands."
	icon_state = "heartfelt_kikkocoat"
	item_state = "heartfelt_kikkocoat"

/obj/item/clothing/armor/medium/surcoat/heartfelt/hand/female
	name = "turtleshell royal dress"
	icon_state = "heartfelt_kikkodress"
	item_state = "heartfelt_kikkodress"

/obj/item/clothing/armor/leather/vest/muneate //exists only for the drip.
	name = "leather chestguard"
	desc = "The 'Muneate', designed for casual archers. Its effectiveness strictly limited to reflecting the slap of a bowstring, proper for horse archery."
	icon_state = "muneate"
	item_state = "muneate"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'

/obj/item/clothing/armor/leather/vest/muneate/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/armor/leather/vest/muneate/kappa
	color = CLOTHING_FOREST_GREEN

/obj/item/clothing/armor/plate/nanbando
	name = "abyssal half-plate"
	desc = "Refined abyssal steel cuirass that features additional shoulder protection. Prized and used by high-ranking zamurais."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "nanbando"
	item_state = "nanbando"

/obj/item/clothing/armor/cuirass/nanbando
	name = "abyssal cuirass"
	desc = "A full set of refined abyssal steel armor, equipped with additional auxiliary parts for full body protection."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "nanbandoc"
	item_state = "nanbandoc"

/obj/item/clothing/armor/plate/full/nanbando
	name = "abyssal full plate"
	desc = "A complete set of abyssariad steel armor, refined and with additional auxiliary parts for protection."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "nanbandofull"

/obj/item/clothing/armor/plate/full/nanbando/cursed/Initialize()
	. = ..()
	name = "soulbinded nanban-do-gusoku"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/armor/plate/full/nanbando/cursed/obj_break(damage_flag)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/armor/chainmail/tatami
	name = "steel foldable armor"
	desc = "The 'Kozane-Tatami Do', a mass-produced, foldable armor made of steel lamellae integrated into chainmail, a staple in fog island's military."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "laminartatami"

/obj/item/clothing/armor/chainmail/iron/tatami
	name = "iron foldable armor"
	desc = "The 'Tatami karuta-gane'. A foldable lightweight armor with lacquered iron squares or tiles on padded chains."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "tatami"

/obj/item/clothing/armor/chainmail/hauberk/kusari
	name = "chainmail robe"
	desc = "The 'Kusari katabira'. It is made of riveted steel rings with slim plates at the elbows. It extends down to cover the legs and arms."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "kusari"
	item_state = "kusari"

/obj/item/clothing/armor/plate/mirror/iron
	name = "iron mirror armor"
	desc = "Usually used with a Kusari Katabira, this armor's frame is defined by polished iron plates with a central metal disk."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "imirrorarmor"
	max_integrity = INTEGRITY_STANDARD
	armor = ARMOR_SCALE
	smeltresult = /obj/item/ingot/iron
	armor_class = AC_MEDIUM
	sellprice = 20

/obj/item/clothing/armor/plate/mirror
	name = "steel mirror armor"
	icon_state = "mirrorarmor"
	desc = "Usually used with a Kusari Katabira, this armor's frame is defined by polished steel plates with a central metal disk."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "mirrorarmor"

/obj/item/clothing/armor/brigandine/oyoroi
	name = "great lamellar armor"
	desc = "The 'O-yoroi', a heavy-duty lamellar armor favored by high-ranking zamurais on horseback, with pauldrons functioning similarly to shields in battle."
	desc = "Usually used with a Kusari Katabira, this armor's frame is defined by polished steel plates with a central metal disk."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "halfoyoroi"

/obj/item/clothing/armor/brigandine/oyoroi/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/armor/brigandine/oyoroi/cursed
	name = "soulbinded o-yoroi gusoku"

/obj/item/clothing/armor/brigandine/oyoroi/cursed/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/armor/brigandine/oyoroi/cursed/obj_break(damage_flag)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/armor/brigandine/oyoroi/royal/Initialize()
	. = ..()
	detail_tag = "_met"
	detail_color = GLOB.lordprimary
	update_icon()

/obj/item/clothing/armor/brigandine/oyoroi/captain/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary, GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/armor/brigandine/oyoroi/captain/lordcolor(primary, secondary)
	detail_tag = "_met"
	detail_color = primary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_armor()

/obj/item/clothing/armor/brigandine/oyoroi/captain/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/armor/brigandine/oyoroi/oyoroigusoku
	name = "complete great lamellar armor"
	desc = "The 'O-yoroi gusoku', a heavy-duty lamellar armor favored by high-ranking zamurais on horseback, with pauldrons functioning similarly to shields in battle."
	icon_state = "oyoroi"
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS

/obj/item/clothing/armor/brigandine/oyoroi/oyoroigusoku/Initialize()
	. = ..()
	detail_tag = "_met"
	detail_color = GLOB.lordprimary
	update_icon()

/obj/item/clothing/armor/brigandine/oyoroi/oyoroigusoku/cursed/Initialize()
	. = ..()
	name = "soulbinded o-yoroi gusoku"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/armor/brigandine/oyoroi/oyoroigusoku/cursed/obj_break(damage_flag)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/armor/cuirass/iron/sanmaido
	name = "three-plates cuirass"
	desc = "The 'San mai-do', a cost-effective cuirass composed of three main iron plates riveted together. It is favored by poor foot soldiers and warrior monks."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "sanmaido"

/obj/item/clothing/armor/leather/abyssal
	name = "leather cuirass"
	desc = "Also know as 'Tiejia', this is an leather armor featuring rectangular leather lamellae laced together to cover vital organs."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "tiejia"

/obj/item/clothing/armor/leather/hide/dustwalker
	name = "rawhide dynasty armor" //Han dynasty leather armor
	desc = "The 'Khatag Teghelgah'. It is designed to be used by abyssariad light cavalry and horse archers on the heart of Fog Island."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "arisan_khuyag"

/obj/item/clothing/armor/leather/splint/kikko //This one is more realistic than Studded Leather armor. A reminder that Studded leather armor is a misinterpretation of a Brigandine.
	name = "turtleshell jacket"
	desc = "The 'Kikko-Jaketto', essentially a leather jacket with metal hexagon plates in a pattern similar to a turtle's shell."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "kikko"
	adjustable = CAN_CADJUST

/obj/item/clothing/armor/leather/splint/kikko/random/Initialize()
	. = ..()
	color = pick("#a32121", "#8747b1", "#3d3a36", "#414143", "#685542", "#428138", "#264d26", "#537bc6", "#b5b004", "#249589", "#ffffff", "#bd6606", "#962e5c")

/obj/item/clothing/armor/leather/splint/kikko/military/Initialize()
	. = ..()
	color = pick("#534b40", "#685542", "#264d26")

/obj/item/clothing/armor/leather/splint/kikko/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_open"
			flags_inv = null
			body_parts_covered = CHEST
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_armor()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_armor()

/obj/item/clothing/armor/leather/hide/shozoku
	name = "stealth attire"
	desc = "The secondary attire for shinobis and kunoichis to blend into the night, the use is not suitable for daylight."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "shinobi"
	item_state = "shinobi"
	blocksound = SOFTHIT

/obj/item/clothing/armor/chainmail/rattan //New armor; Iron-to-steel tier.
	slot_flags = ITEM_SLOT_ARMOR
	name = "rattan armor"
	desc = "A flexible and durable full-body coat crafted from oil-boiled rattan and layered iron wires. By being easily repairable, it is used by LinYou Wokous."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "rattan"
	item_state = "rattan"
	sellprice = VALUE_IRON_ARMOR+10

	armor = ARMOR_MAILLE_IRON
	max_integrity = INTEGRITY_STANDARD
	prevent_crits = ALL_EXCEPT_BLUNT_AND_STAB
	sewrepair = TRUE //this armor's utility.

//New Rare Heartfelt equipment
/obj/item/clothing/armor/medium/surcoat/heartfelt/abyssariad
	name = "abyssariad kikko gusoku"
	desc = "Reforged in a more recent standard to better equip low-ranking zamurai after the Rebellion of Three Waves, this armor replaces the expensive O-Yoroi lamellar."
	body_parts_covered = CHEST|GROIN|VITALS|LEGS //does not protect the arms. Countering the Brigandine that protects the arms, but not legs.
	icon_state = "kikkoabyssal"
	item_state = "kikkoabyssal"
	sellprice = 65 //not unique.

/obj/item/clothing/armor/leather/vest/kaizoku
	name = "kaizoku's waitao"
	icon_state = "waitao_coat"
	color = null
	desc = "Silken coats of heartfelt making, used by the sons of Kaizoku, or just artistic folk."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	body_parts_covered = CHEST|VITALS|LEGS
	sellprice = 45

/obj/item/clothing/armor/brigandine/shanwenkai //I dislike overused armor in unique roles. so I just made an "Officer" armor based on the chinese actual officer armor. Brigadine.
	slot_flags = ITEM_SLOT_ARMOR
	name = "weeper-patterned championage armor" //This is the Shan Wen Kia armor, but the downwards 'Y' is upwards now, so I can't name it <mountain patterned armor>
	desc = "The ancient godwenkai, a heavy armor made with overlapping arrangement of armor plates, assembled with the symbol of the Weeping God. This is used by Abyssariad Champions who still lingers on this world, honoring the Weeper who fed Abyssor."
	icon_state = "shanwenkai"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'

/obj/item/clothing/armor/brigandine/shanwenkai/update_icon()
	return

/obj/item/clothing/armor/gambeson/ruankai
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "padded ruankai"
	desc = "Made of layered cloth quilted together, it became a cushioning armor sufficient to withstand a horse's kick."
	icon_state = "ruankai"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'

/obj/item/clothing/armor/gambeson/light/hitatare
	name = "yoroi hitatare"
	desc = "A traditional Abyssariad padded robe with wide sleeves, made to be worn beneath armor. It is comfortable and thick, but not very protective compared to a ruankai, but can be used all the time without raising suspicion."
	icon_state = "yoroihitatare"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'

// Randomized color Hitatare
/obj/item/clothing/armor/gambeson/light/hitatare/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

// Randomized color Hitatare
/obj/item/clothing/armor/gambeson/light/hitatare/rich/Initialize()
	color = pick_assoc(GLOB.noble_dyes)
	..()

// Ronin Hitatare
/obj/item/clothing/armor/gambeson/light/hitatare/ronin
	color = CLOTHING_SOOT_BLACK

// Eidolon Hitatare
/obj/item/clothing/armor/gambeson/light/hitatare/eidolon
	color = CLOTHING_EIDOLON

/obj/item/clothing/armor/gambeson/heavy/deelcoat
	name = "reinforced warcoat"
	desc = "A loose-fitting Abyssariad warcoat, typically made of horse leather and traditionally used by the Dustwalkers."
	icon_state = "deel"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'

/obj/item/clothing/armor/leather/jacket/firecoat
	name = "stormforger coat"
	desc = "Asbestos-layered, loose-fitting coat used by stormforgers to protect against the dangerous ambers of lava casting."
	icon_state = "stormforger"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	resistance_flags = FIRE_PROOF

/obj/item/clothing/armor/leather/splint/ninjakappa //same as studded leather armor
	name = "tribalistic bronze cuirass"
	desc = "layered armor of bronze plates sewn into oil-boiled leather. Used by Undines in shinobi operations."
	icon_state = "ninjakappa"
	item_state = "ninjakappa"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'

/obj/item/clothing/armor/rare/myrmidon
	name = "myrmidon mingguang kai" // that's "明光铠", not the genshin character.
	desc = "Ocean-blessed overlapping steel plates joined by butchered demonhide threads and orichalcum infusion, \
	long purified with abyssor sigils and symbols of the Weeper. Each steel layer is engraved: \
	\"By the Heavenly Emperor's command. For the abyss against all odds.\""
	icon_state = "myrmidon"
	item_state = "myrmidon"
	allowed_race = list("abyssariad")
	sleevetype = null
	max_integrity = INTEGRITY_STRONGEST+100 //Chest + Pants - Everything is on a single armor. Breaks easier since it gets battered everywhere, so it requires more endurance.
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	body_parts_covered = CHEST|GROIN|ARMS|VITALS|LEGS //Pays off by not having other limbparts.

/obj/item/clothing/armor/ceramic
	name = "tribal coverings"
	desc = "A more well-designed armor made with sturdy animal bones. Suitable for tribals whom uses little metallurgy."
	icon_state = "nacre_covering"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	armor = ARMOR_LEATHER_BAD
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|GROIN|VITALS
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_STAB) // Bones are ceramic-like. These are horrible against blunt.
	armor_class = AC_MEDIUM
	max_integrity = INTEGRITY_POOR
	anvilrepair = null //You can't repair 'ceramic' armor. You will need to make a new armor instead.
	smeltresult = /obj/item/ash
	sewrepair = FALSE
	slot_flags = ITEM_SLOT_ARMOR

/obj/item/clothing/armor/ceramic/reinforced
	name = "marauder trollhunter armor"
	desc = "The heavy armor used by the tribalistic undine marauder forces under the flag of abyssariads from the Fog Islands. Made of ceramic-like material from lava forges."
	icon_state = "marauder_chest"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_STAB) // Bones are ceramic-like. These are horrible against blunt.
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS|ARMS|GROIN //Protects an acceptable large range of places for such relatively cost-y armor. I hope.
	armor = ARMOR_LEATHER_GOOD
	max_integrity = INTEGRITY_STANDARD
	equip_delay_self = 40
	armor_class = AC_MEDIUM

/obj/item/clothing/armor/ceramic/light
	name = "bone coverings"
	desc = "An simple, primitive armor made of chiseled bones bound with fibers and sinews. Stronger than gambesons, but requires conquering tough dendor's creatures to make."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	armor = ARMOR_LEATHER
	icon_state = "ivory_coverings"
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|GROIN
	max_integrity = 100 //breaks quickly
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB) //Bones acts similar to ceramics, it will crack with blunt damage.
	armor_class = AC_LIGHT


// =================================================================
// ========================		CLOAK	============================

/obj/item/clothing/cloak/raincloak/mino
	name = "mino cloak"
	desc = "An abyssariad raincoat made out of straw that covers the entire body."
	icon_state = "mino"
	inhand_mod = FALSE
	hoodtype = null
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/cloaks.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	sleevetype = "shirt"
	body_parts_covered = CHEST|GROIN|VITALS|ARMS

/obj/item/clothing/cloak/raincloak/guardiancloak
	name = "guardian cloak"
	desc = "The design of cloaks from Guardians of old. The symbol of the Eternity Eagle remains binding the cloth on the user, for those who protects the skies and oceans."
	icon_state = "guardiancloak"
	inhand_mod = FALSE
	hoodtype = null
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/cloaks.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'

/obj/item/clothing/cloak/raincloak/guardiancloak/black
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/cloak/raincloak/guardiancloak/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/cloak/raincloak/guardiancloak/curator
	color = CLOTHING_CURATOR

/obj/item/clothing/cloak/raincloak/guardiancloak/red
	color = CLOTHING_BLOOD_RED

/obj/item/clothing/cloak/raincloak/guardiancloak/guard
	color = CLOTHING_BLOOD_RED

/obj/item/clothing/cloak/raincloak/guardiancloak/guard/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/cloak/raincloak/guardiancloak/lordcolor(primary,secondary)
	color = secondary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_cloak()

/obj/item/clothing/cloak/raincloak/guardiancloak/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/cloak/raincloak/horocloak
	name = "horo cloak"
	desc = "A billowing cloak of war designed to catch the wind and scatter arrows that hit its user from the back."
	icon_state = "horocloak"
	inhand_mod = FALSE
	hoodtype = null
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/cloaks.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'

/obj/item/clothing/cloak/raincloak/horocloak/random/Initialize()
	color = pick("#a32121", "#8747b1", "#3d3a36", "#414143", "#685542", "#428138", "#264d26", "#537bc6", "#b5b004", "#249589", "#ffffff", "#bd6606", "#962e5c")
	..()

/obj/item/clothing/cloak/raincloak/horocloak/toweryakko
	color = "#804d97"

/obj/item/clothing/cloak/raincloak/horocloak/kabukimono
	color = "#9b874f"

/obj/item/clothing/cloak/odoshisohei
	name = "senior sohei odoshi"
	desc = "Tightly packed lacing patterns usually used for binding leather and metal scales, now used to show affiliation to clans or shrines."
	icon_state = "odoshisohei"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/cloaks.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	slot_flags = ITEM_SLOT_CLOAK
	nodismemsleeves = TRUE

/obj/item/clothing/cloak/newheartfelt
	name = "heartfelt cloak"
	desc = "Luxurious silk cloak adorned in regal red, the protective garment that has long portrayed the fiery spirit of the Heartfelt people, and their dutiful lords."
	icon_state = "heartfelt_cloak"
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/cloaks.dmi'
	sleevetype = "shirt"
	slot_flags = ITEM_SLOT_CLOAK
	allowed_sex = list(MALE, FEMALE)
	allowed_race = list("human", "tiefling", "aasimar", "abyssariad")
	sellprice = 50
	nodismemsleeves = TRUE

//modular tabards. Requires bugfixing.

/obj/item/clothing/cloak/stabard/haramaki
	name = "haramaki"
	desc = "Tightly packed lacing patterns usually used for binding leather and metal scales."
	icon_state = "haramaki"
	item_state = "haramaki"
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/cloaks.dmi'

/obj/item/clothing/cloak/stabard/haramaki/odoshi
	name = "odoshi"
	icon_state = "odoshi"
	item_state = "odoshi"

/obj/item/clothing/cloak/stabard/haramaki/jinbaori
	name = "jinbaori"
	desc = "Cloth piece meant to portray the user's loyalty to an lord."
	icon_state = "jinbaori"
	item_state = "jinbaori"

/obj/item/clothing/cloak/stabard/haramaki/jinbaori/jizamurai
	desc = "The odoshi used by Foglander Zamurais bond to Rockhill's lords. It uses said lord's heraldic colors."
	color = CLOTHING_DARK_INK
	detail_tag = "_spl"
	detail_color = CLOTHING_BLOOD_RED

/obj/item/clothing/cloak/stabard/haramaki/jinbaori/guard
	desc = "A jinbaori with the lord's heraldic colors. This one is worn typically by ashigarus retainers adquired by the lords of rockhill from a pact with the Fog Islands."
	color = CLOTHING_BLOOD_RED
	detail_tag = "_spl"
	detail_color = CLOTHING_PLUM_PURPLE

/obj/item/clothing/cloak/stabard/haramaki/jinbaori/guard/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/cloak/stabard/haramaki/jinbaori/guard/lordcolor(primary,secondary)
	color = primary
	detail_color = secondary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_cloak()

/obj/item/clothing/cloak/stabard/haramaki/jinbaori/guard/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/cloak/stabard/haramaki/jinbaori/raider
	name = "raider jinbaori"
	desc = "A jinbaori used by the traditional abyssanctum ashigaru retainers. Relentless as the ocean who brew them."
	color = CLOTHING_DARK_INK
	detail_tag = "_spl"
	detail_color = CLOTHING_ROYAL_PURPLE

/obj/item/clothing/cloak/stabard/haramaki/odoshi/zamurai
	desc = "The odoshi used by Foglander Zamurais bond to Rockhill's lords. It uses said lord's heraldic colors."
	color = CLOTHING_BLOOD_RED
	detail_tag = "_spl"
	detail_color = CLOTHING_PLUM_PURPLE

/obj/item/clothing/cloak/stabard/haramaki/odoshi/zamurai/attack_right(mob/user)
	return

/obj/item/clothing/cloak/stabard/haramaki/odoshi/zamurai/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/cloak/stabard/haramaki/odoshi/zamurai/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/cloak/stabard/haramaki/odoshi/toweryakko
	color = "#804d97"

/obj/item/clothing/cloak/stabard/haramaki/odoshi/toweryakko/attack_right(mob/user)
	return

/obj/item/clothing/cloak/stabard/haramaki/odoshi/raider
	name = "raider odoshi"
	desc = "A odoshi used by the traditional abyssanctum zamurai retainers. Relentless as the ocean who brew them."
	color = CLOTHING_DARK_INK
	detail_tag = "_spl"
	detail_color = CLOTHING_ROYAL_PURPLE

/obj/item/clothing/cloak/raincloak/guardiancloak/dragonslayer
	name = "dragonslayer guardian cloak"
	desc = "Fireproof asbestos cloak processed in copal and frankincense resin, enclosed within dragonscales to prevent direct contact with asbestos fibers. The cloak almost completely prevents warmth from reaching the user."
	edelay_type = 4
	equip_delay_self = 20
	heat_protection = FULL_BODY
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	resistance_flags = FIRE_PROOF | LAVA_PROOF
	color = "#7e0707"



// =================================================================
// ========================		BOOTS	============================

/obj/item/clothing/shoes/boots/armor/light/kusaritabi
	name = "chains tabi"
	icon_state = "kusaritabi"
	item_state = "kusaritabi"
	desc = "The riveted chainmail version of the unarmored Tabi footwear."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/feet.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'

/obj/item/clothing/shoes/boots/armor/suneate
	name = "three-plate greaves"
	desc = "Armored suneate made from steel offering heavy protection against both melee and ranged attacks."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/feet.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	icon_state = "suneate"
	item_state = "suneate"

/obj/item/clothing/shoes/boots/armor/suneate/cursed/Initialize()
	. = ..()
	name = "soulbinded suneate"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/shoes/boots/jikatabi
	name = "jikatabi"
	desc = "A standard tabi that keeps the toes flexible and healthy, avoiding calluses of long expeditions. However, it looks rather goofy for the non-islanders."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/feet.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	icon_state = "jikatabi"
	item_state = "jikatabi"

/obj/item/clothing/shoes/boots/jikatabi/shinobi
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/shoes/boots/jikatabi/dragontabi
	name = "dragontabi"
	icon_state = "dragontabi"
	item_state = "dragontabi"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/feet.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	desc = "A tabi reinforced in dragon bones and asbestos, making it fire immune. Not very protective against physical damage, but still fairly durable."
	armor = ARMOR_LEATHER_BAD
	max_integrity = INTEGRITY_STRONG
	armor_class = AC_MEDIUM
	heat_protection = LEGS|FEET
	body_parts_covered = LEGS|FEET
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/shoes/sandals/geta
	name = "geta"
	desc = "A normal wooden geta most suitable for those who need to wander where the mud absorbs pressure."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/feet.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	icon_state = "geta"
	item_state = "geta"

/obj/item/clothing/shoes/shortboots/cloudhead
	name = "cloudhead shoes"
	desc = "A traditional shoes with distinctive upturned toe design that resembles the shape of clouds, to symbolize connection to the skies."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/feet.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	icon_state = "cloudhead_shoes"
	item_state = "cloudhead_shoes"

/obj/item/clothing/shoes/shortboots/cloudhead/kabukimono
	name = "kabuki-maru cloudhead shoes"
	desc = "The same traditional cloudhead shoes of the Abyssariads, but colored in rich yellow tone and with intense implication of being used by a desecrant whom belongs to an armed gang."
	color = "#9b874f"

/obj/item/clothing/shoes/shortboots/cloudhead/toweryakkos
	name = "tower-yakko cloudhead shoes"
	desc = "The same traditional cloudhead shoes of the Abyssariads, but colored in rich purple tone and with intense implication of being used by a desecrant whom belongs to an armed gang."
	color = "#804d97"

/obj/item/clothing/shoes/ridingboots/gutal
	name = "leather gutal"
	desc = "The boots used by Abyssariad cavalry with upturned toes and durable, oil-boiled leather."
	icon_state = "leathergutal"
	item_state = "leathergutal"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/feet.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/feet.dmi'


// =================================================================
// ========================		GLOVES	============================

/obj/item/clothing/gloves/fingerless/yugake
	name = "archery armguard"
	desc = "The 'Yugake', a traditional archery gloves used by foglanders to protect the fingers from the impact of the bow's string. Reinforced and sturdy with cloth."
	icon_state = "yugake"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/gloves.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'

/obj/item/clothing/gloves/leather/abyssal
	name = "abyssal gloves"
	desc = "Flexible, sturdy gloves of abyssariad making for horseback use to shield the hands against fast moving reins or grappling hook cables."
	icon_state = "abyssalgloves"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/gloves.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'

/obj/item/clothing/gloves/leather/abyssal/black
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/gloves/leather/abyssal/kabukimono
	name = "kabuki-maru abyssal gloves"
	desc = "Flexible, sturdy gloves of abyssariad making, but with colours well know from being used by criminals of low level from the fog islands."
	color = CLOTHING_KABUKIMONO

/obj/item/clothing/gloves/leather/abyssal/toweryakko
	name = "tower-yakko abyssal gloves"
	desc = "Flexible, sturdy gloves of abyssariad making, but with colours well know from being used by criminals of low level from the fog islands."
	color = CLOTHING_TOWERYAKKO

/obj/item/clothing/gloves/angle/falcon
	name = "falconry gloves"
	desc = "thick, padded leather gloves to protect a handler's limbs against the sharp talons from their loyal flying companion. Falcons are used in warfare, hunting and communication on Fog Islands."
	icon_state = "falconrygloves"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/gloves.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'

/obj/item/clothing/gloves/chain/kikko
	name = "turtle-shell steel gauntlets"
	desc = "Gauntlets made of steel in a shape that seems alike the shells of a turtle."
	icon_state = "kikkotekko"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/gloves.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothingicon/gloves.dmi'

/obj/item/clothing/gloves/chain/iron/kikko
	name = "turtle-shell iron gauntlets"
	icon_state = "ikikkotekko"
	desc = "Gauntlets made of iron in a shape that seems alike the shells of a turtle."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/gloves.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'

/obj/item/clothing/gloves/plate/lamellaetekko
	name = "lamellae gauntlets"
	desc = "Gauntlets made of steel plates, in sendan style. Offers great protection for the hands while allowing delicate hand dexterity."
	icon_state = "tatamitekko" //that's not a tatami design.
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/gloves.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/gloves.dmi'

// =================================================================
// ========================		HEAD	============================

/obj/item/clothing/head/takuhatsugasa
	name = "alms umbrella hat"
	icon_state = "takuhatsugasa"
	desc = "A type of hat worn by monks during their begging rounds - or when punching demons into submission."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'
	flags_inv = HIDEEARS

	armor = ARMOR_PADDED
	body_parts_covered = HEAD|HAIR|EARS
	prevent_crits =  MINOR_CRITICALS
	max_integrity = INTEGRITY_POOR

/obj/item/clothing/head/tengai
	name = "lay-monk hat"
	icon_state = "tengai"
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	desc = "A wide-brimmed hat traditionally worn by wandering monks of the Abyssanctum fold."
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	flags_inv = HIDEEARS

	armor = ARMOR_PADDED
	body_parts_covered = HEAD|HAIR|EARS
	prevent_crits =  MINOR_CRITICALS
	max_integrity = INTEGRITY_POOR

/obj/item/clothing/head/tengai/curator
	name = "curator lay-monk hat"
	icon_state = "stengai"
	desc = "A tengai painted in red tar traditionally worn by Abyssanctum curators."
	bloody_icon_state = "helmetblood"
	flags_inv = HIDEEARS|HIDEFACE

/obj/item/clothing/head/tengai/gasa
	name = "umbrella hat"
	icon_state = "gasa"
	desc = "A conical straw hat used to protect from the sun and rain. Commonly used by commoners, or casually by the Zamurais and their retainers."
	flags_inv = HIDEEARS

/obj/item/clothing/head/lilly
	name = "small lilypad"
	icon_state = "lilypad_small"
	desc = "a small lilypad used by Undines to protect from sun and rain. This comes as a intercultural exchange mimicking Abyssariad's gasas."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/lilly/medium
	name = "medium lilypad"
	icon_state = "lilypad_medium"
	desc = "a medium lilypad used by Undines to protect from sun and rain. This comes as a intercultural exchange mimicking Abyssariad's gasas."

/obj/item/clothing/head/lilly/big
	name = "big lilypad"
	icon_state = "lilypad_big"
	desc = "a big lilypad used by Undines to protect from sun and rain. This comes as a intercultural exchange mimicking Abyssariad's gasas."

/obj/item/clothing/head/tengai/roningasa
	name = "roningasa"
	icon_state = "roningasa"
	flags_inv = HIDEEARS|HIDEFACE
	desc = "A hat typically worn by the masterless zamurais - the ronins."
	bloody_icon_state = null

/obj/item/clothing/head/tengai/torioigasa
	name = "birdchaser umbrella hat"
	icon_state = "torioigasa"
	desc = "A traditional Abyssariad hat designed for long travels on the murklands. Most used by commoners."
	bloody_icon_state = null

/obj/item/clothing/head/tengai/sandogasa
	name = "large umbrella hat"
	icon_state = "sandogasa"
	flags_inv = HIDEEARS
	desc = "A large hat providing ample shade and protection from the elements, including rain."
	bloody_icon_state = null
	flags_inv = HIDEEARS|HIDEFACE

/obj/item/clothing/head/tengai/sandogasa/curator
	name = "curator large umbrella hat"
	icon_state = "ssandogasa"
	desc = "A sandogasa painted in red tar traditionally worn by Abyssanctum curator."
	bloody_icon_state = null
	flags_inv = HIDEEARS|HIDEFACE

/obj/item/clothing/head/soheicloth
	name = "sohei coverings"
	desc = "Blessed fabric bathed in holy water, keeping a sohei protected from corruptive gases - and providing anonymity."
	icon_state = "soheicloth"
	body_parts_covered = HEAD|HAIR
	body_parts_covered = HEAD|HAIR|EARS|MOUTH
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR //it is not hiding facial hair when put on the neck. No idea how to fix.
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	alternate_worn_layer = MOUTH_LAYER
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/soheicloth/tideweaver
	name = "tideweaver sohei coverings"
	color = CLOTHING_TIDEWEAVER

/obj/item/clothing/head/soheicloth/purifier
	name = "purifier sohei coverings"
	color = CLOTHING_PURIFIER

/obj/item/clothing/head/soheicloth/curator
	name = "curator sohei coverings"
	color = CLOTHING_CURATOR

/obj/item/clothing/head/shinobi_zukin
	name = "shinobi hood"
	icon_state = "shinobi_zukin"
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	desc = "A hood worn by members of Shinobi clans to conceal their identity and blend into the shadows. Unsuitable for espionage for being too obvious."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/helmet/zijinguan
	name = "footsoldier helmet" //This is actually a ming dynasty helmet
	desc = "A cost-effective Myrmidon helmet from the age of guardianship, the current symbol of Abyssariad military culture for commoners."
	icon_state = "zijinguan"
	flags_inv = HIDEEARS
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	detail_tag = "_detail"
	dynamic_hair_suffix = ""

/obj/item/clothing/head/helmet/zijinguan/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/head/helmet/zijinguan/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		detail_color = GLOB.lordprimary
	else
		detail_color = "#8B0000" // Fallback color
	update_icon()

/obj/item/clothing/head/helmet/sallet/tosei_kabuto
	name = "riveted helmet"
	desc = "Forged from riveted steel in a radial pattern, this gives a strong foundation for a \
	helmet capable of protecting even against musket balls. Don't expect to be safe from the whip effect on the neck, but your skull will stay in place."
	icon_state = "tosei_kabuto"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64

/obj/item/clothing/head/helmet/sallet/tosei_kabuto/cursed/Initialize()
	. = ..()
	name = "soulbinded tosei kabuto"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/head/helmet/sallet/tosei_kabuto/cursed/obj_break(damage_flag)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/head/helmet/visored/sallet/tosei_kabuto
	name = "masked riveted helmet"
	desc = "Forged from riveted steel in a radial pattern, this gives a strong foundation for a \
	helmet capable of protecting even against musket balls. Don't expect to be safe from the whip effect on the neck, but your skull will stay in place."
	icon_state = "toseikabuto_visor"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64

/obj/item/clothing/head/helmet/visored/sallet/tosei_kabuto/cursed/Initialize()
	. = ..()
	name = "soulbinded masked tosei kabuto"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/head/helmet/visored/sallet/tosei_kabuto/cursed/obj_break(damage_flag)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/head/helmet/visored/zunari //knight helmet.
	name = "layered zamurai helmet"
	desc = "The 'Etchu Zunari Kabuto' helmet, with forward-overlapping brow plates to deflect blows and arrows, while shielding from the sun and sweat."
	icon_state = "zunari_kabuto"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'
	adjustable = CAN_CADJUST
	emote_environment = 3
	block2add = FOV_RIGHT|FOV_LEFT
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR
	body_parts_covered = HEAD_EXCEPT_MOUTH
	detail_tag = "_det"

/obj/item/clothing/head/helmet/visored/zunari/cursed/Initialize()
	. = ..()
	name = "soulbinded zunari kabuto"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/head/helmet/visored/zunari/cursed/obj_break(damage_flag)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/head/helmet/leather/malgai
	name = "leather malgai"
	desc = "A abyssariad leather helmet usually used by those who dwells \
	on the center of Fog islands, where great steppes exists, or your common hunter."
	icon_state = "malgai"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/helmet/leather/malgai/kaizoku
	name = "kaizoku hat"
	desc = "A distinguished hat with three sides of the brim turned up and laced, \
	forming a triangle. Usually used by the Fog Island's privateer navy - or rich fellows on Heartfelt."
	icon_state = "tricorn"

/obj/item/clothing/head/helmet/leather/malgai/duulga //same changes of 'leather' to 'hide' has been brought over to this hat + mouth protection, because Mongol hat go brrtt
	name = "abyssal leather helmet"
	desc = "The thick, oil-boiled layered 'arisan duulga' used by Abyssariads Dustriders \
	from the arid steppelands on the heart of the Fog Islands."
	icon_state = "arisan_duulga"
	armor = ARMOR_LEATHER_GOOD
	prevent_crits = list(BCLASS_BLUNT, BCLASS_TWIST)
	body_parts_covered = HEAD|HAIR|EARS|NOSE|MOUTH
	resistance_flags = FLAMMABLE // Made of leather
	smeltresult = /obj/item/ash
	anvilrepair = null
	max_integrity = INTEGRITY_STANDARD
	sewrepair = TRUE
	blocksound = SOFTHIT
	sellprice = 25
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/*
/obj/item/clothing/head/helmet/kaizoku
	name = "template BUGREPORT"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'
	icon_state = ""
	sellprice = VALUE_CHEAP_IRON_HELMET
	max_integrity = INTEGRITY_POOR
*/

/obj/item/clothing/head/helmet/kettle/jingasa //the same as a Kettle. Just don't want the 64x64 bits.
	name = "armored umbrella helmet"
	desc = "The 'Jingasa, a metal gasa in conical shape. Mainly worn by Ashigarus, it has a wide brim to deflect projectiles and a gap within acting as a buffer zone."
	icon_state = "jingasa"
	flags_inv = HIDEEARS
	smeltresult = /obj/item/ash
	bloody_icon = 'icons/effects/blood.dmi'
	bloody_icon_state = "itemblood"
	worn_x_dimension = 32
	worn_y_dimension = 32
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/helmet/kaizoku/heartfelt
	name = "heartfelt zunari kabuto"
	desc = "An Etchu Zunari kabuto with Heartfelt markings. It lacks a demonic \
	mask for intimidation purposes - yet remains just as effective, besides showing \
	the incredible artistic value that upholds Heartfelt's culture."
	icon_state = "heartfelt_kabuto"
	body_parts_covered = HEAD|HAIR|EARS //maskless, protects less of the face.
	flags_inv = HIDEEARS
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	emote_environment = 3
	sellprice = VALUE_STEEL_HELMET+BONUS_VALUE_SMALL
	clothing_flags = CANT_SLEEP_IN
	armor = ARMOR_PLATE
	armor_class = AC_HEAVY
	prevent_crits = ALL_CRITICAL_HITS
	max_integrity = INTEGRITY_STRONG

/obj/item/clothing/head/helmet/skullcap/hachigane //This is, in essence, a skullcap.
	name = "forehead protector"
	desc = "The 'Hachigane', a simple, lamellar head protection made for humble monks, ronins and the poor - with the material often gathered from iron panning."
	icon_state = "hachi-gane"
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'

/obj/item/clothing/head/helmet/skullcap/hachigane/tideweaver
	name = "tideweaver forehead protector"
	desc = "Simple, lamellar head protection. Marked in yellow for the mountainous magicians and monks who praises Abyssor's thunders."
	color = CLOTHING_TIDEWEAVER

/obj/item/clothing/head/helmet/skullcap/hachigane/purifier
	name = "purifier forehead protector"
	desc = "Simple, lamellar head protection. Marked in light blue for the expeditionary magicians and monks of Abyssanctum's faith, long married to the seas."
	color = CLOTHING_PURIFIER

/obj/item/clothing/head/helmet/skullcap/hachigane/curator
	name = "curator forehead protector"
	desc = "Simple, lamellar head protection. Marked in red for the soilgazers of Abyssanctum's faith, those bent in ensuring no plague shall reach their blessed islands. "
	color = CLOTHING_CURATOR

/obj/item/clothing/head/helmet/ironpot/rattan
	name = "tengpai dou"
	icon_state = "rattan_helmet"
	desc = "A cheap abyssariad helmet made from stripped, oil boiled rattan and iron. \
	Used only by militia and the humble LinYou raiders. Less protective, but can be easily repaired."
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	sewrepair = TRUE

/obj/item/clothing/head/helmet/heavy/bronzepot //hopefully asking someone to draw this helmet.
	name = "relic of urn"
	icon_state = "bronzeb"
	desc = "The eternal relic of the Champions of the Urn, used by Eidolon Skylancers, \
	the Demonslayers of the Abyssal order. It cannot be removed, forever one with the user \
	- molten and grafted into skin, but the infused arcane bends light upon itself for clear sight."
	smeltresult = /obj/item/ingot/steel //Intentional. The helmet is not actually made of bronze. It is just a lingering apotheosis-age term for that internal-mirror design.
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	block2add = null //Can easily see - cannot remove the helmet. This is your new skull.
	adjustable = CAN_CADJUST
	clothing_flags = null

/obj/item/clothing/head/helmet/heavy/bronzepot/AdjustClothes(mob/user)
	if(loc == user)
		playsound(user, "sound/items/visor.ogg", 50, TRUE, -1)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			icon_state = "[initial(icon_state)]_raised"
			body_parts_covered = HEAD|HAIR|EARS
			flags_inv = HIDEEARS|HIDEHAIR
			flags_cover = null
			prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT) // Vulnerable to eye stabbing while visor is open
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			prevent_crits = ALL_CRITICAL_HITS
			body_parts_covered = FULL_HEAD
			flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR
			flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_head()
	else // Failsafe.
		to_chat(user, "<span class='warning'>How the hell you removed your external cranium? PUT IT BACK, EIDOLON.</span>")
		return

/obj/item/clothing/head/helmet/heavy/bronzepot/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT) //It is molten on the user's head.

/obj/item/clothing/head/helmet/heavy/bronzepot/obj_break(damage_flag) //If it breaks, qdel.
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/head/helmet/heavy/bronzepot/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)



/obj/item/clothing/head/helmet/visored/abyssalchampion //hounskull tier.
	name = "winged abyssal helmet"
	desc = "The traditional winged helmet of ancient design with a protective mask covering it. \
	It has foundations on the ancient myrmidon guardian helmets. \
	The mask can be lifted internally for higher visibility, but it leaves the eyes exposed."
	icon_state = "abyssal_champion"
	item_state = "abyssal_champion"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'
	emote_environment = 3
	block2add = FOV_RIGHT|FOV_LEFT

	armor = ARMOR_PLATE

/obj/item/clothing/head/helmet/heavy/bucket/soheidemon
	name = "warpriest battle cowl"
	desc = "A fabric blessed both in holy water and steel. A mask-like metal reinforcement \
	covered with yellow silk protects the skull of these Sohei warriors."
	icon_state = "soheidemon"
	item_state = "soheidemon"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64

// 'bone-tier' Undine equipments.

/obj/item/clothing/head/wizhat/onmyoji
	name = "stormcaller warhat"
	desc = "Surprisingly huge hats used by stormcaller whom take part of the abyssal championage in warfare. The hat shadows hides the eyes from the lower castes."
	icon_state = "abyssalhat"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	worn_x_dimension = 64
	worn_y_dimension = 64
	resistance_flags = FLAMMABLE
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"

/obj/item/clothing/head/wizhat/onmyoji/random/Initialize()
	. = ..()
	color = pick("#4756d8", "#759259", "#bf6f39", "#c1b144")

/obj/item/clothing/head/wizhat/onmyoji/tideweaver
	name = "tideweaver stormcaller warhat"
	color = CLOTHING_TIDEWEAVER

/obj/item/clothing/head/wizhat/onmyoji/purifier
	name = "purifier stormcaller warhat"
	color = CLOTHING_PURIFIER

/obj/item/clothing/head/wizhat/onmyoji/curator
	name = "curator stormcaller warhat"
	color = CLOTHING_CURATOR

/obj/item/clothing/head/wizhat/onmyoji/black
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/head/wizhat/onmyoji/eboshi
	name = "eboshi hat"
	desc = "traditional stormcallers hats for those who desires to practice natural sciences and divinations rather than warfare."
	icon_state = "eboshihat"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	sellprice = 100
	worn_x_dimension = 64
	worn_y_dimension = 64
	resistance_flags = FLAMMABLE
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"

/obj/item/clothing/head/wizhat/onmyoji/eboshi/Initialize()
	color = pick_assoc(GLOB.noble_dyes)
	..()

/obj/item/clothing/head/rare/myrmidon
	name = "myrmidon helmet"
	desc = "The warrior-priests bound to divine oath, consecrated to fight in the abyss as \
	extensions of the Heavenly Emperor. It became reference for the current day zijinguan and winged helmets."
	icon_state = "myrmidon"
	item_state = "myrmidon"
	allowed_sex = list(MALE, FEMALE)
	allowed_race = list("abyssariad")
	flags_inv = HIDEEARS
	clothing_flags = CANT_SLEEP_IN
	body_parts_covered = HEAD_EXCEPT_EYES
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/rare/dragonslayer
	name = "dragonslayer helmet"
	icon_state = "dragonslayer"
	item_state = "dragonslayer"
	desc = "The hallmark of the Dragonslayers, those born to endure the blazing infernos from \
	the sons of magma. The asbestos materials excels in resisting the intense heat of dragonfire and wizardry."
	heat_protection = HEAD|EARS|HAIR|FACE
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	resistance_flags = FIRE_PROOF | ACID_PROOF
	worn_x_dimension = 64
	worn_y_dimension = 64
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"

/obj/item/clothing/head/bardhat/bloodhunter
	name = "scrapped hat"
	desc = "A heartfeltean hat that has been scrapped with sharp tools and hardened in oil, \
	meant to convey one's status to not only destroy such expensive piece - but to keep it raised like thorns."
	icon_state = "bloodhunter"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/bardhat/bloodhunter/yharnam
	name = "bloodhunter hat"
	color = "#0e305c"

/obj/item/clothing/head/helmet/leather/malgai/kaizoku/female
	name = "lady hat"
	desc = "A hat produced by abyssariad and heartfeltean hands for the most beautiful of ladies. Or rich, that is."
	icon_state = "heartfelthandf"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

//temple helmet
//................ Abyssor Shrinekeeper ............... //
/obj/item/clothing/head/padded/shrinekeeper
	name = "shrinekeeper kabuto"
	desc = "A gift to new Abyssanctum devotees and a badge of their shrinekeeping duties, referencing guardianship of old, this helm is crafted from the enamel of deep-sea leviathans to protect the head of shrinekeepers."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'
	icon_state = "shrinekeeper_kabuto"
	flags_inv = HIDEEARS | HIDEHAIR | HIDEFACIALHAIR

	armor = ARMOR_WEAK
	prevent_crits = MINOR_CRITICALS

/obj/item/clothing/head/helmet/ceramic
	name = "bone tribal helmet"
	icon_state = "ivory_head"
	desc = "A simple, protective bone helmet made from the creatures of the land."
	slot_flags = ITEM_SLOT_HEAD|ITEM_SLOT_HIP
	body_parts_covered = HEAD|HAIR
	prevent_crits = list(BCLASS_STAB) //This one is too thin to actually protect someone beyond stabbing wounds. Cut would have too much 'blunt'.
	resistance_flags = FIRE_PROOF
	icon_state = "ivory_head"
	armor = ARMOR_PADDED
	anvilrepair = null
	smeltresult = /obj/item/ash
	sewrepair = FALSE
	blocksound = SOFTHIT
	sellprice = 10
	max_integrity = INTEGRITY_POOR
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/helmet/ceramic/medium
	name = "bone ravanger helmet"
	icon_state = "ravager_head"
	desc = "The helmets commonly used by Undine warriors or common riverdwellers who took upon themselves to protect their heads against goblinoid invasions."
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB) //Bones are not good against blunt.
	body_parts_covered = HEAD|HAIR|EARS
	flags_inv = HIDEEARS
	max_integrity = INTEGRITY_STANDARD
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = ARMOR_PADDED_GOOD
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64

/obj/item/clothing/head/helmet/ceramic/reinforced
	name = "marauder trollhunter helmet"
	icon_state = "marauder_head"
	desc = "The full bone helmet that became the symbol of the unison of the Undine tribes and the Abyssariads, taking reference from the Championage's Dragonslayer helmets."
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_STAB) //Bones are not good against blunt.
	body_parts_covered = HEAD|EARS|HAIR|NOSE|EYES|FACE
	flags_inv = HIDEEARS
	max_integrity = INTEGRITY_STANDARD
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = ARMOR_LEATHER_BAD
	block2add = FOV_RIGHT|FOV_LEFT
	bloody_icon_state = null
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	bloody_icon = 'icons/effects/blood64x64.dmi'
	bloody_icon_state = "helmetblood_big"
	worn_x_dimension = 64
	worn_y_dimension = 64



// =================================================================
// ========================		MASK	============================

/obj/item/clothing/face/kaizoku
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/masks.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/masks.dmi'
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = FACE
	slot_flags = ITEM_SLOT_MASK

/obj/item/clothing/face/kaizoku/menpo
	name = "iron men-yoroi"
	icon_state = "menyoroi"
	desc = "Ever since the Ogruns has been dignified on Abyssariad fold, they have been exalted in war masks - and this became their default pattern for menpos ever since. "
	max_integrity = INTEGRITY_WORST
	blocksound = PLATEHIT
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	resistance_flags = FIRE_PROOF
	armor = ARMOR_PLATE_BAD
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	blocksound = PLATEHIT
	flags_inv = HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | MASKCOVERSMOUTH
	body_parts_covered = FACE|NECK
	block2add = FOV_BEHIND
	slot_flags = ITEM_SLOT_MASK|ITEM_SLOT_HIP
	experimental_onhip = TRUE
	sewrepair = FALSE

/obj/item/clothing/face/kaizoku/menpo/half
	name = "iron half mempo"
	icon_state = "ironmempo"
	max_integrity = INTEGRITY_WORST
	desc = "A cheaper mempo portraying the lower part of a Ogrun's head. It covers only the neck and the mouth."
	body_parts_covered = NECK|MOUTH
	flags_cover = HEADCOVERSMOUTH | MASKCOVERSMOUTH
	flags_inv = null

/obj/item/clothing/face/kaizoku/menpo/steel
	name = "steel men-yoroi"
	icon_state = "smenyoroi"
	max_integrity = INTEGRITY_STANDARD
	armor = ARMOR_PLATE
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)

/obj/item/clothing/face/kaizoku/menpo/steel/half
	name = "steel half-mempo"
	icon_state = "steelmempo"
	desc = "The lower part of a menpo portraying the maws of a Ogrun's head. It covers only the neck and the mouth, often used by warriors that cares about their sight."
	max_integrity = 200
	body_parts_covered = NECK|MOUTH
	flags_cover = HEADCOVERSMOUTH | MASKCOVERSMOUTH
	flags_inv = null

/obj/item/clothing/face/kaizoku/menpo/facemask
	name = "iron merkkin mask"
	icon_state = "irontribal"
	desc = "The old, barely used mask of the almost extinct Merkpeople, with fish-like characteristics. Usually used by Undines."
	max_integrity = 100
	body_parts_covered = FACE|MOUTH|EYES

/obj/item/clothing/face/kaizoku/menpo/facemask/steel
	name = "steel tribal mask"
	icon_state = "steeltribal"
	max_integrity = 200

/obj/item/clothing/face/kaizoku/menpo/facemask/colourable
	var/colorable_var
	var/picked

/obj/item/clothing/face/kaizoku/menpo/facemask/colourable/tengu
	name = "tengu mask"
	icon_state = "colourable_tengumask"
	max_integrity = 200
	desc = "A mask that glorifies a Skylancer warrior. It portrays the exagerated perception over the race - even if they lack such noses and eyebrows."
	colorable_var = TRUE

/obj/item/clothing/face/kaizoku/menpo/facemask/colourable/kitsune
	name = "changeling mask"
	icon_state = "colourable_kitsunemask"
	max_integrity = 200
	desc = "A mask that glorifies a Changeling warrior. It portrays the less exagerated perception over the race - since the mask's animalistic figure is no equal to their biology-defying skull."
	detail_tag = "_detail"
	colorable_var = TRUE

/obj/item/clothing/face/kaizoku/menpo/facemask/colourable/oni
	name = "ogrun mask"
	icon_state = "colourable_onimask"
	max_integrity = 200
	desc = "A mask that glorifies a Ogrun warrior. It portrays the mostly perfect perception of the race, so efficiently it became the standards for Fog island military due to its intimidation value."
	colorable_var = TRUE

/obj/item/clothing/face/kaizoku/menpo/facemask/colourable/attack_right(mob/user)
	if(colorable_var == TRUE)
		if(picked)
			return
		var/the_time = world.time
		if(world.time > (the_time + 30 SECONDS))
			return
		var/colorone = input(user, "Your emotions spreads your will.","Flush emotions within the threads.") as null|anything in CLOTHING_COLOR_NAMES
		if(!colorone)
			return
		picked = TRUE
		color = clothing_color2hex(colorone)
		update_icon()
		if(ismob(loc))
			var/mob/L = loc
			L.update_inv_wear_mask()
		return
	else
		return

/obj/item/clothing/face/kaizoku/menpo/steel/kitsune/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/face/kaizoku/facemask/dishonor
	name = "dishonor mask"
	desc = "Blackpowder-infused, soul-bound veil for dishonored Abyssariads as a consequence for bringing shame to their clan and traditions, for those unentitled to be called Abyssariads - the Burakumins (non-persons), such as prostitutes and beggars. If broken, it will explode."
	icon_state = "bmask"
	max_integrity = 300 //Unique and very protective. You will need it. Trust me.
	blocksound = PLATEHIT
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	resistance_flags = FIRE_PROOF
	armor = ARMOR_LEATHER_GOOD
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	flags_inv = HIDEFACE
	body_parts_covered = EYES | EARS | NOSE //Allows them to use their mouth due to the mouth opening.
	block2add = FOV_BEHIND
	slot_flags = ITEM_SLOT_MASK|ITEM_SLOT_HIP
	experimental_onhip = TRUE

/obj/item/clothing/face/kaizoku/facemask/dishonor/Initialize()
	. = ..()
	name = "dishonor mask"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/face/kaizoku/facemask/dishonor/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/face/kaizoku/facemask/dishonor/obj_break(damage_flag)
	. = ..()
	if(QDELETED(src))
		return
	explode(src)
	qdel(src)

/obj/item/clothing/face/kaizoku/facemask/dishonor/proc/explode(skipprob)
	STOP_PROCESSING(SSfastprocess, src)
	var/turf/T = get_turf(src)
	explosion(T, light_impact_range = 2, flame_range = 2, smoke = TRUE, soundin = pick('sound/misc/explode/bottlebomb (1).ogg','sound/misc/explode/bottlebomb (2).ogg'))

/obj/item/clothing/face/kaizoku/eyeband
	name = "eye bands"
	icon_state = "eyeband"
	max_integrity = 20
	integrity_failure = 0.5
	body_parts_covered = EYES
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/masks.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/masks.dmi'

/obj/item/clothing/face/kaizoku/eyeband/random/Initialize()
	color = pick("#a32121", "#8747b1", "#3d3a36", "#414143", "#685542", "#428138", "#264d26", "#537bc6", "#b5b004", "#249589", "#ffffff", "#bd6606", "#962e5c")
	..()

/obj/item/clothing/face/kaizoku/eyeband/tideweaver
	color = CLOTHING_TIDEWEAVER

/obj/item/clothing/face/kaizoku/eyeband/leonardo //katanas
	color = "#4f47be"

/obj/item/clothing/face/kaizoku/eyeband/michelangelo //nunchucks
	color = "#a76e38"

/obj/item/clothing/face/kaizoku/eyeband/donatello //bo staff
	color = "#65219c"

/obj/item/clothing/face/kaizoku/eyeband/raphael //sais
	color = "#8a2d2d"



// =================================================================
// ========================		NECK	============================

/obj/item/clothing/neck/chaincoif/karuta_zukin
	name = "foldable lamellae hood"
	desc = "The 'Karuta Zukin', a protective hood composed of rectangular plates sewn onto a fabric backing, offering a more solid \
	defense while remaining flexible."
	icon_state = "karuta_zukin"
	item_state = "karuta_zukin"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/neck.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/neck.dmi'

/obj/item/clothing/neck/chaincoif/karuta_zukin/random/Initialize()
	. = ..()
	color = pick("#a32121", "#8747b1", "#3d3a36", "#414143", "#685542", "#428138", "#264d26", "#537bc6", "#b5b004", "#249589", "#ffffff", "#bd6606", "#962e5c")

/obj/item/clothing/neck/chaincoif/karuta_zukin/military/Initialize()
	. = ..()
	color = pick("#534b40", "#685542", "#264d26")

/obj/item/clothing/neck/chaincoif/karuta_zukin/kabukimono/Initialize()
	. = ..()
	color = "#9b874f"

/obj/item/clothing/neck/chaincoif/iron/kusari_zukin
	name = "iron kusari zukin"
	desc = "A hood made of riveted iron rings usually worn beneath or alongside a Kabuto. \
	It protects against cuts and slashes - but cannot spread blunt damage as efficiently."
	icon_state = "kusari_zukin"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/neck.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/neck.dmi'
	detail_tag = "_det"

/obj/item/clothing/neck/psycross/silver/abyssanctum
	name = "abyssanctum amulet"
	desc = "Despair thee not at the abyssal depths, for where light doth fade, vessels of might shall be therein carved, as Abyssor and the Weeper guide their own."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/neck.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/neck.dmi'
	icon_state = "abyssanctum"
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HIP|ITEM_SLOT_WRISTS

/obj/item/clothing/neck/mercmedal/toweryakko
	name = "soul compressor"
	desc = "A metallic device of Tower-Yakko legacy used to shackle criminal souls and demons to eternity. The once-feared power ceased when Tower-Yakko's moral decay led to their disgrace in the eyes of the emperor. "
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/neck.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/neck.dmi'
	icon_state = "soul_compressor"

/obj/item/clothing/neck/mercmedal/kabukimaru
	name = "hihiirokane beads"
	desc = "Hihiirokane, or 'Mythril', is a luminous, rare metal drawn from the abyssal depths where the pressure is hostile to most life. The Abyssariads holds the key to its mystery, a secret that dwarves would covet at any cost."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/neck.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/neck.dmi'
	icon_state = "mythrilbeads"


// =================================================================
// ========================		PANTS	============================

/obj/item/clothing/pants/chainlegs/iron/haidate_tatami
	name = "foldable thighguard"
	desc = "The 'Haidate Tatami', a flexible thigh guard with interlocking scales sewn into the fabric. Ideal for agility during battle."
	gender = PLURAL
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	icon_state = "haidate_tatami"
	item_state = "haidate_tatami"
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/pants/chainlegs/sendan
	name = "segmented thighguard"
	desc = "A 'sendan tatami', a segmented thigh armor with overlapping plates that allows engagement in prolonged combat, without causing mobility issues."
	icon_state = "haidate_sendan"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/pants/chainlegs/sendan/cursed/Initialize()
	. = ..()
	name = "soulbinded thighguard"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/pants/platelegs/yoroihakama
	name = "steel plated trousers"
	desc = "The 'Yoroi-Hakama', essentially a Hakama with plate reinforcement, with protuding plates protecting the hips, and many interlocking steel plates under the cloth."
	gender = PLURAL
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'
	icon_state = "yoroihakama"
	item_state = "yoroihakama"
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/pants/kaizoku/yoroihakama/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/pants/trou/tobi
	name = "tobi pants"
	desc = "Baggy pants of abyssariad design. Suitable for those who works the field and avoid horseback."
	icon_state = "tobi"
	item_state = "tobi"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'

/obj/item/clothing/pants/trou/tobi/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/pants/trou/tobi/tideweaver
	name = "tideweaver tobi pants"
	color = CLOTHING_TIDEWEAVER

/obj/item/clothing/pants/trou/tobi/purifier
	name = "purifier tobi pants"
	color = CLOTHING_PURIFIER

/obj/item/clothing/pants/trou/tobi/curator
	name = "curator tobi pants"
	color = CLOTHING_CURATOR

/obj/item/clothing/pants/trou/tobi/dark
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/pants/trou/tobi/kabukimono
	color = CLOTHING_KABUKIMONO

/obj/item/clothing/pants/trou/tobi/dragonslayer
	desc = "Baggy pants of abyssariad design. This one is coated in asbestos, and may be just as dangerous."
	color = "#3d4681"
	armor = list("blunt" = 30, "slash" = 30, "stab" = 20, "piercing" = 10, "fire" = 100, "acid" = 0)

/obj/item/clothing/pants/trou/leather/fur
	name = "thick tobi"
	icon_state = "furpants"
	desc = "A tobi made out of Dendor's beloved guardians - so Abyssor's beloved guardians can use it."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'

/obj/item/clothing/pants/trou/leather/fur/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/pants/trou/leather/fur/dragonslayer
	resistance_flags = FIRE_PROOF | ACID_PROOF
	color = CLOTHING_RED_OCHRE

/obj/item/clothing/pants/tights/hakama
	name = "abyssal trouser"
	icon_state = "hakama"
	alternate_worn_layer = SHOESLEEVE_LAYER
	desc = "Suitable for the Abyssariad-cultured, in which large battle-skirts does not hurt their masculinity, differently of the frail Imperial counterpart."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'

/obj/item/clothing/pants/tights/hakama/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/pants/tights/hakama/eidolon
	color = CLOTHING_EIDOLON

/obj/item/clothing/pants/tights/hakama/curator
	color = CLOTHING_CURATOR

/obj/item/clothing/pants/trou/leather/shinobizubon
	name = "shinobi zubon"
	desc = "Traditional flexible pants with loose fit around the legs with hardened leather tied under the cloth and ankles to prevent snagging and noise."
	gender = PLURAL
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'
	icon_state = "shinobizubon"
	item_state = "shinobizubon"
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/pants/kaizoku/ceramic
	name = "marauder chausses"
	desc = "Bone chausses chiseled into a mimicry of shells, equal to a lamellar of mollusk shells, so it better absorb and disperse impact."
	gender = PLURAL
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'
	icon_state = "marauder_leg"
	item_state = "marauder_leg"
	sewrepair = FALSE
	armor = ARMOR_LEATHER
	max_integrity =  INTEGRITY_POOR
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	armor_class = AC_MEDIUM
	body_parts_covered = GROIN|LEGS|FEET
	blocksound = PLATEHIT
	var/do_sound = FALSE
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/pants/platelegs/weepershanwenkai
	name = "weeper-patterned championage lowerhalf"
	desc = "Lower part of a godwenkai armor, relics of abyssariad championage for those of high-ranking deeply bound to Abyssanctum. Usually made of bronze, the grasp of the current era brought high-quality steel to the table."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'
	icon_state = "weepershanwenkai"
	item_state = "weepershanwenkai"
	gender = PLURAL
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/pants/kaizoku/ceramic/light
	name = "ivory leg plates"
	desc = "The leg protection proper for Undine warriors."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'
	max_integrity = INTEGRITY_WORST
	armor = ARMOR_LEATHER_BAD
	prevent_crits = list(BCLASS_CHOP, BCLASS_BLUNT)
	body_parts_covered = LEGS|FEET
	gender = PLURAL
	icon_state = "ivory_legs"
	item_state = "ivory_legs"

/obj/item/clothing/pants/kaizoku/tribal
	name = "tribal lowerhalf"
	desc = "piece of clothings usually used by Undine tribesmen of all genders."
	icon_state = "tribalcloth"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/pants.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/pants.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_pants.dmi'



// =================================================================
// ========================	SHIRT	================================

/obj/item/clothing/shirt/robe/shrinekeeper
	name = "shrinekeeper robe"
	desc = "Silk-woven and shimmering like tides at dusk, for those who honors the will of the abyss."
	icon_state = "shrinekeeper"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	sleevetype = "shirt"

/obj/item/clothing/shirt/tunic/kimono
	name = "traditional kimono"
	desc = "A front-wrapped garment with long sleeves made from a long, narrow bolt of cloth used as a formal garment by the poor and rich alike."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/shirt.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/shirt.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_shirts.dmi'
	icon_state = "kimono"
	item_state = "kimono"
	sleevetype = "shirt"
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	boobed = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/shirt/tunic/kimono/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/shirt/tunic/kimono/ronin
	color = CLOTHING_RONIN

/obj/item/clothing/shirt/tunic/kimono/dark
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/shirt/tunic/kimono/kabukimono
	color = CLOTHING_KABUKIMONO

/obj/item/clothing/shirt/rags/monkgarb
	name = "monk samue"
	desc = "The samue is the clothing used by Abyssanctum monks engaged on the act of Samu, most proper for those performing temple maintenance and mountain hiking."
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/shirt.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/shirt.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_shirts.dmi'
	icon_state = "monkgarb"
	item_state = "monkgarb"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|ARMS|VITALS

/obj/item/clothing/shirt/rags/monkgarb/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/shirt/rags/monkgarb/tideweaver
	color = CLOTHING_TIDEWEAVER

/obj/item/clothing/shirt/tunic/kamishimo //I know this is actually a Kataginu, but it is know more as 'Kamishimo', even if lacking a Hakama. Because HAKAMA is its own thing here.
	name = "shoulder robe"
	desc = "A formal kimono used by men, a short sleeveless garment made of hemp which usually comes together with a hakama, and worn on top of a kosode or kimono. To use one without cloth underneath, conveys a ronin nature."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/shirt.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/shirt.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_shirts.dmi'
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR|ITEM_SLOT_CLOAK
	icon_state = "kamishimo"
	item_state = "kamishimo"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|VITALS

/obj/item/clothing/shirt/tunic/kamishimo/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/shirt/tunic/kamishimo/ronin
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/shirt/tunic/kamishimo/eidolon
	color = CLOTHING_EIDOLON

/obj/item/clothing/shirt/looseshirt
	name = "kimono summer shirt"
	desc = "A summer shirt that goes along with a tobi, used during the hot summers on Fog islands."
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/shirt.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/shirt.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_shirts.dmi'
	icon_state = "looseshirt"
	item_state = "looseshirt"
	boobed = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|ARMS|VITALS

/obj/item/clothing/shirt/looseshirt/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/clothing/shirt/looseshirt/shinobi
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/shirt/looseshirt/dragonslayer
	resistance_flags = FIRE_PROOF | ACID_PROOF
	color = CLOTHING_WINESTAIN_RED

/obj/item/clothing/shirt/rags/tribal
	name = "tribal garbs"
	desc = "Tribal clothings made from plant fiber commonly used by Undine tribesmen."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/shirt.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/shirt.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_shirts.dmi'
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	icon_state = "tribalgarb"
	item_state = "tribalgarb"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|VITALS

/obj/item/clothing/shirt/robe/wizard/guardian
	name = "stormcaller's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare, holding the marks of Abyssor upon the cloth."
	icon_state = "abyssaltunic"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/shirt.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/shirt.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_shirts.dmi'
	boobed = TRUE
	flags_inv = HIDEBOOB
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	allowed_sex = list(MALE, FEMALE)
	allowed_race = list("human", "tiefling", "aasimar", "abyssariad")
	color = null
	sellprice = 100

/obj/item/clothing/shirt/robe/wizard/guardian/black
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/shirt/robe/wizard/guardian/random/Initialize()
	color = pick_assoc(GLOB.noble_dyes)
	..()

/obj/item/clothing/shirt/robe/wizard/guardian/tideweaver
	name = "tideweaver onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare. Marked in yellow for the mountainous magicians and monks who praises Abyssor's thunders."
	color = CLOTHING_TIDEWEAVER

/obj/item/clothing/shirt/robe/wizard/guardian/purifier
	name = "purifier onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare.  Marked in light blue for the expeditionary magicians and monks of Abyssanctum's faith, long married to the seas."
	color = CLOTHING_PURIFIER

/obj/item/clothing/shirt/robe/wizard/guardian/curator
	name = "curator onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare. Marked in red for the soilgazers of Abyssanctum's faith, those bent in ensuring no plague shall reach their blessed islands. "
	color = CLOTHING_CURATOR

/obj/item/clothing/shirt/kaizoku/robe
	slot_flags = ITEM_SLOT_ARMOR
	name = "loose abyssal garb"
	desc = "Casual abyssariad garbs usually used by magicians, or those living on the frigid, treacherous mountains on the edges of the Fog islands."
	icon_state = "loosetunic"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/shirt.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/shirt.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_shirts.dmi'
	boobed = TRUE
	flags_inv = HIDEBOOB
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	allowed_sex = list(MALE)
	allowed_race = list("human", "tiefling", "aasimar", "abyssariad")
	color = null

/obj/item/clothing/shirt/kaizoku/robe/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()



// =================================================================
// ========================	STORAGE	================================

/obj/item/storage/belt/kaizoku/leather/daisho
	name = "daisho belt"
	desc = "A oil-boiled reinforced silk or leather belt used by Abyssariads for practicing Daisho."
	icon_state = "daisho"
	sellprice = 5
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/belts.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/belts.dmi'

/obj/item/storage/belt/kaizoku/leather/daisho/random/Initialize()
	color = pick(GLOB.peasant_dyes)
	..()

/obj/item/storage/belt/kaizoku/leather/daisho/ninja/PopulateContents()
	new /obj/item/reagent_containers/food/snacks/fogdart(src)
	new /obj/item/reagent_containers/food/snacks/fogdart(src)
	new /obj/item/weapon/tetsubishi(src)

/obj/item/storage/belt/kaizoku/leather/daisho/tideweaver
	name = "tideweaver daisho belt"
	color = CLOTHING_TIDEWEAVER

/obj/item/storage/belt/kaizoku/leather/daisho/purifier
	name = "purifier daisho belt"
	color = CLOTHING_PURIFIER

/obj/item/storage/belt/kaizoku/leather/daisho/curator
	name = "curator daisho belt"
	color = CLOTHING_CURATOR

/obj/item/storage/backpack/satchel/ninja/PopulateContents()
	new /obj/item/grenade/smoke_bomb(src)
	new /obj/item/grenade/smoke_bomb/poison(src)
	new /obj/item/throwing_star/ninja(src)

/obj/item/storage/belt/kaizoku/leather/pursebelt
	name = "pursebelt"
	desc = "Cloth wrap that curls under the pants with some exposed purses. It is kept hidden for aesthestic sake."
	icon_state = "hiddensash"
	sellprice = 5
	alternate_worn_layer = DAMAGE_LAYER
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/belts.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/belts.dmi'

// =================================================================
// ========================	BRACERS	================================

/obj/item/clothing/wrists/bracers/kote
	name = "armored sleeve"
	desc = "Armored sleeves and gloves part of the samurai sangu set."
	icon_state = "kote"
	item_state = "kote"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/wrists.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	body_parts_covered = ARMS|HANDS
	color = null
	detail_tag = "_det"

/obj/item/clothing/wrists/bracers/kote/cursed/Initialize()
	. = ..()
	name = "soulbinded kote"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/wrists/bracers/mountainstar
	name = "weeping god-patterned bracers"
	desc = "Y-shaped steel plates marks this bracer everywhere it is looked upon, most proper for the Weeping God."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/wrists.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	icon_state = "mountainstar"
	item_state = "mountainstar"

/obj/item/clothing/wrists/kaizoku/dragonwrap
	name = "dragon wrappings"
	desc = "fireproof cloth wrappings to cover the arms and hands. It is completely made of asbestos and resin keeping its toxicity in place. For now."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "dragonwrap"
	item_state = "dragonwrap"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/wrists.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	armor = list("blunt" = 5, "slash" = 5, "stab" = 5, "piercing" = 5, "fire" = 100, "acid" = 50)
	heat_protection = ARMS|HANDS
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/wrists/bracers/leather/khudagach
	name = "abyssal leather bracers"
	desc = "Oil-boiled leather bracers made to protect the forearms and wrists of abyssariad archers, light cavalry and farming folk."
	icon_state = "khudagach"
	item_state = "khudagach"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/wrists.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'

/obj/item/clothing/wrists/bracers/bonebracer
	name = "bone bracers"
	desc = "the bracers made of bone, usually created and used by tribalistic Undines."
	armor = ARMOR_PADDED
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/wrists.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	icon_state = "bonebracers"
	item_state = "bonebracers"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_TWIST)
	resistance_flags = null
	blocksound = SOFTHIT
	smeltresult = /obj/item/ash
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = FALSE

/obj/item/clothing/wrists/shrinekeeper
	slot_flags = ITEM_SLOT_WRISTS
	name = "purificators"
	desc = "Blessed gauntlets for those who believes they can punch spirits."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/wrists.dmi'
	mob_overlay_icon ='modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/wrists.dmi'
	icon_state = "shrinekeeper_gauntlet"
	sleevetype = "shirt"
	resistance_flags = FLAMMABLE
	sewrepair = TRUE
	anvilrepair = null
	alternate_worn_layer = BELT_LAYER //Keep them exposed above armor and tabards.

//area for zamurai for the sake of easeness

/obj/item/clothing/armor/gambeson/light/hitatare/zamurai
	detail_tag = "_det"
	detail_color = CLOTHING_WHITE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	var/picked = FALSE
	colorgrenz = TRUE

/obj/item/clothing/armor/gambeson/light/hitatare/zamurai/proc/get_player_input()
	if(!ishuman(loc))
		return

	var/list/colors = list(
		"PURPLE"="#865c9c",
		"RED"="#933030",
		"BROWN"="#685542",
		"GREEN"="#79763f",
		"BLUE"="#395480",
		"YELLOW"="#b5b004",
		"TEAL"="#249589",
		"STEEL"="#ffffff",
		"ORANGE"="#b86f0c",
		"Royal Majenta"="#962e5c")

	var/mob/living/carbon/human/L = loc

	var/det_choice = input(L, "Color of your lacquered plates", "Choose a light tone") as anything in colors
	var/base_choice = input(L, "Color of the padding", "Choose a dark tone") as anything in colors

	var/det_color = colors[det_choice]
	var/base_color = colors[base_choice]

	picked = TRUE
	detail_color = det_color
	update_icon()

	for(var/obj/item/clothing/V in L.get_equipped_items(FALSE))
		if(V.colorgrenz)
			V.detail_color = det_color
			if(istype(V, /obj/item/clothing/armor/medium/surcoat/heartfelt/abyssariad/zamurai))
				var/obj/item/clothing/armor/medium/surcoat/heartfelt/abyssariad/zamurai/S = V
				S.base_color = base_color
			else if(istype(V, /obj/item/clothing/wrists/bracers/kote/zamurai))
				var/obj/item/clothing/wrists/bracers/kote/zamurai/K = V
				K.base_color = base_color
			V.update_icon()

	L.regenerate_icons()

/obj/item/clothing/armor/gambeson/light/hitatare/zamurai/Initialize()
	. = ..()
	if(!picked)
		var/mob/living/carbon/human/L = loc
		if(!istype(L))
			return
		if(!L.client)
			return
		INVOKE_ASYNC(src, PROC_REF(get_player_input))

/obj/item/clothing/armor/medium/surcoat/heartfelt/abyssariad/zamurai
	detail_tag = "_det"
	colorgrenz = TRUE
	var/base_color = null

/obj/item/clothing/armor/medium/surcoat/heartfelt/abyssariad/zamurai/update_icon()
	cut_overlays()
	if(base_color)
		color = base_color
	else
		color = initial(color)
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/wrists/bracers/kote/zamurai
	detail_tag = "_det"
	colorgrenz = TRUE
	var/base_color = null

/obj/item/clothing/wrists/bracers/kote/zamurai/update_icon()
	cut_overlays()
	if(base_color)
		color = base_color
	else
		color = initial(color)
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/wrists/bracers/kote/zamurai/update_overlays(mob/living/carbon/human/H)
	. = ..()

	if(base_color)
		for(var/image/I in overlays)
			if(I.icon == mob_overlay_icon && I.icon_state == icon_state)
				I.color = base_color

/obj/item/clothing/head/helmet/visored/zunari/zamurai
	detail_tag = "_det"
	colorgrenz = TRUE
	var/base_icon_state = "zunari_kabuto"

/obj/item/clothing/head/helmet/visored/zunari/zamurai/update_icon()
	cut_overlays()
	var/visor_suffix = ""
	if(adjustable == CADJUSTED)
		visor_suffix = "_raised"
	icon_state = "[base_icon_state][visor_suffix]"
	color = initial(color)

	if(get_detail_tag())
		var/overlay_icon_state = "[base_icon_state][get_detail_tag()][visor_suffix]"
		var/mutable_appearance/pic = mutable_appearance(icon(icon, overlay_icon_state))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/head/helmet/visored/zunari/zamurai/AdjustClothes(mob/user)
	if(loc == user)
		playsound(user, "sound/items/visor.ogg", 50, TRUE, -1)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			body_parts_covered = COVERAGE_HEAD
			flags_inv = HIDEEARS
			flags_cover = null
			prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
			block2add = null
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)

		if(istype(src, /obj/item/clothing/head/helmet/visored/zunari/zamurai))
			src:update_icon()

		if(ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_head()

		user.update_fov_angles()
	else // Failsafe.
		to_chat(user, "<span class='warning'>Wear the helmet on your head to open and close the visor.</span>")
		return

///////////////////////////////////// New Garrison

/obj/item/clothing/armor/brigandine/neogarrison
	name = "TEMPLATE GARRISON ARMOR"
	desc = "you should not see this"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'
	icon_state = "flhcustodian"
	detail_tag = ""
	detail_color = null
	color = null
	var/picked = FALSE
	var/has_mini = FALSE
	var/mini_color = null
	var/mini_tag = ""

/obj/item/clothing/armor/brigandine/neogarrison/Initialize()
	. = ..()
	if(picked)
		return

	var/mob/living/carbon/human/L = loc
	if(!istype(L) || !L.client)
		return

	if(L.dna.species?.id != "abyssariad")
		name = "heartfelt plated coat"
		desc = "Plated coat used by Heartfelteans"
		icon_state = "hfhcustodian"
	else
		name = "foglander coat-of-knives"
		desc = "Armored coat used by Foglanders"
		icon_state = "flhcustodian"

	INVOKE_ASYNC(src, PROC_REF(get_player_input))

/obj/item/clothing/armor/brigandine/neogarrison/proc/get_player_input()
	if(!ishuman(loc))
		return

	var/list/colors = list(
		"PURPLE"="#865c9c",
		"RED"="#933030",
		"BROWN"="#685542",
		"GREEN"="#79763f",
		"BLUE"="#395480",
		"YELLOW"="#b5b004",
		"TEAL"="#249589",
		"STEEL"="#ffffff",
		"ORANGE"="#b86f0c",
		"Royal Majenta"="#962e5c")

	detail_tag = ""
	detail_color = null
	has_mini = FALSE
	mini_color = null
	mini_tag = ""

	if(GLOB.lordprimary)
		var/list/choices = list("Battle coat" = "_det", "Cloak" = "_det1")
		var/choice = input(loc, "Choose your armor plating style", "Armor Customization") as null|anything in choices
		if(choice)
			detail_tag = choices[choice]
			detail_color = GLOB.lordprimary
			mini_tag = "_mini"
			has_mini = TRUE
			mini_color = GLOB.lordsecondary
	else
		detail_tag = "_og"
		if(alert(loc, "Do you want to apply a colored mini-lining?", "Mini-Lining", "Yes", "No") == "Yes")
			has_mini = TRUE
			var/color_choice = input(loc, "Choose your mini-lining color", "Mini-Lining Color") as null|anything in colors
			if(color_choice)
				mini_tag = "_mini"
				mini_color = colors[color_choice]

	picked = TRUE
	update_icon()
	if(ismob(loc))
		var/mob/M = loc
		M.update_inv_armor()

/obj/item/clothing/armor/brigandine/neogarrison/update_icon()
	cut_overlays()

	if(icon_state)
		var/mutable_appearance/base = mutable_appearance(icon, icon_state)
		base.alpha = 255
		base.appearance_flags = RESET_COLOR
		add_overlay(base)

	if(detail_tag && detail_tag != "_og")
		var/mutable_appearance/DET = mutable_appearance(icon, "[icon_state][detail_tag]")
		DET.appearance_flags = RESET_COLOR
		if(detail_color)
			DET.color = detail_color
		add_overlay(DET)

	if(has_mini && mini_tag)
		var/mutable_appearance/MU = mutable_appearance(icon, "[icon_state][mini_tag]")
		MU.appearance_flags = RESET_COLOR
		if(mini_color) //Appears only when the player chooses for a "Mini" overlay.
			MU.color = mini_color
		add_overlay(MU)

	if(detail_tag && detail_tag != "_og")
		var/image/I1 = image(icon, "[icon_state][detail_tag]")
		if(detail_color)
			I1.color = detail_color
		overlays += I1

	if(has_mini && mini_tag)
		var/image/I2 = image(icon, "[icon_state][mini_tag]")
		if(mini_color) //Appears only when the player chooses for a "Mini" overlay.
			I2.color = mini_color
		overlays += I2

/obj/item/clothing/armor/brigandine/neogarrison/proc/get_additional_worn_overlays(file)
	var/list/extra = list()
	if(detail_tag && detail_tag != "_og")
		var/image/B = image(file, "[icon_state][detail_tag]")
		if(detail_color)
			B.color = detail_color
		extra += B
	if(has_mini && mini_tag)
		var/image/I = image(file, "[icon_state][mini_tag]")
		if(mini_color) //Appears only when the player chooses for a "Mini" overlay.
			I.color = mini_color
		extra += I
	return extra

/obj/item/clothing/armor/brigandine/neogarrison/worn_overlays(isinhands, file2use)
	var/list/extras = ..(isinhands, file2use)
	if(detail_tag && detail_tag != "_og")
		var/image/B = image(file2use, "[icon_state][detail_tag]")
		if(detail_color)
			B.color = detail_color
		extras += B
	if(has_mini && mini_tag)
		var/image/I = image(file2use, "[icon_state][mini_tag]")
		if(mini_color) //Appears only when the player chooses for a "Mini" overlay.
			I.color = mini_color
		extras += I
	return extras

/obj/item/clothing/neck/bevor/crabstain
	name = "crabstain bevor"
	desc = "A crab-like throat and neck protector favored by coastal guards, with jagged lips similar to carcinized sea creatures. \
			The ridged mechanisms can be opened with the tongue to allow the user to eat."
	icon_state = "crabstain"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/neck.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/neck.dmi'
	adjustable = CAN_CADJUST
	alternate_worn_layer = MOUTH_LAYER

/obj/item/clothing/neck/bevor/crabstain/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_open"
			flags_inv = null
			body_parts_covered = NECK|EARS
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEEARS|HIDEHAIR
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()

/obj/item/clothing/neck/gorget/lazerrain
	name = "lazerrain aegis"
	icon_state = "lazerrain"
	desc = "Compact, interlocking iron bands that slip beneath armor to ensure your neck will remain secured from slashes and punctures."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/neck.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/neck.dmi'
	alternate_worn_layer = MOUTH_LAYER

/obj/item/clothing/armor/leather/splint/battlecoat
	name = "custodian battlecoat"
	desc = "A light custodian gear made of interconnected hexagonal iron plates stitched under a thick coat for protection."
	icon_state = "hflcustodian"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/armor.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/armor.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/helpers/sleeves_armor.dmi'

/obj/item/clothing/armor/leather/splint/battlecoat/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		update_icon()

	var/mob/living/carbon/human/L = loc
	if(!istype(L) || !L.client)
		return

	if(L.dna.species?.id != "abyssariad")
		desc = "A light custodian gear made of interconnected hexagonal iron plates stitched under a thick coat for protection."
		icon_state = "hflcustodian"
	else
		desc = "A light custodian overwear based on foglander godwenkai of ancient championage roots, with reinforced hexagonal plates under it."
		icon_state = "fllcustodian"

/obj/item/clothing/armor/leather/splint/battlecoat/update_icon()
	cut_overlays()
	if(icon_state)
		var/mutable_appearance/base = mutable_appearance(icon, icon_state)
		base.alpha = 255
		base.appearance_flags = RESET_COLOR
		add_overlay(base)

	if(GLOB.lordprimary)
		var/mutable_appearance/det = mutable_appearance(icon, "[icon_state]_det")
		det.appearance_flags = RESET_COLOR
		det.color = GLOB.lordprimary
		add_overlay(det)

/obj/item/clothing/armor/leather/splint/battlecoat/worn_overlays(isinhands, file2use)
	var/list/extras = ..(isinhands, file2use)
	if(GLOB.lordprimary)
		var/image/det_img = image(file2use, "[icon_state]_det")
		//det_img.layer = ARMOR_LAYER
		det_img.color = GLOB.lordprimary
		extras += det_img
	return extras

/obj/item/clothing/head/helmet/leather/paddedt
	name = "custodian bearskin"
	desc = "A furcap commonly used by foglander grenadiers for identification became commonly used by others \
	forces over centuries, usually ceremonial, with leather padding it becomes protective."
	icon_state = "paddedt"
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head.dmi'

/obj/item/clothing/head/helmet/leather/paddedt/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		update_icon()

/obj/item/clothing/head/helmet/leather/paddedt/update_icon()
	cut_overlays()
	if(icon_state)
		var/mutable_appearance/base = mutable_appearance(icon, icon_state)
		base.alpha = 255
		base.appearance_flags = RESET_COLOR
		add_overlay(base)

	if(GLOB.lordprimary)
		var/mutable_appearance/det = mutable_appearance(icon, "[icon_state]_det")
		det.appearance_flags = RESET_COLOR
		det.color = GLOB.lordprimary
		add_overlay(det)

/obj/item/clothing/head/helmet/leather/paddedt/worn_overlays(isinhands, file2use)
	var/list/extras = ..(isinhands, file2use)
	if(GLOB.lordprimary)
		var/image/det_img = image(file2use, "[icon_state]_det")
		//det_img.layer = HEAD_LAYER
		det_img.color = GLOB.lordprimary
		extras += det_img
	return extras

/obj/item/clothing/head/helmet/kettle/fs_kettle
	name = "custodian kettle"
	desc = "Infantry skull protection. It goes great with a gorget."
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/head.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/head64.dmi'
	icon_state = "hfs_kettle"
	worn_x_dimension = 64
	worn_y_dimension = 64

/obj/item/clothing/head/helmet/kettle/fs_kettle/Initialize()
	. = ..()
	var/mob/living/carbon/human/L = loc
	if(!istype(L) || !L.client)
		return

	if(L.dna.species?.id != "abyssariad")
		desc = "Skull protector of heartfeltean design. Square-looking, it protects against blows from above, what you need during sieges."
		icon_state = "hfs_kettle"
	else
		desc = "Infantry headgear of Foglander design in a bowl-like silhouette, having a large brim protecting the eyes from the sun."
		icon_state = "ffs_kettle"

/obj/item/clothing/cloak/raincloak/guardsman
	name = "custodian capelet"
	desc = "a shoulder-length cape used by heartfeltean duelists. Proper for distractions and hide blades under."
	icon_state = "guardcloak"
	body_parts_covered = CHEST|GROIN
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_CLOAK
	inhand_mod = FALSE
	hoodtype = null
	icon = 'modular/stonekeep/kaizoku/icons/clothingicon/cloaks.dmi'
	mob_overlay_icon = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'
	sleeved = 'modular/stonekeep/kaizoku/icons/clothing/cloaks.dmi'

/obj/item/clothing/cloak/raincloak/guardsman/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordsecondary)
	else
		color = CLOTHING_BLOOD_RED
