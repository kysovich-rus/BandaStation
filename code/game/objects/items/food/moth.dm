//Moth Foods, the three C's: cheese, coleslaw, and cotton
//A large emphasis has been put on sharing and multiple portion dishes
//Additionally, where a mothic name is given, a short breakdown of what exactly it means is provided, for the curious on the internal workings of mothic: it's very onomatopoeic, and makes heavy use of combined words and accents

//Base ingredients and miscellany, generally not served on their own
/obj/item/food/herby_cheese
	name = "herby cheese"
	desc = "Сыр, как неотъемлемая часть традиционной нианской кухни, часто дополняется различными вкусовыми добавками для разнообразия рациона. Одной из таких добавок являются травы, которые пользуются особой популярностью."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "herby_cheese"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 6)
	tastes = list("cheese" = 1, "herbs" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/grilled_cheese
	name = "grilled cheese"
	desc = "Как предписал лорд Алтон, благословенно имя его, 99,997% мировых рецептов жареного сыра откровенно лгут: \
		в них сыр никогда не жарится на гриле, это просто поджаренный сэндвич с расплавленным сыром. А это, напротив, настоящий жареный сыр со всеми его полосами от гриля."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "grilled_cheese"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("cheese" = 1, "char" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/mothic_salad
	name = "mothic salad"
	desc = "Простой салат из капусты, красного лука и помидоров. Может служить идеальной основой для множества различных салатов."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "mothic_salad"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("salad" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/toasted_seeds
	name = "toasted seeds"
	desc = "Хотя они и не очень сытные, поджаренные семена — популярная закуска среди молей. \
		Для придания им дополнительной пикантности можно добавить соль, сахар или даже какие-нибудь экзотические ароматизаторы."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "toasted_seeds"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("seeds" = 1)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/engine_fodder
	name = "engine fodder"
	desc = "Распространенная закуска бортовых инженеров, состоящая из семян, орехов, шоколада, попкорна и картофельных чипсов - \
		разработанная таким образом, чтобы быть высококалорийной и удобной для перекуса в те моменты, когда срочно необходима дополнительная энергия."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "engine_fodder"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/sugar = 4,
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/salt = 2,
	)
	tastes = list("seeds" = 1, "nuts" = 1, "chocolate" = 1, "salt" = 1, "popcorn" = 1, "potato" = 1)
	foodtypes = JUNKFOOD|GRAIN|FRIED|NUTS|VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/mothic_pizza_dough
	name = "mothic pizza dough"
	desc = "Крепкое тесто с клейковиной, приготовленное из кукурузной и пшеничной муки, предназначенное для того, чтобы хорошо сочетаться с сыром и соусом."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "mothic_pizza_dough"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("raw flour" = 1)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

//Entrees: categorising food that is 90% cheese and salad is not easy
/obj/item/food/squeaking_stir_fry
	name = "skeklitmischtpoppl" //skeklit = squeaking, mischt = stir, poppl = fry
	desc = "Классическое блюдо, приготовленное из сырных кусочков и тофу (среди прочего). \
		В буквальном переводе название означает «скрипучий стир фрай», и это название блюду дали из-за характерного скрипа сыра."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "squeaking_stir_fry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("cheese" = 1, "tofu" = 1, "veggies" = 1)
	foodtypes = DAIRY|VEGETABLES|GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/sweet_chili_cabbage_wrap
	name = "sweet chili cabbage wrap"
	desc = "Жареный сыр и салат в листе капусты, политые восхитительным сладким соусом чили."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "sweet_chili_cabbage_wrap"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("cheese" = 1, "salad" = 1, "sweet chili" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/loaded_curds
	name = "ozlsettitæloskekllön ede pommes" //ozlsettit = overflowing (ozl = over, sett = flow, it = ing), ælo = cheese, skekllön = curds (skeklit = squeaking, llön = pieces/bits), ede = and, pommes = fries (hey, France!)
	desc = "Что может быть лучше сырных зёрен? Сырные зёрна, жареные во фритюре! Что может быть лучше жареных во фритюре сырных зёрен? \
		Жареные во фритюре сырные зёрна с чили (и ещё большим количеством сыра) сверху! А что может быть лучше? Добавить это к картофелю фри!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "loaded_curds"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("cheese" = 1, "oil" = 1, "chili" = 1, "fries" = 1)
	foodtypes = VEGETABLES|DAIRY|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/baked_cheese
	name = "baked cheese wheel"
	desc = "Запеченный сырный круг, расплавленный и невероятно вкусный."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "baked_cheese"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/nutriment = 5,
	)
	tastes = list("cheese" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/baked_cheese_platter
	name = "stanntkraktælo" //stannt = oven, krakt = baked, ælo = cheese
	desc = "Запеченный сырный круг: излюбленное блюдо многих, которым можно поделиться. Обычно подается с хрустящими ломтиками хлеба для макания, \
		потому что единственное, что лучше хорошего сыра, — это хороший сыр на хорошем хлебе."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "baked_cheese_platter"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 12,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment = 8,
	)
	tastes = list("cheese" = 1, "bread" = 1)
	foodtypes = DAIRY | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

//Baked Green Lasagna at the Whistlestop Cafe
/obj/item/food/raw_green_lasagne
	name = "raw green lasagne al forno"
	desc = "Превосходная лазанья с песто и ароматным белым соусом, готовая к запеканию. Рассчитана на несколько порций."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_green_lasagne"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("cheese" = 1, "pesto" = 1, "pasta" = 1)
	foodtypes = VEGETABLES|GRAIN|DAIRY|NUTS|RAW
	w_class = WEIGHT_CLASS_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_green_lasagne/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/green_lasagne, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/green_lasagne
	name = "green lasagne al forno"
	desc = "Превосходная лазанья с песто и ароматным белым соусом из трав. Рассчитана на несколько порций."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "green_lasagne"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 24,
		/datum/reagent/consumable/nutriment/vitamin = 18,
	)
	tastes = list("cheese" = 1, "pesto" = 1, "pasta" = 1)
	foodtypes = VEGETABLES|GRAIN|DAIRY|NUTS
	w_class = WEIGHT_CLASS_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/green_lasagne/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/green_lasagne_slice, 6, 3 SECONDS, table_required = TRUE,  screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)

