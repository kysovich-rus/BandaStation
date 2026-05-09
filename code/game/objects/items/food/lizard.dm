//Lizard Foods, for lizards (and weird humans!)

//Meat Dishes

/obj/item/food/raw_tiziran_sausage
	name = "raw Tiziran blood sausage"
	desc = "Сырая тизиранская кровяная колбаса, готовая к вялению на сушилке."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "raw_lizard_sausage"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/blood = 3,
	)
	tastes = list("meat" = 1, "black pudding" = 1)
	foodtypes = MEAT|RAW
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/raw_tiziran_sausage/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dryable, /obj/item/food/tiziran_sausage)

/obj/item/food/tiziran_sausage
	name = "\improper Tiziran blood sausage"
	desc = "Грубая вяленая кровяная колбаса, традиционно изготавливаемая фермерами на сельскохозяйственных землях вокруг Загоскельда. По текстуре напоминает испанские чоризо."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_sausage"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("meat" = 1, "black pudding" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_price = PAYCHECK_CREW
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/raw_headcheese
	name = "raw headcheese block"
	desc = "Распространённая еда на Тизире — сыр из голов. Его традиционно готовят из головы животного: органы удаляют, затем её варят до тех пор, пока мясо не начнёт распадаться. После этого массу собирают, отжимают от влаги, щедро солят, прессуют в блоки и оставляют сушиться и созревать на протяжении нескольких месяцев. В результате получается твёрдый блок, по вкусу напоминающий сыр."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "raw_lizard_cheese"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 15,
		/datum/reagent/consumable/salt = 5,
	)
	tastes = list("meat" = 1, "salt" = 1)
	foodtypes = MEAT|RAW|GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/raw_headcheese/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dryable, /obj/item/food/headcheese)

/obj/item/food/headcheese
	name = "headcheese block"
	desc = "Кусок затвердевшего сыра из голов. Ящерам такое нравится."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_cheese"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 15,
		/datum/reagent/consumable/salt = 5,
	)
	tastes = list("cheese" = 1, "salt" = 1)
	foodtypes = MEAT | GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/headcheese/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/headcheese_slice, 5, 3 SECONDS, table_required = TRUE, screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)

/obj/item/food/headcheese_slice
	name = "headcheese slice"
	desc = "Ломтик твердого сыра из голов, пригодный для приготовления бутербродов и закусок. Или для выживания в холодные тизиранские зимы."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_cheese_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/consumable/salt = 1,
	)
	tastes = list("cheese" = 1, "salt" = 1)
	foodtypes = MEAT | GORE
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT / 5)

/obj/item/food/shredded_lungs
	name = "crispy shredded lung stirfry"
	desc = "Хрустящие полоски из лёгких с овощами и острым соусом. Вкусно, если вам нравятся нашинкованные лёгкие."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lung_stirfry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("meat" = 1, "heat" = 1, "veggies" = 1)
	foodtypes = MEAT | VEGETABLES | GORE
	trash_type = /obj/item/reagent_containers/cup/bowl
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/tsatsikh
	name = "tsatsikh"
	desc = "Тизиранское блюдо, состоящее из перемолотых субпродуктов, приправленных, начинённых в желудок и отваренных вместе. Довольно неприятное блюдо для любого, кто не привык к такому вкусу."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "tsatsikh"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 10)
	tastes = list("assorted minced organs" = 1)
	foodtypes = MEAT | GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/liver_pate
	name = "liver pate"
	desc = "Насыщенная мясная паста, приготовленная из печени, мяса и нескольких добавок для усиления вкуса."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "pate"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5)
	tastes = list("liver" = 1)
	foodtypes = MEAT|VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/moonfish_eggs
	name = "moonfish eggs"
	gender = PLURAL
	desc = "Лунная рыба откладывает крупные полупрозрачные голубые икринки, которые ценятся в тизиранской кухне. Их вкус похож на обычную икру, но обычно его описывают как более глубокий и сложный."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_eggs"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("caviar" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/moonfish_eggs/Initialize(mapload)
	. = ..()
	//Moonfish can lay eggs inside aquariums (unaffected by breeding, so think of them as unfertilizard)
	RegisterSignal(src, COMSIG_AQUARIUM_CONTENT_GENERATE_APPEARANCE, PROC_REF(generate_aquarium_appearance))
	RegisterSignal(src, COMSIG_AQUARIUM_CONTENT_RANDOMIZE_POSITION, PROC_REF(randomize_aquarium_position))
	AddComponent(/datum/component/aquarium_content)
	RegisterSignal(src, COMSIG_MOVABLE_GET_AQUARIUM_BEAUTY, PROC_REF(get_aquarium_beauty))

