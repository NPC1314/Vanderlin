/* * * * * * * **
 *				*
 *	 Racism		*
 *				*
 * * * * * * * * **/






// =================================================================================
/datum/species/elf/dark
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	desc = "<b>Dark Elf</b><br>\
	Descending from a perversion of false immortality, Dark Elves are a unique and young species \
	that have only recently found themselves a staple of daily life. \
	They boast a proud, beauty-centric culture that compensates their cursed that ranges \
	from skin tints to extreme deformations, with anyone falling behind their cripplingly high standards \
	refered to as a Homonculus. While less graceful terms such as \
	stitchface, zombie or corpsewalker are most commonly thrown out by the elder races \
	Dark Elves tend to be extremely arrogant of others plights, with selfishness \
	being seen as a massive boon in their societies, leading to storng rivalries among their enclaves.\
	\
	THIS IS A SHUNNED RACE. EXPECT A MORE DIFFICULT EXPERIENCE."

	specstats_m = list("strength" = -1, "perception" = -1, "intelligence" = 1, "constitution" = 0, "endurance" = 1, "speed" = 2, "fortune" = 0)
	specstats_f = list("strength" = 0, "perception" = -1, "intelligence" = 1, "constitution" = 1, "endurance" = 0, "speed" = 1, "fortune" = 0)

#define DELF_SCORPION "5f665b"

/datum/species/elf/dark/get_skin_list()
	return sortList(list(
		"Maggot" = SKIN_COLOR_MAGGOT, // - (Pale blue)
		"Cocoon" = SKIN_COLOR_COCOON, // - (Pale purple)
		"Ashen" = SKIN_COLOR_ASHEN, // - (Pale grey)
		"Spider Venom" = SKIN_COLOR_SPIDER_VENOM, // - (Deep grey)
		"Jackpoison" = SKIN_COLOR_JACKPOISON, // - (Grey-purple)
		"Homunculus" = SKIN_COLOR_HOMUNCULUS, // - (Grey-blue)
	))
/datum/species/elf/dark/on_species_gain(mob/living/carbon/C, datum/species/old_species, datum/preferences/pref_load)
	. = ..()
	ADD_TRAIT(C, TRAIT_DARKLING, SPECIES_TRAIT)

/*
/datum/species/elf/dark/get_accent_list()
	return strings("SKdarkelf_replacement.json", "darkelf")

/datum/species/elf/dark/get_accent(mob/living/carbon/human/H)
	return strings("SKdarkelf_replacement.json", "darkelf")
*/
// =================================================================================
/datum/species/dwarf/mountain
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)

	desc = "<b>Dwarf</b><br>\
	A stubborn and curious-minded race of stunted folk, \
	the dwarves are known for inventing many mechanical contraptions and being hard workers.  \
	Tradition and customs such as respect for Malum are pillars of their society, \
	but is often also the cause of endless bickering and infighting over minute details. \
	Dwarves are hearty and stout but not known for their speed or eyesight..."

	specstats_m = list("strength" = 1, "perception" = -1, "intelligence" = 1, "constitution" = 2, "endurance" = 2, "speed" = -2, "fortune" = 0)
	specstats_f = list("strength" = 0, "perception" = 0, "intelligence" = 1, "constitution" = 2, "endurance" = 2, "speed" = 2, "fortune" = 0)

//DWARF SKIN TONES
#define DWARF_MERCUR "ba9980"
#define DWARF_BRASS "d3b19f"
#define DWARF_FERRO "bc8d74"
#define DWARF_PHOSPHORITE "967e70"
#define DWARF_OBSIDIAN "665855"
#define DWARF_QUARTZ "70685f"
#define DWARF_GRENZDWARF "ffe0d1"

/datum/species/dwarf/mountain/get_skin_list()
	return sortList(list(
		"Mercur" = DWARF_MERCUR,
		"Brass" = DWARF_BRASS,
		"Ferro" = DWARF_FERRO,
		"Phosphorite" = DWARF_PHOSPHORITE,
		"Obsidian" = DWARF_OBSIDIAN,
		"Quartz" =	DWARF_QUARTZ,
	))
/datum/species/dwarf/mountain/get_accent_list()
	return strings("SKdwarf_replacement.json", "dwarf")

