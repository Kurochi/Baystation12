// Escape shuttle and pods
/*/datum/shuttle/autodock/ferry/emergency/centcom
	name = "Escape"
	location = 1
	warmup_time = 10
	area_offsite = /area/shuttle/escape/centcom
	area_station = /area/shuttle/escape/station
	area_transition = /area/shuttle/escape/transit
	docking_controller_tag = "escape_shuttle"
	dock_target_station = "escape_dock"
	dock_target_offsite = "centcom_dock"
	transit_direction = NORTH

/datum/shuttle/autodock/ferry/escape_pod/escape_pod_one
	name = "Escape Pod 1"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod1/station
	area_offsite = /area/shuttle/escape_pod1/centcom
	area_transition = /area/shuttle/escape_pod1/transit
	docking_controller_tag = "escape_pod_1"
	dock_target_station = "escape_pod_1_berth"
	dock_target_offsite = "escape_pod_1_recovery"
	transit_direction = NORTH

/datum/shuttle/autodock/ferry/escape_pod/escape_pod_two
	name = "Escape Pod 2"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod2/station
	area_offsite = /area/shuttle/escape_pod2/centcom
	area_transition = /area/shuttle/escape_pod2/transit
	docking_controller_tag = "escape_pod_2"
	dock_target_station = "escape_pod_2_berth"
	dock_target_offsite = "escape_pod_2_recovery"
	transit_direction = NORTH

/datum/shuttle/autodock/ferry/escape_pod/escape_pod_three
	name = "Escape Pod 3"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod3/station
	area_offsite = /area/shuttle/escape_pod3/centcom
	area_transition = /area/shuttle/escape_pod3/transit
	docking_controller_tag = "escape_pod_3"
	dock_target_station = "escape_pod_3_berth"
	dock_target_offsite = "escape_pod_3_recovery"
	transit_direction = EAST

/datum/shuttle/autodock/ferry/escape_pod/escape_pod_four
	name = "Escape Pod 4"
	location = 0
	warmup_time = 0
	area_station = /area/shuttle/escape_pod5/station
	area_offsite = /area/shuttle/escape_pod5/centcom
	area_transition = /area/shuttle/escape_pod5/transit
	docking_controller_tag = "escape_pod_5"
	dock_target_station = "escape_pod_5_berth"
	dock_target_offsite = "escape_pod_5_recovery"
	transit_direction = EAST //should this be WEST? I have no idea.

/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply"
	location = 1
	warmup_time = 10
	area_offsite = /area/supply/dock
	area_station = /area/supply/station
	docking_controller_tag = "supply_shuttle"
	dock_target_station = "cargo_bay"

/datum/shuttle/autodock/ferry/engineering
	name = "Engineering"
	warmup_time = 10
	area_offsite = /area/shuttle/constructionsite/site
	area_station = /area/shuttle/constructionsite/station
	docking_controller_tag = "engineering_shuttle"
	dock_target_station = "engineering_dock_airlock"
	dock_target_offsite = "edock_airlock"

/datum/shuttle/autodock/ferry/mining
	name = "Mining"
	warmup_time = 10
	area_offsite = /area/shuttle/mining/outpost
	area_station = /area/shuttle/mining/station
	docking_controller_tag = "mining_shuttle"
	dock_target_station = "mining_dock_airlock"
	dock_target_offsite = "mining_outpost_airlock"

/datum/shuttle/autodock/ferry/centcom
	name = "Centcom"
	location = 1
	warmup_time = 10
	area_offsite = /area/shuttle/transport1/centcom
	area_station = /area/shuttle/transport1/station
	docking_controller_tag = "centcom_shuttle"
	dock_target_station = "centcom_shuttle_dock_airlock"
	dock_target_offsite = "centcom_shuttle_bay"

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	location = 1
	warmup_time = 10	//want some warmup time so people can cancel.
	area_offsite = /area/shuttle/administration/centcom
	area_station = /area/shuttle/administration/station
	docking_controller_tag = "admin_shuttle"
	dock_target_station = "admin_shuttle_dock_airlock"
	dock_target_offsite = "admin_shuttle_bay"

/datum/shuttle/autodock/ferry/alien
	name = "Alien"
	area_offsite = /area/shuttle/alien/base
	area_station = /area/shuttle/alien/mine
	flags = SHUTTLE_FLAGS_NONE

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	docking_controller_tag = "merchant_ship_dock"
	dock_target_station = "merchant_station_dock"
	dock_target_offsite = "merchant_shuttle_station_dock"
	area_station = /area/shuttle/merchant/home
	area_offsite = /area/shuttle/merchant/away

/datum/shuttle/multi_shuttle/mercenary
	name = "Mercenary"
	warmup_time = 0
	origin = /area/syndicate_station/start
	interim = /area/syndicate_station/transit
	start_location = "Mercenary Base"
	destinations = list(
		"Northwest of the station" = /area/syndicate_station/northwest,
		"North of the station" = /area/syndicate_station/north,
		"Northeast of the station" = /area/syndicate_station/northeast,
		"Southwest of the station" = /area/syndicate_station/southwest,
		"South of the station" = /area/syndicate_station/south,
		"Southeast of the station" = /area/syndicate_station/southeast,
		"Telecomms Satellite" = /area/syndicate_station/commssat,
		"Mining Station" = /area/syndicate_station/mining,
		"Arrivals dock" = /area/syndicate_station/arrivals_dock,
		)
	docking_controller_tag = "merc_shuttle"
	destination_dock_targets = list(
		"Mercenary Base" = "merc_base",
		"Arrivals dock" = "nuke_shuttle_dock_airlock",
		)
	announcer = "NDV Icarus"

/datum/shuttle/multi_shuttle/mercenary/New()
	arrival_message = "Attention, [GLOB.using_map.station_short], you have a large signature approaching the station - looks unarmed to surface scans. We're too far out to intercept - brace for visitors."
	departure_message = "Your visitors are on their way out of the system, [GLOB.using_map.station_short], burning delta-v like it's nothing. Good riddance."
	..()

/datum/shuttle/multi_shuttle/skipjack
	name = "Skipjack"
	warmup_time = 0
	origin = /area/skipjack_station/start
	interim = /area/skipjack_station/transit
	destinations = list(
		"Fore Starboard Solars" = /area/skipjack_station/northeast_solars,
		"Fore Port Solars" = /area/skipjack_station/northwest_solars,
		"Aft Starboard Solars" = /area/skipjack_station/southeast_solars,
		"Aft Port Solars" = /area/skipjack_station/southwest_solars,
		"Mining Station" = /area/skipjack_station/mining
		)
	announcer = "NDV Icarus"

/datum/shuttle/multi_shuttle/skipjack/New()
	arrival_message = "Attention, [GLOB.using_map.station_short], we just tracked a small target bypassing our defensive perimeter. Can't fire on it without hitting the station - you've got incoming visitors, like it or not."
	departure_message = "Your guests are pulling away, [GLOB.using_map.station_short] - moving too fast for us to draw a bead on them. Looks like they're heading out of the system at a rapid clip."
	..()

/datum/shuttle/multi_shuttle/rescue
	name = "Rescue"
	warmup_time = 0
	origin = /area/rescue_base/start
	interim = /area/rescue_base/transit
	start_location = "Response Team Base"
	destinations = list(
		"Northwest of the station" = /area/rescue_base/northwest,
		"North of the station" = /area/rescue_base/north,
		"Northeast of the station" = /area/rescue_base/northeast,
		"Southwest of the station" = /area/rescue_base/southwest,
		"South of the station" = /area/rescue_base/south,
		"Southeast of the station" = /area/rescue_base/southeast,
		"Telecomms Satellite" = /area/rescue_base/commssat,
		"Engineering Station" = /area/rescue_base/mining,
		"Arrivals dock" = /area/rescue_base/arrivals_dock,
		)
	docking_controller_tag = "rescue_shuttle"
	destination_dock_targets = list(
		"Response Team Base" = "rescue_base",
		"Arrivals dock" = "rescue_shuttle_dock_airlock",
		)
	announcer = "NDV Icarus"

/datum/shuttle/multi_shuttle/rescue/New()
	arrival_message = "Attention, [GLOB.using_map.station_short], there's a small patrol craft headed your way, it flashed us Asset Protection codes and we let it pass. You've got guests on the way."
	departure_message = "[GLOB.using_map.station_short], That Asset Protection vessel is headed back the way it came. Hope they were helpful."
	..()

/datum/shuttle/autodock/ferry/multidock/specops/ert
	name = "Special Operations"
	location = 0
	warmup_time = 10
	area_offsite = /area/shuttle/specops/station	//centcom is the home station, the Exodus is offsite
	area_station = /area/shuttle/specops/centcom
	docking_controller_tag = "specops_shuttle_port"
	docking_controller_tag_station = "specops_shuttle_port"
	docking_controller_tag_offsite = "specops_shuttle_fore"
	dock_target_station = "specops_centcom_dock"
	dock_target_offsite = "specops_dock_airlock"*/

