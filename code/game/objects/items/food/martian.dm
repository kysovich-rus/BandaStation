//Ingredients and Simple Dishes
/obj/item/food/kimchi
	name = "kimchi"
	desc = "Классическое корейское блюдо в марсианском стиле: шинкованная капуста с перцем чили, комбу, бонито и смесью специй."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kimchi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("spicy cabbage" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/inferno_kimchi
	name = "inferno kimchi"
	desc = "На случай, когда обычного кимчи уже недостаточно, чтобы унять вашу тягу к безумной остроте, инферно-кимчи берёт дело в свои руки."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "inferno_kimchi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/capsaicin = 3,
	)
	tastes = list("very spicy cabbage" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/garlic_kimchi
	name = "garlic kimchi"
	desc = "Новая вариация классической формулы — кимчи и чеснок, наконец-то объединённые в идеальной гармонии."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "garlic_kimchi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/capsaicin = 1,
		/datum/reagent/consumable/garlic = 2,
	)
	tastes = list("spicy cabbage" = 1, "garlic" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/surimi
	name = "surimi"
	desc = "Порция необработанного филе сурими."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "surimi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/surimi/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dryable, /obj/item/food/kamaboko)

/obj/item/food/kamaboko
	name = "kamaboko"
	desc = "Японский вяленый рыбный пирожок, часто используемый в закусках и рамене."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kamaboko_sunrise"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/kamaboko/Initialize(mapload)
	. = ..()
	var/design = pick("smiling", "spiral", "star", "sunrise")
	name = "[design] kamaboko"
	icon_state = "kamaboko_[design]"

/obj/item/food/kamaboko/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/kamaboko_slice, 4, 3 SECONDS, table_required = TRUE, screentip_verb = "Cut")

/obj/item/food/kamaboko_slice
	name = "kamaboko slice"
	desc = "Ломтик рыбного пирожка. Хорошо подходит для рамена."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kamaboko_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/sambal
	name = "sambal"
	desc = "Пряная паста из Индонезии, широко используемая в кулинарии по всей Юго-Восточной Азии."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "sambal"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/capsaicin = 2
	)
	tastes = list("chilli heat" = 1, "umami" = 1)
	foodtypes = VEGETABLES|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/katsu_fillet
	name = "katsu fillet"
	desc = "Панированное и обжаренное во фритюре мясо, используемое для различных блюд."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "katsu_fillet"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/nutriment = 2
	)
	tastes = list("meat" = 1, "breadcrumbs" = 1)
	foodtypes = MEAT|FRIED|GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/rice_dough
	name = "rice dough"
	desc = "Кусок теста, приготовленный из равных частей рисовой и пшеничной муки, для получения уникального вкуса."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "rice_dough"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6
	)
	tastes = list("rice" = 1)
	foodtypes = GRAIN
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/rice_dough/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/bread/reispan, rand(30 SECONDS, 45 SECONDS), TRUE, TRUE)

/obj/item/food/rice_dough/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/spaghetti/rawnoodles, 6, 3 SECONDS, table_required = TRUE)

/obj/item/food/spaghetti/rawnoodles
	name = "fresh noodles"
	desc = "Свежеприготовленная рисовая лапша. Помни, что секретного ингредиента не существует."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "raw_noodles"

	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3
	)
	tastes = list("rice" = 1)
	foodtypes = GRAIN
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/spaghetti/boilednoodles
	name = "cooked noodles"
	desc = "Приготовлено на заказ."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "cooked_noodles"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3
	)
	tastes = list("rice" = 1)
	foodtypes = GRAIN
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/bread/reispan
	name = "reispan"
	desc = "Хотя концепция рисового хлеба известна в Азии уже многие века, в его современном виде он чаще всего ассоциируется с Марсом - ограниченные площади почвы, пригодной для земледелия, вынудили проявлять изобретательность."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "reispan"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15
	)
	tastes = list("bread" = 10)
	foodtypes = GRAIN
	venue_value = FOOD_PRICE_TRASH
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/bread/reispan/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/breadslice/reispan, 5, 3 SECONDS, table_required = TRUE)

/obj/item/food/breadslice/reispan
	name = "reispan slice"
	desc = "Ломтик рисового хлеба для марсианских сэндвичей."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "reispan_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3
	)
	foodtypes = GRAIN
	crafting_complexity = FOOD_COMPLEXITY_3

// Fried Rice

