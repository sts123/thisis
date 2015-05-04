# arturRinok
if $ARGS[0] = 'start':
	if arturKnow = 0:
		cls
		gs'stat'

		'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
		'Кавказец дружелюбно улыбнулся вам и протянул мандаринку.'

		act 'Взять мандаринку':
			cls
			minut += 2
			gs'stat'

			'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
			'Вы взяли мандаринку из рук кавказца, он улыбнулся вам и сказал "Ты такая красивий дэвушька. Вай. Губки пэрсик. Пойдем шашлык кушать, настоящей чачей угощу!"'

			act 'Отказываться':
				cls
				minut += 2
				if bag = 0:$arturgift = 'сумочку'
				if bag > 0:$arturgift = 'косметику'
				gs'stat'

				'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
				'Вы начали отказываться и пятится от любвеобильного кавказца. Он тем временем не унимался "Вай, зачэм обижаешь? Ничего плохого тебэ не будет, мамой клянусь! Хочишь, я тэбе подарю <<$arturgift>>"'

				act 'Уйти':gt'Grinok'
				act 'Заинтересоваться':
					cls
					minut += 2
					gs'stat'

					'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
					'Вы заинтересовались предложением незнакомого кавказца. Он это тут же заметил и оставив лоток на другого кавказца тут же подошел к вам и взял вас под ручку "Нэ бойся дэвочка, дядя Артурик нэ кусается."'

					act 'Уйти':gt'Grinok'
					act 'Идти с Артуром':gt'arturHome'
				end
			end
		end
	elseif arturKnow = 1:
		if arturday ! day:
			gt'arturQW','arturQW_1'
		elseif arturday = day:
			cls
			minut += 5
			gs'stat'

			if arturblowday ! day:
				'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
				'Артур дружелюбно улыбнулся вам и протянул мандаринку. "Вай, работать надо, извини. Если только по быстрому."'

				act 'Идти с Артуром':gt'arturkiosk'
			elseif arturblowday = day:
				'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
				'Артур дружелюбно улыбнулся вам. "Вай, работать надо, извини."'

				act 'Уйти':gt'Grinok'
			end
		end
	end

	act 'Уйти':gt'Grinok'
end

if $ARGS[0] = 'work_1':
	cls
	gs'stat'

	'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
	'-Маладец Светик, вовремя пришла, приступай к работе дарагая, вечером с тобой расплачусь'

	act 'Торговать':
		cls
		hour = 18
		arturDaysWorked1 += 1
		gs'stat'

		'<center><img src="images/qwest/alter/arturQW/arturQW_3.jpg"></center>'
		'Вы до вечера работали у прилавка, продавая свежие и не очень фрукты, ругались с покупателями и сильно устали.'

		if arturDaysWorked1 >= 10:
			gt'arturQW','arturQW_2'
		else
			act 'Идти к Артуру':
				cls
				minut += 5
				money += 5000
				gs'stat'

				'<center><img src="images/qwest/alter/arturQW/arturQW_4.jpg"></center>'
				'-Светка, атлична паработала, вот держи сваи заслуженно заработанные, Артур протягивает вам 5000 рублей.'
				'-Ты мне очень сильно помогаешь, спасибо тебе большое Артурчик, смотришь на него благодарными глазками и берешь деньги.'
				'-Ну ты же знаэшь, што я тебэ плачу не только за красивае глазки, но и за упругую попку, и крепко сжимает твои булки.'

				act 'Уйти':gt'Grinok'
			end
		end
	end
end

if $ARGS[0] = 'work_2':
	cls
	gs'stat'

	'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
	if arturDaysWorked2 = 0:'-Вот и моя новая супер сексуальная секретарша пришла.'
	'Быстро к работе, у нас тут как обычно с бумагами полная жопа.'

	act 'Работать':
		cls
		hour = 17
		arturDaysWorked2 += 1
		gs'stat'

		'<center><img src="images/qwest/alter/arturQW/arturQW_6.jpg"></center>'
		'Вы час работали за компьютером, проверяли проверяли покупки и продажи, вычислили дневные расходы и доходы.'

		act 'Идти к Артуру':
			cls
			minut += 5
			money += 10000
			gs'stat'

			'<center><img src="images/qwest/alter/arturQW/arturQW_7.jpg"></center>'
			'-Превосходно Светка поработала, теперь я за бумажки могу быть спокоен.'
			'-Да у тебя тут бардак, мне еще с этим всем разбираться и разбыраться.'
			'-Ну ну, успакойся детка, есть время во всем спакойно разберешься.'
			'А теперь пойдем шашлык кушать, чачу пить, схватив тебя за попу и сильно сжав булки, предложил Артур.'

			act 'Идти с Артуром':gt'arturHome'
			act 'Уйти':gt'Grinok'
		end
	end
end
--- arturRinok ---------------------------------

