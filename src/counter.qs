# counter
if music_on <> music_on_prev or $music_theme <> $music_theme_prev:
	close $cur_theme[track[$music_theme_prev]]
	music_on_prev = music_on
	$music_theme_prev = $music_theme
	if $music_theme <> '':
		copyarr 'cur_theme', 'tracklist_<<$music_theme>>'
		track[$music_theme] = track[$music_theme]-1
		if track[$music_theme] < 0:
			track[$music_theme] = ARRSIZE('cur_theme')
		end
	end
elseif music_on = 1 and $music_theme <> '':
	if no isplay ($cur_theme[track[$music_theme]]):
		track[$music_theme] = track[$music_theme]+1
		if ARRSIZE('cur_theme') <= track[$music_theme]:track[$music_theme] = 0
	end
	play $cur_theme[track[$music_theme]],volume
end

if race_start = 1:
	BColor = RGB(255,255,255)
	REFINT
	*clr

	if race_hit = 0:
		race_miss = race_miss+1
		race_hit = 1
	elseif $race1[race_row] <> ' ' and race_row > 0:
		race_hit = 0
	end

	'<center><b><<$car>></b></center>'
	!салон автомобиля и строка трассы
	*pl $showcar
	*p $race1[race_row]

	if $race1[race_row] = '<center>-------ФИНИШ--------</center>':
		race_start = 0
		!возвращаем таймер
		SETTIMER 500
		WAIT 2000

		$metka = 'finish'
		$loc = 'RACE_COUNT'
		gt $loc, $metka
	end
	race_row = race_row+1
end
--- counter ---------------------------------