/obj/item/food/salad/hurricane_rice
	name = "hurricane fried rice"
	desc = "Вдохновлённое индонезийской кухней, это пикантное рисовое блюдо происходит прямо из Проспекта и его ночных рынков. Оно названо так из-за характерного способа приготовления, при котором жарящийся рис часто подбрасывают в воздух — в основном потому, что это выглядит эффектно для посетителей."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "hurricane_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("rice" = 1, "meat" = 1, "pineapple" = 1, "veggies" = 1)
	foodtypes = MEAT | GRAIN | PINEAPPLE | FRUIT | VEGETABLES | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/ikareis
	name = "ikareis"
	desc = "Острое рисовое блюдо, приготовленное с использованием чернил кальмара, перца, лука, колбасы и ароматного чили."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ikareis"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/capsaicin = 4
	)
	tastes = list("rice" = 1, "squid ink" = 1, "veggies" = 1, "sausage" = 1, "chilli heat" = 1)
	foodtypes = MEAT | GRAIN | SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/salad/hawaiian_fried_rice
	name = "\improper Hawaiian fried rice"
	desc = "Не традиционное гавайское блюдо: гавайский жареный рис использует набор «псевдо-гавайских» ингредиентов, включая нарезанную свиную ветчину и, что спорно, ананас. Пуристы до сих пор расходятся во мнении, уместен ли ананас в рисе."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "hawaiian_fried_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 8,
	)
	tastes = list("rice" = 1, "pork" = 1, "pineapple" = 1, "soy sauce" = 1, "veggies" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES | FRUIT | PINEAPPLE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/salad/ketchup_fried_rice
	name = "ketchup fried rice"
	desc = "Классическая японская еда для уюта, приготовленная из колбасок, овощей, вустерского соуса, риса и, конечно, кетчупа."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ketchup_fried_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/ketchup = 2,
	)
	tastes = list("rice" = 1, "sausage" = 1, "ketchup" = 1, "veggies" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/salad/mediterranean_fried_rice
	name = "mediterranean fried rice"
	desc = "Странная вариация на тему жареного риса: травы, сыр, оливки и, конечно же, фрикадельки. Что-то вроде гибрида ризотто и жареного риса."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "mediterranean_fried_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("rice" = 1, "cheese" = 1, "meatball" = 1, "olives" = 1, "herbs" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES | DAIRY | FRUIT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/egg_fried_rice
	name = "egg fried rice"
	desc = "Самый простой вариант жареного риса: рис, яйцо, соевый соус. Просто, элегантно и бесконечно вариативно."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "egg_fried_rice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/protein = 2,
	)
	tastes = list("rice" = 1, "egg" = 1, "soy sauce" = 1)
	foodtypes = MEAT | GRAIN | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/salad/egg_fried_rice/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, null, CUSTOM_INGREDIENT_ICON_STACK)

/obj/item/food/salad/bibimbap
	name = "bibimbap"
	desc = "Корейское блюдо из риса с различными добавками, подаваемое в горячей каменной миске."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "bibimbap"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("rice" = 1, "spicy cabbage" = 1, "chilli heat" = 1, "egg" = 1, "meat" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/bibimbap/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, null, CUSTOM_INGREDIENT_ICON_STACK)

// Noodles
/obj/item/food/salad/bulgogi_noodles
	name = "bulgogi noodles"
	desc = "Мясо корейского барбекю, подаваемое с лапшой! Приготовлено с добавлением кочхуджана для дополнительной остроты."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "bulgogi_noodles"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("barbecue meat" = 1, "noodles" = 1, "chilli heat" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES | FRUIT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/yakisoba_katsu
	name = "yakisoba katsu"
	desc = "Панированное и обжаренное во фритюре мясо на подушке из жареной лапши. Вкусно, хотя и нетрадиционно."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "yakisoba_katsu"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nutriment = 8,
	)
	tastes = list("fried noodles" = 1, "meat" = 1, "breadcrumbs" = 1, "veggies" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/martian_fried_noodles
	name = "\improper Martian fried noodles"
	desc = "Жареная лапша с Красной планеты. Марсианская кухня заимствует элементы множества культур, и эта лапша не исключение — здесь заметно влияние малайской, тайской, китайской, корейской и японской кухонь."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "martian_fried_noodles"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nutriment = 8,
	)
	tastes = list("noodles" = 1, "meat" = 1, "nuts" = 1, "onion" = 1, "egg" = 1)
	foodtypes = GRAIN | NUTS | MEAT | VEGETABLES | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/simple_fried_noodles
	name = "simple fried noodles"
	desc = "Простое, но вкусное блюдо из жареной лапши, идеально подходящее для креативного повара, чтобы приготовить любые лапшичные вариации по своему вкусу."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "simple_fried_noodles"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nutriment = 6,
	)
	tastes = list("noodles" = 1, "soy sauce" = 1)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/salad/simple_fried_noodles/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, null, CUSTOM_INGREDIENT_ICON_STACK)

