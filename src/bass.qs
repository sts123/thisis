# bass
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Бассейн</font></b></center>'
	'<center><img src="images/pic/bass.jpg"></center>'
	'Вход в бассейн стоит 100 рублей, необходимо иметь купальник.'

	act 'Выйти':minut = minut + 5 & gt'down'

	if db >= 1 and bikini > 0 and Goraday ! day:act 'Искать Жору':Goraday = day & gt'klofdomhouse','ev42'

	if money >= 100 and bikini > 0:
		act 'Заплатить 100 руб за 1 час в бассейне':
			cla
			minut = minut + 5
			money = money - 100
			gt'bass','a'
		end
	end
end

if $ARGS[0] = 'a':
	cla
	*clr
	minut = minut + 5

	'<center><b><font color = maroon>Бассейн</font></b></center>'

	if magik < 4:'<center><img src="images/pic/bass.jpg"></center>'

	if magik >= 4 and kisameQW = 0:
		'<center><img src="images/pic/bass1.jpg"></center>'
		'В бассейне плавает здоровенный атлет, он плавает с сумасшедшей скоростью и явно чувствует себя как рыба в воде, он доплывает до края бассейна и одним движением выпрыгивает прямо перед вами. Глядя на вас он хищно улыбается показывая вам ряд белых зубов.'

		act 'Смотреть на пловца':
			cla
			*clr
			kisameQW = 1
			minut = minut + 60
			sweat = -3
			manna = manna + 5
			willpower = willpower + 5
			if stren < 30:stren = stren + 1

			'<center><img src="images/picQW/kisame.jpg"></center>'
			'Атлет накинул на себя полотенце и подошел к вам. Он улыбнулся и сказал "Привет сладенькая! Меня зовут Кисаме, для тебя просто Киса!"'

			act 'Привет! Я Света':
				cla
				'(Вы) - Привет! Я Света.'
				'(Пловец) - Светик, может поплаваем вместе?'
				'Кисаме не дожидаясь ответа хватает вас за талию и мощным прыжком запрыгивает на середину бассейна.'

				act 'Далее':gt'kisameQW','start'
			end
			act 'Отвали Киса!':
				cla
				'(Вы) - Отвали Киса!'
				'(Пловец) - Как грубо!'
				'Вы не успели и глазом моргнуть как атлет схватил вас за талию и подняв вас над головой легко зашвырнул вас на середину бассейна.'
				'Когда вы отплевываясь всплыли над водой вы увидели как к вам под водой на бешеной скорости приближается Кисаме.'

				act 'Далее':gt'kisameQW','start'
			end
		end
	elseif kisameQW = 1 and KisameDead < 1:
		'<center><img src="images/picQW/kisameV.jpg"></center>'
		'Видя вас акулоподобный Кисаме улыбается "Привет детка. Хочешь я наполню твой горячий ротик своим акульим семенем?"'

		act 'Атаковать (Кисаме маг10)':
			cla
			horny = horny + 10
			$nameV = 'Кисаме'
			!Статы
			strenV = 300
			speedV = 100
			agilV = 100
			reactV = 100
			vitalV = 200
			intelV = 100
			willV = 50
			!Навыки
			magikV = 10
			boxingV = 100
			shootV = 100
			!Параметры
			healthV = vitalV*10 + strenV*5
			mannaV = intelV*magikV + magikV*100 + vitalV*10
			willpowerV = willV*10
			BonusAtakV = 0
			BonusDefV = 0
			!программа действий
			program = 5
			KisaFight = 1
			klonV = 5
			defenceV = 800
			if spellavtoklon = 1:klon = 3
			gt'fight','start'
		end
		act 'Сделать ему минет под водой':
			cla
			*clr
			minut = minut + 60
			horny = horny + 100
			sweat = -3
			manna = manna + 5
			willpower = willpower + 5
			if stren < 40:stren = stren + 1
			if KisameSex = 0:KisameSex = 1 & guy = guy + 1
			bj = bj + 1
			swallow = swallow + 1
			SUB = SUB + 1

			'<center><img src="images/picQW/kisameBJ.jpg"></center>'
			'Вы потупили глазки, Кисаме еще шире улыбнулся и затащил вас в воду. Его сильные руки прижали ваше лицо к его паху и вы обхватили его член губами, совсем быстро Кисаме кончил вам в рот.'

			act 'Выйти из воды':gt'bass','start'
		end
	end

	act 'Купаться 1 час':
		cla
		*clr
		cumpussy = 0
		cumbelly = 0
		cumass = 0
		cumanus = 0
		cumlip = 0
		cumface = 0
		cumfrot = 0
		minut = minut + 60
		sweat = -3
		manna = manna + 5
		willpower = willpower + 5
		if stren < 40:stren = stren + 1

		'<center><img src="images/pics/swim.jpg"></center>'
		'Вы искупались в бассейне, вода освежает и бодрит.'

		act 'Выйти из воды':gt'bass','start'
	end
	act 'Выйти':gt'bass','start'
end
--- bass ---------------------------------