/datum/species/dwarf/mountain/get_possible_names(gender = MALE)
	var/static/list/male_names = world.file2list('strings/names/roguetown/SKdwarmm.txt')
	var/static/list/female_names = world.file2list('strings/names/roguetown/SKdwarmf.txt')
	return (gender == FEMALE) ? female_names : male_names

/datum/species/dwarf/mountain/get_possible_surnames(gender = MALE)
	var/static/list/last_names = world.file2list('strings/rt/names/human/humnorlast.txt')
	return last_names




// =================================================================================
/datum/species/elf/snow
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)

	desc = "<b>Elf</b><br>\
	Elves, the first race of Grimoria is characterized by lengthened age, \
	low fertility, and magical aptitude originating from a vast array of tribal cultures and sub-races. \
	Previously immortal, now mortal as punishment by the Forgotten God for their crimes \
	against the other races in their pre-historic days: enslavement, \
	hunting as a game, and other horrendous acts. \
	Elves have since been in rapid decline due to their divine judgment, \
	enclaves are few and scattered around the various realms of their ancestral homeland of Grimoria. \
	Now, the Elves have integrated into the multiple races realms in the known world, \
	some forming relationships and strong bonds."

	specstats_m = list("strength" = -1, "perception" = 1, "intelligence" = 1, "constitution" = -1, "endurance" = 0, "speed" = 2, "fortune" = 0)
	specstats_f = list("strength" = -2, "perception" = 2, "intelligence" = 2, "constitution" = -1, "endurance" = -1, "speed" = 2, "fortune" = 0)

/datum/species/elf/snow/get_skin_list()
	return sortList(list(
	"Snow Elf" = SKIN_COLOR_SNOW_ELF, // - (Pale)
	"Plain Elf" = SKIN_COLOR_PLAIN_ELF, // - (White 2)
	"Mountain Elf" = SKIN_COLOR_MOUNTAIN_ELF, // - (White 3)
	"Coastal Elf" = SKIN_COLOR_COASTAL_ELF, // - (White 4)
	"Wood Elf" = SKIN_COLOR_WOOD_ELF, // - (Mediterranean 1)
	"Sea Elf" = SKIN_COLOR_SEA_ELF, // - (Mediterranean 2)
	"Jungle Elf" = SKIN_COLOR_JUNGLE_ELF, // - (Latin)
	"Savannah Elf" = SKIN_COLOR_SAVANNAH_ELF, // - (Middle-Eastern)
	"Sand Elf" = SKIN_COLOR_SAND_ELF, // - (Black 1)
	"Crimson Elf" = SKIN_COLOR_CRIMSON_ELF, // - (Black2)
	))

// =================================================================================
/datum/species/human/northern
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)

	desc = "<b>Humen</b><br>\
	Humenity is the 'perfected race' of the weeping god. Noted for their \
	tenacity and overwhelming population, humens tend to outnumber the other races drastically. \
	Humens come from a vast swathe of cultures and ethnicities all around Grimoria, most of which \
	have historically been at odds with one another and other races. \
	Humens tend to find fortune easier than the other races, and are so diverse that no other racial trait \
	are dominant in their species..."

	specstats_m = list("strength" = 0, "perception" = 0, "intelligence" = 0, "constitution" = 1, "endurance" = 2, "speed" = 0, "fortune" = 1)
	specstats_f = list("strength" = -1, "perception" = 1, "intelligence" = 0, "constitution" = 0, "endurance" = 0, "speed" = 1, "fortune" = 1)

	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mt.dmi'
	offset_features_m = list(
		OFFSET_ID = list(0,1),\
		OFFSET_GLOVES = list(0,1),\
		OFFSET_WRISTS = list(0,1),\
		OFFSET_CLOAK = list(0,1),\
		OFFSET_FACEMASK = list(0,1),\
		OFFSET_HEAD = list(0,1),\
		OFFSET_FACE = list(0,1),\
		OFFSET_BELT = list(0,1),\
		OFFSET_BACK = list(0,1),\
		OFFSET_NECK = list(0,1),\
		OFFSET_MOUTH = list(0,1),\
		OFFSET_PANTS = list(0,1),\
		OFFSET_SHIRT = list(0,1),\
		OFFSET_ARMOR = list(0,1),\
		OFFSET_HANDS = list(0,1),\
		OFFSET_UNDIES = list(0,1),\
		)
	offset_features_f = list(
		OFFSET_ID = list(0,-1),\
		OFFSET_GLOVES = list(0,0),\
		OFFSET_WRISTS = list(0,0),\
		OFFSET_HANDS = list(0,0),\
		OFFSET_CLOAK = list(0,0),\
		OFFSET_FACEMASK = list(0,-1),\
		OFFSET_HEAD = list(0,-1),\
		OFFSET_FACE = list(0,-1),\
		OFFSET_BELT = list(0,0),\
		OFFSET_BACK = list(0,-1),\
		OFFSET_NECK = list(0,-1),\
		OFFSET_MOUTH = list(0,-1),\
		OFFSET_PANTS = list(0,0),\
		OFFSET_SHIRT = list(0,0),\
		OFFSET_ARMOR = list(0,0),\
		OFFSET_UNDIES = list(0,0),\
		)


