/obj/effect/shuttle_landmark/research/station
	name = "Station Dock - Research"
	landmark_tag = "research_shuttle_station"
	docking_controller = "research_dock_airlock"

/obj/effect/shuttle_landmark/research/offsite
	name = "Outpost Dock - Research"
	landmark_tag = "research_shuttle_offsite"
	docking_controller = "research_outpost_dock"

/obj/effect/shuttle_landmark/mining/station
	name = "Station Dock - Mining"
	landmark_tag = "mining_shuttle_station"
	docking_controller = "mining_dock_airlock"

/obj/effect/shuttle_landmark/mining/offsite
	name = "Outpost Dock - Mining"
	landmark_tag = "mining_shuttle_offsite"
	docking_controller = "mining_outpost_airlock"

/obj/effect/shuttle_landmark/engineering/station
	name = "Station Dock - Engineering"
	landmark_tag = "engineering_shuttle_station"
	docking_controller = "engineering_dock_airlock"

/obj/effect/shuttle_landmark/engineering/offsite
	name = "Outpost Dock - Engineering"
	landmark_tag = "engineering_shuttle_offsite"
	docking_controller = "edock_airlock"

/obj/effect/shuttle_landmark/escape/station
	name = "Station Dock - Escape"
	landmark_tag = "escape_shuttle_station"
	docking_controller = "escape_dock"

/obj/effect/shuttle_landmark/escape/transit
	name = "In transit"
	landmark_tag = "escape_shuttle_transit"

/obj/effect/shuttle_landmark/escape/centcom
	name = "Centcomm Dock - Arrivals"
	landmark_tag = "escape_shuttle_centcom"
	docking_controller = "centcom_dock"

/obj/effect/shuttle_landmark/escape_pod/
	var/number

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked with station"

/obj/effect/shuttle_landmark/escape_pod/start/New()
	landmark_tag = "escape_pod_[number]_start"
	docking_controller = "escape_pod_[number]_berth"
	..()

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/transit/New()
	landmark_tag = "escape_pod_[number]_internim"
	..()

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Docked with rescue ship"

/obj/effect/shuttle_landmark/escape_pod/out/New()
	landmark_tag = "escape_pod_[number]_out"
	docking_controller = "escape_pod_[number]_recovery"
	..()

/obj/effect/shuttle_landmark/escape_pod/start/pod1
	number = 1
/obj/effect/shuttle_landmark/escape_pod/out/pod1
	number = 1
/obj/effect/shuttle_landmark/escape_pod/transit/pod1
	number = 1

/obj/effect/shuttle_landmark/escape_pod/start/pod2
	number = 2
/obj/effect/shuttle_landmark/escape_pod/out/pod2
	number = 2
/obj/effect/shuttle_landmark/escape_pod/transit/pod2
	number = 2

/obj/effect/shuttle_landmark/escape_pod/start/pod3
	number = 3
/obj/effect/shuttle_landmark/escape_pod/out/pod3
	number = 3
/obj/effect/shuttle_landmark/escape_pod/transit/pod3
	number = 3

/obj/effect/shuttle_landmark/escape_pod/start/pod5
	number = 5
/obj/effect/shuttle_landmark/escape_pod/out/pod5
	number = 5
/obj/effect/shuttle_landmark/escape_pod/transit/pod5
	number = 5