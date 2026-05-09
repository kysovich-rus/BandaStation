/obj/item/food/burger
	icon = 'icons/obj/food/burgerbread.dmi'
	icon_state = "hburger"
	inhand_icon_state = "burger"
	bite_consumption = 3
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("bun" = 2, "beef patty" = 4)
	foodtypes = GRAIN | MEAT //lettuce doesn't make burger a vegetable.
	eat_time = 15 //Quick snack
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/plain
	name = "plain burger"
	desc = "Основа любого питательо завтрака."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	foodtypes = GRAIN | MEAT
	custom_price = PAYCHECK_CREW * 0.8
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/plain/Initialize(mapload)
	. = ..()
	if(!prob(1))
		return
	new/obj/effect/particle_effect/fluid/smoke(get_turf(src))
	playsound(src, 'sound/effects/smoke.ogg', 50, TRUE)
	visible_message(span_warning("О боги! [src] испорчен! Но что если... выдать это за новое фирменное блюдо?"))
	name = "steamed ham"
	desc = pick("Ах, Глава Персонала, здравствуйте. Надеюсь, вы готовы к незабываемому обеду!",
		"И вы называете это “паровой говядиной”, хотя она явно приготовлена в микроволновке?",
		"ИКН Сьерра? В это время смены, в это время года, в этом секторе космоса — и прямо в вашем холодильнике?",
		"Знаете, эти бургеры на вкус довольно похожи на те, что подают на “Бургер Станции”.")

/obj/item/food/burger/human
	name = "human burger"
	desc = "Кровавый бургер."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("bun" = 2, "long pig" = 4)
	foodtypes = MEAT | GRAIN
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/human/on_craft_completion(list/components, datum/crafting_recipe/current_recipe, atom/crafter)
	. = ..()
	for(var/datum/material/meat/mob_meat/mob_meat_material in custom_materials)
		if(mob_meat_material.subjectname)
			name = "[mob_meat_material.subjectname] burger"
		else if(mob_meat_material.subjectjob)
			name = "[mob_meat_material.subjectjob] burger"

/obj/item/food/burger/corgi
	name = "corgi burger"
	desc = "Чудовище."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("bun" = 4, "corgi meat" = 2)
	foodtypes = GRAIN | MEAT
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/appendix
	name = "appendix burger"
	desc = "На вкус как аппендицит."
	icon_state = "appendixburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("bun" = 4, "grass" = 2)
	foodtypes = GRAIN | MEAT | GORE
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/fish
	name = "fillet -o- carp sandwich"
	desc = "Где-то кричит космический карп."
	icon_state = "fishburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("bun" = 4, "fish" = 4)
	foodtypes = GRAIN | SEAFOOD | DAIRY
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/burger/tofu
	name = "tofu burger"
	desc = "Что... это за мясо?"
	icon_state = "tofuburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("bun" = 4, "tofu" = 4)
	foodtypes = GRAIN | VEGETABLES
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/roburger
	name = "roburger"
	desc = "Единственная органика здесь - это салат. Бип."
	icon_state = "roburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/cyborg_mutation_nanomachines = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("bun" = 4, "lettuce" = 2, "sludge" = 1)
	foodtypes = GRAIN | TOXIC
	venue_value = FOOD_PRICE_EXOTIC

/obj/item/food/burger/roburger/big
	desc = "Эта огромная котлета выглядит как яд. Буп."
	max_volume = 120
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 11,
		/datum/reagent/cyborg_mutation_nanomachines = 80,
		/datum/reagent/consumable/nutriment/vitamin = 15,
	)