/obj/item/food/moonfish_eggs/proc/generate_aquarium_appearance(datum/source, obj/effect/aquarium/visual)
	SIGNAL_HANDLER
	visual.icon = icon
	visual.icon_state = "moonfish_eggs_aquarium"
	visual.layer_mode = AQUARIUM_LAYER_MODE_BOTTOM

/obj/item/food/moonfish_eggs/proc/randomize_aquarium_position(datum/source, obj/structure/aquarium/current_aquarium, obj/effect/aquarium/visual)
	SIGNAL_HANDLER
	var/sprite_width = 5
	var/sprite_height = 4
	var/pw_min = visual.aquarium_zone_min_pw
	var/pw_max = visual.aquarium_zone_max_pw - sprite_width
	var/pz_min = visual.aquarium_zone_min_pz - sprite_height

	visual.pixel_w = rand(pw_min, pw_max)
	visual.pixel_z = pz_min + rand(-1, 1)

/obj/item/food/moonfish_eggs/proc/get_aquarium_beauty(datum/source, list/beauty_holder)
	SIGNAL_HANDLER
	beauty_holder += 100 //moonfish eggs are kinda eye candy

/obj/item/food/moonfish_caviar
	name = "moonfish caviar paste"
	desc = "Насыщенная паста, приготовленная из икры лунной рыбы. Обычно это единственный способ, которым большинство ящеров могут её употреблять, и она довольно широко используется в прибрежных регионах."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_caviar"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("caviar" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/lizard_escargot
	name = "desert snail cocleas"
	desc = "Ещё один пример культурного обмена между ящерами и людьми: пустынные улитки-эскарго ближе к римскому блюду, чем к современному французскому. Это распространённая уличная еда в пустынных городах."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_escargot"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/garlic = 2,
	)
	tastes = list("snails" = 1, "garlic" = 1, "oil" = 1)
	foodtypes = MEAT|VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/fried_blood_sausage
	name = "fried blood sausage"
	desc = "Кровяная колбаса в кляре, обжаренная во фритюре. Обычно подаётся с картофелем фри как быстрый и простой уличный перекус в Загоскельде."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "fried_blood_sausage"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/salt = 1,
		/datum/reagent/consumable/nutriment/fat/oil = 1,
	)
	tastes = list("black pudding" = 1, "batter" = 1, "oil" = 1)
	foodtypes = MEAT|NUTS|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

//Why does like, every language on the planet besides English call them pommes? Who knows, who cares- the lizards call them it too, because funny.
/obj/item/food/lizard_fries
	name = "loaded poms-franzisks"
	desc = "Одним из многих человеческих блюд, попавших к ящерам, стал картофель фри, который на их языке называется poms-franzisks. Дополненный мясом на гриле и соусом барбекю, в итоге получается сытное блюдо."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_fries"
	trash_type = /obj/item/plate
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/salt = 1,
		/datum/reagent/consumable/bbqsauce = 2,
	)
	tastes = list("fries" = 2, "bbq sauce" = 1, "barbecued meat" = 1)
	foodtypes = MEAT | VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/brain_pate
	name = "eyeball-and-brain pate"
	desc = "Густое розовое пюре, приготовленное из мелко нарезанных отваренных глазных яблок и мозга, жареного лука и жира. Ящеры клянутся, что это очень вкусно!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "brain_pate"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/liquidgibs = 2,
	)
	tastes = list("brains" = 2)
	foodtypes = MEAT | VEGETABLES | GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/crispy_headcheese
	name = "crispy breaded headcheese"
	desc = "Вкусная уличная закуска из Загоскелда, состоящая из зельца, обвалянного в панировке из корневого хлеба. Обычно подаётся с картофелем фри."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "crispy_headcheese"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
	)
	tastes = list("cheese" = 1, "oil" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS | GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT / 5)

