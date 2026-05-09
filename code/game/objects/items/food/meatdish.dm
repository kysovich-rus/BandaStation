//Not only meat, actually, but also snacks that are almost meat, such as fish meat or tofu


////////////////////////////////////////////FISH////////////////////////////////////////////

/obj/item/food/cubancarp
	name = "\improper Cuban carp"
	desc = "Фантастический сэндвич, который обжигает язык до полной немоты!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "cubancarp"
	bite_consumption = 3
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/capsaicin = 1,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("fish" = 4, "batter" = 1, "hot peppers" = 1)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/fishmeat
	name = "fish fillet"
	desc = "Филейная часть какой-то рыбы."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishfillet"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	bite_consumption = 6
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	eatverbs = list("bite", "chew", "gnaw", "swallow", "chomp")
	w_class = WEIGHT_CLASS_SMALL
	starting_reagent_purity = 1.0
	var/fillet_name = "%NAME fillet"

/obj/item/food/fishmeat/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_FOOD_DONT_INHERIT_NAME_FROM_PROCESSED, INNATE_TRAIT)

/obj/item/food/fishmeat/OnCreatedFromProcessing(mob/living/user, obj/item/work_tool, list/chosen_option, atom/original_atom)
	. = ..()
	name = replacetext(fillet_name, "%NAME", original_atom.name)
	material_flags &= ~MATERIAL_ADD_PREFIX //don't double down on material prefixes

/obj/item/food/fishmeat/quality
	name = "quality fish fillet"
	desc = "Филейная часть какой-то очень дорогой рыбы."
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	bite_consumption = 7
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/fishmeat/quality/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/quality_food_ingredient, FOOD_COMPLEXITY_1)

/obj/item/food/fishmeat/salmon
	name = "salmon fillet"
	desc = "Крупное, жирное филе лосося."
	icon_state = "salmon"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/nutriment/fat = 2,
	)
	bite_consumption = 4.5
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/fishmeat/salmon/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/quality_food_ingredient, FOOD_COMPLEXITY_1)

/obj/item/food/fishmeat/carp
	name = "carp fillet"
	desc = "Мясо филе космического карпа."
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/toxin/carpotoxin = 2,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	/// Cytology category you can swab the meat for.
	var/cell_line = CELL_LINE_TABLE_CARP

/obj/item/food/fishmeat/carp/Initialize(mapload)
	. = ..()
	if(cell_line)
		AddElement(/datum/element/swabable, cell_line, CELL_VIRUS_TABLE_GENERIC_MOB)

/obj/item/food/fishmeat/carp/imitation
	name = "imitation carp fillet"
	desc = "Почти как настоящее мясо. Почти."
	cell_line = null
	starting_reagent_purity = 0.3

///carp fillet, but without the toxin. Used by baby carps (fish item), which have a trait that handles the toxin already.
/obj/item/food/fishmeat/carp/no_tox

/obj/item/food/fishmeat/carp/no_tox/Initialize(mapload)
	food_reagents -= /datum/reagent/toxin/carpotoxin
	return ..()

/obj/item/food/fishmeat/moonfish
	name = "moonfish fillet"
	desc = "Филейная часть лунной рыбы."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_fillet"

/obj/item/food/fishmeat/moonfish/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/grilled_moonfish, rand(40 SECONDS, 50 SECONDS), TRUE, TRUE)

/obj/item/food/fishmeat/gunner_jellyfish
	name = "gunner jellyfish fillet"
	desc = "Пороховая медуза без жала. В сыром виде обладает слабым галлюциногенным действием."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "jellyfish_fillet"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4, //The halluginogen comes from the fish trait.
	)

///Premade gunner jellyfish fillets from supply orders. Contains the halluginogen that'd be normally from the fish trait.
/obj/item/food/fishmeat/gunner_jellyfish/supply
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/toxin/mindbreaker/fish = 2)

/obj/item/food/fishmeat/armorfish
	name = "cleaned armorfish"
	desc = "Выпотрошенная бронерыба без панциря, готовая к использованию на кухне."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "armorfish_fillet"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)
	fillet_name = "cleaned %NAME"

///donkfish fillets. The yuck reagent is now added by the fish trait of the same name.
/obj/item/food/fishmeat/donkfish
	name = "donkfillet"
	desc = "Ужасное филе донк-рыбы. Ни один здравомыслящий космонавт не станет его есть, ведь после приготовления оно становится ещё хуже."
	icon_state = "donkfillet"
	starting_reagent_purity = 0.3

