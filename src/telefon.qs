# telefon
$objmobilaraz = {
	cla
	telotvet = RAND(0,10)

	'"Да, слушаю" раздался голос из динамика.'

	if month > 5 and temper > 20 and osadki < painweather:
		act 'Пригласить прогуляться в парке':
			cla
			'ВЫ: Пойдем прогуляемся в парке.'

			if telotvet > 3:
				'<<$telsob>>: Хорошо давай через час в парке.'

				act 'Идти':gt'parksvid'
			elseif telotvet <= 3:
				dynamic $telotkaz
			end
		end
	end

	act 'Пригласить в кино':
		cla
		'ВЫ: Пойдешь со мной в кино?'

		if telotvet > 3:
			'<<$telsob>>: Хорошо давай через час в кинотеатре.'

			act 'Идти':gt'kinosvid'
		elseif telotvet <= 3:
			dynamic $telotkaz
		end
	end
	act 'Пригласить в бильярд':
		cla
		'ВЫ: Пойдем в бильярд.'

		if telotvet > 3:
			'<<$telsob>>: Хорошо давай через час в бильярде.'

			act 'Идти':gt'billsvid'
		elseif telotvet <= 3:
			dynamic $telotkaz
		end
	end
	act 'Пригласить в кафе':
		cla
		'ВЫ: Пойдем в кафе.'

		if telotvet > 3:
			'<<$telsob>>: Хорошо давай через час в кафе.'

			act 'Идти':gt'kafesvid'
		elseif telotvet <= 3:
			dynamic $telotkaz
		end
	end
	act 'Пригласить в казино':
		cla
		'ВЫ: Пойдем в казино сходим.'

		if telotvet > 3:
			'<<$telsob>>: Хорошо давай через час в казино.'

			act 'Идти':gt'kazinosvid'
		elseif telotvet <= 3:
			dynamic $telotkaz
		end
	end
	act 'Повесить трубку':gt'telefon','fin'
}

$objmobilarazboy = {
	cla
	telotvet = RAND(0,10)

	'"Да, слушаю" раздался голос из динамика.'

	if month > 5 and temper > 20 and osadki < painweather:
		act 'Пригласить прогуляться в парке':
			cla
			'ВЫ: Пойдем прогуляемся в парке.'

			if telotvet > 3:
				'<<$telsob>>: Хорошо давай через час в парке.'
				act 'Идти':gt'svidboy','parksvid'
			elseif telotvet <= 3:
				dynamic $telotkazboy
			end
		end
	end

	act 'Пригласить в кино':
		cla
		'ВЫ: Пойдешь со мной в кино?'

		if telotvet > 3:
			'<<$telsob>>: Хорошо давай через час в кинотеатре.'

			act 'Идти':gt'svidboy','kinosvid'
		elseif telotvet <= 3:
			dynamic $telotkaz
		end
	end

	act 'Пригласить в бильярд':
		cla
		'ВЫ: Пойдем в бильярд.'

		if telotvet > 3:
			'<<$telsob>>: Хорошо давай через час в бильярде.'

			act 'Идти':gt'svidboy','billsvid'
		elseif telotvet <= 3:
			dynamic $telotkazboy
		end
	end
	act 'Пригласить в кафе':
		cla
		'ВЫ: Пойдем в кафе.'

		if telotvet > 3:
			'<<$telsob>>: Хорошо давай через час в кафе.'

			act 'Идти':gt'svidboy','kafesvid'
		elseif telotvet <= 3:
			dynamic $telotkazboy
		end
	end
	act 'Повесить трубку':gt'telefon','fin'
}

$telotkaz = {
	cla
	minut += 10

	'<<$telsob>>: Извини я сейчас занята, давай в следующий раз.'

	act 'Повесить трубку':gt'telefon','fin'
}

$telotkazboy = {
	cla
	minut += 10

	'<<$boyA>>: Извини я сейчас занят, давай в следующий раз.'

	act 'Повесить трубку':gt'telefon','fin'
}

