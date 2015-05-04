# divan
if $ARGS[0] = 'start':
	$divmastr = {
		cls
		minut = minut + 15
		sweat += 1
		horny = horny + RAND(1,5)
		if divanmastr = 0:divanmastr = 1 & mastr = mastr + 1
		gs'stat'
		'<center><img src="images/pics/divmas.jpg"></center>'
		'Вы легли на диван и начали одной рукой ласкать свою грудь, пальчиком другой руки вы начали тереть и гладить маленький бугорок между ног который отзывался на прикосновения приятной негой охватывающей все ваше тело.'
		if horny >= 100:orgasm += 1 & horny = 0 & 'Внезапно приятная судорога свела ваше тело и вас накрыл мощный оргазм, от которого вы застонали.'

		act 'Встать с дивана':divanmastr = 0 & gt'divan','fin'
		if horny >= 75:act 'Продолжить':dynamic $divmastr
	}

	cla
	clr
	gs'stat'

	'<center><img src="images/pics/divan.jpg"></center>'
	'Вы легли на диван.'

	act 'Лежать':
		cla
		waiting = input ("Сколько минут ждать? (Не больше 120 минут)")
		if waiting <= 0 or waiting > 120:
			minut = minut + 15
		end
		if waiting > 0 and waiting <= 120:
			minut = minut + waiting
		end

		act 'Встать с дивана':gt'divan','fin'
	end

	if TV > 0:
		act 'Смотреть телевизор':
			cla
			gt'TV','start'
		end
	end

	if book > 0:
		act 'Читать книгу 30 минут':
			cla
			*clr
			minut = minut + 30
			horny = horny + 5

			'<center><img src="images/pics/book.jpg"></center>'
			'Вы читаете книгу.'

			act 'Отложить книгу':gt'divan','start'
		end
	end

	if horny >= 75:
		act 'Мастурбировать 15 минут':
			dynamic $divmastr
		end
	end

	act 'Встать с дивана':
		cla
		gt'divan','fin'
	end
end

if $ARGS[0] = 'fin':
	cla
	gt $locM, $metkaM
!'
	if housr = 1 and housrA = 1:
		housrA = 0
		gt'sitr'
	end
'
end
--- divan ---------------------------------

