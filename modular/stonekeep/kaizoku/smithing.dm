// =================================================================
// ========================		CRAFTING	========================

//'armor'
/datum/anvil_recipe/armor/nanbando
	name = "Abyssal half-plate (+Bar x2) {Nanbando-sode}"
	recipe_name = "a Nanban-Dou-Sode"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/ingot/steel)
	created_item = /obj/item/clothing/armor/plate/nanbando
	craftdiff = 3

/datum/anvil_recipe/armor/nanbandocuirass
	name = "Abyssal cuirass {Nanbando-u}"
	recipe_name = "a Nanban-Dou"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/armor/cuirass/nanbando
	craftdiff = 2

/datum/anvil_recipe/armor/nanbandofull
	name = "Abyssal fullplate (+Bar x3) {Nanban-Do-Gusoku}"
	recipe_name = "a Nanban-Do-Gusoku"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/ingot/steel,/obj/item/ingot/steel)
	created_item = /obj/item/clothing/armor/plate/full/nanbando
	craftdiff = 4

/datum/anvil_recipe/armor/steeltatami
	name = "Steel foldeable armor {Tatami-do}"
	recipe_name = "a Lamellae Tatami-Do"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/armor/chainmail/tatami
	craftdiff = 2

/datum/anvil_recipe/armor/irontatami
	name = "Iron foldeable armor {Karuta-gane}"
	recipe_name = "a Tatami Karuta-Gane"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/armor/chainmail/iron/tatami
	craftdiff = 2
	createmultiple = TRUE
	createditem_num = 1

/datum/anvil_recipe/armor/kusari
	name = "Chainmail Robe (+Bar){Kusari-Katabira}"
	recipe_name = "a Kusari-Katabira"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/armor/chainmail/hauberk/kusari
	craftdiff = 3

/datum/anvil_recipe/armor/imirror
	name = "Iron disk chestplate (+Bar x2){Melong bzhi}"
	recipe_name = "a Iron Mirror Armor"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron)
	created_item = /obj/item/clothing/armor/plate/mirror/iron
	craftdiff = 1

/datum/anvil_recipe/armor/mirror
	name = "Steel disk chestplate (+Bar x3){Melong bzhi}"
	recipe_name = "a Steel Mirror Armor"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/ingot/steel)
	created_item = /obj/item/clothing/armor/plate/mirror
	craftdiff = 3

/datum/anvil_recipe/armor/oyoroi
	name = "Compact great armor (+Bar x3, +Cloth){O-yoroi}"
	recipe_name = "a Incomplete O-Yoroi"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/natural/cloth)
	created_item = /obj/item/clothing/armor/brigandine/oyoroi
	craftdiff = 3

/datum/anvil_recipe/armor/oyoroigusoku //costier version. Only really viable if you got what to waste.
	name = "Full great armor (+Bar x4, +Cloth x2){O-yoroi gusoku}"
	recipe_name = "a O-Yoroi Gusoku"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/natural/cloth, /obj/item/natural/cloth)
	created_item = /obj/item/clothing/armor/brigandine/oyoroi/oyoroigusoku
	craftdiff = 3

/datum/anvil_recipe/armor/sanmaido
	name = "Three-plate cuirass {Sanmai-Do}"
	recipe_name = "a Sanmai-Do"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/armor/cuirass/iron/sanmaido
	craftdiff = 2

/datum/anvil_recipe/armor/kikko
	name = "Turtleshell jacket (+2 cured leather){Kikko-Gane}"
	recipe_name = "a Kikko Leather Do"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/natural/hide/cured, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/armor/leather/splint/kikko

	craftdiff = 1
//cheaper on iron, but has many sticks. Proper for this armor's context.
/datum/anvil_recipe/armor/rattanarmor
	name = "Rattan armor (+Bar x2, +Stick x4){Teng jia}" //Téng jiǎ
	recipe_name = "a Rattan Armor"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron,/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick)
	created_item = /obj/item/clothing/armor/chainmail/rattan
	craftdiff = 1

/datum/anvil_recipe/armor/kikkoarmor //cheaper brigadine with hide.
	name = "Turtleshell Full Armor (+Bar x2,+ 2 cured leather){Kikko gusoku}"
	recipe_name = "a Kikko Gusoku"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/natural/hide/cured, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/armor/medium/surcoat/heartfelt/abyssariad
	craftdiff = 3

//'feet'
/datum/anvil_recipe/armor/kusaritabi
	name = "Chainmail footwear {Kusari-Tabi}"
	recipe_name = "a pair of Kusari-Tabi"//the boots aren't supposed to be made in duos
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/shoes/boots/armor/light/kusaritabi

/datum/anvil_recipe/armor/suneate
	name = "Plated shin-guards {Suneate}"
	recipe_name = "some Suneate Footwear"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/shoes/boots/armor/suneate
	craftdiff = 3

