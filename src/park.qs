# park
if $ARGS[0] = 'start':
	cla
	*clr
	gs'parkivent'
	gs'parkdin'

	$torchki = {
		cls
		gs'stat'
		gs'time'
		SNarkPriton = 1

		'Торчки посмотрели на вас тупым отрешенным взглядом. Но один из них сказал. "Слыш, если дурь нужна, иди на хату, тут не продаем."'

		act 'Отойти от них':gt'park','start'
	}

	$sexloc = $CURLOC

	minut = minut + 30
	clr
	gs'stat'
	gs'time'

	'<center><b><font color = maroon>Парк</font></b></center>'
	'<center><img src="images/pic/park.jpg"></center>'
	'Большой городской парк оборудованный лавочками около дорожек. Хотя большинство фонарей не работают и ночью тут может быть опасно.'
	if SNarkPriton = 0:'Возле одной из лавок валяются <a href="exec:dynamic $torchki">торчки</a>.'

	if car > 0 and cardrive = 5:
		cardrive = 5
		'Около парка стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
	end

	if tanga = 0 and ski = 1 and hour > 6 and hour <= 20 or tanga = 0 and glamur = 1 and hour > 6 and hour <= 20:
		nurand = RAND(0,100)
		if nurand >= 80:
			manna = manna - 5
			SUB = SUB + 1
			horny = horny + SUB
			nudity = nudity + 1

			'Мужчина проходящий мимо вас присвистнул "Эй девчонка, трусы-то где потеряла?"'
			'Вы покраснели от стыда и поспешили удалится.'
		end
	end

	act 'Выйти из Парка':
		cla
		minut = minut + 30
		gt'street'
	end

	if hour >= 10 and hour <= 22:
		act 'Посидеть в кафе в парке':
			cla
			*clr
			minut = minut + 30
			gt'ПаркКафе','food'
		end
	end

	act 'Гулять по парку 1 час':
		cla
		minut += 60

		if hour > 7 and hour < 21:
			parkrand = RAND(0,20)
			if parkrand < 10 and parkrand > 0:
				dynamic $parkrandivdin
				exit
			end
!			if parkrand > 14:
!				dynamic $parkrandivdin
!				exit
!			end
		end

		manna = manna + 10
		willpower = willpower + 10
		gs'stat'

		'Вы неспеша прогуливаетесь по парку. Дыша свежим воздухом, размышляя о превратностях судьбы.'

		act 'Завершить прогулку':gt'park','start'
	end

	if pusher = 1 and hour >= 6 and hour <= 21:
		'Вы видите торговца дурью трущегося у входа в парк.'

		if money >= 2000:
			act 'Купить бледную леди (2000 руб 1 доза)':
				cla
				minut = minut + 10
				palelady = input ("Сколько доз вы хотите купить?")

				if palelady*2000 > money or palelady <= 0:
					'Не корректная операция'
				end
				if palelady*2000 <= money:
					money = money - palelady*2000
					dur = dur + palelady

					'Вы быстро рассчитались и спрятали сверток переданный вам торговцем в карман. Потом вы сможете нюхнуть у себя дома в спальне.'
				end

				act 'Уйти':gt'park','start'
			end
		else
			'У вас не хватает денег даже на одну дозу.'
		end
	end

	if sport > 0 and parkrunday ! day:
		act 'Пробежка по парку 1 час':
			cla
			*clr
			parkrunday = day
			minut = minut + 30
			manna = manna - 10
			willpower = willpower - 10
			beg = beg + 1
			fat = fat - 8
			speed = speed + 1
			sweat = sweat + 3

			'<center><img src="images/pic/parkbeg.jpg"></center>'
			'Вы сделали несколько кругов вокруг парка, запыхались вспотели и устали.'

			if hour >= 20:
				parkrand = RAND(0,10)
				if parkrand >= 8:
					'Из тени дерева вышел парень, он подошел к вам и процедив сквозь зубы "Шалава!", потащил вас в кусты.'

					act 'Драться':
						cla
						$nameV = 'Насильник'
						!Статы
						strenV = 100
						speedV = 50
						agilV = 40
						reactV = 40
						vitalV = 50
						intelV = 10
						willV = 10
						!Навыки
						magikV = 100
						boxingV = 50
						shootV = 100
						!Параметры
						healthV = vitalV*10 + strenV*5
						mannaV = intelV*10 + magikV*10
						willpowerV = willV*10
						BonusAtakV = 0
						BonusDefV = 0
						!программа действий
						program = 1
						RapistFight = 1
						if spellavtoklon = 1:klon = 3
						if spellbefshild = 1:defence = 500
						gt'fight','start'
					end

					exit
				end
			end

			act 'Завершить пробежку':gt'park','start'
		end
	end

	act 'Идти к автомобильной дороге возле парка':gt'park','whore'
	act 'Идти к аттракционам':gt'park','luna'
