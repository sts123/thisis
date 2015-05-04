# fbHouse
cls
gs'stat'

'<center><img src="images/qwest/alter/Ev/fbHouse.jpg"></center>'
'<<$bname>> привел вас к своему дому и проводил вас в квартиру. В квартире он посадил вас на диванчик и сам сел с вами рядом. <<$bname>> наклонился к вашему лицу.'

act 'Целоваться':
	cls
	boy += 1
	dick = RAND(15,25)
	parkfuckboy += 1
	$ppBoyName[parkfuckboy] = $bname
	ppBoyTipe[parkfuckboy] = 1
	ppBoyPlace[parkfuckboy] = 2
	!дроч 2 минет 3 групповуха
	ppdick[parkfuckboy] = dick
	fbhousetimes += 1
	pphj = 0
	ppbj = 0
	ppsex = 0
	ppanal = 0
	minut += 5
	horny += 10
	gs'stat'

	'<center><img src="images/qwest/alter/Ev/fbhKiss.jpg"></center>'
	'Вы начали целоваться с парнем и он стал медленно вас раздевать.'

	act 'Взять в рот':
		cls
		ppbj += 1
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbhBJ.jpg"></center>'
		'Вы наклонились к парню и расстегнув его ширинку спустили с него штаны достав его <<dick>> сантиметровый член. Немного поиграв с ним вы обхватили его губами и начали страстно сосать вбирая между своих губ багровый ствол до самого горла.'

		tiprand = RAND(0,1)
		if tiprand = 0:
			pose = 1
			$fbhactname = 'Встать раком'

			'<<$bname>> нежно но настойчиво ставит вас на ноги и наклоняет'
		elseif tiprand = 1:
			pose = 0
			$fbhactname = 'Лечь на спину'

			'<<$bname>> нежно но настойчиво кладет вас на спину'
		end

		act '<<$fbhactname>>':
			cls
			minut += 5
			ppsex += 1
			gs'stat'

			if tiprand = 0:'<center><img src="images/qwest/alter/Ev/fbhdog.jpg"></center>'
			if tiprand = 1:'<center><img src="images/qwest/alter/Ev/fbhmiss.jpg"></center>'

			dynamic $sexstart
			dynamic $sexstart4
			dynamic $sexcum

			act 'Приводить себя в порядок':
				cls
				if ppbj > 0:bj += 1
				if pphj > 0:hj += 1
				if ppsex > 0:sex += 1
				if ppanal > 0:anal += 1
				minut += 5
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/fbhend.jpg"></center>'
				'Вы начали приводить себя в порядок. <<$bname>> довольно одевался "Рад был бы с тобой еще посидеть, но у меня дела, извини."'

				act 'Уйти':gt'gorodok'
			end
		end
	end
end
--- fbHouse ---------------------------------