/datum/species/human/northern/get_possible_names(gender = MALE)
	var/static/list/male_names = world.file2list('strings/names/roguetown/SKhumnorm.txt')
	var/static/list/female_names = world.file2list('strings/names/roguetown/SKhumnorf.txt')
	return (gender == FEMALE) ? female_names : male_names

/datum/species/human/northern/get_possible_surnames(gender = MALE)
	var/static/list/last_names = world.file2list('strings/rt/names/human/humnorlast.txt')
	return last_names

/datum/species/human/northern/get_skin_list()
	return sortList(list(
		"Grenzelhoft" = SKIN_COLOR_ICECAP, // - (Pale)
		"Lowlander" = SKIN_COLOR_ARCTIC, // - (White 1)
		"Mainlander" = SKIN_COLOR_TUNDRA, // - (White 2)
		"Highlander" = SKIN_COLOR_CONTINENTAL, // - (White 3)
		"Valorian" = SKIN_COLOR_TEMPERATE, // - (White 4)
		"Heartfelt" = SKIN_COLOR_COASTAL, // - (Latin)
		"Steppe" = SKIN_COLOR_SUBTROPICAL, // - (Mediterranean)
		"Islander" = SKIN_COLOR_TROPICALDRY, // - (Mediterranean 2)
		"Southlander" = SKIN_COLOR_TROPICALWET, // - (Latin 2)
		"Zybantu" = SKIN_COLOR_DESERT, //  - (Middle-east)
		"Crimson Lands" = SKIN_COLOR_CRIMSONLANDS, // - (Black)
	))



// =================================================================================
/datum/species/aasimar
	possible_ages = list(AGE_IMMORTAL)

	desc = "<b>Aasimar</b><br>\
	Immortal offspring created through unknown means by command of the goddess Astrata, \
	used as soldiers to fight in the Apotheosis God-War. \
	They quickly earned scorn and fear from the mortal races they fought alongside \
	for their indifference to the suffering of their allies and unquestioning brutality. \
	The aasimar who survived the war have been abandoned by Astrata, \
	left to face an uncertain fate alongside the other races of Grimoria. \
	\n\n\
	It has been long since the Apotheosis and memories of their violent legacy have faded, \
	but many still view these aasimar survivors as emotionally dull, stubborn, and simple-minded brutes... \
	though this is not always the case. \
	Aasimar are known for their incredible strength and resilience, and are a prized addition to any shield wall. \
	However, they possess less capacity for independent thought due to their wartime construction."

	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mt_aasimar.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/ft_aasimar.dmi'
	hairyness = ""
	swap_female_clothes = TRUE
	specstats_m = list("strength" = 1, "perception" = 0, "intelligence" = -2, "constitution" = 3, "endurance" = 1, "speed" = 0, "fortune" = -1)
	specstats_f = list("strength" = 1, "perception" = 0, "intelligence" = -2, "constitution" = 3, "endurance" = 1, "speed" = 0, "fortune" = -1)
	species_traits = list(EYECOLOR,HAIR,LIPS,OLDGREY)
	offset_features_m = list(
		OFFSET_ID = list(0,1),\
		OFFSET_GLOVES = list(0,1),\
		OFFSET_WRISTS = list(0,1),\
		OFFSET_CLOAK = list(0,1),\
		OFFSET_FACEMASK = list(0,1),\
		OFFSET_HEAD = list(0,1),\
		OFFSET_FACE = list(0,1),\
		OFFSET_BELT = list(0,1),\
		OFFSET_BACK = list(0,1),\
		OFFSET_NECK = list(0,1),\
		OFFSET_MOUTH = list(0,1),\
		OFFSET_PANTS = list(0,1),\
		OFFSET_SHIRT = list(0,1),\
		OFFSET_ARMOR = list(0,1),\
		OFFSET_HANDS = list(0,1),\
		OFFSET_UNDIES = list(0,1),\
		)
	offset_features_f = list(
		OFFSET_ID_F = list(0,1),\
		OFFSET_GLOVES = list(0,1),\
		OFFSET_WRISTS = list(0,1),\
		OFFSET_HANDS = list(0,1),\
		OFFSET_CLOAK = list(0,1),\
		OFFSET_FACEMASK = list(0,1),\
		OFFSET_HEAD = list(0,1),\
		OFFSET_FACE = list(0,0),\
		OFFSET_BELT = list(0,1),\
		OFFSET_BACK = list(0,1),\
		OFFSET_NECK = list(0,1),\
		OFFSET_MOUTH = list(0,1),\
		OFFSET_PANTS = list(0,0),\
		OFFSET_SHIRT = list(0,1),\
		OFFSET_ARMOR = list(0,1),\
		OFFSET_UNDIES = list(0,1),\
	)


