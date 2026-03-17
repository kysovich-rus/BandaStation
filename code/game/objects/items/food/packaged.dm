// Pre-packaged meals, canned, wrapped, and vended

// Cans
/obj/item/food/canned
	name = "canned air"
	desc = "За этот воздух действительно заплатили..."
	food_reagents = list(
		/datum/reagent/oxygen = 6,
		/datum/reagent/nitrogen = 24,
	)
	icon = 'icons/obj/food/canned.dmi'
	icon_state = "peachcan"
	food_flags = FOOD_IN_CONTAINER
	w_class = WEIGHT_CLASS_NORMAL
	max_volume = 30
	w_class = WEIGHT_CLASS_SMALL
	preserved_food = TRUE

/obj/item/food/canned/make_germ_sensitive(mapload)
	return // It's in a can

/obj/item/food/canned/proc/open_can(mob/user)
	to_chat(user, span_notice("Вы тянете за язычок на крышке [src.declent_ru(GENITIVE)]."))
	playsound(user.loc, 'sound/items/foodcanopen.ogg', 50)
	reagents.flags |= OPENCONTAINER
	preserved_food = FALSE

/obj/item/food/canned/attack_self(mob/user)
	if(!is_drainable())
		open_can(user)
		icon_state = "[icon_state]_open"
	return ..()

/obj/item/food/canned/attack(mob/living/target, mob/user, def_zone)
	if (!is_drainable())
		to_chat(user, span_warning("Крышка [src.declent_ru(GENITIVE)]герметично закрыта!"))
		return FALSE
	return ..()

/obj/item/food/canned/beans
	name = "tin of beans"
	desc = "Сочные бобы в не такой уж сочной консервной банке."
	icon_state = "beans"
	trash_type = /obj/item/trash/can/food/beans
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/protein = 9,
		/datum/reagent/consumable/ketchup = 4,
	)
	tastes = list("beans" = 1)
	foodtypes = VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/canned/peaches
	name = "canned peaches"
	desc = "Хорошая банка аппетитных сочных персиков в сладком сиропе."
	icon_state = "peachcan"
	trash_type = /obj/item/trash/can/food/peaches
	food_reagents = list(
		/datum/reagent/consumable/peachjuice = 20,
		/datum/reagent/consumable/sugar = 8,
		/datum/reagent/consumable/nutriment = 2,
	)
	tastes = list("peaches" = 7, "tin" = 1)
	foodtypes = FRUIT | SUGAR

/obj/item/food/canned/peaches/maint
	name = "maintenance peaches"
	desc = "Пыльная банка персиков со стертым сроком годности. Наверняка съедобны."
	icon_state = "peachcanmaint"
	trash_type = /obj/item/trash/can/food/peaches/maint
	tastes = list("peaches" = 1, "tin" = 7)
	venue_value = FOOD_PRICE_EXOTIC

/obj/item/food/canned/tomatoes
	name = "canned San Marzano tomatoes"
	desc = "Банка отборных маринованных томатов с холмов Южной Италии. Прямиком с Терры!"
	icon_state = "tomatoescan"
	trash_type = /obj/item/trash/can/food/tomatoes
	food_reagents = list(
		/datum/reagent/consumable/tomatojuice = 20,
		/datum/reagent/consumable/salt = 2,
	)
	tastes = list("tomato" = 7, "tin" = 1)
	foodtypes = VEGETABLES //fuck you, real life!

/obj/item/food/canned/pine_nuts
	name = "canned pine nuts"
	desc = "Небольшая баночка кедровых орехов. Отлично подходят в качестве закуски."
	icon_state = "pinenutscan"
	trash_type = /obj/item/trash/can/food/pine_nuts
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("pine nuts" = 1)
	foodtypes = NUTS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/envirochow
	name = "dog eat dog envirochow"
	desc = "Первый полностью экологичный корм для питомцев, изготовленный с применением древне-британских методов животноводства."
	icon_state = "envirochow"
	trash_type = /obj/item/trash/can/food/envirochow
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 9,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("dog food" = 5, "狗肉" = 3)
	foodtypes = MEAT | GROSS
	crafting_complexity = FOOD_COMPLEXITY_1
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/canned/envirochow/attack_animal(mob/living/simple_animal/user, list/modifiers)
	if(!check_buffability(user))
		return ..()
	apply_buff(user)

/obj/item/food/canned/envirochow/attack_basic_mob(mob/living/basic/user, list/modifiers)
	if(!check_buffability(user))
		return ..()
	apply_buff(user)
	return TRUE

/obj/item/food/canned/envirochow/interact_with_atom(atom/interacting_with, mob/living/user, list/modifiers)
	if(!check_buffability(interacting_with))
		return NONE
	apply_buff(interacting_with, user)
	return ITEM_INTERACT_SUCCESS