/obj/item/food/fishmeat/octopus
	name = "octopus tentacle"
	desc = "Крупное щупальце осьминога."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "octopus_fillet"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)
	fillet_name = "%NAME tentacle"

/obj/item/food/fishmeat/octopus/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/grilled_octopus, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/fishmeat/fish_tail
	name = "fish tail fillet"
	desc = "Ценное жирное филе, вырезанное прямо из хвоста очень крупной... рыбы? Из-за своей редкости оно считается деликатесом в определенных кругах."
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/nutriment/fat = 2,
	)
	bite_consumption = 5
	tastes = list("fatty fish" = 1)
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/fishmeat/fish_tail/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/quality_food_ingredient, FOOD_COMPLEXITY_1)

/obj/item/food/fishfingers
	name = "fish fingers"
	desc = "Палочки из рыбного фарша."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishfingers"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	bite_consumption = 1
	tastes = list("fish" = 1, "breadcrumbs" = 1)
	foodtypes = GRAIN|SEAFOOD|FRIED
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/fishandchips
	name = "fish and chips"
	desc = "Британская классика. Со слов самих британцев."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishandchips"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("fish" = 1, "chips" = 1)
	foodtypes = SEAFOOD | VEGETABLES | FRIED
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/fishfry
	name = "fish fry"
	desc = "Рыба, овощи... И никакой картошки."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishfry"
	food_reagents = list (
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("fish" = 1, "pan-seared vegetables" = 1)
	foodtypes = SEAFOOD | VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/vegetariansushiroll
	name = "vegetarian sushi roll"
	desc = "Простой вегетарианский суши-ролл с рисом, морковью и картофелем. Можно нарезать на части!"
	icon_state = "vegetariansushiroll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 12,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("boiled rice" = 4, "carrots" = 2, "potato" = 2)
	foodtypes = VEGETABLES|GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/vegetariansushiroll/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/vegetariansushislice, 4, screentip_verb = "Chop")

/obj/item/food/vegetariansushislice
	name = "vegetarian sushi slice"
	desc = "Кусочек простого вегетарианского суши-ролла с рисом, морковью и картофелем"
	icon_state = "vegetariansushislice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("boiled rice" = 4, "carrots" = 2, "potato" = 2)
	foodtypes = VEGETABLES|GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/spicyfiletsushiroll
	name = "spicy filet sushi roll"
	desc = "Острый и вкусный суши-ролл из рыбы и овощей. Можно нарезать на части!"
	icon_state = "spicyfiletroll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 12,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/capsaicin = 4,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("boiled rice" = 4, "fish" = 2, "spicyness" = 2)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/spicyfiletsushiroll/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/spicyfiletsushislice, 4, screentip_verb = "Chop")

/obj/item/food/spicyfiletsushislice
	name = "spicy filet sushi slice"
	desc = "Кусочек острого и вкусного суши-ролла из рыбы и овощей. Ешьте осторожно!"
	icon_state = "spicyfiletslice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 1,
		/datum/reagent/consumable/capsaicin = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("boiled rice" = 4, "fish" = 2, "spicyness" = 2)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

// empty sushi for custom sushi
/obj/item/food/sushi/empty
	name = "sushi"
	foodtypes = VEGETABLES
	tastes = list()
	icon_state = "vegetariansushiroll"
	desc = "Суши-ролл по собственному рецепту."
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/sushi/empty/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/sushislice/empty, 4, screentip_verb = "Chop")

/obj/item/food/sushislice/empty
	name = "sushi slice"
	foodtypes = VEGETABLES
	tastes = list()
	icon_state = "vegetariansushislice"
	desc = "Кусочек суши-ролла по собственному рецепту."
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/nigiri_sushi
	name = "nigiri sushi"
	desc = "Простые нигири из рыбы, выложенные на плотный рисовый шарик, завернутые в водоросли и подаваемые с соевым соусом."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "nigiri_sushi"
	food_reagents = list(/datum/reagent/consumable/nutriment = 10, /datum/reagent/consumable/nutriment/vitamin = 6, /datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("boiled rice" = 4, "fish filet" = 2, "soy sauce" = 2)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/meat_poke
	name = "meat poke"
	desc = "Простой поке: рис снизу, овощи и мясо сверху. Перед употреблением все перемешать."
	icon = 'icons/obj/food/soupsalad.dmi'
	icon_state = "pokemeat"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 11,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/nutriment/protein = 2,
	)
	foodtypes = MEAT|VEGETABLES|GRAIN
	tastes = list("rice and meat" = 4, "lettuce" = 2, "soy sauce" = 2)
	trash_type = /obj/item/reagent_containers/cup/bowl
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/fish_poke
	name = "fish poke"
	desc = "Простой поке: рис снизу, овощи и рыба сверху. Перед употреблением все перемешать."
	icon = 'icons/obj/food/soupsalad.dmi'
	icon_state = "pokefish"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nutriment/protein = 2,
	)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD
	tastes = list("rice and fish" = 4, "lettuce" = 2, "soy sauce" = 2)
	trash_type = /obj/item/reagent_containers/cup/bowl
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4