/datum/species/aasimar/get_skin_list()
	return sortList(list(
		"Planetar" = "b27c1f" ,
		"Solar" = "ded4a6",
		"Empyrea" = "b7ad72",
		"Gaeia" = "db904f",
		"Celestial" = "e1c565",
		"Olympia" = "b0b966",
	))


/datum/species/aasimar/get_hairc_list()
	return sortList(list(
	"white - silver" = "d3d9e3",
	"white - alabaster" = "fffffc",
	"white - skies" = "a1b4d4",

	"blond - sunlight" = "f3f797",
	"blond - strawberry" = "c69b71",
	"blond - pale" = "9d8d6e",

	"red - flame" = "ab4637",
	"red - sunset" = "bf6821",
	"red - blood" = "822b2b",
	"red - maroon" = "612929"
	))

// =================================================================================
/datum/species/human/halfelf
	name = "Half-Elf"
	id = "human"
	desc = "<b>Half Elf</b><br>\
	The child of an Elf and Humen, Half-Elves are generally frowned \
	upon by more conservative peoples, although as racial tensions lower, \
	more and more half-elves are being born. To the point that some scholars \
	worry that someday, it may be impossible to distinguish the two species. \
	Half-Elves are extremely diverse, as they bring in humen and elvish culture\
	and it is widely considered that Half-Elf culture is simply a melting pot of \
	various others condensing into one vibrant entity. \
	Due to their heritage, Half-Elves tend to gain racial traits depending on how strong their fathers, or mothers, genes were. \
	Half-Elves also typically try to find identity, in a world that sees them primarly as perversions."

	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	skin_tone_wording = "Half-Elven Identity"
	disliked_food = NONE
	liked_food = NONE
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,STUBBLE,OLDGREY)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	changesource_flags = WABBAJACK
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mm.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fm.dmi'
	dam_icon_m = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	hairyness = "t2"
	soundpack_m = /datum/voicepack/male
	soundpack_f = /datum/voicepack/female
	offset_features_m = list(
		OFFSET_ID = list(0,1),\
		OFFSET_GLOVES = list(0,1),\
		OFFSET_WRISTS = list(0,1),\
		OFFSET_CLOAK = list(0,1),\
		OFFSET_FACEMASK = list(0,1),\
		OFFSET_HEAD = list(0,1),\
		OFFSET_FACE = list(0,1),\
		OFFSET_BELT = list(0,1),\
		OFFSET_BACK = list(0,1),\
		OFFSET_NECK = list(0,1),\
		OFFSET_MOUTH = list(0,1),\
		OFFSET_PANTS = list(0,1),\
		OFFSET_SHIRT = list(0,1),\
		OFFSET_ARMOR = list(0,1),\
		OFFSET_HANDS = list(0,1),\
		OFFSET_UNDIES = list(0,1),\
	)
	offset_features_f = list(
		OFFSET_ID = list(0,-1),\
		OFFSET_GLOVES = list(0,0),\
		OFFSET_WRISTS = list(0,0),\
		OFFSET_HANDS = list(0,0),\
		OFFSET_CLOAK = list(0,0),\
		OFFSET_FACEMASK = list(0,-1),\
		OFFSET_HEAD = list(0,-1),\
		OFFSET_FACE = list(0,-1),\
		OFFSET_BELT = list(0,0),\
		OFFSET_BACK = list(0,-1),\
		OFFSET_NECK = list(0,-1),\
		OFFSET_MOUTH = list(0,-1),\
		OFFSET_PANTS = list(0,0),\
		OFFSET_SHIRT = list(0,0),\
		OFFSET_ARMOR = list(0,0),\
		OFFSET_UNDIES = list(0,0),\
		)
	specstats_m = list("strength" = 0, "perception" = 1, "intelligence" = 0, "constitution" = 0, "endurance" = 0, "speed" = 1, "fortune" = 0)
	specstats_f = list("strength" = -1, "perception" = 2, "intelligence" = 0, "constitution" = -1, "endurance" = 0, "speed" = 1, "fortune" = 0)
	enflamed_icon = "widefire"
	use_skintones = 1
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes/elf/less,
		ORGAN_SLOT_EARS = /obj/item/organ/ears/elf,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		ORGAN_SLOT_GUTS = /obj/item/organ/guts,
	)