/obj/item/food/kebab/picoss_skewers
	name = "picoss skewer"
	desc = "Популярная тизиранская уличная еда, состоящая из маринованной в уксусе бронерыбы на шпажке, с луком и перцем чили."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "picoss_skewer"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/vinegar = 1,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("fish" = 1, "acid" = 1, "onion" = 1, "heat" = 1)
	foodtypes = VEGETABLES|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/nectar_larvae
	name = "nectar larvae"
	desc = "Мелкие хрустящие личинки в сладко-остром сиропе на основе нектара корты. Просто «жучище»!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "nectar_larvae"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/korta_nectar = 3,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("meat" = 1, "sweet" = 1, "heat" = 1)
	foodtypes = MEAT|VEGETABLES|BUGS|GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/mushroomy_stirfry
	name = "mushroomy stirfry"
	desc = "Смесь грибов, созданная, чтобы утолить твой чудовищный аппетит. Великолепно!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "mushroomy_stirfry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("marvelous mushrooms" = 1, "sublime shrooms" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

//Fish Dishes
/obj/item/food/grilled_moonfish
	name = "grilled moonfish"
	desc = "Кусок жареной лунной рыбы. Традиционно подаётся на нарезанных ломтиками корнеплодах с винным соусом."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "grilled_moonfish"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/moonfish_demiglace
	name = "moonfish demiglace"
	desc = "Кусок красиво обжаренной лунной рыбы на подушке из картофеля и моркови, с винным соусом демигляс сверху. Просто великолепно!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_demiglace"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment = 2,
	)
	tastes = list("fish" = 2, "potatoes" = 1, "carrots" = 1)
	foodtypes = VEGETABLES|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/lizard_surf_n_turf
	name = "\improper Zagosk surf 'n' turf smorgasbord"
	desc = "Огромное блюдо из лучших мясных и морепродуктов Тизииры, обычно предназначенное для совместного употребления компаниями на пляже. Конечно, никто не мешает тебе съесть его в одиночку... жирдяй."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "surf_n_turf"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("surf" = 1, "turf" = 1)
	foodtypes = MEAT | SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_BULKY
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 3)

//Spaghetti Dishes

