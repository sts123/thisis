# vokmantoiev
$d_vok_man_toilet_event = {
	startevtoirand = RAND(0,1)
	if startevtoirand = 0:
		vokmantoitipev = RAND(0,3)
		if vokmantoitipev = 0:
!'
			if gloryholeVokzal = 9:gloryholeVokzal = 10 & ''
			if gloryholeVokzal = 8:gloryholeVokzal = 9 & ''
			if gloryholeVokzal = 6:gloryholeVokzal = 7 & ''
			if gloryholeVokzal = 5:gloryholeVokzal = 6 & ''
			if gloryholeVokzal = 4:gloryholeVokzal = 5 & ''
			if gloryholeVokzal = 3:gloryholeVokzal = 4 & ''
			if gloryholeVokzal = 2:gloryholeVokzal = 3 & ''
'
			if gloryholeVokzal = 1:gloryholeVokzal = 2 & 'Вы замечаете, что на полу, возле дыры в стене расположенной в одной из кабинок какие то странные белые капли. Вы начали вытирать их с пола тряпкой и поняли, что это сперма.'
			if gloryholeVokzal = 0:gloryholeVokzal = 1 & 'Вы увидели в одной из стен отгораживающих кабинки друг от друга круглое отверстие на уровне пояса. Вы с любопытством осмотрели ровное отверстие и пожав плечами продолжили убираться.'
		elseif vokmantoitipev = 1:
			'В туалет зашел начальник вокзала и встав у писсуара начал писать.'

			if horny >= 50:
				act 'Подглядывать':
					cls
					minut += 1
					seepeenach += 1
					tot_seepee += 1
					if tot_seepee > 5:horny += 5
					gs'stat'

					'<center><img src="images/qwest/vokzal/seepee.jpg"></center>'
					'Вы бросили взгляд на вялый член начальника вокзала'
					'Вы стали мыть пол в мужском туалете, после чего начали оттирать унитазы.'

					act 'Уйти':minut += 1 & gt'vokzalGin'
				end
			end
		elseif vokmantoitipev = 2:
			'В туалет зашел полицейский и встав у писсуара начал писать.'

			if horny >= 50:
				act 'Подглядывать':
					cls
					minut += 1
					seepeecop += 1
					tot_seepee += 1
					if tot_seepee > 5:horny += 5
					gs'stat'

					'<center><img src="images/qwest/vokzal/seepee.jpg"></center>'
					'Вы бросили взгляд на вялый член полицейского'
					'Вы стали мыть пол в мужском туалете, после чего начали оттирать унитазы.'

					act 'Уйти':minut += 1 & gt'vokzalGin'
				end
			end
		elseif vokmantoitipev = 3:
			'В туалет зашел какой то мужик и встав у писсуара начал писать.'

			if horny >= 50:
				act 'Подглядывать':
					cls
					minut += 1
					seepeeman += 1
					tot_seepee += 1
					if tot_seepee > 5:horny += 5
					gs'stat'

					'<center><img src="images/qwest/vokzal/seepee.jpg"></center>'
					'Вы бросили взгляд на вялый член мужика'
					'Вы стали мыть пол в мужском туалете, после чего начали оттирать унитазы.'

					act 'Уйти':minut += 1 & gt'vokzalGin'
				end
			end
		end
	elseif startevtoirand > 0:
		'Вы стали мыть пол в мужском туалете, после чего начали оттирать унитазы.'
	end
}
--- vokmantoiev ---------------------------------