////////////////////////////////////////////MEATS AND ALIKE////////////////////////////////////////////

/obj/item/food/tempeh
	name = "raw tempeh block"
	desc = "Соевый жмых, ферментированный с грибами. Теплый на ощупь."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "tempeh"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 8)
	tastes = list("earthy" = 3, "nutty" = 2, "bland" = 1 )
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2

// sliceable into 4xtempehslices
/obj/item/food/tempeh/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/tempehslice, 4, 5 SECONDS, table_required = TRUE, screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)

//add an icon for slices
/obj/item/food/tempehslice
	name = "tempeh slice"
	desc = "Ломтик темпе, ломтик век-век-век."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "tempehslice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("earthy" = 3, "nutty" = 2, "bland" = 1)
	foodtypes = VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_2

//add an icon for blends
/obj/item/food/tempehstarter
	name = "tempeh starter"
	desc = "Смесь сои и забавы. Теплая... ещё и шевелится?"
	icon = 'icons/obj/food/food.dmi'
	icon_state = "tempehstarter"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("nutty" = 2, "bland" = 2)
	foodtypes = VEGETABLES | GROSS
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/tofu
	name = "tofu"
	desc = "Все мы любим тофу, тофу любят все."
	icon_state = "tofu"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("tofu" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/tofu/prison
	name = "soggy tofu"
	desc = "Вы отказываетесь есть эту странную пародию на тофу."
	tastes = list("sour, rotten water" = 1)
	foodtypes = GROSS

/obj/item/food/spiderleg
	name = "spider leg"
	desc = "Всё ещё подёргивающаяся лапка гигантского паука... вы ведь не собираетесь это есть, правда?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "spiderleg"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/toxin = 2,
	)
	tastes = list("cobwebs" = 1)
	foodtypes = MEAT | TOXIC
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/spiderleg/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/boiledspiderleg, rand(50 SECONDS, 60 SECONDS), TRUE, TRUE)

/obj/item/food/cornedbeef
	name = "corned beef and cabbage"
	desc = "Теперь вы можете почувствовать себя настоящим туристом, отдыхающим в Ирландии."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "cornedbeef"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("meat" = 1, "cabbage" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/bearsteak
	name = "filet migrawr"
	desc = "Просто съесть медвежатину было бы недостаточно по-мужицки."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "bearsteak"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 9,
		/datum/reagent/consumable/ethanol/manly_dorf = 5,
	)
	tastes = list("meat" = 1, "salmon" = 1)
	foodtypes = MEAT | ALCOHOL
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/raw_meatball
	name = "raw meatball"
	desc = "Отличная еда во всех отношениях. Кроме того, что она сырая."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "raw_meatball"
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT | RAW
	w_class = WEIGHT_CLASS_SMALL
	var/meatball_type = /obj/item/food/meatball
	var/patty_type = /obj/item/food/raw_patty

/obj/item/food/raw_meatball/make_grillable()
	AddComponent(/datum/component/grillable, meatball_type, rand(30 SECONDS, 40 SECONDS), TRUE)

/obj/item/food/raw_meatball/make_processable()
	AddElement(/datum/element/processable, TOOL_ROLLINGPIN, patty_type, 1, table_required = TRUE, screentip_verb = "Flatten", sound_to_play = SFX_ROLLING_PIN_ROLLING)

/obj/item/food/raw_meatball/human
	name = "strange raw meatball"
	meatball_type = /obj/item/food/meatball/human
	patty_type = /obj/item/food/raw_patty/human

/obj/item/food/raw_meatball/corgi
	name = "raw corgi meatball"
	meatball_type = /obj/item/food/meatball/corgi
	patty_type = /obj/item/food/raw_patty/corgi