end

if $ARGS[0] = 'luna':
	cla
	*clr
	minut = minut + 5
	clr
	gs'stat'
	gs'time'

	'<center><b><font color = maroon>Аттракционы</font></b></center>'
	'<center><img src="images/pic/luna.jpg"></center>'
	'Аттракционы занимают достаточно большую часть парка и днем тут всегда суета из отдыхающих, влюбленных парочек и мамаш с детьми.'

	if vladimirQW = 0 and hour >= 9 and hour <= 20 and week > 5 and vnesh > 10:'<a href="exec:GT ''qwloc''">Около ограды стоит крепкий мужчина и разглядывает вас</a>.'

	if hour >= 9 and hour <= 20:
		act 'Подрабатывать раздачей флаеров (50 руб в час)':
			cla
			*clr
			minut = minut + 60
			money = money + 50
			manna = manna - 5

			'<center><img src="images/pic/flaer.jpg"></center>'
			'Вы целый час бегали по парку и раздавали флаеры посетителям с глупой улыбкой на лице. После этого вы получили 50 рублей.'

			act 'Отойти':gt'park','luna'
		end

		if money >= 50:
			act 'Съесть шаурму 50 руб':
				cla
				*clr
				minut = minut + 30
				health = health + 10
				money = money - 50
				manna = manna + 5
				willpower = willpower + 5

				'<center><img src="images/pic/luna1.jpg"></center>'

				if energy >= 30:
					fat = fat + 7

					'Вы больше не можете есть.'
				elseif energy >= 20 and energy < 30:
					fat = fat + 5
					energy = energy + 10

					'Вы через силу затолкали в себя шаурму.'
				elseif energy < 20:
					energy = energy +20
					fat = fat + 3

					'Вы с удовольствием съели шаурму.'
				end

				act 'Отойти':gt'park','luna'
			end
			act 'Попить лимонад 50 руб':
				cla
				*clr
				minut = minut + 30
				health = health + 10
				money = money - 50
				manna = manna + 5
				willpower = willpower + 5

				'<center><img src="images/pic/luna1.jpg"></center>'

				if water >= 20:
					fat = fat + 3

					'Лимонад в вас больше не лезет.'
				elseif water < 20:
					fat = fat + 2
					water = water +20

					'Вы с удовольствием выпили банку лимонада.'
				end

				act 'Отойти':gt'park','luna'
			end
			act 'Кататься на карусели 50 руб':
				cla
				*clr
				minut = minut + 30
				money = money - 50
				if will < 30:will = will + 1
				if will >= 30:will = will + RAND(0,1)
				willpower = willpower + 10
				manna = manna + 10

				'<center><img src="images/pic/karusel.jpg"></center>'
				'Вы заплатили 50 рублей и сели в карусель.'
				'Вы отлично прокатились, аж дух захватило.'

				act 'Отойти':gt'park','luna'
			end
		end

		if money >= 100:
			act 'Стрелять в тире 100 руб':
				cla
				*clr
				minut = minut + 30
				money = money - 100

				'<center><img src="images/pic/tir.jpg"></center>'
				'Вы заплатили 100 рублей за десять пулек. Если вам удастся попасть все 10 раз, то вы выиграете плюшевого мишку.'

				act 'Стрелять':
					cla
					tirkoef = agil + shoot
					tirmin = tirkoef*20/100

					tirand = RAND(tirkoef - tirmin,tirkoef + tirmin)
					if tirand >= 80:
						mishka = mishka + 1
						manna = manna + 5

						'Вы точно положили все 10 пуль в цели и выиграли плюшевого мишку'
					elseif tirand < 80 and tirand >= 70:
						'Эх, вы промазали всего лишь один раз.'
					elseif tirand < 70 and tirand >= 60:
						'Вы 8мь раз попали в цель и 2 раза промазали.'
					elseif tirand < 60 and tirand >= 50:
						'Вы 7мь раз попали в цель и 3 раза промазали.'
					elseif tirand < 50 and tirand >= 40:
						'Вы 6ть раз попали в цель и 4 раза промазали.'
					elseif tirand < 40 and tirand >= 30:
						'Вы 5ть раз попали в цель и 5ть раз промазали.'
					elseif tirand < 30 and tirand >= 25:
						'Вы 4 раза попали в цель и 6ть раз промазали.'
					elseif tirand < 25 and tirand >= 20:
						'Вы 3 раза попали в цель и 7мь раз промазали.'
					elseif tirand < 20 and tirand >= 15:
						'Вы 2а раза попали в цель и 8мь раз промазали.'
					elseif tirand < 15 and tirand >= 10:
						'Вы 1 раз попали в цель и 9ть раз промазали.'
					elseif tirand < 10:
						'Вы не разу не попали в цель.'
					end

					shoot = shoot + 1

					act 'Отойти':gt'park','luna'
				end
			end
		end

		if money >= 20:
			act 'Ударить по силомеру 20 руб':
				cla
				*clr
				'<center><img src="images/pic/silomer.jpg"></center>'
				'Вы заплатили 20 рублей за удар по силомеру.'

				act 'Ударить':
					cla
					minut = minut + 30
					money = money - 20
					stKo = stren*20/100

					damage = RAND(stren-stKo,stren+stKo)
					if stren < 30:stren = stren + 1
					if stren >= 30:stren = stren + RAND(0,1)

					'Вы, что есть силы ударили по силомеру и на экране зажглась цифра <<damage>>'
					if damage > maxdamage:maxdamage = damage & 'Хмм, новый рекорд.'

					act 'Отойти':gt'park','luna'
				end
			end
		end

		act 'Однорукий бандит':gt'park','avtomat'
	end

	act 'Уйти':gt'park','start'