///This proc checks if the mob is able to receive the buff.
/obj/item/food/canned/envirochow/proc/check_buffability(mob/living/hungry_pet)
	if(!isanimal_or_basicmob(hungry_pet)) // Not a pet
		return FALSE
	if(!is_drainable()) // Can is not open
		return FALSE
	if(hungry_pet.stat) // Parrot deceased
		return FALSE
	if(hungry_pet.mob_biotypes & (MOB_BEAST|MOB_REPTILE|MOB_BUG))
		return TRUE
	else
		return FALSE // Humans, robots & spooky ghosts not allowed

///This makes the animal eat the food, and applies the buff status effect to them.
/obj/item/food/canned/envirochow/proc/apply_buff(mob/living/simple_animal/hungry_pet, mob/living/dog_mom)
	hungry_pet.apply_status_effect(/datum/status_effect/limited_buff/health_buff) //the status effect keeps track of the stacks
	hungry_pet.visible_message(
		span_notice("[hungry_pet] лопает [src.declent_ru(ACCUSATIVE)]."),
		span_nicegreen("Вы лопаете [src.declent_ru(ACCUSATIVE)]."),
		span_notice("Вы слышите влажные чавкающие звуки."))
	SEND_SIGNAL(src, COMSIG_FOOD_CONSUMED, hungry_pet, dog_mom ? dog_mom : hungry_pet) //If there is no dog mom, we assume the pet fed itself.
	playsound(loc, 'sound/items/eatfood.ogg', rand(30, 50), TRUE)
	qdel(src)

/obj/item/food/canned/squid_ink
	name = "canned squid ink"
	desc = "Необычный ингредиент в классической кулинарии, придающий блюду характерный вкус морепродуктов - заодно окрашивая его в смоляно-чёрный цвет."
	icon_state = "squidinkcan"
	trash_type = /obj/item/trash/can/food/squid_ink
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/salt = 5)
	tastes = list("seafood" = 7, "tin" = 1)
	foodtypes = SEAFOOD

/obj/item/food/canned/squid_ink/open_can(mob/user)
	. = ..()
	AddComponent(/datum/component/splat, \
		memory_type = /datum/memory/witnessed_inking, \
		smudge_type = /obj/effect/decal/cleanable/food/squid_ink, \
		moodlet_type = /datum/mood_event/inked, \
		splat_color = COLOR_NEARLY_ALL_BLACK, \
		hit_callback = CALLBACK(src, PROC_REF(blind_em)), \
	)

/obj/item/food/canned/squid_ink/proc/blind_em(mob/living/victim, can_splat_on)
	if(can_splat_on)
		victim.adjust_temp_blindness_up_to(2.5 SECONDS, 3 SECONDS)
		victim.adjust_confusion_up_to(2.5 SECONDS, 3 SECONDS)
	victim.visible_message(span_warning("[victim] [genderize_ru(victim.gender, "облит", "облита", "облито", "облиты")] [src.declent_ru(INSTRUMENTAL)]!"), span_userdanger("Вы облиты [src.declent_ru(INSTRUMENTAL)]!"))
	playsound(victim, SFX_DESECRATION, 50, TRUE)

/obj/item/food/canned/chap
	name = "can of CHAP"
	desc = "CHAP: Chopped Ham And Pork - рубленая ветчина со свининой. Классический американский консервированный продукт, позволивший накормить людей, выиграть в мировой войне и обеспечить миллионы солдат заболеваниями сердца."
	icon_state = "chapcan"
	trash_type = /obj/item/trash/can/food/chap
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/salt = 5)
	tastes = list("meat" = 7, "tin" = 1)
	foodtypes = MEAT

/obj/item/food/canned/chap/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/chapslice, 5, 3 SECONDS, table_required = TRUE, screentip_verb = "Cut")

/obj/item/food/chapslice
	name = "slice of chap"
	desc = "Тонкий ломтик ветчины, пригодный для жарки или для приготовления сэндвичей."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "chapslice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	tastes = list("meat" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/chapslice/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/grilled_chapslice, rand(20 SECONDS, 40 SECONDS), TRUE, TRUE)

