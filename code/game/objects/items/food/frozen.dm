/obj/item/food/icecreamsandwich
	name = "ice cream sandwich"
	desc = "Мороженое, которое носить с собой, в собственной съедобной упаковке."
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "icecreamsandwich"
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/ice = 4,
	)
	tastes = list("ice cream" = 1)
	foodtypes = GRAIN | DAIRY | SUGAR
	food_flags = FOOD_FINGER_FOOD
	crafting_complexity = FOOD_COMPLEXITY_2
	crafted_food_buff = /datum/status_effect/food/chilling

/obj/item/food/strawberryicecreamsandwich
	name = "strawberry ice cream sandwich"
	desc = "Клубничное мороженое, которое носить с собой, в собственной съедобной упаковке."
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "strawberryicecreamsandwich"
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/ice = 4,
	)
	tastes = list("ice cream" = 2, "berry" = 2)
	foodtypes = GRAIN|FRUIT|DAIRY|SUGAR
	food_flags = FOOD_FINGER_FOOD
	crafting_complexity = FOOD_COMPLEXITY_3
	crafted_food_buff = /datum/status_effect/food/chilling

/obj/item/food/spacefreezy
	name = "space freezy"
	desc = "Лучшее мороженое в галактике."
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "spacefreezy"
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/bluecherryjelly = 5,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("blue cherries" = 2, "ice cream" = 2)
	foodtypes = GRAIN|FRUIT|DAIRY|SUGAR
	crafting_complexity = FOOD_COMPLEXITY_3
	crafted_food_buff = /datum/status_effect/food/chilling

/obj/item/food/spacefreezy/make_edible()
	. = ..()
	AddComponent(/datum/component/ice_cream_holder)

/obj/item/food/sundae
	name = "sundae"
	desc = "Классический десерт."
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "sundae"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/banana = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("ice cream" = 1, "banana" = 1)
	foodtypes = GRAIN|FRUIT|DAIRY|SUGAR
	crafting_complexity = FOOD_COMPLEXITY_3
	crafted_food_buff = /datum/status_effect/food/chilling

/obj/item/food/sundae/make_edible()
	. = ..()
	AddComponent(/datum/component/ice_cream_holder, y_offset = -2, sweetener = /datum/reagent/consumable/caramel)

/obj/item/food/honkdae
	name = "honkdae"
	desc = "Любимый десерт клоуна."
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "honkdae"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/banana = 10,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("ice cream" = 1, "banana" = 1, "a bad joke" = 1)
	foodtypes = GRAIN|FRUIT|DAIRY|SUGAR
	crafting_complexity = FOOD_COMPLEXITY_4
	crafted_food_buff = /datum/status_effect/food/chilling

/obj/item/food/honkdae/make_edible()
	. = ..()
	AddComponent(/datum/component/ice_cream_holder, y_offset = -2) //The sugar will react with the banana forming laughter. Honk!

/////////////
//SNOWCONES//
/////////////

/obj/item/food/snowcones //We use this as a base for all other snowcones
	name = "flavorless snowcone"
	desc = "Это просто нашинкованный лёд. Хотя жевать его все равно весело."
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "flavorless_sc"
	w_class = WEIGHT_CLASS_SMALL
	trash_type = /obj/item/reagent_containers/cup/glass/sillycup //We dont eat paper cups
	food_reagents = list(
		/datum/reagent/water = 11,
	) // We dont get food for water/juices
	tastes = list("ice" = 1, "water" = 1)
	foodtypes = SUGAR //We use SUGAR as a base line to act in as junkfood, other wise we use fruit
	food_flags = FOOD_FINGER_FOOD
	crafting_complexity = FOOD_COMPLEXITY_2
	crafted_food_buff = /datum/status_effect/food/chilling

/obj/item/food/snowcones/on_craft_completion(list/components, datum/crafting_recipe/food/current_recipe, atom/crafter)
	. = ..()
	// replaces the ice from the input with water
	reagents.remove_reagent(/datum/reagent/consumable/ice, 15)
	reagents.add_reagent(/datum/reagent/water, 11)
	// then add 1u nutriment for free
	reagents.add_reagent(/datum/reagent/consumable/nutriment, 1)
	// the juice component will be transferred in from crafting

/obj/item/food/snowcones/lime
	name = "lime snowcone"
	desc = "Снежок в бумажном стаканчике, политый лаймовым сиропом."
	icon_state = "lime_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/limejuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "limes" = 5)
	foodtypes = FRUIT

/obj/item/food/snowcones/lemon
	name = "lemon snowcone"
	desc = "Снежок в бумажном стаканчике, политый лимонным сиропом."
	icon_state = "lemon_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/lemonjuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "lemons" = 5)
	foodtypes = FRUIT