/datum/shuttle/autodock/ferry/research
	name = "Research"
	warmup_time = 10
	location = 0
	waypoint_station = "research_shuttle_station"
	waypoint_offsite = "research_shuttle_offsite"
	shuttle_area = /area/shuttle/research/station
	current_location = "research_shuttle_station"
	dock_target = "research_shuttle"

/datum/shuttle/autodock/ferry/mining
	name = "Mining"
	warmup_time = 10
	location = 0
	waypoint_station = "mining_shuttle_station"
	waypoint_offsite = "mining_shuttle_offsite"
	shuttle_area = /area/shuttle/mining/station
	current_location = "mining_shuttle_station"
	dock_target = "mining_shuttle"

/datum/shuttle/autodock/ferry/engineering
	name = "Engineering"
	warmup_time = 10
	location = 0
	waypoint_station = "engineering_shuttle_station"
	waypoint_offsite = "engineering_shuttle_offsite"
	shuttle_area = /area/shuttle/constructionsite/station
	current_location = "engineering_shuttle_station"
	dock_target = "engineering_shuttle"

/datum/shuttle/autodock/ferry/emergency/centcom
	name = "Escape"
	location = 1
	warmup_time = 10
	shuttle_area = /area/shuttle/escape/centcom
	waypoint_station = "escape_shuttle_station"
	waypoint_offsite = "escape_shuttle_centcom"
	landmark_transition = "escape_shuttle_transit"
	dock_target = "escape_shuttle"