/obj/item/food/grilled_chapslice
	name = "grilled slice of chap"
	desc = "Ломтик горячей скворчащей ветчины, хорошая составляющая сбалансированного рациона."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "chapslice_grilled"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 3
	)
	tastes = list("meat" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

// DONK DINNER: THE INNOVATIVE WAY TO GET YOUR DAILY RECOMMENDED ALLOWANCE OF SALT... AND THEN SOME!
/obj/item/food/ready_donk
	name = "\improper Ready-Donk: Bachelor Chow"
	desc = "Донк-ужин быстрого приготовления. Теперь с любимыми ароматизаторами и усилителями вкуса."
	icon_state = "ready_donk_bachelor"
	trash_type = /obj/item/trash/ready_donk
	food_reagents = list(/datum/reagent/consumable/nutriment = 5)
	tastes = list("food?" = 2, "laziness" = 1)
	foodtypes = MEAT | JUNKFOOD
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

	/// What type of ready-donk are we warmed into?
	var/warm_type = /obj/item/food/ready_donk/warm

	/// What reagents should be added when this item is warmed?
	var/static/list/added_reagents = list(/datum/reagent/medicine/omnizine = 3)

/obj/item/food/ready_donk/make_bakeable()
	AddComponent(/datum/component/bakeable, warm_type, rand(15 SECONDS, 20 SECONDS), TRUE, TRUE, added_reagents)

/obj/item/food/ready_donk/make_microwaveable()
	AddElement(/datum/element/microwavable, warm_type, added_reagents)

/obj/item/food/ready_donk/examine_more(mob/user)
	. = ..()
	. += span_notice("<i>Вы изучаете обратную сторону коробки...</i>")
	. += "\t[span_info("Ready-Donk: изготовлено Donk Co.")]"
	. += "\t[span_info("Рекомендации к приготовлению: откройте упаковку и вскройте пленку. Разогревайте в микроволновке в течение 2 минут на высокой мощности. Дайте остыть перед употреблением. Осторожно - горячо!")]"
	. += "\t[span_info("В порции 200г содержатся: натрия хлорид - 8г; жиры - 25г (из них 22г - насыщенные); сахар - 2г.")]"
	return .

/obj/item/food/ready_donk/warm
	name = "warm Ready-Donk: Bachelor Chow"
	desc = "Донк-ужин быстрого приготовления. Теперь с любимыми ароматизаторами и усилителями вкуса. Наконец-то, горячая еда!"
	icon_state = "ready_donk_bachelor_warm"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/medicine/omnizine = 3,
	)
	tastes = list("food?" = 2, "laziness" = 1)

	// Don't burn your warn ready donks.
	warm_type = /obj/item/food/badrecipe

/obj/item/food/ready_donk/mac_n_cheese
	name = "\improper Ready-Donk: Donk-a-Roni"
	desc = "Ярко-рыжие макароны с сыром, которые нужно только разогреть!"
	icon_state = "ready_donk_mac"
	tastes = list("cheesy pasta" = 2, "laziness" = 1)
	foodtypes = GRAIN | DAIRY | JUNKFOOD

	warm_type = /obj/item/food/ready_donk/warm/mac_n_cheese

/obj/item/food/ready_donk/warm/mac_n_cheese
	name = "warm Ready-Donk: Donk-a-Roni"
	desc = "Ярко-рыжие макароны с сыром, готовые к употреблению!"
	icon_state = "ready_donk_mac_warm"
	tastes = list("cheesy pasta" = 2, "laziness" = 1)
	foodtypes = GRAIN | DAIRY | JUNKFOOD

/obj/item/food/ready_donk/donkhiladas
	name = "\improper Ready-Donk: Donkhiladas"
	desc = "Фирменные Донкиладас от Donk Co. с донк-соусом, обещающие 'подлинный' вкус Мехико."
	icon_state = "ready_donk_mex"
	tastes = list("enchiladas" = 2, "laziness" = 1)
	foodtypes = GRAIN | DAIRY | MEAT | VEGETABLES | JUNKFOOD

	warm_type = /obj/item/food/ready_donk/warm/donkhiladas

/obj/item/food/ready_donk/warm/donkhiladas
	name = "warm Ready-Donk: Donkhiladas"
	desc = "Фирменные Донкиладас от Donk Co. с донк-соусом, такие же горячие, как раскалённое мексиканское солнце."
	icon_state = "ready_donk_mex_warm"
	tastes = list("enchiladas" = 2, "laziness" = 1)
	foodtypes = GRAIN | DAIRY | MEAT | VEGETABLES | JUNKFOOD

/obj/item/food/ready_donk/nachos_grandes //which translates to... big nachos
	name = "\improper Ready-Donk: Donk Sol Series Boritos Nachos Grandes"
	desc = "Подготовьтесь к игре с классическими начос в новой подаче от Donk Co. - спонсора Лиги Донк Сол! Только для вас: хрустящие чипсы Boritos с плавленным сыром, острым мясом и бобами, дополненные гуакамоле, пико-де-гальо и фирменным донк-соусом. Матч!"
	icon_state = "ready_donk_nachos"
	tastes = list("nachos" = 2, "laziness" = 1)
	foodtypes = GRAIN | DAIRY | MEAT | VEGETABLES | JUNKFOOD

	warm_type = /obj/item/food/ready_donk/warm/nachos_grandes