if $ARGS[0] = 'start':
	cla
	clr
	gs'stat'

	if vladimirday ! day and vladimirQW = 20 and hour = 16:gt'qwloc2'
	if vladimirday ! day and vladimirQW = 25 and hour = 16 and week = 6:gt'qwloc3'
	if vladimirday ! day and vladimirQW = 35 and hour = 16 and week = 6:GT 'qwloc4'
	if QWdogreiqTimer = 0 and QWdogReiq = 2 and week = 7 and qwdogiventday ! day and hour >= 12:GT 'qwlocdog'

	if ring = 0:
		if number = 6:'<center><b><<num6>><<num5>>-<<num4>><<num3>>-<<num2>><<num1>></b></center>'
		if number = 5:'<center><b><<num6>><<num5>>-<<num4>><<num3>>-<<num2>></b><<num1>></center>'
		if number = 4:'<center><b><<num6>><<num5>>-<<num4>><<num3>></b>-<<num2>><<num1>></center>'
		if number = 3:'<center><b><<num6>><<num5>>-<<num4>></b><<num3>>-<<num2>><<num1>></center>'
		if number = 2:'<center><b><<num6>><<num5>></b>-<<num4>><<num3>>-<<num2>><<num1>></center>'
		if number = 1:'<center><b><<num6>></b><<num5>>-<<num4>><<num3>>-<<num2>><<num1>></center>'
		if number = 0:'<center><<num6>><<num5>>-<<num4>><<num3>>-<<num2>><<num1>></center>'
		*nl
		'<center><b><a href="exec:GT ''telefon'',''1''">1</a> <a href="exec:GT ''telefon'',''2''">2</a> <a href="exec:GT ''telefon'',''3''">3</a></b></center>'
		'<center><b><a href="exec:GT ''telefon'',''4''">4</a> <a href="exec:GT ''telefon'',''5''">5</a> <a href="exec:GT ''telefon'',''6''">6</a></b></center>'
		'<center><b><a href="exec:GT ''telefon'',''7''">7</a> <a href="exec:GT ''telefon'',''8''">8</a> <a href="exec:GT ''telefon'',''9''">9</a></b></center>'
		'<center><b><a href="exec:GT ''telefon'',''Сброс''">Сброс</a> <a href="exec:GT ''telefon'',''0''">0</a> <a href="exec:GT ''telefon'',''Вызов''">Вызов</a></b></center>'

		if hour >= 8 and hour <= 19:
			if telalla > 0:
				act 'Позвонить Алле':
					$telsob = 'Алла'
					dynamic $objmobilaraz
				end
			end

			if telmasha > 0:
				act 'Позвонить Маше':
					$telsob = 'Маша'
					dynamic $objmobilaraz
				end
			end

			if telkat > 0:
				act 'Позвонить Кате':
					$telsob = 'Катя'
					dynamic $objmobilaraz
				end
			end

			if bfA > 0 and svidanieA = 0:
				act 'Позвонить <<$boyA>>':dynamic $objmobilarazboy
			end
		end

		if nastjaQW = 1 and week = 6 and vnesh > 20:act 'Позвонить Насте':gt'nastja','pos4'
		if nastjaQW = 2 and week ! 6 and zenit = 0 and nastjaday ! day:act 'Поболтать с Настей':gt'nastja','pos13'
		if hour >= 8 and hour <= 20 and nastjaQW = 2 and week = 6 and vnesh > 20 and nastjaday ! day:act 'На пляж с Настей':gt'nastja','pos12'
		if nastjaQW = 5 and week = 6 and nastjaday ! day:act 'Пригласить Настю':gt'nastja','pos22'
		if nastjaQW = 6 and nastjaday ! day:act 'Позвонить Насте':gt'nastja','pos31'

		act 'Положить трубку':
			cla
			gt'telefon','fin'
		end
	end

	if ring = 1:
		if ringA = 1:
			gt'telefon','boyA'
			exit
		end

		if ringB = 1:
			gt'telefon','boyB'
			exit
		end

		if ringC = 1:
			gt'telefon','boyC'
			exit
		end
	end
