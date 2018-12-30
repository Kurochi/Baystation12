#if !defined(using_map_DATUM)

	#include "exodus_define.dm"
	#include "exodus_areas.dm"
	#include "exodus_effects.dm"
	#include "exodus_elevator.dm"
	#include "exodus_holodecks.dm"
	#include "exodus_presets.dm"
	#include "exodus_shuttles.dm"

	#include "exodus_unit_testing.dm"
	#include "exodus_zas_tests.dm"

	#include "../shared/exodus_torch/_include.dm"

	#include "exodus-1.dmm"
	#include "exodus-2.dmm"
	#include "exodus-3.dmm"
	#include "exodus-4.dmm"
	#include "exodus-5.dmm"
	#include "exodus-6.dmm"
	#include "exodus-7.dmm"

	#include "../../code/datums/music_tracks/absconditus.dm"
	#include "../../code/datums/music_tracks/clouds_of_fire.dm"
	#include "../../code/datums/music_tracks/endless_space.dm"
	#include "../../code/datums/music_tracks/dilbert.dm"
	#include "../../code/datums/music_tracks/space_oddity.dm"
	#include "../../code/datums/music_tracks/title1.dm"

	#define using_map_DATUM /datum/map/exodus

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Exodus

#endif