/obj/item/food/spaghetti/nizaya
	name = "nizaya pasta"
	desc = "Вид пасты из корнеплодов и орехов, изначально происходящий из прибрежных регионов Тизииры. По текстуре и внешнему виду похож на ньокки."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "nizaya"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("gnocchi" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/spaghetti/nizaya/egg
	foodtypes = parent_type::foodtypes | MEAT

/obj/item/food/spaghetti/snail_nizaya
	name = "desert snail nizaya"
	desc = "Изысканное блюдо из пасты из виноградного региона Валингия в Тизиире. Традиционно готовится только на лучшем тизиранском вине... но человеческая бурда тоже сойдёт, если прижмёт."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "snail_nizaya"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("snails" = 1, "wine" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | MEAT | NUTS
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/spaghetti/garlic_nizaya
	name = "garlic-and-oil nizaya"
	desc = "Ящерская адаптация итальянского блюда 'aglio e olio', приготовленная из пасты низая."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "garlic_nizaya"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("garlic" = 1, "oil" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/spaghetti/demit_nizaya
	name = "demit nizaya"
	desc = "Сладкое, сливочное блюдо из пасты низая, приготовленное с молоком и нектаром корты."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "demit_nizaya"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/korta_nectar = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("peppery sweet" = 1, "veggies" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES|NUTS|SUGAR
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/spaghetti/mushroom_nizaya
	name = "mushroom nizaya"
	desc = "Блюдо из пасты низая с грибами серака и качественным маслом. Обладает выраженным ореховым вкусом."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "mushroom_nizaya"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("savouriness" = 1, "nuttiness" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES|NUTS
	crafting_complexity = FOOD_COMPLEXITY_4

//Dough Dishes

/obj/item/food/rootdough
	name = "root dough"
	desc = "Тесто на основе корнеплодов, приготовленное из орехов и клубней. Используется в самых разных блюдах тизиранской кухни."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rootdough"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_1
	var/bread_type = /obj/item/food/bread/root
	var/flat_type = /obj/item/food/flatrootdough

/obj/item/food/rootdough/make_bakeable()
	AddComponent(/datum/component/bakeable, bread_type, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/rootdough/make_processable()
	AddElement(/datum/element/processable, TOOL_ROLLINGPIN, flat_type, 1, 3 SECONDS, table_required = TRUE, screentip_verb = "Flatten", sound_to_play = SFX_ROLLING_PIN_ROLLING)

/obj/item/food/rootdough/egg
	desc = "Тесто на основе корнеплодов, приготовленное из орехов, клубней и яиц. Используется в самых разных блюдах тизиранской кухни."
	foodtypes = parent_type::foodtypes | MEAT
	bread_type = /obj/item/food/bread/root/egg
	flat_type = /obj/item/food/flatrootdough/egg

/obj/item/food/flatrootdough
	name = "flat rootdough"
	desc = "Раскатанное тесто из корнеплодов, готовое для приготовления лепёшки или нарезки на куски."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "flat_rootdough"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6)
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_1
	var/process_type = /obj/item/food/rootdoughslice
	var/grill_type = /obj/item/food/root_flatbread

/obj/item/food/flatrootdough/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, process_type, 3, 3 SECONDS, table_required = TRUE, screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)

/obj/item/food/flatrootdough/make_grillable()
	AddComponent(/datum/component/grillable, grill_type, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/flatrootdough/egg
	foodtypes = parent_type::foodtypes | MEAT
	process_type = /obj/item/food/rootdoughslice/egg
	grill_type = /obj/item/food/root_flatbread/egg

/obj/item/food/rootdoughslice
	name = "rootdough ball"
	desc = "Шар из корневого теста. Идеально подходит для приготовления пасты или булочек."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rootdough_slice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_1
	var/process_type = /obj/item/food/spaghetti/nizaya
	var/bake_type = /obj/item/food/rootroll

/obj/item/food/rootdoughslice/egg
	foodtypes = parent_type::foodtypes | MEAT

/obj/item/food/rootdoughslice/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/spaghetti/nizaya, 1, 3 SECONDS, table_required = TRUE, screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)

/obj/item/food/rootdoughslice/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/rootroll, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/rootdoughslice/egg
	process_type = /obj/item/food/spaghetti/nizaya/egg
	bake_type = /obj/item/food/rootroll/egg

/obj/item/food/root_flatbread
	name = "root flatbread"
	desc = "Простая жареная лепёшка из корнеплодов. Может дополняться различными продуктами, которые любят есть ящеры."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "root_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8)
	tastes = list("bread" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/root_flatbread/egg
	foodtypes = parent_type::foodtypes | MEAT

/obj/item/food/rootroll
	name = "rootroll"
	desc = "Плотная, жевательная булочка из корнеплодов. Хорошо подходит в качестве дополнения к миске супа."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rootroll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("roll" = 1) // the roll tastes of roll.
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/rootroll/egg
	foodtypes = parent_type::foodtypes | MEAT

//Bread Dishes

/obj/item/food/bread/root
	name = "rootbread"
	desc = "Ящерский аналог хлеба, приготовленный из клубней (например, картофеля и батата) с добавлением молотых орехов и семян. Заметно более плотный, чем обычный хлеб."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_bread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 20)
	tastes = list("bread" = 8, "nuts" = 2)
	foodtypes = VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	slice_type = /obj/item/food/breadslice/root

/obj/item/food/bread/root/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, /obj/item/food/bread/empty, CUSTOM_INGREDIENT_ICON_FILL, max_ingredients = 8)

/obj/item/food/bread/root/egg
	foodtypes = parent_type::foodtypes | MEAT
	slice_type = /obj/item/food/breadslice/root/egg

/obj/item/food/breadslice/root
	name = "rootbread slice"
	desc = "Ломтик плотного, жевательного корнехлеба."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_breadslice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("bread" = 8, "nuts" = 2)
	foodtypes = VEGETABLES | NUTS
	venue_value = FOOD_PRICE_TRASH

/obj/item/food/breadslice/root/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, null, CUSTOM_INGREDIENT_ICON_STACK)

/obj/item/food/breadslice/root/egg
	foodtypes = parent_type::foodtypes | MEAT

//Pizza Dishes
/obj/item/food/pizza/flatbread
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = null
	abstract_type = /obj/item/food/pizza/flatbread
	slice_type = null

/obj/item/food/pizza/flatbread/rustic
	name = "rustic flatbread"
	desc = "Простое тизиранское деревенское блюдо, популярное как гарнир к мясным или рыбным блюдам. Сверху приправлено травами и маслом."
	icon_state = "rustic_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/vitamin = 15,
		/datum/reagent/consumable/garlic = 2,
	)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1)
	foodtypes = VEGETABLES | NUTS
	boxtag = "Tiziran Flatbread"
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/pizza/flatbread/italic
	name = "\improper Italic flatbread"
	desc = "Введение человеческих блюд в Тизииру привело к развитию ящерской кухни — итальянская лепёшка теперь часто встречается в меню заведений еды на вынос на этой планете."
	icon_state = "italic_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 15,
	)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1, "tomato" = 1, "meat" = 1)
	foodtypes = VEGETABLES | NUTS | MEAT
	boxtag = "Italic Flatbread"
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/pizza/flatbread/imperial
	name = "\improper Imperial flatbread"
	desc = "Лепёшка с паштетом, маринованными овощами и кубиками зельца. Не особенно подходит чьим-либо вкусам, кроме ящеров."
	icon_state = "imperial_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 15,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1, "tomato" = 1, "meat" = 1)
	foodtypes = VEGETABLES | MEAT | NUTS | GORE
	boxtag = "Imperial Victory Flatbread"
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 4)

