
////////////////////////////////////////////OTHER////////////////////////////////////////////
/obj/item/food/watermelonslice
	name = "watermelon slice"
	desc = "Кусочек водянистой прелести. И лакомство, и напиток."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "watermelonslice"
	food_reagents = list(
		/datum/reagent/water = 1,
		/datum/reagent/consumable/nutriment/vitamin = 0.2,
		/datum/reagent/consumable/nutriment = 1,
	)
	tastes = list("watermelon" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/watermelonslice/juice_typepath()
	return /datum/reagent/consumable/watermelonjuice

/obj/item/food/watermelonmush
	name = "watermelon mush"
	desc = "Капля водянистой прелести."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "watermelonpulp"
	food_reagents = list(
		/datum/reagent/water = 2,
		/datum/reagent/consumable/nutriment/vitamin = 0.1,
		/datum/reagent/consumable/nutriment = 0.5,
	)
	tastes = list("watermelon" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/watermelonmush/juice_typepath()
	return /datum/reagent/consumable/watermelonjuice

/obj/item/food/holymelonslice
	name = "holymelon slice"
	desc = "Кусочек священной прелести."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "holymelonslice"
	food_reagents = list(
		/datum/reagent/water/holywater = 0.5,
		/datum/reagent/consumable/nutriment/vitamin = 0.2,
		/datum/reagent/consumable/nutriment = 1,
	)
	tastes = list("holymelon" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/holymelonslice/juice_typepath()
	return /datum/reagent/water/holywater

/obj/item/food/holymelonmush
	name = "holymelon mush"
	desc = "Капля священной прелести."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "holymelonpulp"
	food_reagents = list(
		/datum/reagent/water/holywater = 1,
		/datum/reagent/consumable/nutriment/vitamin = 0.1,
		/datum/reagent/consumable/nutriment = 0.5,
	)
	tastes = list("holymelon" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/holymelonmush/juice_typepath()
	return /datum/reagent/water/holywater

/obj/item/food/barrelmelonslice
	name = "barrelmelon slice"
	desc = "Кусочек хмельной прелести."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "barrelmelonslice"
	food_reagents = list(
		/datum/reagent/consumable/ethanol/beer = 1,
		/datum/reagent/consumable/nutriment/vitamin = 0.2,
		/datum/reagent/consumable/nutriment = 1,
	)
	tastes = list("beer" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/barrelmelonslice/juice_typepath()
	return /datum/reagent/consumable/ethanol/beer

/obj/item/food/barrelmelonmush
	name = "barrelmelon mush"
	desc = "Капля хмельной прелести."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "barrelmelonpulp"
	food_reagents = list(
		/datum/reagent/consumable/ethanol/beer = 2,
		/datum/reagent/consumable/nutriment/vitamin = 0.1,
		/datum/reagent/consumable/nutriment = 0.5,
	)
	tastes = list("beer" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/barrelmelonmush/juice_typepath()
	return /datum/reagent/consumable/ethanol/beer

/obj/item/food/appleslice
	name = "apple slice"
	desc = "Отличный перекус после школы."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "appleslice"
	food_reagents = list(
		/datum/reagent/consumable/applejuice = 1,
		/datum/reagent/consumable/nutriment/vitamin = 0.2,
		/datum/reagent/consumable/nutriment = 1,
	)
	tastes = list("apple" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/appleslice/juice_typepath()
	return /datum/reagent/consumable/applejuice

/obj/item/food/hugemushroomslice
	name = "huge mushroom slice"
	desc = "Кусочек огромного гриба."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "hugemushroomslice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("mushroom" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/hugemushroomslice/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/swabable, CELL_LINE_TABLE_WALKING_MUSHROOM, CELL_VIRUS_TABLE_GENERIC_MOB, 1, 5)

/obj/item/food/popcorn
	name = "popcorn"
	desc = "Осталось найти АБСОЛЮТНОЕ КИНО."
	icon_state = "popcorn"
	trash_type = /obj/item/trash/popcorn
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	bite_consumption = 0.1 //this snack is supposed to be eating during looooong time. And this it not dinner food! --rastaf0
	tastes = list("popcorn" = 3, "butter" = 1)
	foodtypes = JUNKFOOD
	eatverbs = list("bite", "nibble", "gnaw", "gobble", "chomp")
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/popcorn/salty
	name = "salty popcorn"
	icon_state = "salty_popcorn"
	desc = "Соленый попкорн — классика на все времена."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/salt = 2,
	)
	tastes = list("salt" = 2, "popcorn" = 1)
	trash_type = /obj/item/trash/popcorn/salty
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/popcorn/caramel
	name = "caramel popcorn"
	icon_state = "caramel_popcorn"
	desc = "Попкорн, покрытый сладкой карамелью. Прелесть!"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/caramel = 4,
	)
	tastes = list("caramel" = 2, "popcorn" = 1)
	foodtypes = JUNKFOOD | SUGAR
	trash_type = /obj/item/trash/popcorn
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/soydope
	name = "soy dope"
	desc = "Кашица из перетёртых соевых бобов."
	icon_state = "soydope"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/protein = 1,
	)
	tastes = list("soy" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/badrecipe
	name = "burned mess"
	desc = "За такое вообще-то с кухни увольняют."
	icon_state = "badrecipe"
	food_reagents = list(/datum/reagent/toxin/bad_food = 30)
	foodtypes = GROSS
	w_class = WEIGHT_CLASS_SMALL
	preserved_food = TRUE //Can't decompose any more than this
	/// Variable that holds the reference to the stink lines we get when we're moldy, yucky yuck
	var/stink_particles

/obj/item/food/badrecipe/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_ITEM_GRILL_PROCESS, PROC_REF(OnGrill))
	RegisterSignals(src, list(COMSIG_ITEM_GRILLED_RESULT, COMSIG_ITEM_BAKED_RESULT, COMSIG_ITEM_MICROWAVE_COOKED, COMSIG_OBJ_DECOMPOSITION_RESULT), PROC_REF(convert_to_bad_food))
	if(stink_particles)
		add_shared_particles(stink_particles)

///Prevents grilling burnt shit from well, burning.
/obj/item/food/badrecipe/proc/OnGrill()
	SIGNAL_HANDLER
	return COMPONENT_HANDLED_GRILLING

/**
 * The bad food reagent is cleared when cooked rather than just spawned and the reagents of the item this is from are transferred to this instead,
 * So we want to convert most of the consumable reagents into bad food, which is what makes the burned mess a bad thing to eat, taste aside.
 */
/obj/item/food/badrecipe/proc/convert_to_bad_food(atom/source)
	SIGNAL_HANDLER
	var/bad_food_amount = 0
	for(var/datum/reagent/consumable/food_reagent in reagents.reagent_list)
		var/amount_to_remove = food_reagent.volume * rand(6, 8) * 0.1 //around 60% to 80% of the volume is to be converted.
		food_reagent.volume -= amount_to_remove
		bad_food_amount += amount_to_remove
	reagents.update_total()
	reagents.add_reagent(/datum/reagent/toxin/bad_food, bad_food_amount, reagtemp = reagents.chem_temp)

/obj/item/food/badrecipe/Destroy(force)
	if (stink_particles)
		remove_shared_particles(stink_particles)
	return ..()

// We override the parent procs here to prevent burned messes from cooking into burned messes.
/obj/item/food/badrecipe/make_grillable()
	return
/obj/item/food/badrecipe/make_bakeable()
	return

/obj/item/food/badrecipe/moldy
	name = "moldy mess"
	desc = "Гнилостная, отвратительная культура плесени, полная муравьев. Где-то там, <i>в какой-то момент</i>, была еда."
	food_reagents = list(/datum/reagent/consumable/mold = 30)
	preserved_food = FALSE
	ant_attracting = TRUE
	decomp_type = null
	decomposition_time = 30 SECONDS
	stink_particles = /particles/stink

/obj/item/food/badrecipe/moldy/bacteria
	name = "bacteria rich moldy mess"
	desc = "Этот прогорклый комок отвратительной желчи кишит не только насекомыми, но и различными микроскопическими культурами. <i>Он движется, когда вы не смотрите.</i>"

/obj/item/food/badrecipe/moldy/bacteria/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/swabable, CELL_LINE_TABLE_MOLD, CELL_VIRUS_TABLE_GENERIC, rand(2, 4), 25)

/obj/item/food/spidereggs
	name = "spider eggs"
	desc = "Скопление сочных паучьих яиц. Отличный гарнир, когда вам наплевать на своё здоровье."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "spidereggs"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/toxin = 2,
	)
	tastes = list("cobwebs" = 1)
	foodtypes = MEAT | TOXIC | BUGS | EGG
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/spidereggs/processed
	name = "processed spider eggs"
	desc = "Скопление сочных паучьих яиц. Легко лопаются во рту, не вызывая тошноты."
	icon_state = "spidereggs"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4)
	tastes = list("cobwebs" = 1)
	foodtypes = MEAT | BUGS
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/spiderling
	name = "spiderling"
	desc = "Он слегка подёргивается в руке. Фу..."
	icon = 'icons/mob/simple/arachnoid.dmi'
	icon_state = "spiderling_dead"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/toxin = 4,
	)
	tastes = list("cobwebs" = 1, "guts" = 2)
	foodtypes = MEAT | TOXIC | BUGS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/melonfruitbowl
	name = "melon fruit bowl"
	desc = "Для тех, кто хочет испытать взрыв вкуса."
	icon_state = "melonfruitbowl"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("melon" = 1)
	foodtypes = VEGETABLES|FRUIT|ORANGES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/melonkeg
	name = "melon keg"
	desc = "Если б фрукты были водкой?"
	icon_state = "melonkeg"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 9,
		/datum/reagent/consumable/ethanol/vodka = 15,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	max_volume = 80
	bite_consumption = 5
	tastes = list("grain alcohol" = 1, "fruit" = 1)
	foodtypes = FRUIT | ALCOHOL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/honeybar
	name = "honey nut bar"
	desc = "Овсяные хлопья и орехи скреплены медовой глазурью и спрессованы в аккуратный питательный батончик."
	icon_state = "honeybar"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/honey = 5,
	)
	tastes = list("oats" = 3, "nuts" = 2, "honey" = 1)
	foodtypes = GRAIN | SUGAR
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/powercrepe
	name = "powercrepe"
	desc = "Большая сила порождает большие блинчики. На вид это блинчик с начинкой из желе, но на вкус он очень сытный."
	icon_state = "powercrepe"
	inhand_icon_state = "powercrepe"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/cherryjelly = 5,
	)
	force = 30
	throwforce = 15
	block_chance = 55
	armour_penetration = 80
	block_sound = 'sound/items/weapons/parry.ogg'
	wound_bonus = -50
	attack_verb_continuous = list("slaps", "slathers")
	attack_verb_simple = list("slap", "slather")
	w_class = WEIGHT_CLASS_BULKY
	tastes = list("cherry" = 1, "crepe" = 1)
	foodtypes = GRAIN | FRUIT | SUGAR
	food_flags = FOOD_FINGER_FOOD
	crafting_complexity = FOOD_COMPLEXITY_5
	custom_materials = list(/datum/material/iron = HALF_SHEET_MATERIAL_AMOUNT, /datum/material/glass = SMALL_MATERIAL_AMOUNT * 3)