/datum/shuttle/autodock/ferry/escape_pod/
	category = /datum/shuttle/autodock/ferry/escape_pod/
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	var/number

/datum/shuttle/autodock/ferry/escape_pod/New()
	name = "Escape Pod [number]"
	dock_target = "escape_pod_[number]"
	arming_controller = "escape_pod_[number]_berth"
	waypoint_station = "escape_pod_[number]_start"
	landmark_transition = "escape_pod_[number]_internim"
	waypoint_offsite = "escape_pod_[number]_out"
	..()

/datum/shuttle/autodock/ferry/escape_pod/escape_pod1
	warmup_time = 0
	number = 1
	shuttle_area = /area/shuttle/escape_pod1/station

/datum/shuttle/autodock/ferry/escape_pod/escape_pod2
	warmup_time = 0
	number = 2
	shuttle_area = /area/shuttle/escape_pod2/station

/datum/shuttle/autodock/ferry/escape_pod/escape_pod3
	warmup_time = 0
	number = 3
	shuttle_area = /area/shuttle/escape_pod3/station

/datum/shuttle/autodock/ferry/escape_pod/escape_pod5
	warmup_time = 0
	number = 5
	shuttle_area = /area/shuttle/escape_pod5/station

/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_station = "nav_supply_out"
	waypoint_offsite = "nav_supply_start"
	dock_target = "supply_shuttle"


// transport shuttle

/datum/shuttle/autodock/ferry/centcom
	name = "Centcom"
	location = 1
	warmup_time = 10
	shuttle_area = /area/shuttle/transport1/centcom
	waypoint_station = "centcom_shuttle_start"
	waypoint_offsite = "centcom_shuttle_out"
	dock_target = "centcom_shuttle"

/obj/effect/shuttle_landmark/centcom/start
	name = "Centcom"
	landmark_tag = "centcom_shuttle_start"
	docking_controller = "centcom_shuttle_bay"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/centcom/out
	name = "Docking Bay"
	landmark_tag = "centcom_shuttle_out"
	docking_controller = "centcom_shuttle_dock_airlock"

// admin shuttle

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	warmup_time = 10	//want some warmup time so people can cancel.
	shuttle_area = /area/shuttle/administration/centcom
	dock_target = "admin_shuttle"
	waypoint_station = "nav_admin_start"
	waypoint_offsite = "nav_admin_out"

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle_bay"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/admin/out
	name = "Docking Bay"
	landmark_tag = "nav_admin_out"
	docking_controller = "admin_shuttle_dock_airlock"

// merc shuttle