/obj/item/food/pizza/flatbread/rawmeat
	name = "meatlovers flatbread"
	desc = "Как ни странно, это тизиранское блюдо на самом деле стало любимым у некоторых людей, следящих за здоровьем."
	icon_state = "rawmeat_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 10,
	)
	tastes = list("bread" = 1, "meat" = 1)
	foodtypes = MEAT|VEGETABLES|RAW|NUTS
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/pizza/flatbread/stinging
	name = "\improper Stinging flatbread"
	desc = "Электрическое сочетание медузы и пчелиных личинок создаёт вкусовую сенсацию, после которой хочется ещё!"
	icon_state = "stinging_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 20,
		/datum/reagent/consumable/honey = 2,
	)
	tastes = list("bread" = 1, "sweetness" = 1, "stinging" = 1, "slime" = 1)
	foodtypes = MEAT|VEGETABLES|NUTS|SEAFOOD|BUGS|GORE
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/pizza/flatbread/zmorgast  // Name is based off of the Swedish dish Smörgåstårta
	name = "\improper Zmorgast flatbread"
	desc = "Тизиранская вариация оригинального шведского бутербродного торта, это распространённое блюдо на семейных собраниях."
	icon_state = "zmorgast_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 16,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("bread" = 1, "liver" = 1, "family" = 1)
	foodtypes = VEGETABLES | NUTS | MEAT | EGG
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/pizza/flatbread/fish
	name = "\improper BBQ fish flatbread"
	desc = "Расслоение супердвигателя, клоунские операции, еще и за бортом мороз — я просто хочу гриль, во имя Тизииры!"
	icon_state = "fish_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/consumable/nutriment/protein = 15,
		/datum/reagent/consumable/bbqsauce = 2,
	)
	tastes = list("bread" = 1, "fish" = 1)
	foodtypes = VEGETABLES|NUTS|SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/pizza/flatbread/mushroom
	name = "mushroom and tomato flatbread"
	desc = "Простая альтернатива итальянской лепёшке, на случай, если вы уже наелись мяса где-то еще."
	icon_state = "mushroom_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 18,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes =  list("bread" = 1, "mushroom" = 1, "tomatoes" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/pizza/flatbread/nutty
	name = "nut paste flatbread"
	desc = "Современные достижения в кулинарии теперь позволяют получить двойную порцию восхитительного вкуса орехов корты — как в основе, так и в виде топпинга на этой лепёшке."
	icon_state = "nutty_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 20)
	tastes =  list("bread" = 1, "nuts" = 2)
	foodtypes = NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