// Curry
/obj/item/food/salad/setagaya_curry //let me explain...
	name = "\improper Setagaya curry"
	desc = "Прославленный кафе в Сэтагае, этот карри с его сложным рецептом стал тщательно охраняемым секретом среди владельцев кафе по всему человеческому пространству. Говорят, его вкус «восстанавливает душу едока», что бы это ни значило."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "setagaya_curry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/medicine/omnizine = 5,
	)
	tastes = list("masterful curry" = 1, "rice" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|FRUIT|SUGAR
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5 //Extensive and secretly guarded. Was previously 2 and I thought it was pathetic.
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

// Burgers and Sandwiches
/obj/item/food/burger/big_blue
	name = "\improper Big Blue burger"
	desc = "Оригинальный и лучший «Биг Блю», прямо из любимой бургерной Марса. Поймай волну, брат!"
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "big_blue_burger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 8,
	)
	tastes = list("bun" = 1, "burger" = 2, "teriyaki onions" = 1, "cheese" = 1, "bacon" = 1, "pineapple" = 1)
	foodtypes = MEAT | GRAIN | DAIRY | VEGETABLES | FRUIT | PINEAPPLE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4 //It's THE big blue, Baby!
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/burger/chappy
	name = "\improper Chappy patty"
	desc = "Изначально родившийся после ночной попойки на кухне Big Blue Burgers, «Чаппи-Патти» с тех пор стал неотъемлемой частью как меню Big Blue, так и (псевдо-)гавайской кухни по всей галактике. Учитывая, что Big Kahuna управляет большинством своих заведений на Марсе, неудивительно, что это блюдо там так популярно."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "chappy_patty"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 6,
	)
	tastes = list("bun" = 1, "fried pork" = 2, "egg" = 1, "cheese" = 1, "ketchup" = 1)
	foodtypes =  MEAT|GRAIN|DAIRY|FRIED|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/king_katsu_sandwich
	name = "\improper King Katsu sandwich"
	desc = "Большой сэндвич с хрустящим жареным кацу, беконом, кимчи-слоу и салатом, всё на рисовом хлебе. По-настоящему король мяса между хлебными ломтиками."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "king_katsu_sandwich"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("meat" = 1, "bacon" = 1, "kimchi" = 1, "salad" = 1, "rice bread" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/marte_cubano_sandwich
	name = "\improper Marte Cubano sandwich"
	desc = "Фьюжн-блюдо с Марса, Марте-Кубано основано на классическом кубано, но адаптировано под доступные ингредиенты и новые вкусовые предпочтения."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "marte_cubano_sandwich"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("bacon" = 1, "pickles" = 1, "cheese" = 1, "rice bread" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/little_shiro_sandwich
	name = "\improper Little Shiro sandwich"
	desc = "Классический марсианский сэндвич, названный в честь первого президента Земного Правительства, родившегося на Марсе. Он включает жареные яйца, говядину булгоги, салат кимчи и щедрую порцию сыра моцарелла."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "marte_cubano_sandwich"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("egg" = 1, "meat" = 1, "kimchi" = 1, "mozzarella" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|DAIRY|FRIED|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/croque_martienne
	name = "croque-martienne"
	desc = "Квинтэссенция марсианского сэндвича для завтрака. Яйцо, свиная грудинка, ананас, сыр. Просто. Классика. Доступен в каждом кафе по всей Новой Осаке."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "croque_martienne"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("egg" = 1, "toast" = 1, "pork" = 1, "pineapple" = 1, "cheese" = 1)
	foodtypes = MEAT|GRAIN|FRUIT|DAIRY|FRIED|PINEAPPLE|BREAKFAST|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/prospect_sunrise
	name = "\improper Prospect Sunrise"
	desc = "Второй по значимости марсианский сэндвич для завтрака. Самое гармоничное сочетание омлета, бекона, солений и сыра. Доступен в каждом кафе по всему Проспекту."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "prospect_sunrise"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("egg" = 1, "toast" = 1, "bacon" = 1, "pickles" = 1, "cheese" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | GRAIN | BREAKFAST | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

// Snacks
/obj/item/food/takoyaki
	name = "takoyaki"
	desc = "Классическая японская уличная еда: такояки (или «осьминожьи шарики») — это кусочки осьминога и лука внутри обжаренного теста, залитые пикантным соусом."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "takoyaki"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
	)
	tastes = list("octopus" = 1, "batter" = 1, "onion" = 1, "worcestershire sauce" = 1)
	foodtypes = SEAFOOD | GRAIN | FRIED | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/takoyaki/russian
	name = "russian takoyaki"
	desc = "Опасная вариация классического блюда, которая идеально подходит в качестве прикрытия для ухода от полиции."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "russian_takoyaki"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/capsaicin = 10,
	)
	tastes = list("octopus" = 1, "batter" = 1, "onion" = 1, "chilli heat" = 1)
	foodtypes = SEAFOOD | GRAIN | FRIED | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/takoyaki/taco
	name = "tacoyaki"
	desc = "Прямиком из самых инновационных уличных киосков Марса — такояки, в которых осьминога заменили на мясо для тако и кукурузу, а вустерский соус — на кесо. ¡Tan sabroso!"
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "tacoyaki"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
	)
	tastes = list("taco meat" = 1, "batter" = 1, "corn" = 1, "cheese" = 1)
	foodtypes = MEAT|GRAIN|FRIED|VEGETABLES|DAIRY|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4 //Batter AND Cargo ingredients.
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/okonomiyaki
	name = "okonomiyaki"
	desc = "Классическое блюдо региона Кансай, окономияки представляет собой пикантный блин, наполненный... по сути чем угодно по вкусу, хотя капуста, нагаймо и даси считаются почти обязательными ингредиентами, как и одноимённый соус окономияки."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "okonomiyaki"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("batter" = 1, "cabbage" = 1, "onion" = 1, "worcestershire sauce" = 1)
	foodtypes = GRAIN|FRIED|VEGETABLES|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4 //Cargo stuff and batter.

//hey, the name literally means "grilled how you like it", it'd be crazy to not make it customisable
/obj/item/food/okonomiyaki/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, null, CUSTOM_INGREDIENT_ICON_STACK)

