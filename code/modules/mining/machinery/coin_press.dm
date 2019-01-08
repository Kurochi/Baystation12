/obj/machinery/mineral/coin_puncher
	name = "Coin puncher"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "coinpress0"
	input_turf =  EAST
	output_turf = WEST

	var/coins_per_sheet = 10
	var/press_interval = 5 SECONDS
	var/busy = 0;

/obj/machinery/mineral/coin_puncher/New()
	..()
	component_parts = list(
		new /obj/item/weapon/circuitboard/coin_puncher(src),
		new /obj/item/weapon/stock_parts/manipulator(src)
		)

/obj/machinery/mineral/coin_puncher/examine(mob/user)
	. = ..(user)

	to_chat(user, "A coin puncher. It is operated by a lever.")
	if (busy)
		to_chat(user, "The coin puncher is currently busy.")

/obj/machinery/mineral/coin_puncher/attack_hand(mob/user as mob)
	//world.log << "attacked by hand"
	if(input_turf && output_turf)
		//world.log << "turfs detected"
		if (!busy)
			//world.log << "not busy"
			var/existing_material = 0
			for(var/obj/item/I in recursive_content_check(input_turf, sight_check = FALSE, include_mobs = FALSE))
				if(QDELETED(I) || !I.simulated || I.anchored || !istype(I, /obj/item/stack/material))
					//world.log << "it dun goofd"
					continue

				busy = 1
				var/obj/item/stack/material/S = I
				var/material/sheet_material = S.get_material()
				//world.log << "starting coin material check"
				//world.log << "coin types amounts: [LAZYLEN(subtypesof(/obj/item/weapon/material/coin))]"
				existing_material = 0
				for (var/T in subtypesof(/obj/item/weapon/material/coin))
					var/obj/item/weapon/material/coin/coin = new T() // Create the coin in null position to read its vars
					var/coin_material = coin.default_material
					qdel(coin) // Remove the coin after reading to avoid object bloating
					//world.log << "checking coin material type: [coin_material]"
					if (coin_material == sheet_material.name)
						//world.log << "matching material"
						existing_material = 1

						if (S.amount > 1)
							S.amount--
						else
							qdel(S)

						visible_message("<span class='notice'>The coin puncher eats up some [sheet_material.display_name], then starts punching out some coins.</span>")

						for (var/i=1; i <= coins_per_sheet; i++)
							spawn (press_interval / coins_per_sheet * i)
								if (i == coins_per_sheet)
									busy = 0
									visible_message("<span class='notice'>The coin puncher has finished punching coins.</span>")
								new T(output_turf)
								playsound(src, "sound/machines/bolts_up.ogg", 40, 0, -6)
						break

				if (existing_material)
					break
				else
					//world.log << "unmatching material"
					busy = 0
			if (!existing_material)
				to_chat(user, "<span class='warning'>This material cannot be made into coins!</span>")
		else
			to_chat(user, "<span class='warning'>The coin puncher is busy.</span>")