/obj/item/food/snowcones/apple
	name = "apple snowcone"
	desc = "Снежок в бумажном стаканчике, политый яблочным сиропом."
	icon_state = "amber_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/applejuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "apples" = 5)
	foodtypes = FRUIT

/obj/item/food/snowcones/grape
	name = "grape snowcone"
	desc = "Снежок в бумажном стаканчике, политый виноградным сиропом."
	icon_state = "grape_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/grapejuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "grape" = 5)
	foodtypes = FRUIT

/obj/item/food/snowcones/orange
	name = "orange snowcone"
	desc = "Снежок в бумажном стаканчике, политый апельсиновым сиропом."
	icon_state = "orange_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/orangejuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "orange" = 5)
	foodtypes = FRUIT | ORANGES

/obj/item/food/snowcones/blue
	name = "bluecherry snowcone"
	desc = "Снежок в бумажном стаканчике, политый сиропом из голубой вишни. Вот это редкость!"
	icon_state = "blue_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/bluecherryjelly = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "blue" = 5, "cherries" = 5)
	foodtypes = FRUIT

/obj/item/food/snowcones/red
	name = "cherry snowcone"
	desc = "Снежок в бумажном стаканчике, политый вишнёвым сиропом."
	icon_state = "red_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/cherryjelly = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "red" = 5, "cherries" = 5)
	foodtypes = FRUIT

/obj/item/food/snowcones/berry
	name = "berry snowcone"
	desc = "Снежок в бумажном стаканчике, политый ягодным сиропом."
	icon_state = "berry_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/berryjuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "berries" = 5)
	foodtypes = FRUIT

/obj/item/food/snowcones/fruitsalad
	name = "fruit salad snowcone"
	desc = "Снежок в бумажном стаканчике, политый сладкой смесью из цитрусовых сиропов."
	icon_state = "fruitsalad_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/lemonjuice = 5,
		/datum/reagent/consumable/limejuice = 5,
		/datum/reagent/consumable/orangejuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "oranges" = 5, "limes" = 5, "lemons" = 5, "citrus" = 5, "salad" = 5)
	foodtypes = FRUIT | ORANGES

/obj/item/food/snowcones/pineapple
	name = "pineapple snowcone"
	desc = "Снежок в бумажном стаканчике, политый ананасовым сиропом."
	icon_state = "pineapple_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/pineapplejuice = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "pineapples" = 5)
	foodtypes = PINEAPPLE //Pineapple to allow all that like pineapple to enjoy

/obj/item/food/snowcones/mime
	name = "mime snowcone"
	desc = "..."
	icon_state = "mime_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nothing = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "nothing" = 5)
	foodtypes = SUGAR

/obj/item/food/snowcones/clown
	name = "clown snowcone"
	desc = "Снежок в бумажном стаканчике, политый отборным смехом."
	icon_state = "clown_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/laughter = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "jokes" = 5, "brainfreeze" = 5, "joy" = 5)
	foodtypes = SUGAR | FRUIT

/obj/item/food/snowcones/soda
	name = "space cola snowcone"
	desc = "Снежок в бумажном стаканчике, политый космической колой."
	icon_state = "soda_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/space_cola = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "cola" = 5)
	foodtypes = SUGAR

/obj/item/food/snowcones/spacemountainwind
	name = "space mountain wind snowcone"
	desc = "Снежок в бумажном стаканчике, политый Спейс Маунтин Винд."
	icon_state = "mountainwind_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/spacemountainwind = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "mountain wind" = 5)
	foodtypes = SUGAR


/obj/item/food/snowcones/pwrgame
	name = "pwrgame snowcone"
	desc = "Снежок в бумажном стаканчике, политый Павр Гейм."
	icon_state = "pwrgame_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/pwr_game = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "valid" = 5, "salt" = 5, "wats" = 5)
	foodtypes = SUGAR

/obj/item/food/snowcones/honey
	name = "honey snowcone"
	desc = "Снежок в бумажном стаканчике, политый мёдом."
	icon_state = "amber_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/honey = 5,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "flowers" = 5, "sweetness" = 5, "wax" = 1)
	foodtypes = SUGAR
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/snowcones/rainbow
	name = "rainbow snowcone"
	desc = "Окрашенный во все цвета радуги снежок в бумажном стаканчике."
	icon_state = "rainbow_sc"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/laughter = 25,
		/datum/reagent/water = 11,
	)
	tastes = list("ice" = 1, "water" = 1, "sunlight" = 5, "light" = 5, "slime" = 5, "paint" = 3, "clouds" = 3)
	foodtypes = SUGAR