/obj/item/food/brat_kimchi
	name = "brat-kimchi"
	desc = "Жареное кимчи, смешанное с сахаром и дополненное колбаской бравурст. Популярное блюдо в изакаях на Марсе."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "brat_kimchi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/consumable/sugar = 2,
	)
	tastes = list("spicy cabbage" = 1, "sausage" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/tonkatsuwurst
	name = "tonkatsuwurst"
	desc = "Культурное слияние немецкой и японской кухни, тонкацу-вурст объединяет карривурст и соус тонкацу, создавая что-то одновременно знакомое и новое."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "tonkatsuwurst"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/worcestershire = 2,
	)
	tastes = list("sausage" = 1, "spicy sauce" = 1, "fries" = 1)
	foodtypes = MEAT|VEGETABLES|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4 //Cargo ingredients and a few steps.
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/kebab/ti_hoeh_koe
	name = "ti hoeh koe skewer"
	desc = "Свиная кровь, смешанная с рисом, обжаренная и посыпанная арахисом и кориандром. Вкус, безусловно, на любителя, но это блюдо популярно на ночных рынках Проспекта, привезённое тайваньскими переселенцами."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ti_hoeh_koe"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/peanut_butter = 1,
	)
	tastes = list("blood" = 1, "nuts" = 1, "herbs" = 1)
	foodtypes = MEAT|FRIED|NUTS|GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/kitzushi
	name = "kitzushi"
	desc = "Вариация инаридзуси, популярная на Марсе среди вульпинидов (и более широкой общины звероподобных), китзуси включает пряную смесь сыра и чили внутри рисового «кармана» для дополнительного вкуса."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kitzushi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("rice" = 1, "tofu" = 1, "chilli cheese" = 1)
	foodtypes = GRAIN | FRIED | VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/epok_epok
	name = "epok-epok"
	desc = "Жареная выпечка-снэк из Малайзии, которая через Сингапур вошла в марсианскую кухню. Начинённая куриным карри и картофелем, с добавлением ломтика варёного яйца, это популярная уличная еда на Красной планете."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "epok_epok"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 4,
	)
	tastes = list("curry" = 1, "egg" = 1, "pastry" = 1)
	foodtypes = GRAIN | MEAT | VEGETABLES | FRIED | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/roti_john
	name = "roti john"
	desc = "Классический малайзийский снек, Роти Джон представляет собой хлеб, обжаренный в смеси мяса, яйца и лука, в результате чего получается нечто среднее между французскими тостами и омлетом."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "roti_john"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment = 10,
	)
	tastes = list("bread" = 1, "egg" = 1, "meat" = 1, "onion" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|BREAKFAST|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/izakaya_fries
	name = "izakaya fries"
	desc = "Любимая картошка фри Новой Осаки уже два столетия подряд — и всё благодаря сочетанию соуса Red Bay, фурикакэ и майонеза."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "izakaya_fries"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/consumable/salt = 2,
	)
	tastes = list("fries" = 1, "mars" = 1)
	foodtypes = VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3 //Extra complexity due to cargo ingredient.