//Sandwiches/Toast Dishes
/obj/item/food/emperor_roll
	name = "emperor roll"
	desc = "Популярный сэндвич на Тизиире, названный в честь императорской семьи."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "emperor_roll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("bread" = 1, "cheese" = 1, "liver" = 1, "caviar" = 1)
	foodtypes = VEGETABLES | NUTS | MEAT | GORE | SEAFOOD
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2.25)

/obj/item/food/honey_roll
	name = "honey sweetroll"
	desc = "Сладкая булочка из корнеплодов с нарезанными фруктами, сезонный десерт на Тизиире."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "honey_roll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/honey = 2,
	)
	tastes = list("bread" = 1, "honey" = 1, "fruit" = 1)
	foodtypes = VEGETABLES | NUTS | FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

//Egg Dishes
/obj/item/food/black_eggs
	name = "black scrambled eggs"
	desc = "Деревенское блюдо из сельской Тизииры. Готовится из яиц, крови и собранной в дикой природе зелени. Традиционно подаётся с корнехлебом и острым соусом."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "black_eggs"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("eggs" = 1, "greens" = 1, "blood" = 1)
	foodtypes = MEAT | BREAKFAST | GORE | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/patzikula
	name = "patzikula"
	desc = "Нежный и пряный соус на основе запечённых томатов с яйцами сверху. Вкусно."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "patzikula"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("eggs" = 1, "tomato" = 1, "heat" = 1)
	foodtypes = VEGETABLES | MEAT | BREAKFAST | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

//Cakes/Sweets

/obj/item/food/cake/korta_brittle
	name = "korta brittle slab"
	desc = "Большой кусок ореховой карамели из корты. Настолько сладкий, что это должно быть преступлением!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "korta_brittle"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 20,
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/korta_nectar = 15,
	)
	tastes = list("peppery heat" = 1, "sweetness" = 1)
	foodtypes = NUTS | SUGAR
	slice_type = /obj/item/food/cakeslice/korta_brittle
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/cakeslice/korta_brittle
	name = "korta brittle slice"
	desc = "Ломтик ореховой карамели из корты. Худший враг диабетика."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "korta_brittle_slice"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 4,
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/korta_nectar = 3,
	)
	tastes = list("peppery heat" = 1, "sweetness" = 1)
	foodtypes = NUTS | SUGAR

/obj/item/food/snowcones/korta_ice
	name = "korta ice"
	desc = "Стружка льда, нектар корты и ягоды. Сладкое угощение, которое помогает пережить летнюю жару!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "korta_ice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/ice = 4,
		/datum/reagent/consumable/berryjuice = 6,
	)
	tastes = list("peppery sweet" = 1, "berry" = 1)
	foodtypes = NUTS | SUGAR | FRUIT

/obj/item/food/kebab/candied_mushrooms
	name = "candied mushrooms"
	desc = "Слегка странное тизиранское блюдо: грибы серака, покрытые карамелью на шпажке. Обладает выраженным «сладко-солёным» вкусом."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "candied_mushrooms"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/caramel = 4,
	)
	tastes = list("savouriness" = 1, "sweetness" = 1)
	foodtypes = SUGAR | VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_2

