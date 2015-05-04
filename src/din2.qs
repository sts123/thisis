# din2
$din_street_cum = {
	if cumfrot > 0 or cumface > 0:
		if hour >= 7 and hour <= 21:
			manna -= 10
			'Прохожие недоуменно оборачиваются пристально разглядывая вас. Некоторые фотографируют на телефон вас, совершенно этого не скрывая и хихикая над вами. Явно на вас заметна сперма.'
		end
	end
}

$d_read_book = {
	act 'Читать книгу':
		cls
		gs'stat'
		'<center><img src="images/pics/book.jpg"></center>'

		if f_book <= 0 and fantasybook <= 0 and w_book = 0 and womanbook = 0:
			'Вы почесали голову поглядев на уже прочитанные книги "Эх, даже почитать нечего, прогуляться что ли на рынок за новой книгой?"'
		end

		if f_book > 0:
			if fantasybook <= 0:fantasybook = 5 & f_book -= 1
			'У вас еще <<f_book>> не прочитанных фентези романа.'
		end

		if fantasybook > 0:
			act 'Читать фентези книгу 1 час. Не прочитано еще <<fantasybook*100>> страниц':
				cls
				fantasybook -= 1
				if fantasybook = 0:totalbook += 1
				minut += 60

				if nerdism > 0:
					lastread = totminut
					lastreadday = daystart
					nerdism += 1
					blizoruk += 1
				end

				gs'stat'
				'<center><img src="images/pics/book.jpg"></center>'

				if nerdism > 0:
					manna += 100
					if stren > 1:stren -= 1
					if vital > 5:vital -= 1
					'В течении часа вы с упоением читали книжку полностью вживаясь в происходящее.'
				else
					manna += 10
					'В течении часа вы читали книжку.'
				end

				act 'Закрыть книгу':gt $loc
			end
		end

		if w_book > 0:
			if womanbook <= 0:womanbook = 5 & w_book -= 1
			'У вас еще <<w_book>> не прочитанных женских романа.'
		end

		if womanbook > 0:
			act 'Читать женский роман 1 час. Не прочитано еще <<womanbook*100>> страниц':
				cls
				womanbook -= 1
				if womanbook = 0:totalbook += 1
				minut += 60

				if nerdism > 0:
					lastread = totminut
					lastreadday = daystart
					nerdism += 1
					blizoruk += 1
				end

				gs'stat'
				'<center><img src="images/pics/book.jpg"></center>'

				if nerdism > 0:
					manna += 100
					horny += 10
					if stren > 1:stren -= 1
					if vital > 5:vital -= 1
					'В течении часа вы с упоением читали книжку полностью вживаясь в происходящее.'
				else
					manna += 10
					horny += 3
					'В течении часа вы читали книжку.'
				end

				act 'Закрыть книгу':gt $loc
			end
		end

		act 'Закрыть книгу':gt $loc
	end
}

$d_slut_horny = {
	you_slut += 1
	if you_slut < 10:
	elseif you_slut >= 10 and you_slut < 20:
		horny += 1
	elseif you_slut >= 20 and you_slut < 30:
		horny += 2
	elseif you_slut >= 30 and you_slut < 40:
		horny += 3
	elseif you_slut >= 40 and you_slut < 50:
		horny += 4
	elseif you_slut >= 50 and you_slut < 60:
		horny += 5
	elseif you_slut >= 60 and you_slut < 70:
		horny += 6
	elseif you_slut >= 70 and you_slut < 80:
		horny += 7
	elseif you_slut >= 80 and you_slut < 90:
		horny += 8
	elseif you_slut >= 90 and you_slut < 100:
		horny += 9
	elseif you_slut >= 100:
		horny += 10
	end
}
--- din2 ---------------------------------