end

if $ARGS[0] = 'avtomat':
	cla
	*clr
	clr
	gs'stat'
	gs'time'

	'<center><img src="images/pic/avtomat.jpg"></center>'
	'Правила игры очень простые, кидаешь монетку 5 рублей и дергаешь рычаг. Джекпот 1000.'

	if money >= 5 and hour <= 20:
		act 'Кинуть 5 рублей и дернуть рычаг':gt'park','avtomat2'
	end

	act 'Отойти от автомата':gt'park','luna'
end

if $ARGS[0] = 'avtomat2':
	cla
	*clr
	clr
	gs'stat'
	gs'time'
	minut = minut + 5
	money = money - 5

	avtrand = RAND(0,100)
	if avtrand = 100:
		money = money + 1000

		'Джекпот!!! Вы выиграли 1 тысячу рублей.'
	elseif avtrand < 100 and avtrand >= 95:
		money = money + 100

		'Вы выиграли 100 рублей.'
	elseif avtrand < 95 and avtrand >= 85:
		money = money + 10

		'Вы выиграли 10 рублей.'
	elseif avtrand < 85 and avtrand >= 75:
		money = money + 5

		'Вы выиграли 5 рублей.'
	elseif avtrand < 75:
		'Вы ничего не выиграли.'
	end

	act 'Далее':gt'park','avtomat'
end

if $ARGS[0] = 'whore':
	cla
	*clr
	minut = minut + 5
	clr
	gs'stat'
	gs'time'

	'<center><b><font color = maroon>Автомобильная дорога возле парка</font></b></center>'

	if hour >= 16 and hour <= 23:
		'<center><img src="images/pic/park1.jpg"></center>'
		'По обочине дороги гуляют <a href="exec:GT ''prostitute'',''start''">проститутки</a>, иногда к ним подъезжают машины и забирают их.'
	elseif hour >= 4 and hour < 16:
		'<center><img src="images/etogame/glpark.jpg"></center>'
		'Автомобили проезжают по дороге мимо парка и тут не видно ничего интересного.'
	else
		'<center><img src="images/pic/park1.jpg"></center>'
		'Автомобили проезжают по дороге мимо парка и тут не видно ничего интересного.'
	end

	temp = RAND(1,10)
	if temp > 5 and exhibi > 2:
		act 'Гулять в колготках':
			cla
			*clr
			set minut = minut + 30

			'<center><img src="images/etogame/parkex.jpg"></center>'
			'Вы снимаете верхнюю одежду и гуляете в одних колготках, как будто-бы забыли одеть юбку.'

			act 'Довольно':gt'park','start'
		end
	end

	act 'Идти в парк':gt'park','start'