//Misc Dishes
/obj/item/food/sauerkraut
	name = "sauerkraut"
	desc = "Маринованная капуста, прославленная немцами и ставшая распространённой в ящерской кухне, где она известна как Zauerkrat."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "sauerkraut"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("cabbage" = 1, "acid" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/lizard_dumplings
	name = "\improper Tiziran dumplings"
	desc = "Пюре из корнеплодов, смешанное с мукой корты и отваренное так, чтобы получить несколько больших круглых и слегка острых клецок. Обычно едят вместе с супом."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_dumplings"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/steeped_mushrooms
	name = "steeped seraka mushrooms"
	desc = "Грибы серака, вымоченные в щелочной воде для удаления экстракта, что делает их полностью безопасными для употребления."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "steeped_mushrooms"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("savouriness" = 1, "nuttiness" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/canned/jellyfish
	name = "canned gunner jellyfish"
	desc = "Банка пороховой медузы, законсервированной в рассоле. Содержит слабый галлюциноген, который разрушается при термической обработке."
	icon_state = "jellyfish"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/toxin/mindbreaker = 2,
		/datum/reagent/consumable/salt = 1,
	)
	trash_type = /obj/item/trash/can/food/jellyfish
	tastes = list("slime" = 1, "burning" = 1, "salt" = 1)
	foodtypes = SEAFOOD | GORE
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/desert_snails
	name = "canned desert snails"
	desc = "Гигантские пустынные улитки из Тизииры в рассоле. Прямо в раковинах. Вероятно, лучше не есть сырыми, если вы не ящер."
	icon_state = "snails"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/salt = 2,
	)
	trash_type = /obj/item/trash/can/food/desert_snails
	tastes = list("snails" = 1)
	foodtypes = MEAT | GORE
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/larvae
	name = "canned bee larva"
	desc = "Банка пчелиных личинок, законсервированных в меду. Вероятно, кому-то покажется аппетитным."
	icon_state = "larvae"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/honey = 2,
	)
	trash_type = /obj/item/trash/can/food/larvae
	tastes = list("sweet bugs" = 1)
	foodtypes = MEAT | GORE | BUGS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/rootbread_peanut_butter_jelly
	name = "peanut butter and jelly rootwich"
	desc = "Классический корневой сэндвич с арахисовым маслом и джемом."
	icon_state = "peanutbutter-jelly"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("peanut butter" = 1, "jelly" = 1, "rootbread" = 2)
	foodtypes = FRUIT|VEGETABLES|NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/rootbread_peanut_butter_banana
	name = "peanut butter and banana rootwich"
	desc = "Корневой сэндвич с арахисовым маслом и кусочками банана, хороший высокобелковый перекус."
	icon_state = "peanutbutter-banana"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/banana = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("peanut butter" = 1, "banana" = 1, "rootbread" = 2)
	foodtypes = FRUIT|VEGETABLES|NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/burger/plain/korta
	name = "plain rootburger"
	desc = "Простая котлета в булочке из корневого теста."
	icon_state = "kortaburger"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	foodtypes = MEAT|VEGETABLES|NUTS
	crafting_complexity = FOOD_COMPLEXITY_3 //Gotta make the dough, +1
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/rat/korta
	name = "rat rootburger"
	desc = "В общем-то, никакого подвоха... Разве что булка сделана из корневого теста."
	icon_state = "ratburger"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("dead rat" = 4, "bun" = 2)
	foodtypes = NUTS | MEAT | GORE | VEGETABLES | RAW
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/burger/rootguffin
	name = "root-guffin"
	desc = "Дешёвая и жирная ящерская имитация яиц бенедикт."
	icon_state = "rootguffin"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/eggyolk = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("muffin" = 2, "bacon" = 3)
	foodtypes = NUTS | MEAT | BREAKFAST | VEGETABLES | FRIED | EGG
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/rootrib
	name = "rootrib"
	desc = "Неуловимый бургер в форме рёбрышек, доступный лишь в отдельных уголках галактики. Теперь больше соответствует стандартам нечеловеческой кухни."
	icon_state = "rootrib"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/bbqsauce = 1,
	)
	tastes = list("bun" = 2, "pork patty" = 4)
	foodtypes = NUTS | MEAT | VEGETABLES | SUGAR
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/rootchicken
	name = "chicken rootwich"
	desc = "Вкусный сэндвич с курицей в мягкой корневой булочке."
	icon_state = "rootchicken"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/mayonnaise = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
	)
	tastes = list("bun" = 2, "chicken" = 4, "God's covenant" = 1)
	foodtypes = NUTS | MEAT | VEGETABLES
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/rootfish
	name = "fish rootwich"
	desc = "Слегка обжаренная в кляре рыба, в булочке из корнеплодов."
	icon_state = "rootfish"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("bun" = 4, "fish" = 4)
	foodtypes = VEGETABLES | NUTS | SEAFOOD
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/burger/sloppyroot
	name = "sssloppy moe"
	desc = "Сссочный мясссной фаршшш ссс луком и сссоусом барбекю, кое-как выложенный на корневую булочку. Очень вкусссно, но руки вы перепачкаете в любом ссслучае."
	icon_state = "sloppyroot"
	icon = 'icons/obj/food/lizard.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("juicy meat" = 4, "BBQ sauce" = 3, "onions" = 2, "bun" = 2)
	foodtypes = NUTS | MEAT | VEGETABLES
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)