/obj/item/food/kurry_ok_subsando
	name = "kurry-ok subsando"
	desc = "Классическое блюдо бани-чоу с марсианской изобретательностью, где картофель фри и карри кацу существуют в идеальной гармонии."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kurry_ok_subsando"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 8,
	)
	tastes = list("bread" = 1, "spicy fries" = 1, "mayonnaise" = 1, "curry" = 1, "meat" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/loco_moco
	name = "loco moco"
	desc = "Простая гавайская классика. Получается сытная, вкусная и недорогая еда."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "loco_moco"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
	)
	tastes = list("rice" = 1, "burger" = 1, "gravy" = 1, "egg" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|FRIED|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/wild_duck_fries
	name = "wild duck fries"
	desc = "Картофель фри с измельчённой уткой, кетчупом, майонезом и Red Bay. Классическая марсианская уличная еда, хотя чаще всего она ассоциируется с Kwik-Kwak — любимой (и, по сути, единственной) утиной сетью фастфуда на Марсе."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "wild_duck_fries"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/consumable/salt = 2,
	)
	tastes = list("fries" = 1, "duck" = 1, "ketchup" = 1, "mayo" = 1, "spicy seasoning" = 1)
	foodtypes = MEAT | VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4 //Requires a complex 3 as an ingredient.
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/little_hawaii_hotdog
	name = "\improper Little Hawaii hotdog"
	desc = "С улиц Хонолулу-авеню, от дружелюбных торговцев, приходит хот-дог «Маленькие Гавайи» — тропический и при этом невероятно сытный!"
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "little_hawaii_hotdog"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("sausage" = 1, "pineapple" = 1, "onion" = 1, "teriyaki" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|FRUIT|PINEAPPLE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_price = PAYCHECK_CREW * 1.2
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/salt_chilli_fries
	name = "salt n' chilli fries"
	desc = "Простое название этого блюда не раскрывает всей его вкусности — да, соль и чили играют важную роль, но настоящие герои вкуса здесь — лук, имбирь и чеснок."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "salt_chilli_fries"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/consumable/salt = 2,
	)
	tastes = list("fries" = 1, "garlic" = 1, "ginger" = 1, "numbing heat" = 1, "salt" = 1)
	foodtypes = VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/grilled_octopus
	name = "grilled octopus tentacle"
	desc = "Простое блюдо из морепродуктов, типичное для всех регионов, где едят осьминога. Марсиане предпочитают его с соусом Red Bay."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "grilled_octopus"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/char = 2)
	tastes = list("octopus" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/steak_croquette
	name = "steak croquette"
	desc = "Чёрт, запихивать куски стейка в крокет. Должно быть, это придумал какой-нибудь деревенщина."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "steak_croquette"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
	)
	tastes = list("steak" = 1, "potato" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|DAIRY|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/chapsilog
	name = "chapsilog"
	desc = "Традиционный филиппинский стиль silog, состоящий из синагога (жареного риса с чесноком), жареного яйца и ломтиков свиной ветчины. Получается простой, но сытный завтрак."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "chapsilog"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/consumable/garlic = 1,
	)
	tastes = list("ham" = 1, "garlic rice" = 1, "egg" = 1)
	foodtypes = MEAT|GRAIN|FRIED|BREAKFAST|VEGETABLES|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/chap_hash
	name = "chap hash"
	desc = "Что получится, если смешать ветчину, лук, перец и картофель? Конечно же, чап-хэш! Добавь немного соуса Red Bay — и у тебя готов вкусный завтрак."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "chap_hash"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment = 3,
	)
	tastes = list("ham" = 1, "onion" = 1, "pepper" = 1, "potato" = 1)
	foodtypes = MEAT | VEGETABLES | BREAKFAST | EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/salad/agedashi_tofu
	name = "agedashi tofu"
	desc = "Хрустящий жареный тофу, подаваемый в ароматном умами-бульоне. Часто встречается в изакаях."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "agedashi_tofu"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("umami broth" = 1, "tofu" = 1)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

// Curries and Stews
/obj/item/food/salad/po_kok_gai
	name = "po kok gai"
	desc = "Также известное как galinha à portuguesa или «португальская курица», это блюдо — классика макаанской кухни, возникшая под влиянием португальского колониализма, хотя само по себе не является португальским блюдом. Оно состоит из курицы в «португальском соусе» — мягком карри на основе кокосового молока."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "po_kok_gai"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("chicken" = 1, "coconut" = 1, "curry" = 1)
	foodtypes = MEAT|GRAIN|FRUIT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/salad/huoxing_tofu
	name = "\improper Huoxing tofu"
	desc = "Адаптация мапо-тофу, прославившаяся в Проспекте — гастрономической Мекке Марса. Она даже немного напоминает сам Марс, если прищуриться."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "huoxing_tofu"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/capsaicin = 2
	)
	tastes = list("meat" = 1, "chilli heat" = 1, "tofu" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/feizhou_ji
	name = "fēizhōu jī"
	desc = "Считающееся макаоским вариантом пири-пири, это блюдо (или гальнья а африкана, «африканская курица», если говорить по-простому) — популярное блюдо в TID, а затем стало распространённым и на Марсе благодаря притоку переселенцев из Макао."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "feizhou_ji"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("chicken" = 1, "chilli heat" = 1, "vinegar" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/salad/galinha_de_cabidela
	name = "galinha de cabidela"
	desc = "Изначально португальское блюдо, рис кабидела традиционно готовится с курицей в Португалии, либо с уткой в Макао — однако на Марсе в итоге закрепился вариант с курицей благодаря влиянию европейской культуры."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "galinha_de_cabidela"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 12,
	)
	tastes = list("chicken" = 1, "iron" = 1, "vinegar" = 1, "rice" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/salad/katsu_curry
	name = "katsu curry"
	desc = "Панированное и обжаренное во фритюре мясо, покрытое соусом карри и подаваемое на подушке из риса."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "katsu_curry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
	)
	tastes = list("curry" = 1, "meat" = 1, "breadcrumbs" = 1, "rice" = 1)
	foodtypes = MEAT|GRAIN|FRIED
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/beef_bowl
	name = "beef bowl"
	desc = "Вкусное сочетание тушёной говядины, лука и бульона даси, подаваемое на рисе. Типичные добавки включают маринованный имбирь, порошок чили и жареные яйца."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "beef_bowl"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("beef" = 25, "onion" = 25, "chili heat" = 15, "rice" = 34, "soul" = 1) //I pour my soul into this bowl
	foodtypes = MEAT|VEGETABLES|GRAIN|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/salad/salt_chilli_bowl
	name = "salt n' chilli octopus bowl"
	desc = "Вдохновлённый японской традицией донбури, этот острый вариант тэн-дон стал настоящей вкусовой сенсацией, захватившей марсианскую нацию."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "salt_chilli_bowl"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/consumable/salt = 2,
	)
	tastes = list("seafood" = 1, "rice" = 1, "garlic" = 1, "ginger" = 1, "numbing heat" = 1, "salt" = 1)
	foodtypes = VEGETABLES|GRAIN|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4 //A few Cargo ingredients