/obj/item/food/branrequests
	name = "bran requests cereal"
	desc = "Сухие хлопья, которые удовлетворят вашу потребность в отрубях. Обладают уникальным вкусом изюма и соли."
	icon_state = "bran_requests"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/salt = 8,
	)
	tastes = list("bran" = 4, "raisins" = 3, "salt" = 1)
	foodtypes = SUGAR|GRAIN|FRUIT|BREAKFAST
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/butter
	name = "stick of butter"
	desc = "Брусок восхитительной, золотистой, жирной субстанции, придающей сливочный вкус любому блюду."
	icon_state = "butter"
	food_reagents = list(/datum/reagent/consumable/nutriment/fat = 6)
	tastes = list("butter" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL
	dog_fashion = /datum/dog_fashion/head/butter
	var/can_stick = TRUE

/obj/item/food/butter/examine(mob/user)
	. = ..()
	if (can_stick)
		. += span_notice("При наличии металлических прутьев вы могли бы сделать <b>масло на палочке</b>.")

/obj/item/food/butter/attackby(obj/item/item, mob/user, list/modifiers, list/attack_modifiers)
	if(!istype(item, /obj/item/stack/rods) || !can_stick)
		return ..()
	var/obj/item/stack/rods/rods = item
	if(!rods.use(1))//borgs can still fail this if they have no metal
		to_chat(user, span_warning("У вас недостаточно железа, чтобы нанизать [src.declent_ru(ACCUSATIVE)] на стержень!"))
		return ..()
	to_chat(user, span_notice("Вы вводите металлический стержень в брусок масла."))
	user.temporarilyRemoveItemFromInventory(src)
	var/obj/item/food/butter/on_a_stick/new_item = new(drop_location())
	if (new_item.IsReachableBy(user))
		user.put_in_hands(new_item)
	qdel(src)
	return TRUE

/obj/item/food/butter/on_a_stick //there's something so special about putting it on a stick.
	name = "butter on a stick"
	desc = "Брусок восхитительной, золотистой, жирной субстанции на металлической палочке."
	icon_state = "butteronastick"
	trash_type = /obj/item/stack/rods
	food_flags = FOOD_FINGER_FOOD
	venue_value = FOOD_PRICE_CHEAP
	can_stick = FALSE

/obj/item/food/butter/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/butterslice, 3, 3 SECONDS, table_required = TRUE, screentip_verb = "Slice", sound_to_play = SFX_KNIFE_SLICE)