/obj/item/food/popsicle
	name = "bug popsicle"
	desc = "Опа, а тут кто-то навайбкодил."
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "popsicle_stick_s"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/cream = 2,
		/datum/reagent/consumable/vanilla = 2,
		/datum/reagent/consumable/sugar = 4,
	)
	tastes = list("beetle juice")
	trash_type = /obj/item/popsicle_stick
	w_class = WEIGHT_CLASS_SMALL
	foodtypes = DAIRY | SUGAR
	food_flags = FOOD_FINGER_FOOD
	crafting_complexity = FOOD_COMPLEXITY_3
	crafted_food_buff = /datum/status_effect/food/chilling

	var/overlay_state = "creamsicle_o" //This is the edible part of the popsicle.
	var/bite_states = 4 //This value value is used for correctly setting the bite_consumption to ensure every bite changes the sprite. Do not set to zero.
	var/bitecount = 0


/obj/item/food/popsicle/Initialize(mapload)
	. = ..()
	bite_consumption = reagents.total_volume / bite_states
	update_icon() // make sure the popsicle overlay is primed so it's not just a stick until you start eating it

/obj/item/food/popsicle/make_edible()
	. = ..()
	AddComponentFrom(SOURCE_EDIBLE_INNATE, /datum/component/edible, after_eat = CALLBACK(src, PROC_REF(after_bite)))

/obj/item/food/popsicle/update_overlays()
	. = ..()
	if(!bitecount)
		. += initial(overlay_state)
		return
	. += "[initial(overlay_state)]_[min(bitecount, 3)]"

/obj/item/food/popsicle/proc/after_bite(mob/living/eater, mob/living/feeder, bitecount)
	src.bitecount = bitecount
	update_appearance()

/obj/item/popsicle_stick
	name = "popsicle stick"
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "popsicle_stick"
	desc = "Обычно на этой палочке размещается морозное лакомство."
	custom_materials = list(/datum/material/wood = SMALL_MATERIAL_AMOUNT * 0.20)
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_TINY
	force = 0

/obj/item/food/popsicle/creamsicle_orange
	name = "orange creamsicle"
	desc = "Классическое апельсиново-сливочное эскимо. Солнечное замороженное лакомство."
	food_reagents = list(
		/datum/reagent/consumable/orangejuice = 4,
		/datum/reagent/consumable/cream = 2,
		/datum/reagent/consumable/vanilla = 2,
		/datum/reagent/consumable/sugar = 4,
	)
	foodtypes = FRUIT | DAIRY | SUGAR | ORANGES
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/popsicle/creamsicle_berry
	name = "berry creamsicle"
	desc = "Яркое ягодно-сливочное эскимо. Годное ягодное замороженное лакомство."
	food_reagents = list(
		/datum/reagent/consumable/berryjuice = 4,
		/datum/reagent/consumable/cream = 2,
		/datum/reagent/consumable/vanilla = 2,
		/datum/reagent/consumable/sugar = 4,
	)
	overlay_state = "creamsicle_m"
	foodtypes = FRUIT | DAIRY | SUGAR
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/popsicle/jumbo
	name = "jumbo ice cream"
	desc = "Роскошное мороженое в насыщенном шоколаде. Выглядит меньше, чем то, каким вы его помните."
	food_reagents = list(
		/datum/reagent/consumable/hot_coco = 4,
		/datum/reagent/consumable/cream = 2,
		/datum/reagent/consumable/vanilla = 3,
		/datum/reagent/consumable/sugar = 2,
	)
	overlay_state = "jumbo"
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/popsicle/licorice_creamsicle
	name = "\improper Void Bar™"
	desc = "Лакричное мороженое с солью. Одновременно сладкое и солёное замороженное лакомство."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/salt = 1,
		/datum/reagent/consumable/cream = 2,
		/datum/reagent/consumable/vanilla = 1,
		/datum/reagent/consumable/sugar = 4,
	)
	tastes = list("salty liquorice")
	overlay_state = "licorice_creamsicle"
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/cornuto
	name = "cornuto"
	w_class = WEIGHT_CLASS_SMALL
	icon = 'icons/obj/food/frozen_treats.dmi'
	icon_state = "cornuto"
	desc = "Неаполитанский рожок с ванильным и шоколадным мороженым. Угрожающе посыпан карамелизированными орехами."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/hot_coco = 4,
		/datum/reagent/consumable/cream = 2,
		/datum/reagent/consumable/vanilla = 4,
		/datum/reagent/consumable/sugar = 2,
	)
	tastes = list("chopped hazelnuts", "waffle")
	foodtypes = GRAIN|DAIRY|SUGAR
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_3
	crafted_food_buff = /datum/status_effect/food/chilling

/obj/item/food/popsicle/meatsicle
	name = "meatsicle"
	desc = "Ужасающее порождение из сырого мяса на палочке, покрытого сахарной глазурью и затем замороженного."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/fat = 2,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/sugar = 4,
	)
	overlay_state = "meatsicle"
	foodtypes = RAW | MEAT | SUGAR
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)