/obj/item/food/green_lasagne_slice
	name = "green lasagne al forno slice"
	desc = "Кусочек лазаньи с травами и песто."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "green_lasagne_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("cheese" = 1, "pesto" = 1, "pasta" = 1)
	foodtypes = VEGETABLES|GRAIN|DAIRY|NUTS
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_baked_rice
	name = "big rice pan"
	desc = "Большая сковорода слоеного картофеля, заправленного рисом и овощным бульоном, готовая к запеканию, чтобы превратиться во вкусное блюдо, которым можно поделиться с друзьями."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_baked_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("rice" = 1, "potato" = 1, "veggies" = 1)
	foodtypes = VEGETABLES | GRAIN | RAW
	w_class = WEIGHT_CLASS_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_baked_rice/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/big_baked_rice, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/big_baked_rice
	name = "big baked rice"
	desc = "Запечённый рис – любимое блюдо многих, его можно начинить разнообразными овощными начинками, что делает его вкусным и подходящим для компании. \
		Кроме того, картофель часто выкладывают на дно кастрюли, чтобы создать ароматную корочку, за которую часто спорят посетители."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "big_baked_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 18,
		/datum/reagent/consumable/nutriment/vitamin = 42,
	)
	tastes = list("rice" = 1, "potato" = 1, "veggies" = 1)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/big_baked_rice/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/lil_baked_rice, 6, 3 SECONDS, table_required = TRUE, screentip_verb = "Cut")