/obj/item/food/butterslice
	name = "butter slice"
	desc = "Кусочек масла для всех ваших масляных нужд."
	icon_state = "butterslice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5)
	tastes = list("butter" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/onionrings
	name = "onion rings"
	desc = "Ломтики лука в густом кляре."
	icon_state = "onionrings"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3)
	gender = PLURAL
	tastes = list("batter" = 3, "onion" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/pineappleslice
	name = "pineapple slice"
	desc = "Ломтики сочного ананаса в виде колец."
	icon_state = "pineapple_slice"
	tastes = list("pineapple" = 1)
	foodtypes = FRUIT | PINEAPPLE
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/pineappleslice/juice_typepath()
	return /datum/reagent/consumable/pineapplejuice

/obj/item/food/crab_rangoon
	name = "crab rangoon"
	desc = "У них много названий, например, крабовые пирожки, сырные вонтоны, крабовые пельмени? Как бы вы их ни называли, это восхитительное сочетание сливочного сыра и крабового мяса."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "crabrangoon"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("cream cheese" = 4, "crab" = 3, "crispiness" = 2)
	foodtypes = MEAT | DAIRY | GRAIN
	venue_value = FOOD_PRICE_CHEAP
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/pesto
	name = "pesto"
	desc = "Сочетание твёрдого сыра, соли, трав, чеснока, масла и кедровых орехов. Часто используется в качестве соуса для пасты или пиццы, а также подаётся с хлебом."
	icon_state = "pesto"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("pesto" = 1)
	foodtypes = VEGETABLES | DAIRY | NUTS
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/tomato_sauce
	name = "tomato sauce"
	desc = "Томатный соус, идеально подходящий для пиццы или пасты. Мамма миа!"
	icon_state = "tomato_sauce"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("tomato" = 1, "herbs" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/bechamel_sauce
	name = "béchamel sauce"
	desc = "Классический белый соус, распространённый в нескольких европейских культурах."
	icon_state = "bechamel_sauce"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("cream" = 1)
	foodtypes = DAIRY | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/roasted_bell_pepper
	name = "roasted bell pepper"
	desc = "Почерневший, покрытый пузырьками болгарский перец. Отлично подходит для приготовления соусов."
	icon_state = "roasted_bell_pepper"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("bell pepper" = 1, "char" = 1)
	foodtypes = VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/pierogi
	name = "pierogi"
	desc = "Родственники пельменей, приготовленные путем заворачивания пресного теста вокруг соленой или сладкой начинки и варки в кипящей воде. В данном случае начинка состоит из смеси картофеля и лука."
	icon_state = "pierogi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("potato" = 1, "onions" = 1)
	foodtypes = GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/stuffed_cabbage
	name = "stuffed cabbage"
	desc = "Аппетитная смесь из рубленого мяса и риса, завернутая в отварные капустные листья и политая томатным соусом. Просто объедение!"
	icon_state = "stuffed_cabbage"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("juicy meat" = 1, "rice" = 1, "cabbage" = 1)
	foodtypes = MEAT|VEGETABLES|GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/seaweedsheet
	name = "seaweed sheet"
	desc = "Высушенный лист морских водорослей, используемый для приготовления суши. Используйте на нём какой-нибудь ингредиент, чтобы завернутть его в суши!"
	icon_state = "seaweedsheet"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("seaweed" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/seaweedsheet/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, /obj/item/food/sushi/empty, CUSTOM_INGREDIENT_ICON_FILL, max_ingredients = 6)

/obj/item/food/seaweedsheet/saltcane
	name = "dried saltcane sheathe"
	desc = "Высушенный и выпрямленный стебель солёного тростника, используемый для приготовления суши. Используйте на нём какой-нибудь ингредиент, чтобы завернутть его в суши!"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("seaweed" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/granola_bar
	name = "granola bar"
	desc = "Сухая смесь овсяных хлопьев, орехов, фруктов и шоколада, спрессованная в жевательный батончик. Отличная закуска во время космических путешествий."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "granola_bar"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/nutriment/protein = 4,
	)
	tastes = list("granola" = 1, "nuts" = 1, "chocolate" = 1, "raisin" = 1)
	foodtypes = GRAIN|NUTS|FRUIT|SUGAR
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/onigiri
	name = "onigiri"
	desc = "Шарик из вареного риса с начинкой, сформированный в форме треугольника и обернутый водорослями. Можно добавлять и другие начинки!"
	icon = 'icons/obj/food/food.dmi'
	icon_state = "onigiri"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("rice" = 1, "dried seaweed" = 1)
	foodtypes = VEGETABLES|GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/onigiri/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, /obj/item/food/onigiri/empty, CUSTOM_INGREDIENT_ICON_NOCHANGE, max_ingredients = 4)

// empty onigiri for custom onigiri
/obj/item/food/onigiri/empty
	name = "onigiri"
	desc = "Шарик из вареного риса, сформированный в форме треугольника и обернутый водорослями. Можно добавить начинку!"
	icon_state = "onigiri"
	foodtypes = VEGETABLES|GRAIN
	tastes = list()

/obj/item/food/pacoca
	name = "paçoca"
	desc = "Традиционное бразильское лакомство, приготовленное из молотого арахиса, сахара и соли, спрессованных в цилиндр."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "pacoca"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/nutriment/protein = 2,
	)
	tastes = list("peanuts" = 1, "sweetness" = 1)
	foodtypes = NUTS | SUGAR
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/pickle
	name = "pickle"
	desc = "Слегка сморщенный и потемневший огурец. Запах кисловатый, но невероятно манящий."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "pickle"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/pickle = 1,
		/datum/reagent/medicine/antihol = 2,
	)
	tastes = list("pickle" = 1, "spices" = 1, "salt water" = 2)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/pickle/juice_typepath()
	return /datum/reagent/consumable/pickle

