# init_music
$tracklist_start[0] = 'sounds/start.mp3'

$tracklist_pivbar[0] = 'sounds/pivbar.mp3'

$tracklist_kafe[0] = 'sounds/kafe.mp3'
$tracklist_kafe[1] = 'sounds/kafe1.mp3'

$tracklist_gdis[0] = 'sounds/komb.mp3'
$tracklist_gnewyear[0] = 'sounds/newyear.mp3'
$tracklist_sukizaebali[0] = 'sounds/suki.mp3'

$tracklist_club[0] = 'sounds/club.mp3'
$tracklist_club[1] = 'sounds/club1.mp3'
$tracklist_club[2] = 'sounds/club2.mp3'
$tracklist_club[3] = 'sounds/club3.mp3'
$tracklist_club[4] = 'sounds/club4.mp3'

$tracklist_fight[0] = 'sounds/fight.mp3'
$tracklist_fight[1] = 'sounds/fight1.mp3'

$tracklist_orochimaru[0] = 'sounds/orochimaru.mp3'

if club = 1:
	clubrand = RAND(0,5)
	if clubrand = 0:
		$tracklist_club[0] = 'sounds/club.mp3'
	elseif clubrand = 1:
		$tracklist_club[0] = 'sounds/club1.mp3'
	elseif clubrand = 2:
		$tracklist_club[0] = 'sounds/club2.mp3'
	elseif clubrand = 3:
		$tracklist_club[0] = 'sounds/club3.mp3'
	elseif clubrand = 4:
		$tracklist_club[0] = 'sounds/club4.mp3'
	elseif clubrand = 5:
		$tracklist_club[0] = 'sounds/club5.mp3'
	end
end
--- init_music ---------------------------------

