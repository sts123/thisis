# artemhome2
gs'stat'

if artemhomemark = 0:
	'Вы подошли к дому Артема Чеботарева.'

	act 'Уйти':minut += 15 & gt'gorodok'

	if week < 6:
		if hour < 16 and hour >= 7:
			'Артема нет дома.'
		elseif hour >= 16 and hour < 20:
			'Дверь вам открыл Артем и пригласил войти.'

			act 'Войти':artemhomemark = 1 & gt $curloc
		elseif hour >= 20 or hour < 7:
			'Слишком позднее время для того, что бы ходить в гости.'
		end
	elseif week >= 6:
		if hour < 10:
			'Слишком раннее время, что бы ходить в гости.'
		elseif hour >= 10 and hour < 20:
			'Дверь вам открыл Артем и пригласил войти.'

			act 'Войти':artemhomemark = 1 & gt $curloc
		elseif hour >= 20 or hour < 5:
			'Слишком позднее время для того, что бы ходить в гости.'
		end
	end
elseif artemhomemark = 1:
	'Артем сидит в своей комнате на кровати.'

	if artompower > 0:
		'Артем улыбается вам "Света, ты такая красивая!"'

		act 'Целоваться':
			cls
			horny += 10
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
			'Вы улыбнулись Артему и немного приблизили свое лицо к нему. Артем приблизился к вам и поцеловал вас. Вы начали целоваться.'

			if artompower = 3:'Во время поцелуя Артем трется о ваше бедро своей промежностью и вы чувствуете его твердый член сквозь одежду. Вы чувствуете что Артем вынул член из штанов и трется им о ваше бедро.'
			if artompower = 2:'Во время поцелуя Артем трется о ваше бедро своей промежностью и вы чувствуете его твердый член сквозь одежду.'
			if artompower = 1:'Наконец закончив поцелуй Артем смущенно сказал. "Света, ты мне очень нравишься."'

			dynamic $din_artom_leghump
			dynamic $din_artom_leghump2
		end
	elseif artompower = 0:
		'Артем с улыбкой смотрит на вас "Ох Света, ты меня выдоила досуха, мне нужен отдых."'
	end

	if lernHome > 0:act 'Учить уроки':artemhomemark = 2 & gt $curloc

	act 'Уйти':artemhomemark = 0 & minut += 15 & gt'gorodok'
elseif artemhomemark = 2:
	minut += 60
	grupNPC[2] += 10
	lernHome = 0
	lern += RAND(3,6)
	intel += RAND(1,2)
	gs'stat'

	'<center><img src="images/qwest/alter/npc/<<2>>.jpg"></center>'
	'Вы занимались с Артемом в течении часа, за это время он помог вам с домашкой и кое что объяснил из пройденного материала.'

	act 'Передохнуть':artemhomemark = 1 & gt $curloc
end

!'
act '':
	cls
	minut += 5
	gs'stat'

	'<center><img src="images/qwest/alter/artom/2.jpg"></center>'
	''

	act '':
end
'
--- artemhome2 ---------------------------------