/obj/item/food/salad/kansai_bowl
	name = "\improper Kansai bowl"
	desc = "Также известное как konohadon, это блюдо донбури типично для региона Кансай и состоит из рыбной котлеты камабоко, яйца и лука, подаваемых на рисе."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kansai_bowl"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("seafood" = 1, "rice" = 1, "egg" = 1, "onion" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|SEAFOOD|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/salad/eigamudo_curry //curry is meant to be really spicy or kinda mild, this just stinks!
	name = "\improper Eigamudo curry"
	desc = "Необъяснимое блюдо карри, приготовленное из какофонии трудносочетаемых ингредиентов. Вероятно, кому-то оно покажется вкусным - желаем вам удачи найти такого гурмана."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "eigamudo_curry"
	food_reagents = list(
		/datum/reagent/consumable/nutraslop = 8,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/toxin/slimejelly = 4,
	)
	tastes = list("grit" = 1, "slime" = 1, "gristle" = 1, "rice" = 1, "Mystery Food X" = 1)
	foodtypes = VEGETABLES|GRAIN|FRUIT|SEAFOOD|GROSS|TOXIC
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

// Entrees
/obj/item/food/cilbir
	name = "çilbir"
	desc = "Яйца, подаваемые на пикантной основе из йогурта с острым масляным соусом сверху. Изначально турецкое блюдо, оно попало на Марс с немецко-турецкими поселенцами, и с тех пор стало основным блюдом для завтрака."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "cilbir"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/capsaicin = 2,
		/datum/reagent/consumable/garlic = 1,
	)
	tastes = list("yoghurt" = 1, "garlic" = 1, "lemon" = 1, "egg" = 1, "chilli heat" = 1)
	foodtypes = MEAT|VEGETABLES|DAIRY|FRIED|BREAKFAST|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/peking_duck_crepes
	name = "\improper Peking duck crepes a l'orange"
	desc = "Это блюдо объединяет лучшее из кухонь Пекина и Парижа в отличный ужин с выраженным кисло-солёным и пикантным вкусом."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "peking_duck_crepes"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/orangejuice = 4,
	)
	tastes = list("meat" = 1, "crepes" = 1, "orange" = 1)
	foodtypes = MEAT|GRAIN|FRUIT|SUGAR|ORANGES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

// Desserts
/obj/item/food/cake/spekkoek
	name = "vulgaris spekkoek"
	desc = "Привезённый на Марс как голландскими, так и индонезийскими поселенцами, спеккок - это распространённый праздничный торт на Красной планете, часто подаваемый в составе традиционного рийстафеля. Использование амброзии обыкновенной в качестве ароматизатора стало необходимостью в глубоком космосе, поскольку листья пандана так далеко от Земли встречаются крайне редко."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "spekkoek"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 15
	)
	tastes = list("winter spices" = 2, "ambrosia vulgaris" = 2, "cake" = 5)
	foodtypes = VEGETABLES|GRAIN|DAIRY|SUGAR
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/cake/spekkoek/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/cakeslice/spekkoek, 5, 3 SECONDS, table_required = TRUE)

/obj/item/food/cakeslice/spekkoek
	name = "vulgaris spekkoek slice"
	desc = "Кусок спеккока с амброзией. Для марсиан это тёплый вкус далёкой родины."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "spekkoek_slice"
	tastes = list("winter spices" = 2, "ambrosia vulgaris" = 2, "cake" = 5)
	foodtypes = VEGETABLES|GRAIN|DAIRY|SUGAR
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/salad/pineapple_foster
	name = "pineapple foster"
	desc = "Классическая марсианская адаптация очередного классического десерта - тёплое сладкое угощение, которое несёт лишь небольшой или умеренный риск возгорания."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "pineapple_foster"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/caramel = 4,
		/datum/reagent/consumable/pineapplejuice = 2,
		/datum/reagent/consumable/milk = 4
	)
	tastes = list("pineapple" = 1, "vanilla" = 1, "caramel" = 1, "ice cream" = 1)
	foodtypes = GRAIN|FRUIT|DAIRY|SUGAR|PINEAPPLE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/pastel_de_nata
	name = "pastel de nata"
	desc = "Изначально созданные португальскими монахами, pastéis de nata распространились по миру в эпоху Португальской колониальной империи - включая Макао, откуда они попали на Марс вместе с переселенцами из Гонконга."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "pastel_de_nata"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/sugar = 4,
	)
	tastes = list("custard" = 1, "vanilla" = 1, "sweet pastry" = 1)
	foodtypes = GRAIN|FRUIT|DAIRY|EGG
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/boh_loh_yah
	name = "boh loh yah"
	desc = "Парадоксально называемая «ананасовой булочкой», эта гонконгская выпечка не содержит настоящего ананаса - на самом деле это булочка с сахарной корочкой и масляной начинкой, которая напоминает сладкое печенье."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "boh_loh_yah"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/sugar = 4,
	)
	tastes = list("cookie" = 1, "butter" = 1)
	foodtypes = DAIRY | GRAIN | PINEAPPLE //it's funny
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/banana_fritter
	name = "banana fritter"
	desc = "Распространённая сладкая закуска во многих странах морской Юго-Восточной Азии: банановый фриттер имеет множество названий, но все они описывают один и тот же принцип - банан, обвалянный в кляре и обжаренный во фритюре."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "banana_fritter"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/sugar = 1,
	)
	tastes = list("banana" = 1, "batter" = 1)
	foodtypes = GRAIN|FRUIT|FRIED|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3 //Fried goodness, oil scawy.