/obj/item/food/raw_meatball/xeno
	name = "raw xeno meatball"
	meatball_type = /obj/item/food/meatball/xeno
	patty_type = /obj/item/food/raw_patty/xeno

/obj/item/food/raw_meatball/bear
	name = "raw bear meatball"
	meatball_type = /obj/item/food/meatball/bear
	patty_type = /obj/item/food/raw_patty/bear

/obj/item/food/raw_meatball/chicken
	name = "raw chicken meatball"
	meatball_type = /obj/item/food/meatball/chicken
	patty_type = /obj/item/food/raw_patty/chicken

/obj/item/food/meatball
	name = "meatball"
	desc = "Отличная еда во всех отношениях. Без опилок в фарше."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatball"
	inhand_icon_state = "meatball"
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/meatball/human
	name = "strange meatball"

/obj/item/food/meatball/corgi
	name = "corgi meatball"

/obj/item/food/meatball/bear
	name = "bear meatball"
	tastes = list("meat" = 1, "salmon" = 1)

/obj/item/food/meatball/xeno
	name = "xenomorph meatball"
	tastes = list("meat" = 1, "acid" = 1)

/obj/item/food/meatball/chicken
	name = "chicken meatball"
	tastes = list("chicken" = 1)
	icon_state = "chicken_meatball"

/obj/item/food/raw_patty
	name = "raw patty"
	desc = "Я НЕ ГОТОВА!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "raw_patty"
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT | RAW
	w_class = WEIGHT_CLASS_SMALL
	var/patty_type = /obj/item/food/patty/plain

/obj/item/food/raw_patty/make_grillable()
	AddComponent(/datum/component/grillable, patty_type, rand(30 SECONDS, 40 SECONDS), TRUE)

/obj/item/food/raw_patty/human
	name = "strange raw patty"
	patty_type = /obj/item/food/patty/human

/obj/item/food/raw_patty/corgi
	name = "raw corgi patty"
	patty_type = /obj/item/food/patty/corgi

/obj/item/food/raw_patty/bear
	name = "raw bear patty"
	tastes = list("meat" = 1, "salmon" = 1)
	patty_type = /obj/item/food/patty/bear

/obj/item/food/raw_patty/xeno
	name = "raw xenomorph patty"
	tastes = list("meat" = 1, "acid" = 1)
	patty_type = /obj/item/food/patty/xeno

/obj/item/food/raw_patty/chicken
	name = "raw chicken patty"
	tastes = list("chicken" = 1)
	patty_type = /obj/item/food/patty/chicken

/obj/item/food/patty
	name = "patty"
	desc = "Котлетка по рецептуре Nanotrasen! Для нас, для вас, и для ваших гостей."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "patty"
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

///Exists purely for the crafting recipe (because it'll take subtypes)
/obj/item/food/patty/plain

/obj/item/food/patty/human
	name = "strange patty"

/obj/item/food/patty/corgi
	name = "corgi patty"

/obj/item/food/patty/bear
	name = "bear patty"
	tastes = list("meat" = 1, "salmon" = 1)

/obj/item/food/patty/xeno
	name = "xenomorph patty"
	tastes = list("meat" = 1, "acid" = 1)

/obj/item/food/patty/chicken
	name = "chicken patty"
	tastes = list("chicken" = 1)
	icon_state = "chicken_patty"

/obj/item/food/raw_sausage
	name = "raw sausage"
	desc = "Перемешанный мясной фарш со специями, сформированный в сырую колбаску."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "raw_sausage"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("meat" = 1)
	foodtypes = MEAT | RAW
	eatverbs = list("bite", "chew", "nibble", "deep throat", "gobble", "chomp")
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/raw_sausage/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/sausage, rand(60 SECONDS, 75 SECONDS), TRUE)

/obj/item/food/sausage
	name = "sausage"
	desc = "Длинная колбаска из мясного фарша."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "sausage"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("meat" = 1)
	foodtypes = MEAT | BREAKFAST
	food_flags = FOOD_FINGER_FOOD
	eatverbs = list("bite", "chew", "nibble", "deep throat", "gobble", "chomp")
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_price = PAYCHECK_CREW * 0.6
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/sausage/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/salami, 6, 3 SECONDS, table_required = TRUE,  screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/sausage/american, 1, 3 SECONDS, table_required = TRUE,  screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)