/obj/item/food/burger/xeno
	name = "xenoburger"
	desc = "Запах едкий, а на вкус - как ересь."
	icon_state = "xburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("bun" = 4, "acid" = 4)
	foodtypes = GRAIN | MEAT
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/bearger
	name = "bearger"
	desc = "Подавать в сыр-р-р-ром виде."
	icon_state = "bearger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("bun" = 2, "meat" = 2, "salmon" = 2)
	foodtypes = GRAIN | MEAT
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/clown
	name = "clown burger"
	desc = "Очень смешной на вкус..."
	icon_state = "clownburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("bun" = 2, "a bad joke" = 4)
	foodtypes = GRAIN
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/mime
	name = "mime burger"
	desc = "От его вкуса немеет язык."
	icon_state = "mimeburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 9,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nothing = 6,
	)
	foodtypes = GRAIN
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/brain
	name = "brainburger"
	desc = "Странно выглядящий бургер. Вы можете разглядеть в нём интеллект."
	icon_state = "brainburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/medicine/mannitol = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/nutriment/protein = 6,
	)
	tastes = list("bun" = 4, "brains" = 2)
	foodtypes = GRAIN | MEAT | GORE
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/ghost
	name = "ghost burger"
	desc = "Страшненький!"
	icon_state = "ghostburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 12,
		/datum/reagent/consumable/salt = 5,
	)
	tastes = list("bun" = 2, "ectoplasm" = 4)
	foodtypes = GRAIN
	alpha = 170
	verb_say = "moans"
	verb_yell = "wails"
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_3
	preserved_food = TRUE // It's made of ghosts

/obj/item/food/burger/ghost/Initialize(mapload, starting_reagent_purity, no_base_reagents)
	. = ..()
	START_PROCESSING(SSobj, src)
	AddComponent(/datum/component/ghost_edible, bite_consumption = bite_consumption)

/obj/item/food/burger/ghost/make_germ_sensitive()
	return // This burger moves itself so it shouldn't pick up germs from walking onto the floor

/obj/item/food/burger/ghost/process()
	if(!isturf(loc)) //no floating out of bags
		return
	var/paranormal_activity = rand(100)
	switch(paranormal_activity)
		if(97 to 100)
			audible_message("[src] звенит призрачными цепями.")
			playsound(loc, 'sound/misc/chain_rattling.ogg', 300, TRUE)
		if(91 to 96)
			say(pick("УуУуУуу.", "УууууУУууУУуу!!"))
		if(84 to 90)
			dir = pick(NORTH, SOUTH, EAST, WEST, NORTHEAST, NORTHWEST, SOUTHEAST, SOUTHWEST)
			step(src, dir)
		if(71 to 83)
			step(src, dir)
		if(65 to 70)
			var/obj/machinery/light/light = locate(/obj/machinery/light) in view(4, src)
			light?.flicker()
		if(62 to 64)
			playsound(loc, SFX_HALLUCINATION_I_SEE_YOU, 50, TRUE, ignore_walls = FALSE)
		if(61)
			visible_message("[src] извергает сгусток эктоплазмы!")
			new /obj/effect/decal/cleanable/greenglow/ecto(loc)
			playsound(loc, 'sound/effects/splat.ogg', 200, TRUE)

/obj/item/food/burger/ghost/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/food/burger/red
	name = "red burger"
	desc = "Красный цвет скрывает следы крови. Или тот факт, что бургер сожжен до углей."
	icon_state = "cburger"
	color = COLOR_RED
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/red = 10,
	)
	tastes = list("bun" = 2, "red" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/orange
	name = "orange burger"
	desc = "Яркого морковного цвета. Содержит 0% морковного сока."
	icon_state = "cburger"
	color = COLOR_ORANGE
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/orange = 10,
	)
	tastes = list("bun" = 2, "orange" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/yellow
	name = "yellow burger"
	desc = "Сияет ярко-жёлтым до последнего кусочка."
	icon_state = "cburger"
	color = COLOR_YELLOW
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/yellow = 10,
	)
	tastes = list("bun" = 2, "yellow" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/green
	name = "green burger"
	desc = "Это не тухлое мясо, просто цвет такой!"
	icon_state = "cburger"
	color = COLOR_GREEN
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/green = 10,
	)
	tastes = list("bun" = 2, "green" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/blue
	name = "blue burger"
	desc = "Средне-голубой прожарки."
	icon_state = "cburger"
	color = COLOR_BLUE
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/blue = 10,
	)
	tastes = list("bun" = 2, "blue" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/purple
	name = "purple burger"
	desc = "Величественный и ширпотребный одновременно."
	icon_state = "cburger"
	color = COLOR_PURPLE
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/purple = 10,
	)
	tastes = list("bun" = 2, "purple" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/black
	name = "black burger"
	desc = "Этот бургер определенно передержали."
	icon_state = "cburger"
	color = COLOR_ALMOST_BLACK
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/black = 10,
	)
	tastes = list("bun" = 2, "black" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/white
	name = "white burger"
	desc = "Вкус титана!"
	icon_state = "cburger"
	color = COLOR_WHITE
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/colorful_reagent/powder/white = 10,
	)
	tastes = list("bun" = 2, "white" = 2)
	foodtypes = GRAIN | MEAT
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/spell
	name = "spell burger"
	desc = "Кулинарная магия! Колдун сучий!"
	icon_state = "spellburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("bun" = 4, "magic" = 2)
	foodtypes = GRAIN
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/bigbite
	name = "big bite burger"
	desc = "Забудьте про этот ваш Биг Хит! Вот ЭТО будущее!"
	icon_state = "bigbiteburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("bun" = 2, "meat" = 10)
	w_class = WEIGHT_CLASS_NORMAL
	foodtypes = GRAIN | MEAT | DAIRY
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/burger/jelly
	name = "jelly burger"
	desc = "Кулинарный шедевр..?"
	icon_state = "jellyburger"
	tastes = list("bun" = 4, "jelly" = 2)
	foodtypes = GRAIN | MEAT
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/jelly/slime
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/toxin/slimejelly = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	foodtypes = GRAIN | TOXIC

