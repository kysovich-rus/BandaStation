////////////////////////////////////////////SNACKS FROM VENDING MACHINES////////////////////////////////////////////
//in other words: junk food
//don't even bother looking for recipes for these

/obj/item/food/candy
	name = "candy"
	desc = "Это нуга. На любителя."
	icon_state = "candy"
	trash_type = /obj/item/trash/candy
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 3,
	)
	junkiness = 25
	tastes = list("candy" = 1)
	foodtypes = JUNKFOOD | SUGAR
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/candy/bronx
	name = "\improper South Bronx Paradise bar"
	desc = "«Ешь и худей - результат гарантирован! Со вкусом карамельного мокко!». Далее идет стена текста мелким шрифтом..."
	icon_state = "bronx"
	inhand_icon_state = "candy"
	trash_type = /obj/item/trash/candy
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/yuck = 1,
	)
	junkiness = 10
	bite_consumption = 10
	tastes = list("candy" = 5, "weight loss" = 4, "insect larva" = 1)
	foodtypes = JUNKFOOD | RAW | BUGS
	custom_price = 80
	w_class = WEIGHT_CLASS_TINY
	var/revelation = FALSE

/obj/item/food/candy/bronx/make_edible()
	. = ..()
	AddComponentFrom(SOURCE_EDIBLE_INNATE, /datum/component/edible, on_consume = CALLBACK(src, PROC_REF(on_consume)))

/obj/item/food/candy/bronx/proc/on_consume(mob/living/eater)
	if(ishuman(eater))
		var/mob/living/carbon/human/carl = eater
		var/datum/disease/disease = new /datum/disease/parasite()
		carl.ForceContractDisease(disease, make_copy = FALSE, del_on_fail = TRUE)

/obj/item/food/candy/bronx/examine(mob/user)
	. = ..()
	if(!revelation && !isobserver(user))
		. += span_notice("Блин, тебе стоит проверить зрение. Прочти ещё раз...")

		name = "\improper South Bronx Parasite bar"
		desc = "«Ешь и худей - результат гарантирован! Со вкусом карамельного мокко! ВНИМАНИЕ: НЕ ПРИГОДЕН В ПИЩУ ПРЕДСТАВИТЕЛЯМ ЧЕЛОВЕЧЕСКОЙ РАСЫ. СОДЕРЖИТ ЖИВЫЕ ЛИЧИНКИ ДИАМФИДИЙ.»"
		revelation = TRUE

/obj/item/food/sosjerky
	name = "\improper Scaredy's Private Reserve Beef Jerky"
	icon_state = "sosjerky"
	desc = "Полоски вяленого мяса из лучших космических коровок."
	trash_type = /obj/item/trash/sosjerky
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/salt = 2,
	)
	junkiness = 25
	tastes = list("dried meat" = 1)
	w_class = WEIGHT_CLASS_SMALL
	foodtypes = JUNKFOOD | MEAT | SUGAR
	crafting_complexity = FOOD_COMPLEXITY_1
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/sosjerky/healthy
	name = "homemade beef jerky"
	desc = "Полоски вяленого мяса из лучших космических коровок. Вкуснее и питательнее, чем в автомате."
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	junkiness = 0

/obj/item/food/chips
	name = "chips"
	desc = "Чипсы марки 'Коммандер Райкер'."
	icon_state = "chips"
	trash_type = /obj/item/trash/chips
	bite_consumption = 1
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 3,
		/datum/reagent/consumable/salt = 1,
	)
	junkiness = 20
	tastes = list("salt" = 1, "crisps" = 1)
	foodtypes = VEGETABLES|JUNKFOOD|FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/chips/make_leave_trash()
	if(trash_type)
		AddElement(/datum/element/food_trash, trash_type, FOOD_TRASH_POPABLE)