/obj/item/food/pickle/make_edible()
	. = ..()
	AddComponentFrom(SOURCE_EDIBLE_INNATE, /datum/component/edible, check_liked = CALLBACK(src, PROC_REF(check_liked)))

/obj/item/food/pickle/proc/check_liked(mob/living/carbon/human/consumer)
	var/obj/item/organ/liver/liver = consumer.get_organ_slot(ORGAN_SLOT_LIVER)
	if(!HAS_TRAIT(consumer, TRAIT_AGEUSIA) && liver && HAS_TRAIT(liver, TRAIT_CORONER_METABOLISM))
		return FOOD_LIKED

/obj/item/food/springroll
	name = "spring roll"
	desc = "Тарелка полупрозрачных рисовых оберток с начинкой из свежих овощей, подается со сладким соусом чили. На любителя."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "springroll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("rice wrappers" = 1, "spice" = 1, "crunchy veggies" = 1)
	foodtypes = GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/cheese_pierogi
	name = "cheese pierogi"
	desc = "Родственники пельменей, приготовленные путем заворачивания пресного теста вокруг соленой или сладкой начинки и варки в кипящей воде. В данном случае начинка состоит из смеси картофеля и сыра."
	icon_state = "cheese_pierogi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("potato" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/meat_pierogi
	name = "meat pierogi"
	desc = "Родственники пельменей, приготовленные путем заворачивания пресного теста вокруг соленой или сладкой начинки и варки в кипящей воде. В данном случае начинка состоит из смеси картофеля и мяса."
	icon_state = "meat_pierogi"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/nutriment/protein = 2,
	)
	tastes = list("potato" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | MEAT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/stuffed_eggplant
	name = "stuffed eggplant"
	desc = "Отварная половинка баклажана, мякоть которого смешана с мясом, сыром и овощами."
	icon_state = "stuffed_eggplant"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment/protein = 4,
	)
	tastes = list("cooked eggplant" = 5, "cheese" = 4, "ground meat" = 3, "veggies" = 2)
	foodtypes = VEGETABLES | MEAT | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/moussaka
	name = "moussaka"
	desc = "Слоёное средиземноморское блюдо из баклажанов, овощей и мяса с соусом бешамель. Можно нарезать."
	icon_state = "moussaka"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/consumable/nutriment/protein = 20,
	)
	tastes = list("cooked eggplant" = 5, "potato" = 1, "baked veggies" = 2, "meat" = 4, "bechamel sauce" = 3)
	foodtypes = MEAT|VEGETABLES|GRAIN|DAIRY
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/moussaka/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/moussaka_slice, 4, 3 SECONDS, table_required = TRUE,  screentip_verb = "Cut")