/obj/item/food/sausage/american
	name = "american sausage"
	desc = "Есть целиком."
	icon_state = "american_sausage"

/obj/item/food/sausage/american/make_processable()
	return

/obj/item/food/salami
	name = "salami"
	desc = "Кусочек вяленого салями."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "salami"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 1)
	tastes = list("meat" = 1, "smoke" = 1)
	foodtypes = MEAT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT / 6)

/obj/item/food/rawkhinkali
	name = "raw khinkali"
	desc = "Сотня хинкалей? Я кто, по-вашему, кабан?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "khinkali"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/garlic = 1,
	)
	tastes = list("meat" = 1, "onions" = 1, "garlic" = 1)
	foodtypes = MEAT|GRAIN|VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/rawkhinkali/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/khinkali, rand(50 SECONDS, 60 SECONDS), TRUE)

/obj/item/food/khinkali
	name = "khinkali"
	desc = "Сотня хинкалей? Я кто, по-вашему, кабан?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "khinkali"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/garlic = 2,
	)
	bite_consumption = 3
	tastes = list("meat" = 1, "onions" = 1, "garlic" = 1)
	foodtypes = MEAT|GRAIN|VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/meatbun
	name = "meat bun"
	desc = "С определенной вероятностью сделана не из человечины."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatbun"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 7,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("bun" = 3, "meat" = 2)
	foodtypes = GRAIN | MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/stewedsoymeat
	name = "stewed soy meat"
	desc = "Это понравится даже не вегетарианцам!"
	icon_state = "stewedsoymeat"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("soy" = 1, "vegetables" = 1)
	eatverbs = list("slurp", "sip", "inhale", "drink")
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/boiledspiderleg
	name = "boiled spider leg"
	desc = "Всё ещё подёргивающаяся лапка гигантского паука... Даже после обжарки. Гадость!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "spiderlegcooked"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/capsaicin = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("hot peppers" = 1, "cobwebs" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/spidereggsham
	name = "green eggs and ham"
	desc = "Где бы вы это съели? В поезде? В самолете? Или может на борту ультрасовременной корпоративной смертельной ловушки, бесконечно дрейфующей в космосе?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "spidereggsham"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	bite_consumption = 4
	tastes = list("meat" = 1, "the colour green" = 1)
	foodtypes = MEAT|BUGS|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/sashimi
	name = "spider sashimi"
	desc = "Отпразднуйте выживание после нападения враждебных инопланетных существ, чтобы следом отправиться в больницу. Наверняка тот, кто это сделал, - настоящий профессионал."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "sashimi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/capsaicin = 9,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("fish" = 1, "hot peppers" = 1)
	foodtypes = MEAT|SEAFOOD|BUGS|EGG
	w_class = WEIGHT_CLASS_TINY
	//total price of this dish is 20 and a small amount more for soy sauce, all of which are available at the orders console
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/sashimi/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/swabable, CELL_LINE_TABLE_CARP, CELL_VIRUS_TABLE_GENERIC_MOB)

/obj/item/food/nugget
	name = "chicken nugget"
	desc = "Наггетс из \"курятины\", что-то отдаленно напоминающий."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	icon = 'icons/obj/food/meat.dmi'
	/// Default nugget icon for recipes that need any nugget
	icon_state = "nugget_lump"
	tastes = list("\"chicken\"" = 1)
	foodtypes = MEAT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_TINY
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_1
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)
	var/meat_source = "\"курятины\""

/obj/item/food/nugget/Initialize(mapload)
	. = ..()
	var/shape = pick("lump", "star", "lizard", "corgi")
	var/shape_str = list("lump" = "камень", "star" = "звезду", "lizard" = "ящерку", "corgi" = "корги")
	desc = "Наггетс из [meat_source], по форме отдаленно напоминающий [shape_str[shape]]."
	icon_state = "nugget_[shape]"

///subtype harvested from fish caught from, you guess it, the deepfryer
/obj/item/food/nugget/fish
	name = "fish nugget"
	tastes = list("fried fish" = 1)
	foodtypes = MEAT|SEAFOOD|FRIED
	venue_value = FOOD_PRICE_NORMAL
	meat_source = "рыбы"