/obj/item/food/chips/shrimp
	name = "shrimp chips"
	desc = "Хрустящие чипсы со вкусом креветок, обжаренные во фритюре. Хит среди ценителей морепродуктов!"
	icon_state = "shrimp_chips"
	trash_type = /obj/item/trash/shrimp_chips
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 1,
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/fat/oil = 3,
		/datum/reagent/consumable/salt = 1,
	)
	tastes = list("salt" = 1, "shrimp" = 1)
	foodtypes = JUNKFOOD | FRIED | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/no_raisin
	name = "\improper 4no raisins"
	icon_state = "4no_raisins"
	desc = "Лучшая марка изюма в галактике, хоть о ней никто никогда не слышал."
	trash_type = /obj/item/trash/raisins
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/sugar = 4,
	)
	junkiness = 25
	tastes = list("dried raisins" = 1)
	foodtypes = JUNKFOOD | FRUIT | SUGAR
	food_flags = FOOD_FINGER_FOOD
	custom_price = PAYCHECK_CREW * 0.7
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/no_raisin/healthy
	name = "homemade raisins"
	desc = "Изюм, приготовленный своими руками. Лучший во всей галактике."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	junkiness = 0
	foodtypes = FRUIT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/spacetwinkie
	name = "\improper Space Twinkie"
	icon_state = "space_twinkie"
	desc = "Производитель уверяет, что его срок годности истечет позже, чем ваш."
	food_reagents = list(/datum/reagent/consumable/sugar = 4)
	junkiness = 25
	foodtypes = JUNKFOOD | GRAIN | SUGAR
	food_flags = FOOD_FINGER_FOOD
	custom_price = PAYCHECK_LOWER
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/candy_trash
	name = "candy cigarette butt"
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "candybum"
	desc = "Все, что осталось от выкуренной сладкой сигареты. Можно съесть!"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 4,
		/datum/reagent/ash = 3,
	)
	junkiness = 10 //powergame trash food by buying candy cigs in bulk and eating them when they extinguish
	foodtypes = JUNKFOOD | SUGAR
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/candy_trash/nicotine
	desc = "Все, что осталось от выкуренной сладкой сигареты. Пахнет никотином...?"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 4,
		/datum/reagent/ash = 3,
		/datum/reagent/drug/nicotine = 1,
	)

/obj/item/food/cheesiehonkers
	name = "\improper Cheesie Honkers"
	desc = "Сырные мини-снеки, которые долго гудят во рту."
	icon_state = "cheesie_honkers"
	trash_type = /obj/item/trash/cheesie
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/sugar = 3,
	)
	junkiness = 25
	tastes = list("cheese" = 5, "crisps" = 2)
	foodtypes = JUNKFOOD | DAIRY | SUGAR
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/syndicake
	name = "\improper Syndi-Cakes"
	icon_state = "syndi_cakes"
	desc = "Сочные пирожные, которые особенно хороши, если разогреть их на тридцати-килотонной ядерной боеголовке."
	trash_type = /obj/item/trash/syndi_cakes
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/doctor_delight = 5,
	)
	tastes = list("sweetness" = 3, "cake" = 1)
	foodtypes = GRAIN | FRUIT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/energybar
	name = "\improper High-power energy bars"
	icon_state = "energybar"
	desc = "Энергетический батончик, скорее являющийся мощной батарейкой. Если вы не Эфириал, то наверное, не стоит это есть."
	trash_type = /obj/item/trash/energybar
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/liquidelectricity/enriched = 3,
	)
	tastes = list("pure electricity" = 3, "fitness" = 2)
	foodtypes = TOXIC
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/peanuts
	name = "\improper Gallery's peanuts"
	desc = "Любимый снэк для тех, кто вечно на взводе."
	icon_state = "peanuts"
	trash_type = /obj/item/trash/peanuts
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	tastes = list("peanuts" = 4, "anger" = 1)
	foodtypes = JUNKFOOD | NUTS
	custom_price = PAYCHECK_CREW * 0.8 //nuts are expensive in real life, and this is the best food in the vendor.
	junkiness = 10 //less junky than other options, since peanuts are a decently healthy snack option
	w_class = WEIGHT_CLASS_SMALL
	var/safe_for_consumption = TRUE

/obj/item/food/peanuts/grind_results()
	return list(/datum/reagent/consumable/peanut_butter = 5, /datum/reagent/consumable/nutriment/fat/oil = 2)

/obj/item/food/peanuts/salted
	name = "\improper Gallery's salt reserves peanuts"
	desc = "Жареный арахис с солью."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/salt = 1,
	)
	tastes = list("peanuts" = 3, "salt" = 1, "high blood pressure" = 1)