/datum/species/human/halfelf/get_skin_list()
	return sortList(list(
		"Timber-Gronn" = SKIN_COLOR_TIMBER_GRONN, // - (White 1)
		"Solar-Hue" = SKIN_COLOR_SOLAR_HUE, // - (White 2)
		"Walnut-Stine" = SKIN_COLOR_WALNUT_STINE, // - (White 3)
		"Amber-Stained" = SKIN_COLOR_AMBER_STAINED, // - (White 4)
		"Joshua-Aligned" = SKIN_COLOR_JOSHUA_ALIGNED, // - (Middle-Eastern)
		"Arid-Birthed" = SKIN_COLOR_ARID_BIRTHED, // - (Black)
	))

// =================================================================================
/datum/species/halforc
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)

// =================================================================================
/datum/species/tieberian
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)

	desc = "<b>Tiefling</b><br>\
	Tieflings, also known as Infernal-Spawn, are one of the younger peoples of Grimoria, \
	appearing during the time of the Apotheosis War. \
	Said to be the offspring of of mortals who served Zizo and mated with their Spawn in unholy union, \
	legions of them served as the chattel army under the banners of Zizo and Graggar. \
	\n\n\
	After their crushing defeat, Tieflings are said to have begged for mercy and were begrudgingly accepted, after abandoning their Lord. \
	Facing much persecution and prejudice, these people have survived pogroms with remarkable resilience , \
	many seeking a solitary and nomadic life without relying on the wider society to survive. \
	Tieflings are less capable of creating offspring than most peoples, and only produce more tieflings due to their strong Zizo taint, so no half-breeds exist. \
	Most of them tend to be extremely perceptive and paranoid, as luck is rarely on their side \
	and their peculiar anatomy with somewhat fragile, crystalline bones makes them susceptible to injury."

	specstats_m = list("strength" = 0, "perception" = 2, "intelligence" = 1, "constitution" = -1, "endurance" = 0, "speed" = 1, "fortune" = -1)
	specstats_f = list("strength" = 0, "perception" = 3, "intelligence" = 1, "constitution" = -2, "endurance" = -1, "speed" = 1, "fortune" = -1)

/datum/species/tieberian/get_accent_list()
	return strings("SKtiefling_replacement.json", "tiefling")

/datum/species/tieberian/get_hairc_list()
	var/static/list/hair_colors = sortList(list(
		"black - oil" = "181a1d",
		"black - cave" = "201616",
		"black - rogue" = "2b201b",
		"black - midnight" = "1d1b2b",
		"black - hellbound" = "1e0909",

		"purple - arcane" = "3f2f42",
		"purple - etheral" = "5a3758",

		"blue - abyss" = "09282d",
		"blue - nightshade" = "0b1330",

		"red - demonic" = "480808",
		"red - impish" = "641010",
		"red - rubescent" = "8d4949"
	))

	return hair_colors

// =================================================================================
/datum/species/rakshari
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