end

if $ARGS[0] = 'prost':
	cla
	*clr
	minut = minut + 5
	clr
	gs'stat'
	gs'time'

	'<center><b><font color = maroon>Проститутка</font></b></center>'
	'<center><img src="images/pic/park2.jpg"></center>'

	if whoreQW = 2:
		'Проститутки смотрят на вас с любопытством.'
	elseif whoreQW = 1:
		'Проститутки смотрят на вас с интересом.'

		act 'Поговорить':
			cla
			whoreQW = 2

			'Вы подошли к проститутке и спросили у нее как тут вообще дела делаются. Она начала объяснять. "Мы все свободные, не работаем ни на кого, но из за этого много проблем. Стелла со своими подружками бывает бьют нас и обирают, иногда приезжают мелкие бандиты и отнимают у нас деньги. Если хочешь тут работать, то придется платить и Стелле и бандюкам. Ты конечно крутая, можешь попробовать осадить Стеллу и ее подружек, но с бандитами не советую связываться. И еще, на тебя не клюнут клиенты, если ты не будешь одета как шлюха, можешь купить соответствующую одежду в сексшопе."'

			act 'Отойти':gt'park','prost'
		end
	elseif whoreQW = 0:
		'Эй, ты не из наших, валила бы с нашей точки, а то зубов не соберешь.'

		act 'Да пошла ты!':
			cla
			minut = minut + 15
			$nameV = 'Обдолбанная проститутка'
			!Статы
			strenV = 20
			speedV = 30
			agilV = 30
			reactV = 30
			vitalV = 50
			intelV = 10
			willV = 10
			!Навыки
			magikV = 10
			boxingV = 10
			shootV = 10
			!Параметры
			healthV = vitalV*10 + strenV*5
			mannaV = intelV*10 + magikV*10
			willpowerV = willV*10
			BonusAtakV = 0
			BonusDefV = 0
			!программа действий
			program = 0
			prostitutFight = 1
			if spellavtoklon = 1:klon = 3
			if spellbefshild = 1:defence = 500
			gt'fight','start'
		end
	end

	if whoreQW > 1 and hook = 1:
		act 'Искать клиента 15 мин':
			cla
			*clr
			minut = minut + 15

			whrand = RAND(0,100)
			if whrand <= 5:
				'К вам подъехал черный джип, открылось окно и оттуда высунулась здоровая наглая морда. "Эй шлюха, пора дань платить. Давай сюда штукарь и вали дальше работать."'

				if money >= 1000:
					act 'Отдать деньги':
						cla
						money = money - 1000

						'Вы отдали деньги здоровяку в джипе. Он положил их в карман и уехал.'

						act 'Отойти':gt'park','prost'
					end
				end

				act 'Да пошел ты!':
					cla
					minut = minut + 15
					$nameV = 'Бандит'
					!Статы
					strenV = 200
					speedV = 30
					agilV = 20
					reactV = 20
					vitalV = 150
					intelV = 10
					willV = 10
					!Навыки
					magikV = 10
					boxingV = 10
					shootV = 10
					!Параметры
					healthV = vitalV*10 + strenV*5
					mannaV = intelV*10 + magikV*10
					willpowerV = willV*10
					BonusAtakV = 0
					BonusDefV = 0
					!программа действий
					program = 0
					prostitutFight = 2
					if spellavtoklon = 1:klon = 3
					if spellbefshild = 1:defence = 500
					gt'fight','start'
				end
			elseif whrand > 5 and whrand <= 60:
				minut = minut + 15
				bj = bj + 1
				guy = guy + 1
				money = money + 500
				throat = throat + 1

				'<center><img src="images/picV/car.jpg"></center>'
				'К вам подъехала машина и мужчина сидящий за рулем спросил сколько будет стоить отсос. Вы назвали стандартную таксу в 500 рублей. Он согласился и открыл пассажирскую дверь для вас.'

				if prezik > 0:
					'Вы достали презерватив и сунули его в свой рот, потом наклонились над ширинкой клиента и одели ему презерватив на член своим ртом.'
				end

				'Вы обхватили губами член клиента и начали его обсасывать, ласкать язычком и стараться взять его как можно глубже.'

				if prezik = 0:
					swallow = swallow + 1
					cumlip = cumlip + 1

					'Клиент начал кончать вам в рот, вы продолжали отсасывать и глотать его горячую, терпкую сперму.'

					gerprand = RAND(0,100)
					if gerprand > 96:
						if VeneraOnce = 0:VeneraOnce = 1
						Venera = Venera + 1
					end
				elseif prezik > 0:
					prezik = prezik - 1

					'Клиент кончил в презерватив.'
				end

				'После того как клиент кончил от тут же вас высадил из машины.'

				act 'Идти к панели':gt'park','prost'
			elseif whrand > 60 and whrand <= 90:
				minut = minut + 15

				'Вы прохаживались по тротуару демонстрируя свои прелести совершенно напрасно, никто вами не заинтересовался.'

				act 'Идти к панели':gt'park','prost'
			elseif whrand > 90:
				'К вам подошла проститутка. "Слыш, шалава, если не хочешь проблем, надо заплатить Стелле. Давай сюда пятихатник и вали дальше работать."'

				if money >= 500:
					act 'Отдать деньги':
						cla
						money = money - 500

						'Вы отдали деньги проститутке, она развернулась и ушла.'

						act 'Отойти':gt'park','prost'
					end
				end

				act 'Да пошла ты!':
					cla
					minut = minut + 15
					$nameV = 'Проститутка'
					!Статы
					strenV = 50
					speedV = 50
					agilV = 40
					reactV = 30
					vitalV = 60
					intelV = 10
					willV = 10
					!Навыки
					magikV = 10
					boxingV = 10
					shootV = 10
					!Параметры
					healthV = vitalV*10 + strenV*5
					mannaV = intelV*10 + magikV*10
					willpowerV = willV*10
					BonusAtakV = 0
					BonusDefV = 0
					!программа действий
					program = 0
					prostitutFight = 3
					if spellavtoklon = 1:klon = 3
					if spellbefshild = 1:defence = 500
					gt'fight','start'
				end
			end
		end
	end

	act 'Отойти':gt'park','start'