/obj/item/food/peanuts/wasabi
	name = "\improper Gallery's raging wasabi peanuts"
	desc = "Самый злой из всех вкусов."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("peanuts" = 3, "wasabi" = 1, "rage" = 1)

/obj/item/food/peanuts/honey_roasted
	name = "\improper Gallery's delete sweet peanuts"
	desc = "Довольно горький для сладкого перекуса."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/sugar = 1,
	)
	tastes = list("peanuts" = 3, "honey" = 1, "bitterness" = 1)

/obj/item/food/peanuts/barbecue
	name = "\improper Gallery's IDEDBBQ peanuts"
	desc = "Говорили, что нет дыма без огня. Потом придумали баркекю."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/bbqsauce = 1,
	)
	tastes = list("peanuts" = 3, "bbq sauce" = 1, "arguments" = 1)

/obj/item/food/peanuts/ban_appeal
	name = "\improper Gallery's peanuts Ban Appel mix"
	desc = "Неудачная попытка создать походную смесь, запрещённая в 6 различных секторах. Ежегодные аппеляции отклоняются скорее не из-за токсичности фруктов, а из-за постоянных попыток обойти этот запрет."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/toxin/cyanide = 1,
	) //uses dried poison apples
	tastes = list("peanuts" = 3, "apples" = 1, "regret" = 1)
	safe_for_consumption = FALSE

/obj/item/food/peanuts/random
	name = "\improper Gallery's every-flavour peanuts"
	desc = "Какой вкус вам попался?"
	icon_state = "peanuts"
	safe_for_consumption = FALSE

GLOBAL_LIST_INIT(safe_peanut_types, populate_safe_peanut_types())

/proc/populate_safe_peanut_types()
	. = list()
	for(var/obj/item/food/peanuts/peanut_type as anything in subtypesof(/obj/item/food/peanuts))
		if(!initial(peanut_type.safe_for_consumption))
			continue
		. += peanut_type

/obj/item/food/peanuts/random/Initialize(mapload)
	// Generate a sample p
	var/peanut_type = pick(GLOB.safe_peanut_types)
	var/obj/item/food/sample = new peanut_type(loc)

	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/cnds
	name = "\improper C&Ds"
	desc = "По закону, мы не вправе утверждать, что они не растают у вас в руках."
	icon_state = "cnds"
	trash_type = /obj/item/trash/cnds
	food_reagents = list(
		/datum/reagent/consumable/sugar = 3,
		/datum/reagent/consumable/coco = 1,
	)
	tastes = list("chocolate candy" = 3)
	junkiness = 25
	foodtypes = JUNKFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cnds/suicide_act(mob/living/user)
	user.visible_message(span_suicide("[user] is letting [src] melt in [user.p_their()] hand! Кажется, [user.ru_p_they()] пытается совершить самоубийство!"))
	return TOXLOSS

/obj/item/food/cnds/caramel
	name = "caramel C&Ds"
	desc = "Начинённые сладкой карамелью, это худший кошмар для диабетика."
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/coco = 1,
		/datum/reagent/consumable/caramel = 1,
	)
	tastes = list("chocolate candy" = 2, "caramel" = 1)

/obj/item/food/cnds/pretzel
	name = "pretzel C&Ds"
	desc = "Eine köstliche Begleitung zu Ihrem Lieblingsbier."
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/coco = 1,
	)
	tastes = list("chocolate candy" = 2, "pretzel" = 1)
	foodtypes = JUNKFOOD | GRAIN

/obj/item/food/cnds/peanut_butter
	name = "peanut butter C&Ds"
	desc = "Любимые драже детей и инопланетян."
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/coco = 1,
		/datum/reagent/consumable/peanut_butter = 1,
	)
	tastes = list("chocolate candy" = 2, "peanut butter" = 1)

/obj/item/food/cnds/banana_honk
	name = "banana honk C&Ds"
	desc = "Официальный клон брендированных драже, теперь абсолютно везде. Хонк-хонк!"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/coco = 1,
		/datum/reagent/consumable/banana = 1,
	)
	tastes = list("chocolate candy" = 2, "banana" = 1)

/obj/item/food/cnds/random
	name = "mystery filled C&Ds"
	desc = "Драже со случайным вкусом. Попробуйте угадать!"