end

if $ARGS[0] = 'boyA':
	cla
	clr
	ring = 0
	ringA = 0
	boydayA = day
	gs'stat'

	svetrand = RAND(0,5)
	if svetrand = 0:$sveta = 'лапуля'
	if svetrand = 1:$sveta = 'зайчик'
	if svetrand = 2:$sveta = 'котик'
	if svetrand = 3:$sveta = 'рыбка'
	if svetrand = 4:$sveta = 'Светик'
	if svetrand = 5:$sveta = 'Света'

	'Привет <<$sveta>> это <<$boyA>> как делишки?'

	act 'Нормально':
		cla
		'(Вы) - нормально, а у тебя как?'
		'(<<$boyA>>) - просто замечательно, вот только по тебе скучаю, может встретимся сегодня?'

		if pregtime <= dayA and pregtime >= 7 and pregtalk = 0:
			act 'Дорогой, ты скоро станешь папой':
				cla
				pregtalk = 1

				'(Вы) - Дорогой, ты скоро станешь папой.'

				if harakBoyA = 0:
					if bfA >= 90:
						love = 1

						'(<<$boyA>>) - Это же замечательно! У нас скоро будет прибавление.'
						'Вы начали разговор о сожительстве. На что <<$boyA>> сказал вам, что он в принципе, не против, но сперва он хочет вас познакомить с своими родителями.'
						'Он вас предупреждает, что мама очень требовательная и строгая, <<$boyA>> говорит, что он очень любит маму и не хочет ее расстраивать. Поэтому вы должны выглядеть шикарно, только платье из бутика, ухоженные и завитые волосы, косметика в меру.'
						'На ближайшей встрече, как только вы полностью будете готовы <<$boyA>> отвезет вас к своим родителям.'

						act 'Положить трубку':gt'telefon','fin'
						act 'Встретиться сегодня вечером':
							cla
							svidanieA = 1

							'(Вы) - Можно встреться вечером.'
							'(<<$boyA>>) - Во сколько мне подойти к твоему дому?'

							act 'Назвать время':
								cla
								meetday = daystart
								meethour = input ("Назовите час в котором придти парню. Сейчас <<hour>> час, можно назначить только большее число")
								if meethour <= hour or meethour > 23:meethour = 20

								'(Вы) - Давай в 20 часов.'
								'(<<$boyA>>) - Ладно, <<$sveta>> тогда до <<meethour>> часов.'

								act 'Положить трубку':gt'telefon','fin'
							end
						end
					elseif bfA < 90:
						money += 20000

						'(<<$boyA>>) - Я пока еще не готов стать папой. Я дам тебе деньги на аборт. Иди и избавься от ребенка.'

						act 'Положить трубку':gt'telefon','fin'
					end
				elseif harakBoyA = 1:
					money += 20000

					'(<<$boyA>>) - Я пока еще не готов стать папой. Я дам тебе деньги на аборт. Иди и избавься от ребенка.'

					act 'Положить трубку':gt'telefon','fin'
				elseif harakBoyA = 2:
					bfA = 0
					pregtalk = 0

					'(<<$boyA>>) - Что? Да ты охуела! Где то подвернула пизду, а теперь на меня сваливаешь. Иди ты на хуй.'

					act 'Положить трубку':gt'telefon','fin'
				end
			end
		elseif pregtime > dayA and pregtime >= 7 and pregtalk = 0:
			act 'Дорогой, ты скоро станешь папой':
				cla
				bfA = 0

				'(Вы) - Дорогой, ты скоро станешь папой.'
				'(<<$boyA>>) - Каким нахрен папой? Мы с тобой встречаемся меньше, чем ты беременна. Подвернула шлюха кому то, вот и иди к нему. Все. Можешь мне больше не звонить. Прощай.'

				act 'Положить трубку':gt'telefon','fin'
			end
		elseif week > 1 and week < 5 and workKafe = 1:
			act 'Ой, извини, я сегодня работаю':
				cla
				'(Вы) - Ой, извини, я сегодня работаю.'
				'(<<$boyA>>) - ну ладно, позвоню завтра.'

				act 'Положить трубку':gt'telefon','fin'
			end
		end

		act 'Сегодня вечером':
			cla
			bfA = bfA + 1
			svidanieA = 1
			meetday = daystart

			'(Вы) - Можно встреться вечером.'
			'(<<$boyA>>) - Во сколько мне подойти к твоему дому?'

			act 'Назвать время':
				cla
				meethour = input ("Назовите час в котором придти парню. Сейчас <<hour>> час, можно назначить только большее число одной цифрой")
				if meethour <= hour or meethour > 23:meethour = 20

				'(Вы) - Давай в <<meethour>> часов.'
				'(<<$boyA>>) - Ладно, <<$sveta>> тогда до <<meethour>> часов.'

				act 'Положить трубку':gt'telefon','fin'
			end
		end
		act 'Я сегодня занята. Перезвони завтра':
			cla
			bfA = bfA - 1

			'(Вы) - Я сегодня занята. Перезвони завтра.'
			if bfa <= 0:bfa = 0 & '(<<$boyA>>) - блядь, ты уже заебала меня, иди на хер.'
			if bfa > 0:'(<<$boyA>>) - ну ладно, тогда пока.'

			act 'Положить трубку':gt'telefon','fin'
		end
	end
	act 'Расстаться':
		cla
		bfA = 0
		gt'telefon','fin'
	end