/obj/item/food/lil_baked_rice
	name = "lil baked rice"
	desc = "Одна порция запечённого риса, идеально подходящая в качестве гарнира или даже полноценного блюда."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "lil_baked_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/consumable/nutriment/vitamin = 7,
	)
	tastes = list("rice" = 1, "potato" = 1, "veggies" = 1)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/oven_baked_corn
	name = "oven-baked corn"
	desc = "Кукурузный початок, запеченный в раскаленной печи до образования пузырьков и черноты. \
		Любимый ингредиент для быстрого, но ароматного и сытного блюда на борту корабля."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "oven_baked_corn"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("corn" = 1, "char" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/buttered_baked_corn
	name = "buttered baked corn"
	desc = "Что может быть лучше печеной кукурузы? Печеная кукуруза с маслом!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "buttered_baked_corn"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("corn" = 1, "char" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/fiesta_corn_skillet
	name = "fiesta corn skillet"
	desc = "Сладко, остро, сочно и кукурузно."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "fiesta_corn_skillet"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("corn" = 1, "chili" = 1, "char" = 1)
	foodtypes = VEGETABLES|JUNKFOOD|DAIRY|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/raw_ratatouille
	name = "raw ratatouille" //rawtatouille?
	desc = "Нарезанные овощи с соусом из запеченного перца. Слишком вкусно для крестьянской еды."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_ratatouille"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("veggies" = 1, "roasted peppers" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/raw_ratatouille/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/ratatouille, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/ratatouille
	name = "ratatouille"
	desc = "Идеальное блюдо, чтобы спасти ваш ресторан от мстительного ресторанного критика. \
		Дополнительные баллы, если у вас в шляпе сидит крыса."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "ratatouille"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("veggies" = 1, "roasted peppers" = 1, "char" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/mozzarella_sticks
	name = "mozzarella sticks"
	desc = "Небольшие палочки моцареллы в панировке, обжаренные во фритюре."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "mozzarella_sticks"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
	)
	tastes = list("creamy cheese" = 1, "breading" = 1, "oil" = 1)
	foodtypes = GRAIN|DAIRY|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/raw_stuffed_peppers
	name = "raw voltölpaprik" //voltöl = stuffed (vol = full, töl = push), paprik (from German paprika) = bell pepper
	desc = "Перец без верхушки, внутри которого находится смесь из сыра, трав и лука. Вероятно, его не следует есть сырым."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_stuffed_pepper"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
	)
	tastes = list("creamy cheese" = 1, "herbs" = 1, "onion" = 1, "bell pepper" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/raw_stuffed_peppers/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/stuffed_peppers, rand(10 SECONDS, 20 SECONDS), TRUE, TRUE)

/obj/item/food/stuffed_peppers
	name = "voltölpaprik"
	desc = "Мягкий, но при этом хрустящий болгарский перец с восхитительной расплавленной сырной начинкой."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "stuffed_pepper"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
	)
	tastes = list("creamy cheese" = 1, "herbs" = 1, "onion" = 1, "bell pepper" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/fueljacks_lunch
	name = "\improper Fueljack's lunch"
	desc = "Блюдо из жареных овощей, популярное среди заправщиков — отважных ниан, управляющих топливосборщиками, чтобы поддерживать работу флота. \
		Учитывая постоянную потребность в топливе и ограниченные временные окна, когда звезды сходятся для сбора урожая (в буквальном смысле), \
		они часто берут с собой упакованные блюда, которые они разогревают с помощью свежих канистр, чтобы сэкономить на пути в столовую."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "fueljacks_lunch"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/protein = 8,
	)
	tastes = list("cabbage" = 1, "potato" = 1, "onion" = 1, "chili" = 1, "cheese" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/mac_balls
	name = "macheronirölen"
	desc = "Жареные шарики из макарон с сыром, обмакнутые в кукурузное тесто. Подаются с томатным соусом. \
		Популярная закуска по всей галактике, особенно на флоте, где в качестве основы обычно используют «Реди-Донк»."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "mac_balls"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 10,
	)
	tastes = list("pasta" = 1, "cornbread" = 1, "cheese" = 1)
	foodtypes = DAIRY | VEGETABLES | FRIED | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/sustenance_bar
	name = "surplus fleet PSB"
	desc = "ФАПБ, или флотский аварийный питательный батончик, - это плотно упакованный, богатый питательными веществами продукт, \
		предназначенный для обеспечения населения продовольствием в периоды нехватки свежих продуктов. Изготовленный из соевого и \
		горохового белка, каждый батончик рассчитан на 3 дня при правильном распределении. Несмотря на длительный срок хранения, \
		они со временем портятся, что приводит к их продаже флотом в портах. Этот конкретный батончик, как и большинство искусственно \
		ароматизированной пищи для ниан, имеет вкус смеси трав."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "sustenance_bar"
	trash_type = /obj/item/trash/fleet_ration
	food_reagents = list(/datum/reagent/consumable/nutriment = 20)
	tastes = list("herbs" = 1)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/sustenance_bar/neapolitan
	name = "surplus fleet PSB- neapolitan flavour"
	desc = "ФАПБ, или флотский аварийный питательный батончик, - это плотно упакованный, богатый питательными веществами продукт, \
		предназначенный для обеспечения населения продовольствием в периоды нехватки свежих продуктов. Изготовленный из соевого и \
		горохового белка, каждый батончик рассчитан на 3 дня при правильном распределении. Несмотря на длительный срок хранения, \
		они со временем портятся, что приводит к их продаже флотом в портах. Этот конкретный батончик имеет характерный неаполитанский \
		букет вкусов: клубника, ваниль и шоколад."
	tastes = list("strawberry" = 1, "vanilla" = 1, "chocolate" = 1)