/obj/item/food/cnds/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/cnds) - /obj/item/food/cnds/random)
	var/obj/item/food/sample = new random_flavour(loc)
	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/pistachios
	name = "\improper Sweetie's Pistachios"
	desc = "Пачка премиальных фисташек известного бренда."
	icon_state = "pistachio"
	trash_type = /obj/item/trash/pistachios
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	) //a healthy but expensive snack
	tastes = list("pistachios" = 4, "subtle sweetness" = 1)
	foodtypes = JUNKFOOD | NUTS
	custom_price = PAYCHECK_CREW//pistachios are even more expensive.
	junkiness = 10 //on par with peanuts
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/pistachios/grind_results()
	return list(/datum/reagent/consumable/peanut_butter = 5, /datum/reagent/consumable/nutriment/fat/oil = 2)

/obj/item/food/semki
	name = "\improper Semki Sunflower Seeds"
	desc = "Пакет с жареными семенами подсолнуха, одинаково популярный среди коммунистов и космических гопников."
	icon_state = "semki"
	trash_type = /obj/item/trash/semki
	food_reagents = list(
		/datum/reagent/consumable/nutriment/fat/oil = 1,
		/datum/reagent/consumable/salt = 6,
	) //1 cornoil is equal to 1.33 nutriment
	tastes = list("sunflowers" = 5)
	foodtypes = JUNKFOOD | NUTS
	custom_price = PAYCHECK_LOWER * 0.4 //sunflowers are cheap in real life.
	bite_consumption = 1
	junkiness = 25
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/semki/healthy
	name = "roasted sunflower seeds"
	desc = "Домашние жареные семечки подсолнечника в бумажном стаканчике. Полезный и сытный перекус, который можно грызть, наблюдая за очередью к стойке Главы Персонала."
	icon_state = "sunseeds"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/iron = 2,
	)
	junkiness = 5 //Homemade or not, sunflower seets are always kinda junky
	foodtypes = JUNKFOOD | NUTS
	trash_type = /obj/item/trash/semki/healthy
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/cornchips
	name = "\improper Boritos corn chips"
	desc = "Кукурузные чипсы треугольной формы. Немного пресноватые, но отлично подойдут для обмакивания в соус."
	icon_state = "boritos"
	trash_type = /obj/item/trash/boritos
	bite_consumption = 2
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
		/datum/reagent/consumable/salt = 3,
	)
	junkiness = 20
	custom_price = PAYCHECK_LOWER * 0.8  //we are filled to the brim with flavor
	tastes = list("fried corn" = 1)
	foodtypes = JUNKFOOD | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cornchips/make_leave_trash()
	AddElement(/datum/element/food_trash, trash_type, FOOD_TRASH_POPABLE)

/obj/item/food/cornchips/blue
	name = "\improper Coolest Ranch Boritos corn chips"
	desc = "Что было раньше, чесночный ранч или Боритос Ранч?"
	icon_state = "boritos"
	trash_type = /obj/item/trash/boritos
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
		/datum/reagent/consumable/salt = 3,
		/datum/reagent/consumable/yoghurt = 1,
		/datum/reagent/consumable/garlic = 1,
	)
	tastes = list("fried corn" = 1, "coolest ranch" = 3)

/obj/item/food/cornchips/green
	name = "\improper Spess Salsa Boritos corn chips"
	desc = "Чипсы с начинкой из сальсы, избавляющие от необходимости искать соус."
	icon_state = "boritosgreen"
	trash_type = /obj/item/trash/boritos/green
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
		/datum/reagent/consumable/salt = 3,
		/datum/reagent/consumable/astrotame = 1,
		/datum/reagent/consumable/blackpepper = 1,
	)
	tastes = list("fried corn" = 1, "spess salsa" = 3)

/obj/item/food/cornchips/red
	name = "\improper Nacho Cheese Boritos corn chips"
	desc = "Известны тем, что пачкают всё вокруг оранжевой сырной крошкой."
	icon_state = "boritosred"
	trash_type = /obj/item/trash/boritos/red
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
		/datum/reagent/consumable/salt = 3,
		/datum/reagent/consumable/astrotame = 1,
		/datum/reagent/consumable/cornmeal = 1,
	)
	tastes = list("fried corn" = 1, "nacho cheese" = 3)