end

if $ARGS[0] = 'rape1':
	cla
	*clr
	rape += 1
	sex += 1
	SUB += 3
	money = 0

	'<center><img src="images/img/spaln/rape.jpg"></center>'
	'Вас ударили по голове, очнулись вы уже в кустах без трусов, а насильник буравил своим фалосом вашу вагину.'

	act 'Сопротивляться':
		cla
		cumpussy += 1

		'Вы попытались оттолкнуть насильника, но он лишь крепче прижал вас к себе, и продолжил трахать, пока вы плакали и пытались вырваться он наконец кончил в вас и оттолкнув ушел, прихватив все ваши деньги.'

		act 'Уйти':gt'park','start'
	end
	act 'Попытаться расслабиться и получить удовольствие':
		cla
		*clr
		anal += 1
		SUB += 5

		'<center><img src="images/img/spaln/rapean.jpg"></center>'
		'Заметив что вы даже не пытаетесь сопротивляться, насильник поставил вас раком и вставил свой член вам в зад. Вы закричали от боли, но он зажал вам рот и продолжил насиловать ваш анус.'

		act 'Далее':
			cla
			*clr
			bj += 1
			cumlip += 1
			cumface += 1
			SUB += 5

			'<center><img src="images/img/spaln/cum.jpg"></center>'
			'Он поставил вас на колени и начал трахать в рот пока не кончил, "Глотай шлюха" прошипел он, опасаясь последствий вы проглотили сперму. Усмехнувшись он вытирает член о ваше лицо и уходит, прихватив все ваши деньги.'

			act 'Уйти':gt'park','start'
		end
	end
end
--- park ---------------------------------