/obj/item/food/sustenance_bar/cheese
	name = "surplus fleet PSB- three-cheese flavour"
	desc = "ФАПБ, или флотский аварийный питательный батончик, - это плотно упакованный, богатый питательными веществами продукт, \
		предназначенный для обеспечения населения продовольствием в периоды нехватки свежих продуктов. Изготовленный из соевого и \
		горохового белка, каждый батончик рассчитан на 3 дня при правильном распределении. Несмотря на длительный срок хранения, \
		они со временем портятся, что приводит к их продаже флотом в портах. Этот конкретный батончик имеет вкус трех сыров: \
		пармезана, моцареллы и чеддера."
	tastes = list("parmesan" = 1, "mozzarella" = 1, "cheddar" = 1)

/obj/item/food/sustenance_bar/mint
	name = "surplus fleet PSB- mint choc chip flavour"
	desc = "ФАПБ, или флотский аварийный питательный батончик, - это плотно упакованный, богатый питательными веществами продукт, \
		предназначенный для обеспечения населения продовольствием в периоды нехватки свежих продуктов. Изготовленный из соевого и \
		горохового белка, каждый батончик рассчитан на 3 дня при правильном распределении. Несмотря на длительный срок хранения, \
		они со временем портятся, что приводит к их продаже флотом в портах. Этот конкретный экземпляр имеет мятно-шоколадный вкус: \
		перечная мята, тёмный шоколад и... картофельные чипсы? Нианы, кажется, понятия не имеют, что такое мятно-шоколадный вкус."
	tastes = list("peppermint" = 1, "potato chips(?)" = 1, "dark chocolate" = 1)

/obj/item/food/sustenance_bar/wonka
	name = "surplus fleet PSB- three course dinner"
	desc = "ФАПБ, или флотский аварийный питательный батончик, - это плотно упакованный, богатый питательными веществами продукт, \
		предназначенный для обеспечения населения продовольствием в периоды нехватки свежих продуктов. Изготовленный из соевого и \
		горохового белка, каждый батончик рассчитан на 3 дня при правильном распределении. Несмотря на длительный срок хранения, \
		они со временем портятся, что приводит к их продаже флотом в портах. Этот конкретный батончик, как и большинство искусственно \
		ароматизированной пищи для ниан, имеет вкус смеси трав. Этот конкретный вариант разделен на три вкуса, каждое из которых \
		составляет типичное горячее блюдо: томатный суп, запеченная тыква и черничный пирог." //Thankfully not made by Willy Wonka
	tastes = list("tomato soup" = 1, "roast pumpkin" = 1, "blueberry pie" = 1)