/obj/item/food/cornchips/purple
	name = "\improper Spicy Sweet Chili Boritos corn chips"
	desc = "Единственный вкус по-настоящему острых начос."
	icon_state = "boritospurple"
	trash_type = /obj/item/trash/boritos/purple
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
		/datum/reagent/consumable/salt = 3,
		/datum/reagent/consumable/capsaicin = 1,
		/datum/reagent/consumable/sugar = 1,
	)
	tastes = list("fried corn" = 1, "spicy & sweet chili" = 3)

/obj/item/food/cornchips/random
	name = "\improper Boritos cornchips"
	desc = "Кукурузные чипсы с одним из четырех случайных вкусов!"

/obj/item/food/cornchips/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/cornchips) - /obj/item/food/cornchips/random)

	var/obj/item/food/sample = new random_flavour(loc)

	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	icon_state = sample.icon_state
	trash_type = sample.trash_type
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/hot_shots
	name = "\improper Hot Shots"
	desc = "Популярные среди бейсбольных фанатов снеки. Стоит попробовать, и оторваться невозможно!"
	icon_state = "hot_shots"
	trash_type = /obj/item/trash/hot_shots
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("popcorn" = 1, "caramel" = 1, "peanuts" = 1)
	foodtypes = JUNKFOOD | SUGAR | NUTS
	junkiness = 25
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/hot_shots/grind_results()
	return list(/datum/reagent/consumable/nutriment/fat/oil = 3, /datum/reagent/consumable/caramel = 2)

/obj/item/food/sticko
	name = "\improper Sticko Classic"
	desc = "Классические лакомства для всех возрастов. Стико - это сдобная соломка, покрытая молочным шоколадом. Для многих это самое лучшее сочетание, не требующее изысков."
	icon_state = "sticko_classic"
	trash_type = /obj/item/trash/sticko
	food_reagents = list(
		/datum/reagent/consumable/sugar = 3,
		/datum/reagent/consumable/coco = 1,
	)
	tastes = list("biscuit" = 1, "chocolate" = 1)
	junkiness = 25
	foodtypes = JUNKFOOD | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/sticko/matcha
	name = "\improper Sticko Matcha"
	desc = "Классические лакомства для всех возрастов. Стико - это сдобная соломка, покрытая белым шоколадом со вкусом матчи. Пробуждает чувства традиции."
	icon_state = "sticko_matcha"
	trash_type = /obj/item/trash/sticko/matcha
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/coco = 1,
		/datum/reagent/consumable/caramel = 1,
	)
	tastes = list("biscuit" = 1, "matcha" = 1)

/obj/item/food/sticko/nutty
	name = "\improper Sticko Nutty"
	desc = "Классические лакомства для всех возрастов. Стико - это сдобная соломка, покрытая молочным шоколадом с начинкой из арахисовой пасты для богатого орехового вкуса."
	icon_state = "sticko_nutty"
	trash_type = /obj/item/trash/sticko/nutty
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/coco = 1,
	)
	tastes = list("biscuit" = 1, "peanut butter" = 1)
	foodtypes = JUNKFOOD | GRAIN | NUTS

/obj/item/food/sticko/pineapple
	name = "\improper Sticko Pineapple"
	desc = "Классические лакомства для всех возрастов. Стико - это сдобная соломка, покрытая белым шоколадом с ананасовым сиропом. Для тех из вас, кому по вкусу ананас."
	icon_state = "sticko_pineapple"
	trash_type = /obj/item/trash/sticko/pineapple
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/coco = 1,
		/datum/reagent/consumable/peanut_butter = 1,
	)
	tastes = list("biscuit" = 1, "pineapple" = 1)
	foodtypes = JUNKFOOD | GRAIN | PINEAPPLE

/obj/item/food/sticko/yuyake
	name = "\improper Sticko Yūyake"
	desc = "Классические лакомства для всех возрастов. Стико - это сдобная соломка, покрытая белым шоколадом со вкусом юяке. Освежающий арбузный перекус."
	icon_state = "sticko_yuyake"
	trash_type = /obj/item/trash/sticko/yuyake
	food_reagents = list(
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/coco = 1,
		/datum/reagent/consumable/banana = 1,
	)
	tastes = list("biscuit" = 1, "melon" = 1)