/obj/item/food/burger/jelly/cherry
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/cherryjelly = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	foodtypes = GRAIN | FRUIT

/obj/item/food/burger/superbite
	name = "super bite burger"
	desc = "Бургер с множеством котлет размером с гору. Наконец-то, нормальная еда!"
	icon_state = "superbiteburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 26,
		/datum/reagent/consumable/nutriment/protein = 40,
		/datum/reagent/consumable/nutriment/vitamin = 13,
	)
	w_class = WEIGHT_CLASS_NORMAL
	bite_consumption = 7
	max_volume = 100
	tastes = list("bun" = 4, "type two diabetes" = 10)
	foodtypes = GRAIN | MEAT | DAIRY | VEGETABLES | EGG
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/superbite/suicide_act(mob/living/user)
	user.visible_message(span_suicide("[user] пытается съесть [src.declent_ru(ACCUSATIVE)] за один укус! Кажется, [user.ru_p_they()] пытается совершить самоубийство!"))
	var/datum/component/edible/component = GetComponent(/datum/component/edible)
	component?.TakeBite(user, user)
	return OXYLOSS

/obj/item/food/burger/fivealarm
	name = "five alarm burger"
	desc = "ГОРИМ! ГОРИМ!"
	icon_state = "fivealarmburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/capsaicin = 5,
		/datum/reagent/consumable/condensedcapsaicin = 5,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("extreme heat" = 4, "bun" = 2)
	foodtypes = GRAIN | MEAT | VEGETABLES
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/rat
	name = "rat burger"
	desc = "В общем-то, никакого подвоха..."
	icon_state = "ratburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("dead rat" = 4, "bun" = 2)
	foodtypes = GRAIN | MEAT | GORE | RAW
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/baseball
	name = "home run baseball burger"
	desc = "Все еще теплый. Поднимающееся облако пара принимает форму бейсбольного мяча."
	icon_state = "baseball"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("bun" = 2, "a home run" = 4)
	foodtypes = GRAIN | GROSS
	custom_price = PAYCHECK_CREW * 0.8
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = /obj/item/melee/baseball_bat::custom_materials