//'gloves'
/datum/anvil_recipe/armor/kikkotekko
	name = "Turtleshell gauntlets x2 {Kikko-Tekko}"
	recipe_name = "a pair of Steel Kikko Tekko"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/gloves/chain/kikko
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/ikikkotekko
	name = "Turtleshell gauntlets x2 {Kikko-Tekko}"
	recipe_name = "a pair of Iron Kikko Tekko"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/gloves/chain/iron/kikko
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/lamellaetekko
	name = "Lamellae gauntlets {Lamella-Tekko}"
	recipe_name = "some Lamella Tekko"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/gloves/plate/lamellaetekko
	craftdiff = 3

//'hats'
/datum/anvil_recipe/armor/hachigane
	name = "Forehead protector x2 {Hachigane}"
	recipe_name = "a pair of Hachinage"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/head/helmet/skullcap/hachigane
	createmultiple = TRUE
	createditem_num = 1

/datum/anvil_recipe/armor/rattanhelmet
	name = "Rattan Helmet x2 (3s) {Teng tiao}"
	recipe_name = "a pair of Rattan Helmets"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/head/helmet/ironpot/rattan
	additional_items = list(/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick)
	createmultiple = TRUE
	createditem_num = 1

/obj/item/clothing/head/helmet/visored/abyssalchampion
/datum/anvil_recipe/armor/abyssalchampion
	name = "Newfangled Myrmidon Helmet (3)"
	recipe_name = "a Abyssal Champion Helmet"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel)
	created_item = (/obj/item/clothing/head/helmet/visored/abyssalchampion)
	craftdiff = 4

/datum/anvil_recipe/armor/helmetbuc
	name = "Sohei Heavy Headwear"
	recipe_name = "a Armored sohei cowl"
	req_bar = /obj/item/ingot/steel
	created_item = (/obj/item/clothing/head/helmet/heavy/bucket/soheidemon)
	craftdiff = 2

/datum/anvil_recipe/armor/zunari
	name = "Zamurai's helmet (2) {Zunari kabuto}"
	recipe_name = "a Zunari's Helmet"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = (/obj/item/clothing/head/helmet/visored/zunari)
	craftdiff = 3

/datum/anvil_recipe/armor/zijinguan
	name = "Plumed Footsoldier helmet x2 {Zijinguan}"
	recipe_name = "a pair of Zijinguan helmet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/helmet/zijinguan
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/jingasa
	name = "Conical helmet x2 {Jingasa}"
	recipe_name = "a pair of Jingasas"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/helmet/kettle/jingasa
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/toseikabuto
	name = "Riveted helmet {Tosei-kabuto}"
	recipe_name = "a Tosei Kabuto"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/helmet/sallet/tosei_kabuto
	craftdiff = 2

/datum/anvil_recipe/armor/toseikabutov
	name = "Visored riveted helmet {Tosei-kabuto} (2)"
	recipe_name = "a Visored Tosei Kabuto"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = (/obj/item/clothing/head/helmet/visored/sallet/tosei_kabuto)
	craftdiff = 3

//'mask'
/datum/anvil_recipe/armor/imenpo
	name = "Iron faceguard {Men-yoroi}"
	recipe_name = "a Iron Menpo"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/face/kaizoku/menpo
	craftdiff = 0

/datum/anvil_recipe/armor/himenpo
	name = "Iron half-faceguard x2 {Mempo}"
	recipe_name = "a pair of Compact Menpo"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/face/kaizoku/menpo/half
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/smenpo
	name = "Steel faceguard {Men-yoroi}"
	recipe_name = "a Steel Menpo"
	req_bar = /obj/item/ingot/steel
	created_item = (/obj/item/clothing/face/kaizoku/menpo/steel/half)
	craftdiff = 2

/datum/anvil_recipe/armor/hsmenpo
	name = "Steel half-faceguard x2 {Mempo}"
	recipe_name = "a Face Mask"
	req_bar = /obj/item/ingot/steel
	created_item = (/obj/item/clothing/face/kaizoku/menpo/steel)
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/itribalfish
	name = "Iron fishpeople mask x2"
	recipe_name = "a pair of iron Merkkin masks"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/face/kaizoku/menpo/facemask
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/stribalfish
	name = "Steel fishpeople mask"
	recipe_name = "a Steel Merkkin Mask"
	req_bar = /obj/item/ingot/steel
	created_item = (/obj/item/clothing/face/kaizoku/menpo/facemask/steel)
	craftdiff = 2

/datum/anvil_recipe/armor/ctengu
	name = "Birdpeople champion mask"
	recipe_name = "a Skylancer Mask"
	req_bar = /obj/item/ingot/steel
	created_item = (/obj/item/clothing/face/kaizoku/menpo/facemask/colourable/tengu)
	craftdiff = 2