/obj/item/food/sticko/random
	name = "\improper Sticko Mystery"
	desc = "Классические лакомства для всех возрастов. Стико - это сдобная соломка, покрытая шоколадом. Снеки упакованы в непрозрачную обертку, а вкус придется угадать самостоятельно."

/obj/item/food/sticko/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/sticko) - /obj/item/food/sticko/random)
	var/obj/item/food/sample = new random_flavour(loc)
	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/shok_roks
	name = "\improper Shok-Roks - Stormcloud Candy flavour"
	desc = "Вы слышали о «Снэп-рокс», а теперь встречайте «Шок-рокс» — взрывную карамель для эфириалов! Доступна в 5 захватывающих вкусах, и в этой пачке — «Грозовое облако»: похоже на сахарную вату с проскакивающими внутри электрическими искрами!"
	icon_state = "shok_roks_candy"
	trash_type = /obj/item/trash/shok_roks
	food_reagents = list(
		/datum/reagent/consumable/liquidelectricity/enriched = 2,
		/datum/reagent/consumable/sugar = 3
	)
	tastes = list("sugar" = 1, "lightning" = 1)

/obj/item/food/shok_roks/citrus
	name = "\improper Shok-Roks - Cirrus Citrus flavour"
	desc = "Вы слышали о «Снэп-рокс», а теперь встречайте «Шок-рокс» — взрывную карамель для эфириалов! Доступна в 5 захватывающих вкусах, и в этой пачке — «Воздушный цитрус»: все вкусы цитрусовых и ни капли экстракта."
	icon_state = "shok_roks_citrus"
	trash_type = /obj/item/trash/shok_roks/citrus
	tastes = list("citrus" = 1, "lightning" = 1)

/obj/item/food/shok_roks/berry
	name = "\improper Shok-Roks - Berry Storm flavour"
	desc = "Вы слышали о «Снэп-рокс», а теперь встречайте «Шок-рокс» — взрывную карамель для эфириалов! Доступна в 5 захватывающих вкусах, и в этой пачке — «Ягодная буря»: насыщенный и неописуемый вкус кислых ягод!"
	icon_state = "shok_roks_berry"
	trash_type = /obj/item/trash/shok_roks/berry
	tastes = list("sour berry" = 1, "lightning" = 1)

/obj/item/food/shok_roks/tropical
	name = "\improper Shok-Roks - Tropical Thunder flavour"
	desc = "Вы слышали о «Снэп-рокс», а теперь встречайте «Шок-рокс» — взрывную карамель для эфириалов! Доступна в 5 захватывающих вкусах, и в этой пачке — «Тропический гром»: все тропические фрукты! Все ДО ЕДИНОГО!"
	icon_state = "shok_roks_tropical"
	trash_type = /obj/item/trash/shok_roks/tropical
	tastes = list("tropical fruits" = 1, "lightning" = 1)

/obj/item/food/shok_roks/lanternfruit
	name = "\improper Shok-Roks - Lightning Lanternfruit flavour"
	desc = "Вы слышали о «Снэп-рокс», а теперь встречайте «Шок-рокс» — взрывную карамель для эфириалов! Доступна в 5 захватывающих вкусах, и в этой пачке — «Лантернфрутовая молния»: тот самый вкус родом со Спраута! Особая линейка «Шок-рокс»!"
	icon_state = "shok_roks_lanternfruit"
	trash_type = /obj/item/trash/shok_roks/lanternfruit
	tastes = list("sour pear" = 1, "lightning" = 1)

/obj/item/food/shok_roks/random
	name = "\improper Shok-Roks - Hidden Hurricane flavour"
	desc = "Вы слышали о «Снэп-рокс», а теперь встречайте «Шок-рокс» — взрывную карамель для эфириалов! Доступна в 5 захватывающих вкусах, и в этой пачке может встретиться любой из них!"

/obj/item/food/shok_roks/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/shok_roks) - /obj/item/food/shok_roks/random)
	var/obj/item/food/sample = new random_flavour(loc)
	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	tastes = sample.tastes

	qdel(sample)

	. = ..()