/obj/item/food/pineapple_fritter
	name = "pineapple fritter"
	desc = "Как и его банановый «собрат», ананасовый фриттер является популярной закуской, хотя его несколько портит специфический вкус ананаса."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "pineapple_fritter"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/sugar = 1,
	)
	tastes = list("pineapple" = 1, "batter" = 1)
	foodtypes = GRAIN|FRUIT|FRIED|PINEAPPLE|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/kebab/kasei_dango
	name = "kasei dango"
	desc = "Шарики данго в японском стиле, ароматизированные гренадином и апельсином. Это популярный среди туристов десерт, который выглядит как Марс и имеет сладкий цитрусовый вкус. Подаются по три штуки, нанизанные на шпажку."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kasei_dango"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 6,
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/orangejuice = 3,
		/datum/reagent/consumable/grenadine = 3
	)
	tastes = list("pomegranate" = 1, "orange" = 1)
	foodtypes = FRUIT | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

// Frozen
/obj/item/food/pb_ice_cream_mochi
	name = "peanut butter ice cream mochi"
	desc = "Классический десерт ночного рынка Аравия Стрит на Проспекте: моти с арахисовым мороженым, покрытым дроблёным арахисом по тайваньской традиции."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "pb_ice_cream_mochi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/sugar = 6,
		/datum/reagent/consumable/peanut_butter = 4,
		/datum/reagent/consumable/milk = 2,
	)
	tastes = list("peanut butter" = 1, "mochi" = 1)
	foodtypes = NUTS | GRAIN | DAIRY | SUGAR
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/popsicle/pineapple_pop
	name = "frozen pineapple pop"
	desc = "Мало кто любит ананас так же сильно, как марсиане, и этот десерт это подтверждает, представляя собой замороженный ананас на палочке, наполовину покрытый тёмным шоколадом."
	overlay_state = "pineapple_pop"
	food_reagents = list(
		/datum/reagent/consumable/pineapplejuice = 4,
		/datum/reagent/consumable/sugar = 4,
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("cold pineapple" = 1, "chocolate" = 1)
	foodtypes = SUGAR|FRUIT|PINEAPPLE
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/popsicle/sea_salt
	name = "sea salt ice-cream bar"
	desc = "Этот небесно-голубой брикет мороженого ароматизирован самой лучшей импортной морской солью. Солёный... и сладкий!"
	overlay_state = "sea_salt_pop"
	food_reagents = list(
		/datum/reagent/consumable/salt = 1,
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/cream = 2,
		/datum/reagent/consumable/vanilla = 2,
		/datum/reagent/consumable/sugar = 4,
	)
	tastes = list("salt" = 1, "sweet" = 1)
	foodtypes = SUGAR | DAIRY
	crafting_complexity = FOOD_COMPLEXITY_3

// topsicles, also known as tofu popsicles
/obj/item/food/popsicle/topsicle
	name = "berry topsicle"
	desc = "Замороженное лакомство, приготовленное из тофу и ягодного сока, тщательно смешанных до однородной массы. По слухам, это любимое угощение медведей, хотя это не имеет никакого смысла..."
	overlay_state = "topsicle_berry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/sugar = 6,
		/datum/reagent/consumable/berryjuice = 4
	)
	tastes = list("berry" = 1, "tofu" = 1)
	foodtypes = FRUIT|SUGAR|VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/popsicle/topsicle/banana
	name = "banana topsicle"
	desc = "Замороженное лакомство, приготовленное из тофу и бананового сока, тщательно смешанных до однородной массы. Популярно в сельской Японии жарким летом."
	overlay_state = "topsicle_banana"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/sugar = 6,
		/datum/reagent/consumable/banana = 4
	)
	tastes = list("banana" = 1, "tofu" = 1)

/obj/item/food/popsicle/topsicle/pineapple
	name = "pineapple topsicle"
	desc = "Замороженное лакомство, приготовленное из тофу и бананового сока, тщательно смешанных до однородной массы. Его где-то показывали в рекламе..."
	overlay_state = "topsicle_pineapple"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/sugar = 6,
		/datum/reagent/consumable/pineapplejuice = 4
	)
	foodtypes = FRUIT|SUGAR|VEGETABLES|PINEAPPLE
	tastes = list("pineapple" = 1, "tofu" = 1)