/datum/anvil_recipe/armor/ckitsune
	name = "Foxpeople champion mask"
	recipe_name = "a Changeling Mask"
	req_bar = /obj/item/ingot/steel
	created_item = (/obj/item/clothing/face/kaizoku/menpo/facemask/colourable/kitsune)
	craftdiff = 2

/datum/anvil_recipe/armor/coni
	name = "Ogrepeople champion mask"
	recipe_name = "a ogrun Mask"
	req_bar = /obj/item/ingot/steel
	created_item = (/obj/item/clothing/face/facemask/steel)
	craftdiff = 2

//'neck'
/datum/anvil_recipe/armor/shood
	name = "Foldable hood {Karuta zukin}"
	recipe_name = "a Karuta Zukin"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/neck/chaincoif/karuta_zukin

/datum/anvil_recipe/armor/ihood
	name = "Chainmail hood"//coifs aren't made in duos anymore since they can be smelted for material
	recipe_name = "a Kusari Zukin"
	name = "Chainmail hood {Kuzari zukin}"
	recipe_name = "a pair of Kusari Zukin"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/neck/chaincoif/iron/kusari_zukin


//'pants'
/datum/anvil_recipe/armor/ihaidate
	name = "Foldable Thighguard {Haidate tatami}"//pants aren't made in duos anymore since they can be smelted for material
	recipe_name = "a pair of Haidate Tatami"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/pants/chainlegs/iron/haidate_tatami

/datum/anvil_recipe/armor/shaidate
	name = "Plate Thighguard {Haidate sendan}"
	recipe_name = "a pair of Haidate Sendan"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/pants/chainlegs/sendan

/datum/anvil_recipe/armor/superhaidate
	name = "Plated Trousers {Yoroi-hakama}"
	recipe_name = "a couple of Yoroi-Hakama"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/pants/platelegs/yoroihakama

//'wrists'
/datum/anvil_recipe/armor/kote //Protects more limbs, so it is costier.
	name = "Armored Sleeve {Kote}"
	recipe_name = "a couple of Kote"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/wrists/bracers/kote
	craftdiff = 4

/datum/anvil_recipe/armor/weeper
	name = "Weeper Bracers"
	recipe_name = "a couple of Weeping Bracers"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/wrists/bracers/mountainstar



//Kaizoku Smithing content. I humbly ask for help; A way in which only people with the trait "Kaizoku", being the ones able to make Kaizoku weapons and armor. In another hand,
//they cannot make most (exceptions; the objects that have no abyssariad alternative) armors and weapons.

/datum/anvil_recipe/weapons/sword_steel
	name = "Uchigatana zatana"
	recipe_name = "a Uchigatana"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/sword/uchigatana
	craftdiff = 2

/datum/anvil_recipe/weapons/odachi
	name = "Odachi zatana (3)"
	recipe_name = "a Odachi"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel)
	created_item = /obj/item/weapon/sword/long/greatsword/odachi
	craftdiff = 4

/datum/anvil_recipe/weapons/tachi
	name = "Tachi zatana (2)"
	recipe_name = "a Tachi"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/weapon/sword/long/tachi
	craftdiff = 3

/datum/anvil_recipe/weapons/jiansword
	name = "Jian sword"
	recipe_name = "a Jian sword"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/weapon/sword/iron/jian

/datum/anvil_recipe/weapons/daosword
	name = "Dao sword"
	recipe_name = "a Dao Sword"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/weapon/sword/scimitar/messer/dao

/datum/anvil_recipe/weapons/yuntoudao
	name = "Yuntoudao"
	recipe_name = "a willow-shaped sword"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/sword/scimitar/falchion/yuntoudao
	craftdiff = 2

/datum/anvil_recipe/weapons/shortjian
	name = "Short Jian"
	recipe_name = "a Short Jian"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/sword/short/jian
	craftdiff = 1

/datum/anvil_recipe/weapons/wakizashi
	name = "Wakisashi Zatana"
	recipe_name = "a Wakizashi"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/sword/short/wakizashi
	craftdiff = 1

/datum/anvil_recipe/weapons/piandao
	name = "Piandao"
	recipe_name = "a Piandao"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/sword/sabre/piandao
	craftdiff = 2

/datum/anvil_recipe/weapons/decpiandao
	name = "Decorated piandao (+g)"
	recipe_name = "a Decorated Piandao"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/gold)
	created_item = /obj/item/weapon/sword/sabre/piandao/dec
	craftdiff = 3

/datum/anvil_recipe/weapons/kanabo
	name = "Iron Kanabo Warclub (+w)"
	recipe_name = "a Iron kanabo"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/mace/goden/kanabo
	craftdiff = 2

/datum/anvil_recipe/weapons/tetsubo
	name = "Steel Tetsubo Warclub (+w)"
	recipe_name = "a Steel Tetsubo"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/mace/goden/steel/tetsubo
	craftdiff = 3