/obj/item/food/bowled/hua_mulan_congee
	name = "\improper Hua Mulan congee"
	desc = "Никто точно не знает, почему эта улыбающаяся миска рисовой каши с яйцами и беконом названа в честь мифологического китайского персонажа — \
		просто она всегда так называлась."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "hua_mulan_congee"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/consumable/nutriment/protein = 6,
	)
	tastes = list("bacon" = 1, "eggs" = 1)
	foodtypes = MEAT|GRAIN|FRIED|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/bowled/fried_eggplant_polenta
	name = "fried eggplant and polenta"
	desc = "Полента с большим количеством сыра, подается с несколькими кружочками жареных баклажанов и томатным соусом. Отлично!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "fried_eggplant_polenta"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 12,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment = 10,
	)
	tastes = list("cornmeal" = 1, "cheese" = 1, "eggplant" = 1, "tomato sauce" = 1)
	foodtypes = VEGETABLES|GRAIN|DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5

//Salads: the bread and butter of mothic cuisine
/obj/item/food/caprese_salad
	name = "caprese salad"
	desc = "Хотя это далеко не оригинальное творение ниан, салат капрезе стал любимым блюдом на борту флота \
		благодаря простоте приготовления и невероятному вкусу. У молей он известен как zaileskenknusksolt: \
		двухцветный салат, на гала-коммуникационном языке." //zail = two, esken = colour/tone, knuskolt = salad
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "caprese_salad"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 8,
	)
	tastes = list("mozzarella" = 1, "tomato" = 1, "balsamic" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/salad/fleet_salad
	name = "lörtonknusksolt" //lörton = fleet, knusksolt = salad (knusk = crisp, solt = bowl)
	desc = "Lörtonknusksolt, он же 'флотский салат' на ГалКоме, часто встречается в закусочных и столовых на борту флота. \
		Жареный сыр делает его особенно сытным, а гренки придают ему хрустящую остроту."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "fleet_salad"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 12,
	)
	tastes = list("cheese" = 1, "salad" = 1, "bread" = 1)
	foodtypes = DAIRY | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/salad/cotton_salad
	name = "flöfrölenknusksolt"
	desc = "Салат с добавлением хлопка и простой заправкой. По всей видимости, либо поблизости объявились нианы, либо Юг снова восстал."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "cotton_salad"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 14,
	)
	tastes = list("cheese" = 1, "salad" = 1, "bread" = 1)
	foodtypes = VEGETABLES | CLOTH
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/salad/moth_kachumbari
	name = "\improper Kæniatknusksolt" //Kæniat = Kenyan, knusksolt = salad
	desc = "Качумбари, изначально кенийский рецепт, — еще одно популярное блюдо, распространенное во многих культурах, которое переняли и нианы, — \
		хотя некоторые ингредиенты, естественно, были изменены."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "moth_kachumbari"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 18,
	)
	tastes = list("onion" = 1, "tomato" = 1, "corn" = 1, "chili" = 1, "cilantro" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

//Pizza
/obj/item/food/raw_mothic_margherita
	name = "raw mothic margherita pizza"
	desc = "Еще одна классика, перенятая людьми, — это пицца, приготовленная из свежих ингредиентов, \
		в частности, свежей моцареллы, и муки высшего сорта для получения клейковины."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_margherita_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("dough" = 1, "tomato" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | RAW
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_margherita/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_margherita, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_margherita
	name = "mothic margherita pizza"
	desc = "Ключевая особенность нианской пиццы заключается в том, что она продается на вес: \
		отдельные кусочки можно приобрести за дополнительные баллы, а за один талон на питание можно купить целую пиццу."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "margherita_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_margherita
	boxtag = "Margherita alla Moffuchi"
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/pizzaslice/mothic_margherita
	name = "mothic margherita slice"
	desc = "Кусочек пиццы «Маргарита» — самой простой из всех пицц."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "margherita_slice"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_firecracker
	name = "raw mothic firecracker pizza"
	desc = "Пицца «Петарда» — любимое блюдо самых смелых ниан, так как она ОЧЕНЬ-ОЧЕНЬ острая!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_firecracker_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/bbqsauce = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/capsaicin = 10,
	)
	tastes = list("dough" = 1, "chili" = 1, "corn" = 1, "cheese" = 1, "bbq sauce" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | RAW
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_firecracker/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_firecracker, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_firecracker
	name = "mothic firecracker pizza"
	desc = "Они не шутят, когда называют это горячей пиццей."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "firecracker_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/bbqsauce = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/capsaicin = 10,
	)
	tastes = list("crust" = 1, "chili" = 1, "corn" = 1, "cheese" = 1, "bbq sauce" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_firecracker
	boxtag = "Vesuvian Firecracker"
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/pizzaslice/mothic_firecracker
	name = "mothic firecracker slice"
	desc = "Острый кусочек чего-то очень вкусного."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "firecracker_slice"
	tastes = list("crust" = 1, "chili" = 1, "corn" = 1, "cheese" = 1, "bbq sauce" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_five_cheese
	name = "raw mothic five-cheese pizza"
	desc = "На протяжении веков учёные задавались вопросом: сколько сыра — это уже слишком много сыра?"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_five_cheese_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("dough" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | RAW
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_five_cheese/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_five_cheese, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_five_cheese
	name = "mothic five-cheese pizza"
	desc = "Любимое лакомство мышей, крыс и английских изобретателей."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "five_cheese_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_five_cheese
	boxtag = "Cheeseplosion"
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/pizzaslice/mothic_five_cheese
	name = "mothic five-cheese slice"
	desc = "Это самый сырный кусочек во всей галактике!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "five_cheese_slice"
	tastes = list("crust" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_white_pie
	name = "raw mothic white-pie pizza"
	desc = "Пицца для тех, кто ненавидит помидоры."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_white_pie_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("dough" = 1, "cheese" = 1, "herbs" = 1, "garlic" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | RAW
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_white_pie/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_white_pie, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_white_pie
	name = "mothic white-pie pizza"
	desc = "Вы говорите «томат», я говорю «помидор», и мы не добавляем на эту пиццу ни то, ни другое."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "white_pie_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "cheese" = 1, "herbs" = 1, "garlic" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_white_pie
	boxtag = "Pane Bianco"
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/pizzaslice/mothic_white_pie
	name = "mothic white-pie slice"
	desc = "Сырный, чесночный, травяной, восхитительный!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "white_pie_slice"
	tastes = list("crust" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_pesto
	name = "raw mothic pesto pizza"
	desc = "Песто — популярная начинка для пиццы среди молей, возможно, потому что она воплощает в себе их любимые вкусы: сыр, зелень и овощи."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_pesto_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("dough" = 1, "pesto" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | NUTS | RAW
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_pesto/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_pesto, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_pesto
	name = "mothic pesto pizza"
	desc = "Зелёная, как трава в саду. Не то, чтобы такого было в достатке на кораблях ниан."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "pesto_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "pesto" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | NUTS
	slice_type = /obj/item/food/pizzaslice/mothic_pesto
	boxtag = "Presto Pesto"
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/pizzaslice/mothic_pesto
	name = "mothic pesto slice"
	desc = "Кусочек престо-пиццы песто."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "pesto_slice"
	tastes = list("crust" = 1, "pesto" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | NUTS
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_mothic_garlic
	name = "raw mothic garlic pizzabread"
	desc = "Ах, чеснок. Всеми любимый ингредиент, за исключением, пожалуй, вампиров."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_garlic_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("dough" = 1, "garlic" = 1, "butter" = 1)
	foodtypes = GRAIN|VEGETABLES|RAW|DAIRY
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/raw_mothic_garlic/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_garlic, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_garlic
	name = "mothic garlic pizzabread"
	desc = "Лучшая еда во всей галактике, без всяких сомнений."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "garlic_pizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "garlic" = 1, "butter" = 1)
	foodtypes = GRAIN|VEGETABLES|DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_garlic
	boxtag = "Garlic Bread alla Moffuchi"
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/pizzaslice/mothic_garlic
	name = "mothic garlic pizzabread slice"
	desc = "Лучшее сочетание маслянистости, чесночного вкуса и хрустящей корочки, известное всему миру."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "garlic_slice"
	tastes = list("dough" = 1, "garlic" = 1, "butter" = 1)
	foodtypes = GRAIN|VEGETABLES|DAIRY
	crafting_complexity = FOOD_COMPLEXITY_4

//Bread
/obj/item/food/bread/corn
	name = "cornbread"
	desc = "Хороший, деревенский, ковбойский, питательный, со стволами зажигательный, настоящий кукурузный хлеб в стиле 'ЙИИ-ХАА'."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "cornbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 18)
	tastes = list("cornbread" = 10)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL
	slice_type = /obj/item/food/breadslice/corn
	yield = 6
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/breadslice/corn
	name = "cornbread slice"
	desc = "Кусочек хрустящего кукурузного хлеба в ковбойском стиле. Наслаждайтесь!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "cornbread_slice"
	foodtypes = GRAIN
	food_reagents = list(/datum/reagent/consumable/nutriment = 3)
	crafting_complexity = FOOD_COMPLEXITY_2

//Sweets
/obj/item/food/moth_cheese_cakes
	name = "\improper ælorölen" //ælo = cheese, rölen = balls
	desc = "Ælorölen (сырные шарики) - это традиционный десерт ниан, приготовленный из мягкого сыра, сахарной пудры и муки, \
		скатанных в шарики, обваленных в кляре, а затем обжаренных во фритюре. Их часто подают с шоколадным соусом или медом, \
		а иногда и с тем, и с другим!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "moth_cheese_cakes"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/sugar = 12,
	)
	tastes = list("cheesecake" = 1, "chocolate" = 1, "honey" = 1)
	foodtypes = SUGAR | FRIED | DAIRY | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/cake/mothmallow
	name = "mothmallow tray"
	desc = "Легкий и воздушный веганский зефир со вкусом ванили и рома, покрытый мягким шоколадом. Нианы называют его höllflöfstarkken: облачные квадратики." //höllflöf = cloud (höll = wind, flöf = cotton), starkken = squares
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "mothmallow_tray"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/consumable/sugar = 20,
	)
	tastes = list("vanilla" = 1, "clouds" = 1, "chocolate" = 1)
	foodtypes = VEGETABLES | SUGAR
	slice_type = /obj/item/food/cakeslice/mothmallow
	yield = 6
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/cakeslice/mothmallow
	name = "mothmallow"
	desc = "Пушистые облачка радости — странного, похожего на крылья ниан, цвета."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "mothmallow_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/sugar = 4,
	)
	tastes = list("vanilla" = 1, "clouds" = 1, "chocolate" = 1)
	foodtypes = VEGETABLES | SUGAR
	crafting_complexity = FOOD_COMPLEXITY_2

//misc food
/obj/item/food/bubblegum/wake_up
	name = "wake-up gum"
	desc = "Резиновая полоска жевательной резинки. На ней выгравирована эмблема Кочевнического Флота Ниан."
	food_reagents = list(
		/datum/reagent/consumable/sugar = 13,
		/datum/reagent/drug/methamphetamine = 2,
	)
	tastes = list("herbs" = 1)
	color = "#567D46"

/obj/item/food/spacers_sidekick
	name = "\improper Spacer's Sidekick mints"
	desc = "Друг пустотника: Дышите свободно, с лучшим другом в вашем кармане!"
	icon_state = "spacers_sidekick"
	trash_type = /obj/item/trash/spacers_sidekick
	food_reagents = list(
		/datum/reagent/consumable/sugar = 1,
		/datum/reagent/consumable/menthol = 1,
		/datum/reagent/medicine/salbutamol = 1,
	)
	tastes = list("strong mint" = 1)
	junkiness = 15
	foodtypes = JUNKFOOD
	w_class = WEIGHT_CLASS_SMALL