/datum/shuttle/autodock/multi/antag/mercenary
	name = "Mercenary"
	warmup_time = 0
	destination_tags = list(
		"nav_merc_start",
		"merc_station_nw",
		"merc_station_n",
		"merc_station_ne",
		"merc_station_sw",
		"merc_station_s",
		"merc_station_se",
		"merc_station_telecomms",
		"merc_station_mining",
		"merc_station_arrivals"
		)
	shuttle_area = /area/syndicate_station/start
	dock_target = "merc_shuttle"
	current_location = "nav_merc_start"
	landmark_transition = "nav_merc_transition"
	announcer = "SEV Torch Sensor Array"
	home_waypoint = "nav_merc_start"
	arrival_message = "Attention, vessel detected entering vessel proximity."
	departure_message = "Attention, vessel detected leaving vessel proximity."

/obj/effect/shuttle_landmark/merc/start
	name = "Mercenary Base"
	landmark_tag = "nav_merc_start"
	docking_controller = "merc_base"

/obj/effect/shuttle_landmark/merc/internim
	name = "In transit"
	landmark_tag = "nav_merc_transition"

/obj/effect/shuttle_landmark/merc/nw
	name = "Northwest of station"
	landmark_tag = "merc_station_nw"
	docking_controller = "nuke_shuttle_dock_airlock"

/obj/effect/shuttle_landmark/merc/n
	name = "North of station"
	landmark_tag = "merc_station_n"

/obj/effect/shuttle_landmark/merc/ne
	name = "Northeast of station"
	landmark_tag = "merc_station_ne"

/obj/effect/shuttle_landmark/merc/sw
	name = "Southwest of station"
	landmark_tag = "merc_station_sw"

/obj/effect/shuttle_landmark/merc/s
	name = "South of station"
	landmark_tag = "merc_station_s"

/obj/effect/shuttle_landmark/merc/se
	name = "Southeast of station"
	landmark_tag = "merc_station_se"

/obj/effect/shuttle_landmark/merc/telecomms
	name = "Telecomms"
	landmark_tag = "merc_station_telecomms"

/obj/effect/shuttle_landmark/merc/mining
	name = "Mining station"
	landmark_tag = "merc_station_mining"

/obj/effect/shuttle_landmark/merc/arrivals
	name = "Arrivals"
	landmark_tag = "merc_station_arrivals"

//Skipjack

/datum/shuttle/autodock/multi/antag/skipjack
	name = "Skipjack"
	warmup_time = 0
	destination_tags = list(
		"nav_skipjack_start",
		"skipjack_fore_starboard_solars",
		"skipjack_fore_port_solars",
		"skipjack_aft_starboard_solars",
		"skipjack_aft_port_solars",
		"skipjack_mining_station"
		)
	shuttle_area =  /area/skipjack_station/start
	dock_target = "skipjack_shuttle"
	current_location = "nav_skipjack_start"
	landmark_transition = "nav_skipjack_transition"
	announcer = "SEV Torch Sensor Array"
	home_waypoint = "nav_skipjack_start"
	arrival_message = "Attention, vessel detected entering vessel proximity."
	departure_message = "Attention, vessel detected leaving vessel proximity."

/obj/effect/shuttle_landmark/skipjack/start
	name = "Raider Outpost"
	landmark_tag = "nav_skipjack_start"

/obj/effect/shuttle_landmark/skipjack/internim
	name = "In transit"
	landmark_tag = "nav_skipjack_transition"

/obj/effect/shuttle_landmark/skipjack/dock
	name = "Arrivals Dock"
	landmark_tag = "nav_skipjack_dock"
	docking_controller = "skipjack_shuttle_dock_airlock"

/obj/effect/shuttle_landmark/skipjack/skipjack_fore_starboard_solars
	name = "Fore starboard solars"
	landmark_tag = "skipjack_fore_starboard_solars"

/obj/effect/shuttle_landmark/skipjack/skipjack_fore_port_solars
	name = "Fore port solars"
	landmark_tag = "skipjack_fore_port_solars"

/obj/effect/shuttle_landmark/skipjack/skipjack_aft_starboard_solars
	name = "Aft starboard solars"
	landmark_tag = "skipjack_aft_starboard_solars"

/obj/effect/shuttle_landmark/skipjack/skipjack_aft_port_solars
	name = "Aft port solars"
	landmark_tag = "skipjack_aft_port_solars"

/obj/effect/shuttle_landmark/skipjack/skipjack_mining_station
	name = "Mining station"
	landmark_tag = "skipjack_mining_station"