/datum/anvil_recipe/weapons/iararebo
	name = "Iron ararebo club (+s)"
	recipe_name = "a Iron Ararebo Club"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/weapon/mace/ararebo

/datum/anvil_recipe/weapons/sararebo
	name = "Steel Ararebo club (2)"
	recipe_name = "a Steel Ararebo "
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/weapon/mace/steel/ararebo
	craftdiff = 2

/datum/anvil_recipe/weapons/kusarifundo
	name = "Kusarifundo (+c) (+s)"
	recipe_name = "a Kusarifundo"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/rope/chain, /obj/item/grown/log/tree/stick)
	created_item = /obj/item/weapon/flail/sflail/kusarifundo
	craftdiff = 2

/datum/anvil_recipe/weapons/kunai
	name = "Kunai"
	recipe_name = "a Kunai"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/weapon/knife/dagger/kunai
	craftdiff = 1

/datum/anvil_recipe/weapons/tanto
	name = "Tanto smallsword x2"
	recipe_name = "a couple Tantos"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/knife/steel/tanto
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/weapons/kaiken
	name = "Kaiken knife x2"
	recipe_name = "a couple Daggers"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/weapon/knife/kaiken
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 3

/datum/anvil_recipe/weapons/sai //not made of iron. Still Less damage tho.
	name = "Sai x2"
	recipe_name = "a couple of Sai"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/knife/hunting/sai
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 3

/datum/anvil_recipe/weapons/yari
	name = "yari x2 (+w)"
	recipe_name = "a couple Spears"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/polearm/spear/yari
	createmultiple = TRUE
	createditem_num = 1

/datum/anvil_recipe/weapons/katakama
	name = "Katakama Yari x2 (+w) (+i)"
	recipe_name = "a couple Spears"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/small, /obj/item/ingot/iron)
	created_item = /obj/item/weapon/polearm/spear/yari/katakama

/datum/anvil_recipe/weapons/jumonji
	name = "Jumonji Yari (+w)"
	recipe_name = "a Jumonji Yari"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/polearm/spear/billhook/jumonji
	craftdiff = 3

/datum/anvil_recipe/weapons/naginata
	name = "Traditional Naginata (2) (+w)"
	recipe_name = "a Naginata"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron,/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/polearm/halberd/bardiche/naginata
	craftdiff = 2

/datum/anvil_recipe/weapons/tsukushi
	name = "Tsukushi Naginata x2 (2) (+w)"
	recipe_name = "a couple of Massproduced Naginata"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron,/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/polearm/halberd/bardiche/naginata/tsukushi
	craftdiff = 1
	createmultiple = TRUE
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/weapons/bisento
	name = "Bisento (3) (+w)"
	recipe_name = "a Bisento"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/grown/log/tree/small,/obj/item/ingot/steel)
	created_item = /obj/item/weapon/polearm/halberd/bisento
	craftdiff = 5

/datum/anvil_recipe/weapons/onobattle
	name = "Ono Battle Axe (2)"
	recipe_name = "a Ono Battle Axe"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/weapon/axe/battle/ono
	craftdiff = 3

/datum/anvil_recipe/weapons/changfu
	name = "changfu woodcutter (+s)"
	recipe_name = "an Chang-fu"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/weapon/axe/iron/changfu

//Unique few
/datum/anvil_recipe/weapons/jitte
	name = "Jitte Cudgel"
	recipe_name = "an Jitte"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/weapon/mace/cudgel/jitte

/datum/anvil_recipe/weapons/otsuchi
	name = "Otsuchi warhammer (+l)"
	recipe_name = "a Otsuchi Warhammer"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/mace/goden/otsuchi

/datum/anvil_recipe/weapons/kusarigama
	name = "Kusarigama (+c) (+s)"
	recipe_name = "a Kusarigama"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/rope/chain, /obj/item/grown/log/tree/stick)
	created_item = /obj/item/weapon/flail/kusarigama

/datum/anvil_recipe/weapons/mancatcher
	name = "Mancatchers x2 (+w)"
	recipe_name = "a couple Mancatchers"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = /obj/item/weapon/polearm/mancatcher
	createmultiple = TRUE
	createditem_num = 1

/datum/anvil_recipe/weapons/onothrow
	name = "Ono throwing axe (2)"
	recipe_name = "a Ono Throwing Axe"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/weapon/thrown/ono
	craftdiff = 3

/datum/anvil_recipe/weapons/tetsubishi
	name = "tetsubishi caltrop (2)"
	recipe_name = "a Tetsubishi"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/weapon/tetsubishi
	craftdiff = 2

/datum/anvil_recipe/weapons/kama
	name = "Kama sickle (2)"
	recipe_name = "a Warsickle"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/weapon/sickle/kama
	craftdiff = 2