/obj/item/food/moussaka_slice
	name = "moussaka slice"
	desc = "Многослойное средиземноморское блюдо из баклажанов, овощей и мяса с соусом бешамель. Объедение!"
	icon_state = "moussaka_slice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
		/datum/reagent/consumable/nutriment/protein = 5,
	)
	tastes = list("cooked eggplant" = 5, "potato" = 1, "baked veggies" = 2, "meat" = 4, "bechamel sauce" = 3)
	foodtypes = MEAT|VEGETABLES|GRAIN|DAIRY
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT / 4)

/obj/item/food/candied_pineapple
	name = "candied pineapple"
	desc = "Кусочек ананаса, покрытый сахаром и высушенный до состояния жевательной массы."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	icon_state = "candied_pineapple_1"
	base_icon_state = "candied_pineapple"
	tastes = list("sugar" = 2, "chewy pineapple" = 4)
	foodtypes = SUGAR|FRUIT|PINEAPPLE
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/candied_pineapple/Initialize(mapload)
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 3)]"

/obj/item/food/raw_pita_bread
	name = "raw pita bread"
	desc = "Сырой круг подслащенного теста - будущая пита."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "raw_pita_bread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("dough" = 2)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/raw_pita_bread/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/pita_bread, rand(15 SECONDS, 30 SECONDS), TRUE, TRUE)