end

if $ARGS[0] = 'boyB':
	cla
	clr
	ring = 0
	ringB = 0
	boydayB = day
	gs'stat'

	'<<$boyB>> предлагает вам погулять.'

	act 'Расстаться':
		cla
		bfB = 0
		gt'telefon','fin'
	end
	act 'Перезвони завтра':
		cla
		bfB = bfB - 1

		if bfB <= 0:bfB = 0 & '<<$boyB>> сказал, что он вас бросает.'
		if bfB > 0:'<<$boyB>> огорчился и положил трубку.'

		gt'telefon','fin'
	end
	act 'Сегодня вечером':
		cla
		bfB = bfB + 1
		svidanieB = 1

		'<<$boyB>> спрашивает во сколько ему подойти к вашему дому.'

		act 'Давай в 20 часов':
			cla
			'Вы тепло попрощались и разговор на этом закончился.'

			act 'Положить трубку':gt'telefon','fin'
		end
	end
end

if $ARGS[0] = 'boyC':
	cla
	clr
	ring = 0
	ringC = 0
	boydayC = day
	gs'stat'

	'<<$boyC>> предлагает вам погулять.'

	act 'Расстаться':
		cla
		bfC = 0
		gt'telefon','fin'
	end
	act 'Перезвони завтра':
		cla
		bfC = bfC - 1

		if bfC <= 0:bfC = 0 & '<<$boyC>> сказал, что он вас бросает.'
		if bfC > 0:'<<$boyC>> огорчился и положил трубку.'

		gt'telefon','fin'
	end
	act 'Сегодня вечером':
		cla
		bfC = bfC + 1
		svidanieC = 1

		'<<$boyC>> спрашивает во сколько ему подойти к вашему дому.'

		act 'Давай в 20 часов':
			cla
			'Вы тепло попрощались и разговор на этом закончился.'

			act 'Положить трубку':gt'telefon','fin'
		end
	end
end

if $ARGS[0] = 'Вызов':
	cla

	if num6 = 0 and num5 = 0 and num4 = 0 and num3 = 0 and num2 = 0 and num1 = 1:
		'Алло. Это пожарная часть. Говорите.'
	elseif num6 = 0 and num5 = 0 and num4 = 0 and num3 = 0 and num2 = 0 and num1 = 2:
		'Алло. Это милиция. Говорите.'
	elseif num6 = 0 and num5 = 0 and num4 = 0 and num3 = 0 and num2 = 0 and num1 = 3:
		'Алло. Это скорая. Говорите.'
	else
		'Длинный гудок'
	end

	act 'Положить трубку':
		cla
		gt'telefon','fin'
	end