/obj/item/food/pigblanket
	name = "pig in a blanket"
	desc = "Маленькая сосиска, завёрнутая в слоёную маслянистую булочку. Освободите эту свинью из плена одеяла, съев её."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "pigblanket"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("meat" = 1, "butter" = 1)
	foodtypes = MEAT | DAIRY | GRAIN
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_price = PAYCHECK_CREW
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/bbqribs
	name = "bbq ribs"
	desc = "Рёбрышки на гриле, щедро политые соусом барбекю. Самое невеганское блюдо на свете."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "ribs"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/bbqsauce = 10,
	)
	tastes = list("meat" = 3, "smokey sauce" = 1)
	foodtypes = MEAT | SUGAR
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/meatclown
	name = "meat clown"
	desc = "Вкусный круглый кусок мяса, похожий на клоуна. Как ужасно."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatclown"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/banana = 2,
	)
	tastes = list("meat" = 5, "clowns" = 3, "sixteen teslas" = 1)
	w_class = WEIGHT_CLASS_SMALL
	foodtypes = MEAT | FRUIT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/meatclown/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/slippery, 3 SECONDS)

/obj/item/food/lasagna
	name = "lasagna"
	desc = "Кусочек лазаньи. Идеально на обед в понедельник."
	icon_state = "lasagna"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/tomatojuice = 10,
	)
	tastes = list("meat" = 3, "pasta" = 3, "tomato" = 2, "cheese" = 2)
	foodtypes = MEAT|VEGETABLES|GRAIN|DAIRY
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

//////////////////////////////////////////// KEBABS AND OTHER SKEWERS ////////////////////////////////////////////

/obj/item/food/kebab
	trash_type = /obj/item/stack/rods
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "kebab"
	abstract_type = /obj/item/food/kebab
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 14)
	tastes = list("meat" = 3, "metal" = 1)
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/kebab/human
	name = "human-kebab"
	desc = "Кусочки человечины на вертеле."
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 16,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("tender meat" = 3, "metal" = 1)
	foodtypes = MEAT | GORE
	venue_value = FOOD_PRICE_CHEAP
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/kebab/monkey
	name = "meat-kebab"
	desc = "Кусочки мяса на вертеле."
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 16,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("meat" = 3, "metal" = 1)
	foodtypes = MEAT
	venue_value = FOOD_PRICE_CHEAP
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/kebab/tofu
	name = "tofu-kebab"
	desc = "Вегетерианское мясо на вертеле."
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 15)
	tastes = list("tofu" = 3, "metal" = 1)
	foodtypes = VEGETABLES
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/kebab/tail
	name = "lizard-tail kebab"
	desc = "Порезанный на кусочки хвост ящера, нанизанный на вертел."
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 30,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("meat" = 8, "metal" = 4, "scales" = 1)
	foodtypes = MEAT | GORE

/obj/item/food/kebab/rat
	name = "rat-kebab"
	desc = "Не такая вкусная крысятина на вертеле."
	icon_state = "ratkebab"
	w_class = WEIGHT_CLASS_NORMAL
	trash_type = null
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("rat meat" = 1, "metal" = 1)
	foodtypes = MEAT|RAW|GORE
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/kebab/rat/double
	name = "double rat-kebab"
	icon_state = "doubleratkebab"
	tastes = list("rat meat" = 2, "metal" = 1)
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 20,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/iron = 2,
	)

/obj/item/food/kebab/fiesta
	name = "fiesta skewer"
	desc = "Кусочки мяса и овощей на вертеле."
	icon_state = "fiestaskewer"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 12,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/capsaicin = 3,
	)
	tastes = list("tex-mex" = 3, "cumin" = 2)
	foodtypes = MEAT | VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/fried_chicken
	name = "fried chicken"
	desc = "Сочный кусок куриного мяса, идеально обжаренный."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fried_chicken1"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("chicken" = 3, "fried batter" = 1)
	foodtypes = MEAT | FRIED
	junkiness = 25
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/fried_chicken/Initialize(mapload)
	. = ..()
	if(prob(50))
		icon_state = "fried_chicken2"

/obj/item/food/beef_stroganoff
	name = "beef stroganoff"
	desc = "Русское блюдо из говядины и соуса. Очень популярно в Японии, по крайней мере, так показывают в аниме."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "beefstroganoff"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 16,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("beef" = 3, "sour cream" = 1, "salt" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES | DAIRY

	w_class = WEIGHT_CLASS_SMALL
	//basic ingredients, but a lot of them. just covering costs here
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/beef_wellington
	name = "beef wellington"
	desc = "Роскошный рулет из говядины, покрытый изысканным грибным дюкселем и ветчиной панчетта, заключенный в слоеное тесто."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "beef_wellington"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 21,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("beef" = 3, "mushrooms" = 1, "pancetta" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_NORMAL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 4)

/obj/item/food/beef_wellington/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/beef_wellington_slice, 3, 3 SECONDS, table_required = TRUE,  screentip_verb = "Cut")