/obj/item/food/raw_pita_bread/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pita_bread, rand(15 SECONDS, 30 SECONDS), TRUE, TRUE)

/obj/item/food/pita_bread
	name = "pita bread"
	desc = "Универсальная сладкая лепешка средиземноморского происхождения."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "pita_bread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	tastes = list("pita bread" = 2)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/tzatziki_sauce
	name = "tzatziki sauce"
	desc = "Соус или дип на основе чеснока, широко используемый в средиземноморской и ближневосточной кухне. Вкусен сам по себе, особенно с питой или овощами."
	icon_state = "tzatziki_sauce"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("garlic" = 4, "cucumber" = 2, "olive oil" = 2)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/tzatziki_and_pita_bread
	name = "tzatziki and pita bread"
	desc = "Соус дзадзики с питой для макания. Очень полезно и вкусно одновременно."
	icon_state = "tzatziki_and_pita_bread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 8,
	)
	tastes = list("pita bread" = 4, "tzatziki sauce" = 2, "olive oil" = 2)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/grilled_beef_gyro
	name = "grilled beef gyro"
	desc = "Традиционное греческое блюдо из мяса, завернутого в питу, с помидорами, капустой, луком и соусом дзадзики."
	icon_state = "grilled_beef_gyro"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/nutriment/protein = 6,
	)
	tastes = list("pita bread" = 4, "tender meat" = 2, "tzatziki sauce" = 2, "mixed veggies" = 2)
	foodtypes = VEGETABLES | GRAIN | MEAT
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/vegetarian_gyro
	name = "vegetarian gyro"
	desc = "Традиционный греческий гирос, где вместо мяса используются огурцы. Он по-прежнему обладает насыщенным вкусом и очень питателен."
	icon_state = "vegetarian_gyro"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/vitamin = 12,
	)
	tastes = list("pita bread" = 4, "cucumber" = 2, "tzatziki sauce" = 2, "mixed veggies" = 2)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_TINY
	crafting_complexity = FOOD_COMPLEXITY_4