/obj/item/food/ready_donk/warm/nachos_grandes
	name = "warm Ready-Donk: Donk Sol Series Boritos Nachos Grandes"
	desc = "Подготовьтесь к игре с классическими начос в новой подаче от Donk Co. - спонсора Лиги Донк Сол! Только для вас: хрустящие чипсы Boritos с плавленным сыром, острым мясом и бобами, дополненные гуакамоле, пико-де-гальо и фирменным донк-соусом. Горячие чипсы, как на настоящем стадионе!"
	icon_state = "ready_donk_nachos_warm"
	tastes = list("nachos" = 2, "laziness" = 1)
	foodtypes = GRAIN | DAIRY | MEAT | VEGETABLES | JUNKFOOD

/obj/item/food/ready_donk/donkrange_chicken
	name = "\improper Ready-Donk: Donk-range Chicken"
	desc = "Китайская классика от Donk Co. на вашем столе. Фирменный острый цыпленок гриль с жареным перцем и луком на подушке из вареного на пару риса."
	icon_state = "ready_donk_orange"
	tastes = list("orange chicken" = 2, "laziness" = 1)
	foodtypes = GRAIN | MEAT | VEGETABLES | JUNKFOOD

	warm_type = /obj/item/food/ready_donk/warm/donkrange_chicken

/obj/item/food/ready_donk/warm/donkrange_chicken
	name = "warm Ready-Donk: Donk-range Chicken"
	desc = "Китайская классика от Donk Co. на вашем столе. Фирменный острый цыпленок гриль с жареным перцем и луком на подушке из вареного на пару риса. От блюда исходит густой пар, словно горячее дыхание дракона."
	icon_state = "ready_donk_orange_warm"
	tastes = list("orange chicken" = 2, "laziness" = 1)
	foodtypes = GRAIN | MEAT | VEGETABLES | JUNKFOOD

/obj/item/food/ready_donk/salisbury_steak
	name = "\improper Ready-Donk Donkriginals: Salisbury Steak"
	desc = "Бестселлер Donk Co.: кусочки рубленного бифштекса с ароматной подливой, дополненные нежным картофельным пюре. Идеальный выбор для вечера перед телевизором."
	icon_state = "ready_donk_salisbury"
	tastes = list("salisbury steak" = 2, "laziness" = 1)
	foodtypes = MEAT | VEGETABLES | JUNKFOOD

	warm_type = /obj/item/food/ready_donk/warm/salisbury_steak

/obj/item/food/ready_donk/warm/salisbury_steak
	name = "warm Ready-Donk Donkriginals: Salisbury Steak"
	desc = "Бестселлер Donk Co.: кусочки рубленного бифштекса с ароматной подливой, дополненные нежным картофельным пюре. Любимое блюдо к финалу любимого сериала."
	icon_state = "ready_donk_salisbury_warm"
	tastes = list("salisbury steak" = 2, "laziness" = 1)
	foodtypes = MEAT | VEGETABLES | JUNKFOOD

/obj/item/food/ready_donk/country_chicken
	name = "\improper Ready-Donk Donkriginals: Country-Fried Chicken"
	desc = "Прямо как в том самом фильме: 'хрустящая' курочка с деревенской подливой, картофельным пюре и зеленым горошком."
	icon_state = "ready_donk_chicken"
	tastes = list("country-fried chicken" = 2, "laziness" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | JUNKFOOD

	warm_type = /obj/item/food/ready_donk/warm/country_chicken

/obj/item/food/ready_donk/warm/country_chicken
	name = "warm Ready-Donk Donkriginals: Country-Fried Chicken"
	desc = "Прямо как в том самом фильме: 'хрустящая' курочка с деревенской подливой, картофельным пюре и зеленым горошком. Ешьте, пока горячее!"
	icon_state = "ready_donk_chicken_warm"
	tastes = list("country-fried chicken" = 2, "laziness" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | JUNKFOOD

// Rations
/obj/item/food/rationpack
	name = "ration pack"
	desc = "Печально известный твердый брусок, <i>на вид</i> напоминающий шоколад в невзрачной серой обёртке. Не раз спасал жизни солдатам в тяжелой ситуации - чаще всего, останавливая летящие пули."
	icon_state = "rationpack"
	bite_consumption = 3
	junkiness = 15
	tastes = list("cardboard" = 3, "sadness" = 3)
	foodtypes = null //Don't ask what went into them. You're better off not knowing.
	food_reagents = list(
		/datum/reagent/consumable/nutriment/stabilized = 10,
		/datum/reagent/consumable/nutriment = 2,
	) //Won't make you fat. Will make you question your sanity.

///Override for checkliked callback
/obj/item/food/rationpack/make_edible()
	. = ..()
	AddComponentFrom(SOURCE_EDIBLE_INNATE, /datum/component/edible, check_liked = CALLBACK(src, PROC_REF(check_liked)))

/obj/item/food/rationpack/proc/check_liked(mob/mob) //Nobody likes rationpacks. Nobody.
	return FOOD_DISLIKED
