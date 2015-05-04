# dinsexgivi
$threesomedin = {
	act 'Сесть на член':
		cls
		minut += 5
		gs'stat'

		tiprand = RAND(0,1)
		picrand = RAND(1,2)
		'<center><img src="images/picKav/threeC<<picrand>>.jpg"></center>'
		'Вы забираетесь сверху на Гиви и садитесь на его член своей киской.'

		dynamic $sexstart2
		dynamic $giviirasexdivibor2
	end
	act 'Целоваться дальше':
		cls
		minut += 5
		gs'stat'

		tiprand = RAND(0,1)
		picrand = RAND(1,2)
		'<center><img src="images/picKav/threeC<<picrand>>.jpg"></center>'
		'Ира садится на член Гиви своей киской и начинает остервенело прыгать на его толстом и твердом хрене.'

		dynamic $giviirasexdivibor
	end
}

$threesomedin2 = {
	act 'Целоваться дальше':
		cls
		minut += 5
		gs'stat'

		tiprand = RAND(0,1)
		picrand = RAND(1,2)
		'<center><img src="images/picKav/threeC<<picrand>>.jpg"></center>'
		'Ира садится на член Гиви своей киской и начинает остервенело прыгать на его толстом и твердом хрене.'

		dynamic $giviirasexdivibor
	end
}

$giviirasexdivibor = {
	!выбор ГГ
	act 'Лизать грудь Иры':
		cls
		minut += 5
		horny += 10
		gs'stat'

		tiprand = RAND(0,1)
		picrand = RAND(1,2)
		if picrand = 1:'<center><img src="images/picKav/threeD.jpg"></center>'
		if picrand = 2:'<center><img src="images/picKav/threeD1.jpg"></center>'
		'Пока Ира прыгала на толстом члене вы обхватили губами ее сосок и начали сосать его.'
		'Гиви закряхтел и сбросил Иру с члена.'

		dynamic $giviirasexdivibor3
	end
	act 'Подставить киску Ире':
		cls
		minut += 5
		horny += 20
		gs'stat'

		tiprand = RAND(0,1)
		picrand = RAND(1,2)
		'<center><img src="images/picKav/threeE.jpg"></center>'
		'Вы подставили свою киску Ире и та начала активно ее вылизывать не прекращая скакать на члене.'
		if horny >= 90:horny = 0 & orgasm += 1 & 'Вас охватил оргазм и вы застонали от наслаждения.'
		'Гиви закряхтел и сбросил Иру с члена.'

		dynamic $giviirasexdivibor3
	end
}

$giviirasexdivibor2 = {
	!выбор Иры
	act 'Прыгать на члене':
		cls
		minut += 5
		horny += 10
		gs'stat'

		tiprand = RAND(0,2)
		picrand = RAND(1,2)
		if tiprand = 0:
			'<center><img src="images/picKav/threeF.jpg"></center>'
			'Вы скачите на члене Гиви и Ира решив не оставаться безучастной впилась своими губами вам в сосок начав его сосать и покусывать.'
		elseif tiprand = 1:
			'<center><img src="images/picKav/threeF1.jpg"></center>'
			'Вы прыгаете на члене Гиви и Ира начинает целовать вас в губы одновременно лаская пальчиком вашу киску.'
		end
		'Гиви закряхтел и сбросил вас с члена.'

		dynamic $giviirasexdivibor3
	end
}

$giviirasexdivibor3 = {
	!выбор Иры
	act 'Далее':
		cls
		minut += 5
		horny += 10
		cumlip += 1
		cumface += 1
		gs'stat'

		'<center><img src="images/picKav/threeFin.jpg"></center>'
		'Гиви поставил вас на колени вместе с Ириной и начал кончать вам на лица. Вы слизывали кончу с члена и с лиц друг друга и целовались.'

		act 'Уйти':dynamic $endirinaaftergang
	end
}

$endirinaaftergang = {
	cls
	minut += 5
	gs'stat'

	'Измученный, усталые и с тяжелым запахом спермы вы возвращаетесь домой с Ириной после трудного дня. Вы доходите до подъезда Иры и она целует вас в губы обдавая ароматом спермы на прощание, после чего уходит к себе домой.'

	act 'Уйти':gt'street'
}
--- dinsexgivi ---------------------------------

