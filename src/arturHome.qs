# arturHome
arturKnow = 1
minut += 15
gs'stat'

'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
'Артур отвел вас на стоянку где стояла его черная Приора. Вы сели в машину и Артур куда то повез вас "Я дэлаю лючьший шашлык, нэ то что дрянь в кафэ, пальчики оближешь." Через некоторое время машина остановилась возле небольшого домика и Артур взяв вас за руку проводил в дом.'

act 'Идти в дом':
	cls
	minut += 60
	alko += 6
	$boy = 'Артур'
	silavag = 1
	dick = 26
	arturTimes += 1
	gs'stat'

	'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
	'Артур щедро накрыл на стол, вы ели шашлык и пили виноградную самогонку чачу и быстро захмелели. Артур включил музыку и подошел к вам "Иди ко мне дэвочка."'

	act 'Далее':gt'arturSex'

	if condomtalkartur = 0 and arturSex = 1:
		act 'Попросить одевать презерватив':
			cls
			condomtalkartur = 1
			gs'stat'

			'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
			'Вы попросили Артура одевать презерватив, на что Артур возмутился "Вай, секс в гандоне это как дышать через противогаз. Нэт!"'

			act 'Далее':gt'arturSex'
		end
	end
end
--- arturHome ---------------------------------