/obj/item/food/beef_wellington_slice
	name = "beef wellington slice"
	desc = "Кусочек биф-веллингтона, политый густым соусом. Просто восхитительно."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "beef_wellington_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("beef" = 3, "mushrooms" = 1, "pancetta" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * (4/3))

/obj/item/food/korta_wellington
	name = "korta wellington"
	desc = "Роскошный рулет из говядины, покрытый изысканным грибным дюкселем и ветчиной панчетта, заключенный в тесто из корта."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "korta_wellington"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 21,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("beef" = 3, "mushrooms" = 1, "pancetta" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_NORMAL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 4)

/obj/item/food/korta_wellington/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/korta_wellington_slice, 3, 3 SECONDS, table_required = TRUE,  screentip_verb = "Cut")

/obj/item/food/korta_wellington_slice
	name = "korta wellington slice"
	desc = "Кусочек корта-веллингтона, политый густым соусом. Просто восхитительно!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "korta_wellington_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("beef" = 3, "mushrooms" = 1, "pancetta" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * (4/3))

/obj/item/food/roast_dinner
	name = "roast dinner"
	desc = "Изысканно запеченная курица в сопровождении капусты, пастернака, картофеля, гороха, начинки и небольшой плошки подливки."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "full_roast"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 21,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("chicken" = 3, "vegetables" = 1, "gravy" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_NORMAL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/roast_dinner/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/roast_slice, 3, 3 SECONDS, table_required = TRUE,  screentip_verb = "Cut")

/obj/item/food/roast_slice
	name = "plate of roast dinner"
	desc = "Небольшая тарелка c кусочком запеченной курицы в сопровождении капусты, пастернака, картофеля, гороха, начинки и... ПОДОЖДИТЕ, и это вся подливка, которую мне налили?!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "roast_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("chicken" = 3, "vegetables" = 1, "gravy" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/roast_dinner_lizzy
	name = "grain-free roast dinner"
	desc = "Изысканно запеченная курица, подаваемая с капустой, пастернаком, картофелем, горошком, ореховой начинкой и небольшой лодочкой соуса из нектара корта."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "full_roast_lizzy"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 21,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("chicken" = 3, "vegetables" = 1, "gravy" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_NORMAL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/roast_dinner_lizzy/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/roast_slice_lizzy, 3, 3 SECONDS, table_required = TRUE,  screentip_verb = "Cut")

/obj/item/food/roast_slice_lizzy
	name = "plate of grain-free roast dinner"
	desc = "Небольшая тарелка c кусочком запеченной курицы в сопровождении капусты, пастернака, картофеля, гороха, ореховой начинки и... ПОГОДИТЕ, и это вся подливка, которую мне налили?!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "roast_slice_lizzy"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("chicken" = 3, "vegetables" = 1, "gravy" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/roast_dinner_tofu
	name = "tofu roast dinner"
	desc = "Изысканно запеченная «курица» из тофу, подаваемая с капустой, пастернаком, картофелем, горошком, начинкой и небольшой лодочкой подливки из соевого соуса."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "full_roast_tofu"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 21,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("tofu" = 3, "vegetables" = 1, "gravy" = 1)
	foodtypes = GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_NORMAL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/roast_dinner_tofu/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/roast_slice_tofu, 3, 3 SECONDS, table_required = TRUE,  screentip_verb = "Cut")

/obj/item/food/roast_slice_tofu
	name = "plate of tofu roast dinner"
	desc = "Небольшая тарелка c кусочком запеченного тофу в сопровождении капусты, пастернака, картофеля, гороха, начинки и... ПОГОДИТЕ, и это вся подливка, которую мне налили?!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "roast_slice_tofu"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("tofu" = 3, "vegetables" = 1, "gravy" = 1)
	foodtypes = GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/full_english
	name = "full english breakfast"
	desc = "Сытное блюдо со всеми необходимыми дополнениями, представляющее собой пик искусства приготовления завтрака."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "full_english"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("sausage" = 1, "bacon" = 1, "egg" = 1, "tomato" = 1, "mushrooms" = 1, "bread" = 1, "beans" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|DAIRY|FRIED|BREAKFAST|EGG
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 4)