///Extracted from squids, or any fish with the ink fish trait.
/obj/item/food/ink_sac
	name = "ink sac"
	desc = "Чернильный мешок какой-то рыбы или моллюска. Его можно консервировать с помощью кухонного комбайна."
	icon_state = "ink_sac"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/salt = 5)
	tastes = list("seafood" = 3)
	foodtypes = SEAFOOD|RAW

/obj/item/food/ink_sac/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/splat, \
		memory_type = /datum/memory/witnessed_inking, \
		smudge_type = /obj/effect/decal/cleanable/food/squid_ink, \
		moodlet_type = /datum/mood_event/inked, \
		splat_color = COLOR_NEARLY_ALL_BLACK, \
		hit_callback = CALLBACK(src, PROC_REF(blind_em)), \
	)

/obj/item/food/ink_sac/proc/blind_em(mob/living/victim, can_splat_on)
	if(can_splat_on)
		victim.adjust_temp_blindness_up_to(2.5 SECONDS, 3 SECONDS)
		victim.adjust_confusion_up_to(2.5 SECONDS, 3 SECONDS)
	victim.visible_message(span_warning("[victim] [genderize_ru(victim.gender, "облит", "облита", "облито", "облиты")] чернилами из [src.declent_ru(GENITIVE)]!"), span_userdanger("Вы облиты чернилами из [src.declent_ru(GENITIVE)]!"))
	playsound(victim, SFX_DESECRATION, 50, TRUE)
