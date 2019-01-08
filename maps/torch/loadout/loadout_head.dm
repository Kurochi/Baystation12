/datum/gear/head/solberet
	display_name = "SolGov beret selection"
	description = "A beret denoting service in an organization within SolGov."
	path = /obj/item/clothing/head/beret/solgov
	allowed_branches = SOLGOV_BRANCHES

/datum/gear/head/solberet/New()
	..()
	var/berets = list()
	berets["peacekeeper beret"] = /obj/item/clothing/head/beret/solgov
	berets["home guard beret"] = /obj/item/clothing/head/beret/solgov/homeguard
	berets["gateway administration beret"] = /obj/item/clothing/head/beret/solgov/gateway
	berets["customs and trade beret"] = /obj/item/clothing/head/beret/solgov/customs
	berets["government research beret"] = /obj/item/clothing/head/beret/solgov/research
	berets["health service beret"] = /obj/item/clothing/head/beret/solgov/health
	berets["diplomatic security beret"] = /obj/item/clothing/head/beret/solgov/diplomatic
	berets["border security beret"] = /obj/item/clothing/head/beret/solgov/borderguard
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/whitentberet
	display_name = "beret, NanoTrasen security"
	path = /obj/item/clothing/head/beret/guard
	allowed_roles = list("Security Guard")

/datum/gear/head/cap
	allowed_roles = NON_MILITARY_ROLES

/datum/gear/head/hairflower
	allowed_roles = FORMAL_ROLES

/datum/gear/head/bow
	allowed_roles = FORMAL_ROLES

/datum/gear/head/hardhat
	allowed_roles = TECHNICAL_ROLES

/datum/gear/head/formalhat
	allowed_roles = FORMAL_ROLES

/datum/gear/head/informalhat
	path = /obj/item/clothing/head/cowboy_hat
	allowed_roles = SEMIFORMAL_ROLES

/datum/gear/head/welding
	allowed_roles = TECHNICAL_ROLES

/datum/gear/tactical/balaclava
	allowed_roles = ARMORED_ROLES

/datum/gear/head/fleetberet
	display_name = "Fleet branch beret selection"
	description = "A beret denoting service in one of the fleets within the SCG Fleet."
	path = /obj/item/clothing/head/beret/solgov/fleet/branch
	allowed_branches = list(/datum/mil_branch/fleet)