/obj/item/food/raw_meatloaf
	name = "raw meatloaf"
	desc = "Тяжелый «батон» из рубленого мяса, лука и чеснока. Запекать в духовке!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "raw_meatloaf"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 40,
		/datum/reagent/consumable/nutriment/vitamin = 32,
		/datum/reagent/consumable/nutriment = 32,
	)
	tastes = list("raw meat" = 3, "onions" = 1)
	foodtypes = MEAT | RAW | VEGETABLES
	w_class = WEIGHT_CLASS_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/raw_meatloaf/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/meatloaf, rand(30 SECONDS, 40 SECONDS), TRUE, TRUE)

/obj/item/food/meatloaf
	name = "meatloaf"
	desc = "Смесь мяса, лука и чеснока, сформированная в виде буханки и запеченная в духовке. Щедро смазана кетчупом. Можно нарезать ножом на ломтики!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatloaf"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 40,
		/datum/reagent/consumable/nutriment/vitamin = 32,
		/datum/reagent/consumable/nutriment = 32,
	)
	tastes = list("juicy meat" = 3, "onions" = 1, "garlic" = 1, "ketchup" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/meatloaf/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/meatloaf_slice, 4, 3 SECONDS, table_required = TRUE,  screentip_verb = "Cut")

/obj/item/food/meatloaf_slice
	name = "meatloaf slice"
	desc = "Кусочек восхитительного, сочного мясного рулета с порцией кетчупа."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatloaf_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/nutriment = 8,
	)
	tastes = list("juicy meat" = 3, "onions" = 1, "garlic" = 1, "ketchup" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT / 2)

/obj/item/food/sweet_and_sour_meatballs
	name = "sweet and sour meatballs"
	desc = "Золотистые фрикадельки, покрытые густым пикантным соусом. Подаются с кусочками ананаса и перца."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "sweet_and_sour_meatballs"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/nutriment = 8,
	)
	tastes = list("meat" = 5, "savory sauce" = 4, "tangy pineapple" = 3, "pepper" = 2)
	foodtypes = MEAT | VEGETABLES | FRUIT | PINEAPPLE
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/kebab/pineapple_skewer
	name = "pineapple skewer"
	desc = "Кусочки глазированного мяса, нанизанные на шампур вместе с ломтиками ананаса. На удивление, неплохо!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "pineapple_skewer"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 8,
	)
	tastes = list("juicy meat" = 4, "pineapple" = 3)
	foodtypes = MEAT | FRUIT | PINEAPPLE
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/futomaki_sushi_roll
	name = "futomaki sushi roll"
	desc = "Суши-ролл футомаки, приготовленный из вареного яйца, рыбы и огурца. Можно нарезать."
	icon_state = "futomaki_sushi_roll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 12,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("boiled rice" = 4, "fish" = 5, "egg" = 3, "dried seaweed" = 2, "cucumber" = 2)
	foodtypes = MEAT|VEGETABLES|GRAIN|SEAFOOD|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/futomaki_sushi_roll/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/futomaki_sushi_slice, 4, screentip_verb = "Chop")

/obj/item/food/futomaki_sushi_slice
	name = "futomaki sushi slice"
	desc = "Кусочек суши футомаки, приготовленного из вареного яйца, рыбы и огурца."
	icon_state = "futomaki_sushi_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("boiled rice" = 4, "fish" = 5, "egg" = 3, "dried seaweed" = 2, "cucumber" = 2)
	foodtypes = VEGETABLES|GRAIN|DAIRY|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/philadelphia_sushi_roll
	name = "philadelphia sushi roll"
	desc = "Суши-ролл «Филадельфия», приготовленный из сыра, рыбы и огурца. Можно нарезать."
	icon_state = "philadelphia_sushi_roll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 12,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 8,
	)
	tastes = list("boiled rice" = 4, "fish" = 5, "creamy cheese" = 3, "dried seaweed" = 2, "cucumber" = 2)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD|DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/philadelphia_sushi_roll/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/philadelphia_sushi_slice, 4, screentip_verb = "Chop")

/obj/item/food/philadelphia_sushi_slice
	name = "philadelphia sushi slice"
	desc = "Кусочек ролла «Филадельфия», приготовленного из сыра, рыбы и огурца."
	icon_state = "philadelphia_sushi_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("boiled rice" = 4, "fish" = 5, "creamy cheese" = 3, "dried seaweed" = 2, "cucumber" = 2)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD|DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