/obj/item/food/burger/baconburger
	name = "bacon burger"
	desc = "Идеальное сочетание всего американского."
	icon_state = "baconburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("bacon" = 4, "bun" = 2)
	foodtypes = GRAIN | MEAT
	custom_premium_price = PAYCHECK_CREW * 1.6
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/burger/empoweredburger
	name = "empowered burger"
	desc = "Шокирующе хорош - если, конечно, вы питаетесь электричеством."
	icon_state = "empoweredburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/liquidelectricity/enriched = 6,
	)
	tastes = list("bun" = 2, "pure electricity" = 4)
	foodtypes = GRAIN | TOXIC
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/catburger
	name = "catburger"
	desc = "Кто сказал ”мяу”?"
	icon_state = "catburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("bun" = 4, "meat" = 2, "cat" = 2)
	foodtypes = GRAIN | MEAT | GORE
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/crab
	name = "crab burger"
	desc = "Аппетитная крабовая котлета, зажатая между двух половинок булки."
	icon_state = "crabburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("bun" = 2, "crab meat" = 4)
	foodtypes = GRAIN | SEAFOOD
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/soylent
	name = "soylent burger"
	desc = "Экологичный бургер из переработанного вторсырья биологического происхождения."
	icon_state = "soylentburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("bun" = 2, "assistant" = 4)
	foodtypes = GRAIN | MEAT | DAIRY
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/rib
	name = "mcrib"
	desc = "Неуловимый бургер в форме рёбрышек, доступный лишь в отдельных уголках галактики. Раньше явно было лучше."
	icon_state = "mcrib"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/bbqsauce = 1,
		)
	tastes = list("bun" = 2, "pork patty" = 4)
	foodtypes = GRAIN | MEAT | SUGAR | VEGETABLES
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/mcguffin
	name = "mcguffin"
	desc = "Дешёвая и жирная имитация яиц бенедикт."
	icon_state = "mcguffin"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/eggyolk = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("muffin" = 2, "bacon" = 3)
	foodtypes = GRAIN | MEAT | BREAKFAST | FRIED | EGG
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/chicken
	name = "chicken sandwich"
	//Apparently the proud people of Americlapstan object to this thing being called a burger.
	//Apparently McDonald's just calls it a burger in Europe as to not scare and confuse us.
	desc = "Аппетитный куриный сэндвич. Говорят, выручка с него идёт на криминализацию разоружения людей на Фронтире."
	icon_state = "chickenburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/mayonnaise = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
	)
	tastes = list("bun" = 2, "chicken" = 4, "God's covenant" = 1)
	foodtypes = GRAIN | MEAT
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/cheese
	name = "cheese burger"
	desc = "Бургер благородных кровей, облачённый в золотистый сыр."
	icon_state = "cheeseburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("bun" = 2, "beef patty" = 4, "cheese" = 3)
	foodtypes = GRAIN | MEAT | DAIRY
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/cheese/Initialize(mapload)
	. = ..()
	if(prob(33))
		icon_state = "cheeseburgeralt"

/obj/item/food/burger/crazy
	name = "crazy hamburger"
	desc = "Такую еду мог бы приготовить разве что безумный клоун в плаще. Впрочем, что нас не убивает, делает нас... страннее?"
	icon_state = "crazyburger"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/capsaicin = 3,
		/datum/reagent/consumable/condensedcapsaicin = 3,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("bun" = 2, "beef patty" = 4, "cheese" = 2, "beef soaked in chili" = 3, "a smoking flare" = 2)
	foodtypes = GRAIN | MEAT | DAIRY | VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(
		/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2,
		/datum/material/iron = SMALL_MATERIAL_AMOUNT * 0.5,
		/datum/material/plasma = SMALL_MATERIAL_AMOUNT * 0.5,
		/datum/material/plastic = SMALL_MATERIAL_AMOUNT * 0.5,
	)

/obj/item/food/burger/crazy/Initialize(mapload)
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/item/food/burger/crazy/process(seconds_per_tick) // DIT EES HORRIBLE
	if(SPT_PROB(2.5, seconds_per_tick))
		do_smoke(0, src, loc, smoke_type = /datum/effect_system/fluid_spread/smoke/bad/green)

// empty burger you can customize
/obj/item/food/burger/empty
	name = "burger"
	desc = "Безумный бургер от безумного шеф-повара."
	icon_state = "custburg"
	tastes = list("bun")
	foodtypes = GRAIN

/obj/item/food/burger/sloppy_moe
	name = "sloppy moe"
	desc = "Сочный мясной фарш с луком и соусом барбекю, кое-как выложенный на булочку. Очень вкусно, но руки вы перепачкаете в любом случае."
	icon_state = "sloppy_moe"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("juicy meat" = 4, "BBQ sauce" = 3, "onions" = 2, "bun" = 2)
	foodtypes = MEAT|VEGETABLES|GRAIN
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)