//NT Rescue Shuttle

/datum/shuttle/autodock/multi/antag/rescue
	name = "Rescue"
	warmup_time = 0
	destination_tags = list(
		"nav_ert_start",
		"rescue_northwest_of_the_station",
		"rescue_north_of_the_station",
		"rescue_northeast_of_the_station",
		"rescue_southwest_of_the_station",
		"rescue_south_of_the_station",
		"rescue_southeast_of_the_station",
		"rescue_telecomms_satellite",
		"rescue_engineering_station",
		"rescue_arrivals_dock"
		)
	shuttle_area = /area/rescue_base/start
	dock_target = "rescue_shuttle"
	current_location = "nav_ert_start"
	landmark_transition = "nav_ert_transition"
	home_waypoint = "nav_ert_start"
	announcer = "SEV Torch Sensor Array"
	arrival_message = "Attention, vessel detected entering vessel proximity."
	departure_message = "Attention, vessel detected leaving vessel proximity."

/obj/effect/shuttle_landmark/ert/start
	name = "Response Team Base"
	landmark_tag = "nav_ert_start"
	docking_controller = "rescue_base"

/obj/effect/shuttle_landmark/ert/internim
	name = "In transit"
	landmark_tag = "nav_ert_transition"

/obj/effect/shuttle_landmark/ert/dock
	name = "Docking Port"
	landmark_tag = "nav_ert_dock"
	docking_controller = "rescue_shuttle_dock_airlock"

/obj/effect/shuttle_landmark/ert/rescue_northwest_of_the_station
	name =  "Southwest of Fourth deck"
	landmark_tag = "rescue_northwest_of_the_station"

/obj/effect/shuttle_landmark/ert/rescue_north_of_the_station
	name = "Northwest of Third deck"
	landmark_tag = "rescue_north_of_the_station"

/obj/effect/shuttle_landmark/ert/rescue_northeast_of_the_station
	name = "Northwest of Second deck"
	landmark_tag = "rescue_northeast_of_the_station"

/obj/effect/shuttle_landmark/ert/rescue_southwest_of_the_station
	name = "Southwest of First Deck"
	landmark_tag = "rescue_southwest_of_the_station"

/obj/effect/shuttle_landmark/ert/rescue_south_of_the_station
	name = "South of the Station"
	landmark_tag = "rescue_south_of_the_station"

/obj/effect/shuttle_landmark/ert/rescue_southeast_of_the_station
	name = "Sout East of the Station"
	landmark_tag = "rescue_southeast_of_the_station"

/obj/effect/shuttle_landmark/ert/rescue_telecomms_satellite
	name = "Telecomms"
	landmark_tag = "rescue_telecomms_satellite"

/obj/effect/shuttle_landmark/ert/rescue_engineering_station
	name = "Engineering Station"
	landmark_tag = "rescue_engineering_station"

/obj/effect/shuttle_landmark/ert/rescue_arrivals_dock
	name = "Arrivals"
	landmark_tag = "rescue_arrivals_dock"

//Deathsquad Assault Pod

/datum/shuttle/autodock/ferry/specops
	name = "Special Operations"
	warmup_time = 10
	shuttle_area = /area/shuttle/specops/centcom
	dock_target = "specops_shuttle_fore"
	waypoint_station = "nav_specops_start"
	waypoint_offsite = "nav_specops_out"

/obj/effect/shuttle_landmark/specops/start
	name = "Centcom"
	landmark_tag = "nav_specops_start"
	docking_controller = "specops_shuttle_port"

/obj/effect/shuttle_landmark/specops/out
	name = "Docking Bay"
	landmark_tag = "nav_specops_out"
	docking_controller = "specops_dock_airlock"

//merchant shuttle

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	shuttle_area = /area/shuttle/merchant/home
	waypoint_station = "nav_merchant_start"
	waypoint_offsite = "nav_merchant_out"
	dock_target = "merchant_ship_dock"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"

/obj/effect/shuttle_landmark/merchant/out
	name = "Docking Bay"
	landmark_tag = "nav_merchant_out"
	docking_controller = "merchant_shuttle_station_dock"

// alien shuttle
///datum/shuttle/autodock/ferry/alien
//	name = "Alien"
//	shuttle_area = /area/shuttle/alien/base
//	waypoint_station = /area/shuttle/alien/base
//	waypoint_offsite = /area/shuttle/alien/mine