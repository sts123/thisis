# arturkiosk
gs'stat'

'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
'Вместе с Артуром вы зашли в контейнер который используется как склад. Он тут же расстегнул ширинку "Давай Свэтик, поработай ротиком."'

act 'Опуститься на колени':
	cls
	arturTimes += 1
	minut += 15
	bj += 1
	gs'stat'

	'<center><img src="images/qwest/alter/artur/cocksucer.jpg"></center>'
	'Вы сели на корточки перед Артуром и обхватили своими губами его толстый член. Вы начали сосать его член втягивая его до горла.'

	act 'Сосать':
		cls
		minut += 15
		cumlip += 1
		swallow += 1
		money += 500
		arturblowday = day
		gs'stat'

		'<center><img src="images/qwest/alter/artur/cocksuckercum.jpg"></center>'
		'Артур начал кончать вам в рот и вы стали тут же проглатывать сперму. После этого Артур ухмыльнулся, заправил член в штаны и сказал "Вай Свэтка, ты настоящая соска. Вот тебе от дяди Артурчика, купи сэбе конфэток." он протянул вам 500 рублей.'

		act 'Уйти':gt'Grinok'
	end
end
--- arturkiosk ---------------------------------