// Ballpark Food
/obj/item/food/plasma_dog_supreme
	name = "\improper Plasma Dog Supreme"
	desc = "Фирменная закуска «Cybersun Park», домашней арены команды New Osaka Woodpeckers: хот-дог с бейсбольного стадиона с самбалом, обжаренным луком, и ананасово-лаймовой сальсой. Ну, все те самые смелые вкусы, которые так любят на Марсе."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "plasma_dog_supreme"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment = 6
	)
	tastes = list("sausage" = 1, "relish" = 1, "onion" = 1, "fruity salsa" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN|FRUIT|PINEAPPLE|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4 //Uses Sambal
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)
	custom_price = PAYCHECK_CREW * 2

/obj/item/food/frickles
	name = "frickles"
	desc = "Жареные ломтики из острых маринованных огурцов? Такая смелая комбинация, конечно, могла прийти только из одного места - с марсианских стадионов. На самом деле нет, но там это действительно популярная закуска."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "frickles"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("frickles" = 1)
	foodtypes = VEGETABLES|GRAIN|FRIED|SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3 //batter and cargo stuff.

/obj/item/food/raw_ballpark_pretzel
	name = "raw pretzel"
	desc = "Перекрученный узел из теста, готовый к выпечке - или, возможно, жарке?"
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "raw_ballpark_pretzel"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/salt = 1,
	)
	tastes = list("bread" = 1, "salt" = 1)
	foodtypes = GRAIN | RAW
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/raw_ballpark_pretzel/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/ballpark_pretzel, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/raw_ballpark_pretzel/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/ballpark_pretzel, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/ballpark_pretzel
	name = "ballpark pretzel"
	desc = "Классическая немецкая выпечка, под влиянием американского «империализма» преобразованная в закуску для спортивных мероприятий, а затем перенесённая на Красную планету на плечах японских поселенцев. Как много культур..."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ballpark_pretzel"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/salt = 1,
	)
	tastes = list("bread" = 1, "salt" = 1)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/kebab/raw_ballpark_tsukune
	name = "raw tsukune"
	desc = "Сырые куриные фрикадельки на шпажке, готовые к обжариванию на гриле в нечто вкусное."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "raw_ballpark_tsukune"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/consumable/nutriment = 2,
	)
	tastes = list("raw chicken" = 7, "salmonella" = 1)
	foodtypes = MEAT | RAW
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/kebab/raw_ballpark_tsukune/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/kebab/ballpark_tsukune, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/kebab/ballpark_tsukune
	name = "ballpark tsukune"
	desc = "Куриные фрикадельки на шпажке в сладко-солёном соусе якитори. Обычное явление на марсианских стадионах."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ballpark_tsukune"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment = 4,
	)
	tastes = list("chicken" = 1, "umami sauce" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

// Ethereal-suitable cross-culture food
/*	Ethereals are, as part of the uplifting process, considered as citizens of the Terran Federation.
	For this reason, a lot of ethereals have chosen to move throughout human space, settling on various planets to a mixed reception.
	Mars is no exception to this rule, where the ethereal population has been more welcomed than most, due to Mars' more cosmopolitan past.
	Here, the ethereals have developed a distinct culture, neither that of their homeland nor that of Mars, and with that a distinct cuisine.
*/

// Pickled Voltvine
/obj/item/food/pickled_voltvine
	name = "pickled voltvine"
	desc = "Традиционное блюдо из Спраута (где оно известно как hinu'sashuruhk), маринованные вольт-стебли приобрёли новую идентичность среди марсианских мастеров солений, заняв место в священном пантеоне закруток рядом с маринованным имбирём и кимчи (по крайней мере, после соответствующего обесточивания)."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "pickled_voltvine"
	food_reagents = list(
		/datum/reagent/consumable/liquidelectricity/enriched = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("sour radish" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2 //If it comes straight from cargo, should be worth paying for.

// 24-Volt Energy
/obj/item/food/volt_fish
	name = "24-volt fish"
	desc = "Некоторые могут усомниться в 24-вольтовой рыбе. В конце концов, рыба, приготовленная в электрически-синем сверхкислом энергетическом напитке, выглядит ужасно. И, действительно, на вкус она тоже ужасна. Так почему же тогда марсианским эфириалам она нравится?" //beats the hell out of me
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "volt_fish"
	food_reagents = list(
		/datum/reagent/consumable/liquidelectricity/enriched = 6,
		/datum/reagent/consumable/nutriment/protein = 4,
	)
	tastes = list("fish" = 1, "sour pear" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

// Sprout Bowl
/obj/item/food/salad/sprout_bowl
	name = "\improper Sprout bowl"
	desc = "Названное в честь родного мира эфириалов, это рисовое блюдо опирается на традицию донбури, при этом отказываясь от типичных топпингов, вместо этого используя сашими и маринованные вольт-стебли."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "sprout_bowl"
	food_reagents = list(
		/datum/reagent/consumable/liquidelectricity/enriched = 8,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("fish" = 1, "sour radish" = 1, "rice" = 1)
	foodtypes = SEAFOOD | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