end

if $ARGS[0] = '1':
	cla
	if number = 6:
	end
	if number = 5:num1 = 1 & number = 6
	if number = 4:num2 = 1 & number = 5
	if number = 3:num3 = 1 & number = 4
	if number = 2:num4 = 1 & number = 3
	if number = 1:num5 = 1 & number = 2
	if number = 0:num6 = 1 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '2':
	cla
	if number = 6:
	end
	if number = 5:num1 = 2 & number = 6
	if number = 4:num2 = 2 & number = 5
	if number = 3:num3 = 2 & number = 4
	if number = 2:num4 = 2 & number = 3
	if number = 1:num5 = 2 & number = 2
	if number = 0:num6 = 2 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '3':
	cla
	if number = 6:
	end
	if number = 5:num1 = 3 & number = 6
	if number = 4:num2 = 3 & number = 5
	if number = 3:num3 = 3 & number = 4
	if number = 2:num4 = 3 & number = 3
	if number = 1:num5 = 3 & number = 2
	if number = 0:num6 = 3 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '4':
	cla
	if number = 6:
	end
	if number = 5:num1 = 4 & number = 6
	if number = 4:num2 = 4 & number = 5
	if number = 3:num3 = 4 & number = 4
	if number = 2:num4 = 4 & number = 3
	if number = 1:num5 = 4 & number = 2
	if number = 0:num6 = 4 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '5':
	cla
	if number = 6:
	end
	if number = 5:num1 = 5 & number = 6
	if number = 4:num2 = 5 & number = 5
	if number = 3:num3 = 5 & number = 4
	if number = 2:num4 = 5 & number = 3
	if number = 1:num5 = 5 & number = 2
	if number = 0:num6 = 5 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '6':
	cla
	if number = 6:
	end
	if number = 5:num1 = 6 & number = 6
	if number = 4:num2 = 6 & number = 5
	if number = 3:num3 = 6 & number = 4
	if number = 2:num4 = 6 & number = 3
	if number = 1:num5 = 6 & number = 2
	if number = 0:num6 = 6 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '7':
	cla
	if number = 6:
	end
	if number = 5:num1 = 7 & number = 6
	if number = 4:num2 = 7 & number = 5
	if number = 3:num3 = 7 & number = 4
	if number = 2:num4 = 7 & number = 3
	if number = 1:num5 = 7 & number = 2
	if number = 0:num6 = 7 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '8':
	cla
	if number = 6:
	end
	if number = 5:num1 = 8 & number = 6
	if number = 4:num2 = 8 & number = 5
	if number = 3:num3 = 8 & number = 4
	if number = 2:num4 = 8 & number = 3
	if number = 1:num5 = 8 & number = 2
	if number = 0:num6 = 8 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '9':
	cla
	if number = 6:
	end
	if number = 5:num1 = 9 & number = 6
	if number = 4:num2 = 9 & number = 5
	if number = 3:num3 = 9 & number = 4
	if number = 2:num4 = 9 & number = 3
	if number = 1:num5 = 9 & number = 2
	if number = 0:num6 = 9 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = '0':
	cla
	if number = 6:
	end
	if number = 5:num1 = 0 & number = 6
	if number = 4:num2 = 0 & number = 5
	if number = 3:num3 = 0 & number = 4
	if number = 2:num4 = 0 & number = 3
	if number = 1:num5 = 0 & number = 2
	if number = 0:num6 = 0 & number = 1
	gt'telefon','start'
end

if $ARGS[0] = 'Сброс':
	cla
	num1 = 0
	num2 = 0
	num3 = 0
	num4 = 0
	num5 = 0
	num6 = 0
	number = 0
	gt'telefon','start'
end

if $ARGS[0] = 'fin':
	cla
	num1 = 0
	num2 = 0
	num3 = 0
	num4 = 0
	num5 = 0
	num6 = 0
	number = 0
	gt $locM, $metkaM
!'
	if housr = 1 and housrA = 1:
		housrA = 0
		gt'korr'
	end
'
end
--- telefon ---------------------------------

