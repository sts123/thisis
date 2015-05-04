# sexshop
if $ARGS[0] = 'start':
	$sexloc = $CURLOC

	cla
	*clr

	shrand = RAND(0,100)
	if kendra > 0 and shrand < 10:gt'sexshop','kendra'
	if tanga = 0 and shrand > 90:gt'sexshop','shprod'
	minut = minut + 5

	$metkaM = $ARGS[0]
	$locM = $CURLOC

	clr
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Секс шоп</font></b></center>'
	'<center><img src="images/pic/sexshop.jpg"></center>'
	'Лубрикант - 300 руб'
	'Маленький фалоимитатор - 800 руб'
	'Вибратор - 1300 руб'
	'Страпон 1200 руб'
	'Анальная пробка 1200 руб'
	'В подвальном помещении расположены кабинки для частного просмотра порно фильмов (50 руб 15 минут).'

	act 'Выйти':
		cla
		ghnow = 0
		minut = minut + 5
		gt'down'
	end

	if SUB >= 100 and analplug = 1 and dildo = 1 and vnesh > 26 and Peter < 1:
		Peterrand = RAND(0, 100)
		if Peterrand > 50:
			'На вас заинтересованно смотрит мужчина средних лет, видимо он хозяин этого магазина'

			act 'Заинтересоваться хозяином магазина':
				cla
				*clr
				'<center><img src="images/peter/peter.jpg"></center>'
				'Я Питер, я давно за вами наблюдаю. Я часто вижу вас тут. Думаю нам будет интересно вместе...'

				act 'Идти с Питером':gt'Peterroom','start'
				act 'Выйти':
					cla
					ghnow = 0
					minut = minut + 5
					gt'down'
				end
			end
		end
	end

	act 'Идти в подвал':gt'sexshop','podval'

	if gloryhole >= 20 and pornstudio = 0:
		'Вы замечаете краем глаза, что продавец пытается привлечь ваше внимание'

		act 'Подойти, узнать, в чём дело':gt'sexshop','porn'
	end

	if money >= 300:
		act 'Купить лубрикант (300 руб)':
			cla
			*clr
			portion = input ("Сколько вы хотите купить?")
			if portion*300 > money:'У вас не хватает денег.'
			if portion*300 <= money:
				lubri += portion*5
				money = money - portion*300
				minut = minut + 5

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили лубрикант и заплатили деньги в кассу.'
			end

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 400 and pornMagazine <= 1:
		act 'Купить порно журнал (400 руб)':
			cls
			minut += 5
			money -= 400
			pornMagazine = 50
			gs'stat'

			'Вы купили порножурнал.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 800 and dildo = 0:
		act 'Купить маленький фалоимитатор (800 руб)':
			cla
			*clr
			minut = minut + 15
			dildo = 1
			money = money - 800

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили фалоимитатор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 1200 and strapon = 0:
		act 'Купить страпон (1200 руб)':
			cla
			*clr
			minut = minut + 15
			strapon = 1
			money = money - 1200

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили страпон и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 1200 and analplug = 0:
		act 'Купить анальную пробку (1200 руб)':
			cla
			*clr
			minut = minut + 15
			analplug = 1
			money = money - 1200

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили анальную пробку и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 1300 and vibrator = 0:
		act 'Купить вибратор (1300 руб)':
			cla
			*clr
			minut = minut + 15
			vibrator = 1
			money = money - 1300

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили вибратор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 1500 and middildo = 0:
		act 'Купить 15ти сантиметровый фалоимитатор (1500 руб)':
			cla
			*clr
			minut = minut + 15
			middildo = 1
			money = money - 1500

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили фалоимитатор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 2500 and largedildo = 0:
		act 'Купить 20ти сантиметровый фалоимитатор (2500 руб)':
			cla
			*clr
			minut = minut + 15
			largedildo = 1
			money = money - 2500

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили фалоимитатор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 4500 and bigdildo = 0:
		act 'Купить 25ти сантиметровый фалоимитатор (4500 руб)':
			cla
			*clr
			minut = minut + 15
			bigdildo = 1
			money = money - 4500

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили фалоимитатор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 6500 and extradildo = 0:
		act 'Купить 30ти сантиметровый фалоимитатор (6500 руб)':
			cla
			*clr
			minut = minut + 15
			extradildo = 1
			money = money - 6500

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили фалоимитатор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 8500 and superdildo = 0:
		act 'Купить 35ти сантиметровый фалоимитатор (8500 руб)':
			cla
			*clr
			minut = minut + 15
			superdildo = 1
			money = money - 8500

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили фалоимитатор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 12000 and maddildo = 0:
		act 'Купить 40 сантиметровый фалоимитатор (12000 руб)':
			cla
			*clr
			minut = minut + 15
			maddildo = 1
			money = money - 12000

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили фалоимитатор и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'sexshop','start'
		end
	end

	if money >= 1000:
		if hooker[1] = 0:
			act 'Осмотреть одежду проститутки. №1':
				cla
				*clr
				'<center><img src="images/ode/hooker1.jpg"></center>'
				'Одежда проститутки.'
				'Стоит 1000 руб.'

				act 'Уйти':gt'sexshop','start'
				act 'Купить':
					cla
					money = money - 1000
					hooker[1] = 1
					hookerH[1] = 200
					hookerB[1] = bedra
					gt'sexshop','start'
				end
			end
		end

		if hooker[2] = 0:
			act 'Осмотреть одежду проститутки. №2':
				cla
				*clr
				'<center><img src="images/ode/hooker2.jpg"></center>'
				'Одежда проститутки.'
				'Стоит 1000 руб.'

				act 'Уйти':gt'sexshop','start'
				act 'Купить':
					cla
					money = money - 1000
					hooker[2] = 1
					hookerH[2] = 200
					hookerB[2] = bedra
					gt'sexshop','start'
				end
			end
		end

		if hooker[3] = 0:
			act 'Осмотреть одежду проститутки. №3':
				cla
				*clr
				'<center><img src="images/ode/hooker3.jpg"></center>'
				'Одежда проститутки.'
				'Стоит 1000 руб.'

				act 'Уйти':gt'sexshop','start'
				act 'Купить':
					cla
					money = money - 1000
					hooker[3] = 1
					hookerH[3] = 200
					hookerB[3] = bedra
					gt'sexshop','start'
				end
			end
		end

		if hooker[4] = 0:
			act 'Осмотреть одежду проститутки. №4':
				cla
				*clr
				'<center><img src="images/ode/hooker4.jpg"></center>'
				'Одежда проститутки.'
				'Стоит 1000 руб.'

				act 'Уйти':gt'sexshop','start'
				act 'Купить':
					cla
					money = money - 1000
					hooker[4] = 1
					hookerH[4] = 200
					hookerB[4] = bedra
					gt'sexshop','start'
				end
			end
		end

		if hooker[5] = 0:
			act 'Осмотреть одежду проститутки. №5':
				cla
				*clr
				'<center><img src="images/ode/hooker5.jpg"></center>'
				'Одежда проститутки.'
				'Стоит 1000 руб.'

				act 'Уйти':gt'sexshop','start'
				act 'Купить':
					cla
					money = money - 1000
					hooker[5] = 1
					hookerH[5] = 200
					hookerB[5] = bedra
					gt'sexshop','start'
				end
			end
		end
	end
end

if $ARGS[0] = 'podval':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'
	!gloryholeBooths

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Подвал с кабинками для просмотра фильмов</font></b></center>'
	'<center><img src="images/pic/gloryholeBooths1.jpg"></center>'
	''

	act 'Зайти в свободную кабинку':gt'sexshop','pip'
	act 'Идти в туалет':gt'sexshop','toi'

	if masharab = 1:
		act 'Зайти к Маше':gt'masharoom','start'
	end

	act 'Выйти из подвала':gt'sexshop','start'
end

if $ARGS[0] = 'toi':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Туалет</font></b></center>'
	'<center><img src="images/pic/PublicToilet.jpg"></center>'
	''

	if tanga = 1:
		act 'Снять нижнее белье':
			cla
			tanga = 0
			gt'sexshop','toi'
		end
	end

	if hapri = 0:
		act 'Причесаться':
			cla
			minut = minut + 3
			hapri = 1
			act 'Посмотреть результат':gt'sexshop','toi'
		end
	end

	if mop = 1 and kosmetica > 0:
		act 'Нанести макияж':
			cla
			*clr
			'<center><img src="images/pic/mop.jpg"></center>'

			act 'Легкий макияж':
				cla
				minut = minut + 3
				kosmetica = kosmetica - 1
				mop = 2

				'Вы легонечко подвели глаза и немного подкрасили губы.'

				act 'Выйти':gt'sexshop','toi'
			end

			if kosmetica >= 2:
				act 'Нормальный макияж':
					cla
					minut = minut + 5
					kosmetica = kosmetica - 2
					mop = 3

					'Вы накрасили губы, подвели глаза и наложили тени.'

					act 'Выйти':gt'sexshop','toi'
				end
			end

			if kosmetica >= 3:
				act 'Вызывающий макияж':
					cla
					minut = minut + 10
					kosmetica = kosmetica - 3
					vidageday = vidageday - 1
					mop = 4

					'Вы густо накрасили глаза, наложили тени и тушь для ресниц, накрасили контур губ карандашом и губы помадой.'

					act 'Выйти':gt'sexshop','toi'
				end
			end
		end
	end

	if cumpussy > 0 or cumbelly > 0 or cumass > 0 or cumanus > 0:
		act 'Подмыться 15 мин':
			cla
			*clr
			cumpussy = 0
			cumbelly = 0
			cumass = 0
			cumanus = 0
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pics/wash5.jpg"></center>'
			'Вы тщательно смыли сперму с себя.'

			act 'Выйти':gt'sexshop','toi'
		end
	end

	if cumlip > 0 or cumface > 0:
		act 'Смыть сперму с лица 15 мин':
			cla
			*clr
			mop = 1
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы тщательно смыли сперму с лица.'

			act 'Выйти':gt'sexshop','toi'
		end
	end

	if cumfrot > 0:
		act 'Стереть сперму с одежды 15 мин':
			cla
			cumfrot = 0
			sweat = sweat - 1
			minut = minut + 15

			!'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы стерли следы спермы с одежды.'

			act 'Выйти':gt'sexshop','toi'
		end
	end

	if tampon > 0 and mesec > 0 and isprok = 0:
		act 'Поменять тампон':
			cla
			*clr
			tampon = tampon - 1
			isprok = 1
			minut = minut + 5
			manna = manna - 5

			'<center><img src="images/pics/wash3.jpg"></center>'
			'Вы поменяли тампон.'

			act 'Закончить':gt'sexshop','toi'
		end
	end

	act 'Выйти из туалета':gt'sexshop','podval'
end

if $ARGS[0] = 'pip':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'
	!gloryholeBooths

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Кабинка с фильмами</font></b></center>'
	'<center><img src="images/pic/ghBooths.jpg"></center>'
	'Небольшая кабинка с телевизором на стене, купюроприемником и двумя дырками в стенах на уровне пояса.'
	if ghnow > 0:'Вы обслужили <<ghnow>> хуев.'

	act 'Выйти из кабинки':gt'sexshop','podval'

	if money >= 50 and hour < 23:
		act 'Сунуть 50 рублей в автомат':
			cla
			money = money - 50
			minut = minut + 15
			horny = horny + 5
			manna = manna + 5

			'После того как вы оплатили деньги заработал телевизор на стене показывающий порнуху.'
			'Вы сели на стул и стали смотреть порнофильм, он начал вас понемногу возбуждать.'

			act 'Фильм закончился':gt'sexshop','pip'

			if horny >= 50:
				act 'Мастурбировать':
					cla
					horny = horny + 10
					manna = manna + 10

					'Вы ласкаете свою киску пальчиками и наслаждаетесь приятными ощущениями между ног.'

					if horny >= 100:
						orgasm = orgasm + 1
						horny = 0
						manna = manna + 15
						willpower = willpower + 15
						mastr = mastr + 1

						'Постепенно приятные ощущения разливаются по всему телу и вас охватывает оргазм.'
					end

					act 'Фильм закончился':gt'sexshop','pip'
				end
			end

			ghrand = RAND(0,10)
			if ghrand >= 10 - (cumlip*2):
				'Вы слышите как в соседней кабинке включился телевизор.'

				act 'Сунуть пальчик в отверстие (обслужить незнакомца)':
					cla
					*clr
					ghnow = ghnow + 1
					money = money + 300

					fingerRand = RAND(0,4)
					if fingerRand = 0:'<center><img src="images/pic/ghFinger.jpg"></center>'
					if fingerRand = 1:'<center><img src="images/pic/ghFinger1.jpg"></center>'
					if fingerRand = 2:'<center><img src="images/pic/ghFinger2.jpg"></center>'
					if fingerRand = 3:'<center><img src="images/pic/ghFinger3.jpg"></center>'
					if fingerRand = 4:'<center><img src="images/pic/ghFinger4.jpg"></center>'

					'Вы засунули пальчики в отверстие показав что вы готовы обслужить член.'
					'Незнакомец просунул в отверстие 300 рублей, а потом из отверстия показался его член.'

					act 'Сосать член':
						cla
						*clr
						horny = horny + VAF
						guy = guy + 1
						bj = bj + 1
						gloryhole = gloryhole + 1
						swallow = swallow + 1
						cumlip = cumlip + 1

						dynamic $venerasiak

						ghprand = RAND(0,37)
						if ghprand = 0:'<center><img src="images/picV/gloryhole.jpg"></center>'
						if ghprand = 1:'<center><img src="images/picV/gloryhole1.jpg"></center>'
						if ghprand = 2:'<center><img src="images/picV/gloryhole2.jpg"></center>'
						if ghprand = 3:'<center><img src="images/picV/gloryhole3.jpg"></center>'
						if ghprand = 4:'<center><img src="images/picV/gloryhole4.jpg"></center>'
						if ghprand = 5:'<center><img src="images/picV/gloryhole5.jpg"></center>'
						if ghprand = 6:'<center><img src="images/picV/gloryhole6.jpg"></center>'
						if ghprand = 7:'<center><img src="images/picV/gloryhole7.jpg"></center>'
						if ghprand = 8:'<center><img src="images/picV/gloryhole8.jpg"></center>'
						if ghprand = 9:'<center><img src="images/picV/gloryhole9.jpg"></center>'
						if ghprand = 10:'<center><img src="images/picV/gloryhole10.jpg"></center>'
						if ghprand = 11:'<center><img src="images/picV/gloryhole11.jpg"></center>'
						if ghprand = 12:'<center><img src="images/picV/gloryhole12.jpg"></center>'
						if ghprand = 13:'<center><img src="images/picV/gloryhole13.jpg"></center>'
						if ghprand = 14:'<center><img src="images/picV/gloryhole14.jpg"></center>'
						if ghprand = 15:'<center><img src="images/picV/gloryhole15.jpg"></center>'
						if ghprand = 16:'<center><img src="images/picV/gloryhole16.jpg"></center>'
						if ghprand = 17:'<center><img src="images/picV/gloryhole17.jpg"></center>'
						if ghprand = 18:'<center><img src="images/picV/gloryhole18.jpg"></center>'
						if ghprand = 19:'<center><img src="images/picV/gloryhole19.jpg"></center>'
						if ghprand = 20:'<center><img src="images/picV/gloryhole20.jpg"></center>'
						if ghprand = 21:'<center><img src="images/picV/gloryhole21.jpg"></center>'
						if ghprand = 22:'<center><img src="images/picV/gloryhole22.jpg"></center>'
						if ghprand = 23:'<center><img src="images/picV/gloryhole23.jpg"></center>'
						if ghprand = 24:'<center><img src="images/picV/gloryhole24.jpg"></center>'
						if ghprand = 25:'<center><img src="images/picV/gloryhole25.jpg"></center>'
						if ghprand = 26:'<center><img src="images/picV/gloryhole26.jpg"></center>'
						if ghprand = 27:'<center><img src="images/picV/gloryhole27.jpg"></center>'
						if ghprand = 28:'<center><img src="images/picV/gloryhole28.jpg"></center>'
						if ghprand = 29:'<center><img src="images/picV/gloryhole29.jpg"></center>'
						if ghprand = 30:'<center><img src="images/picV/gloryhole30.jpg"></center>'
						if ghprand = 31:'<center><img src="images/picV/gloryhole31.jpg"></center>'
						if ghprand = 32:'<center><img src="images/picV/gloryhole32.jpg"></center>'
						if ghprand = 33:'<center><img src="images/picV/gloryhole33.jpg"></center>'
						if ghprand = 34:'<center><img src="images/picV/gloryhole34.jpg"></center>'
						if ghprand = 35:'<center><img src="images/picV/gloryhole35.jpg"></center>'
						if ghprand = 36:'<center><img src="images/picV/gloryhole36.jpg"></center>'
						if ghprand = 37:'<center><img src="images/picV/gloryhole37.jpg"></center>'

						'Вы взяли член в рот и начали его сосать, обрабатывая его своими губами изо всех сил.'

						if horny >= 100:
							VAF = VAF + 1
							orgasm = orgasm + 1
							horny = 0
							manna = manna + 15
							willpower = willpower + 15
							lip = lip + 1

							'<b>Неожиданно для вас отсасывая член вы начали кончать сами. Между ног полыхал пожар и волны удовольствия охватывали тело, вы стонали но не выпускали член изо рта продолжая его отсасывать.</b>'
						end

						'Наконец незнакомец начал кончать вам в рот заполняя его ядреной спермой. После того как вы слизали всю сперму с члена из стены, мужчина вышел из кабинки.'

						act 'Вытереть лицо':gt'sexshop','pip'
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'porn':
	cla
	*clr
	minut = minut + 5

	'В общем, ты у нас знатная минетчица, это всем известно. Не хочешь подзаработать в порно-бизнесе актрисой? Платят там уж точно лучше, чем здесь, а хуёв, может быть, и того больше, если в них дело. Ну как? Другого предложения не будет!'

	act 'Согласиться':
		cla
		*clr
		pornstudio = 2
		gt'pornstudio','1'
	end
	act 'Отказаться':
		cla
		*clr
		pornstudio = 1
		gt'sexshop','start'
	end
end

if $ARGS[0] = 'kendra':
	cla
	*clr
	minut += 10
	gs'stat'

	'<center><img src="images/img/centr/shkend.jpg"></center>'
	'В магазине вы видите Кендру, примеряющую латексное белье.'
	'"Кто это тут у нас, моя любимая подстилка, иди ко мне а то я уже сильно возбудилась выбирая себе игрушки, сейчас мы что нибудь протестируем не отходя от кассы" засмеялась Кендра, усаживаясь на стол и раздвигая ноги.'

	act 'Отойти от неё':gt'sexshop','start'
	if DOM > 10:act 'Сначала заслужи':gt'sexshop','kendra4'

	act 'Обслужить Кендру':
		cla
		*clr
		SUB += 1
		!girl += 1
		lesbian += 1

		'<center><img src="images/img/centr/shkend1.jpg"></center>'
		'Вы быстро скидываете одежду, и встав на колени перед текущей киской Кендры и принимаетесь вылизывать её. Пока вы старательно лижите Кендра постанывает и нахваливает ваш язычок, говоря что еще не один язычок не радовал её так как ваш.'
		'"А теперь возьми что нибудь из игрушек" говорит Кендра'

		act 'Взять дилдо':gt'sexshop','kendra1'
		act 'Дать её страпон':gt'sexshop','kendra2'
	end
end

if $ARGS[0] = 'kendra1':
	cla
	*clr
	minut += 10
	gs'stat'

	'<center><img src="images/img/centr/shkend2.jpg"></center>'
	'Вы берете дилдо и облизав его вставляете в киску Кендры. Пока вы одной рукой орудуете дилдо в её киске, второй ласкаете свой клитор стараясь довести себя до оргазма. Кендра извивается сидя на столе старательно подмахивая в такт вашим движениям.'

	pipirand = RAND(0,3)
	if pipirand > 0:
		orgasm += 1

		'Когда Кендра начинает содрогаться всем телом в оргазме, вас тоже накрывает волной оргазма. Немного придя в себя, Кендра смотрит на вас, "И все таки ты прекрасная подстилка, даже кончаешь одновременно со мной"'

		act 'Закончить':gt'sexshop','start'
	end
	if pipirand = 0:
		act 'Упс...':
			cla
			*clr
			sweat += 1

			'<center><img src="images/img/centr/shkend4.jpg"></center>'
			'Внезапно, когда вы уже были готовы кончить, Кендра начала писать, её моча струилась по дилдо у уже потекла по вашей руке.'
			'"Вот черт" выкрикнули вы и уже собрались бросить дилдо.'
			'"Давай заканчивай, шлюха" выкрикнула Кендра'

			act 'Послать её':gt'sexshop','kendra3'
			act 'Продолжать':
				cla
				*clr
				sweat += 3
				SUB += 2
				horny = 0

				'<center><img src="images/img/centr/shkend3.jpg"></center>'
				'Вы покорно продолжили орудовать дилдо, все еще продолжая гладить свой клитор, но все возбуждение уже пропало. Её моча стекала с дилдо по вашей руке и вот уже и рука и живот и бедра, все было в её моче.'
				'Наконец она кончила, "А теперь полижи меня, а то я испачкалась." скомандовала Кендра'

				act 'Послать её':gt'sexshop','kendra3'
				act 'Слизать':
					cla
					*clr
					SUB += 2

					'<center><img src="images/img/centr/shkend5.jpg"></center>'
					'Вы покорно придвинулись к ней и начали потихоньку слизывать мочу с её бедер и киски.'
					'"Активнее шевелись соска" подгоняла вас Кендра. Вы стали слизывать быстрее, с трудом сдерживая рвотные позывы от привкуса мочи во рту.'
					'"Вот умница, заходи ко мне почаще, развлечемся" с этими словами Кендра оделась и ушла, оставив вас сидящей на полу в луже мочи.'

					act 'Уйти':gt'sexshop','start'
				end
			end
		end
	end
end

if $ARGS[0] = 'kendra2':
	cla
	*clr
	minut += 10
	gs'stat'

	'<center><img src="images/img/centr/shkend8.jpg"></center>'
	'Кендра одевает страпон и посмотрев на вас спрашивает "Ну, что красавица в какую дырочку тебе вставить?".'

	act 'В вагину':
		cla
		*clr
		sex += 1
		vagina += 1
		orgasm += 1
		horny = 0

		'<center><img src="images/img/centr/shkend10.jpg"></center>'
		'Кендра усаживается в кресло а вы запрыгиваете на неё сверху введя страпон себе в киску. Вы скачите на страпоне, а Кендра подмахивает вам снизу стараясь засунуть его как можно глубже. Через несколько минут такой скачки, оргазм накрывает вас, и вы сползаете с Кендры.'
		'"Вот умница, заходи ко мне почаще, развлечемся" с этими словами Кендра оделась и ушла'

		act 'Уйти':gt'sexshop','start'
	end
	act 'В анус':
		cla
		*clr
		anal += 1
		orgasm += 1
		anus += 1
		horny = 0

		'<center><img src="images/img/centr/shkend9.jpg"></center>'
		'Вы запрыгиваете на стол и разводите ноги, Кендра осторожно вводит страпон вам в анус и дает вашей попке несколько секунд привыкнуть, затем она начинает двигаться. Страпон скользит внутри вашей попки и вскоре вам становиться приятно, видя что вы наслаждаетесь процессом Кендра начинает потихоньку ускоряться, а вы положили руку себе на лобок и пальчиками массируете клитор, через несколько минут вас накрывает оргазм, вы содрогаетесь всем телом, судорожно обхватываете Кендру ногами и прижимаете к себе так что страпон входит вам в анус на всю длину, у вас темнеет в глазах и вы отключаетесь.'
		'Когда вы приходите в себя Кендра уже стоит одетая, "Ну нифига себе у тебе оргазм, надо будет найти двойной страпон хочу посмотреть что с тобой от двух стволов будет" с этими словами Кендра ушла.'

		act 'Уйти':gt'sexshop','start'
	end
end

if $ARGS[0] = 'kendra3':
	cla
	*clr
	minut += 10
	anal += 1
	anus += 1
	rape += 1

	'<center><img src="images/img/centr/shkend6.jpg"></center>'
	'"Ах ты блядь, я тебя сейчас научу покорности" с этими словами Кендра вскочила и швырнула вас на стол, на котором еще секунду назад сидела сами. Упав на стол вы сильно ударились спиной, и пока вы корчились от боли на столе, Кендра надела страпон, и прижав руками ваши бедра к столу начала заталкивать его вам в анус, неудосужившись даже смазать его. К вашей боли в спине прибавилась боль от разрываемого страпоном ануса. Кендра с силой трахала ваш анус приговаривая что вы подстилка и права голоса у вас нет.'
	'Когда она наконец устала, то буквально смахнула вас на пол со стола, вы с грохотом упали на пол.'
	'"На колени шлюха" прошипела она.'

	act 'Встать на колени':
		cla
		*clr
		'<center><img src="images/img/centr/shkend7.jpg"></center>'
		'Вы с трудом поднялись на колени, спина ужасно болела, а из ануса кажется капала кровь.'
		'"Соси" скомандовала Кендра подставляя страпон к вашему лицу. Вы смотрели на страпон, на котором виднелись следы вашей крови.'
		'"Да соси ты уже." крикнула Кендра, и схватила вас за волосы, вы рефлекторно открыли рот что-бы вскрикнуть, но Кендра втолкнула в него страпон раньше. Она трахала вас в рот с тем же остервенением что и минуту назад разрывала вам анус.'
		'Когда она наконец успокоилась и отпустила ваши волосы, вы без сил упали на пол, Кендра наклонилась над вами и сказала "Запомни ты подстилка, что тебе говорят то и делай, скажу на улице голой раком стоять, будешь стоять и благодарить всех кто тебя трахнет, а сейчас усваивай урок, а мне пора" после этого она оделась и ушла.'

		act 'Уйти':gt'sexshop','start'
	end
end

if $ARGS[0] = 'kendra4':
	cla
	*clr
	minut += 10
	orgasm += 1
	horny = 0

	picrand = RAND(11,12)
	'<center><img src="images/img/centr/shkend<<picrand>>.jpg"></center>'
	'Кендра смотрела на вас удивлено, пока вы скидывали с себя одежду.'
	'Раздевшись вы повернулись к ней задом и выпятили попку "Ну что смотришь, доведешь до оргазма сможешь испробовать страпон"'
	if picrand = 11:'Кендра опустилась на колени и начала вылизывать вам киску, ей язычок скользил по половым губкам, щекотал клитор, и поникал в вагину, через несколько минут её стараний, вы кончили.'
	if picrand = 12:'Кендра опустилась на колени и её язычок с ходу вонзился вам в анус проникая внутрь, у вас было ощущение что вам в зад забралась змея и крутиться в нем во все стороны, пальчиками она проникла в вагину и через несколько минут благодаря её языку извивающемуся у вас в попке и пальчикам старательно массирующим киску вы испытали оргазм.'
	'"Ну что я исполнила твое желания?" спросила Кендра отдышавшись."Теперь исполняй мое."'

	act 'Дать её страпон':gt'sexshop','kendra2'
	if DOM > 25:act 'Перебьешься':gt'sexshop','start'
end

if $ARGS[0] = 'shprod':
	cla
	*clr
	minut += 5

	'<center><img src="images/img/centr/shprod.jpg"></center>'
	'В магазине к вам подходит продавец и начинает предлагать примерить какую то миниюбку "Девушка вам это очень пойдет вы только примерьте"'

	act 'Отказаться':gt'sexshop','start'
	act 'Примерить':
		cla
		*clr
		picrand = 47

		'<center><img src="images/img/centr/shprod1.jpg"></center>'
		'Вы одеваете юбку и выйдя из кабинки направляетесь к зеркалу, трусиков на вас нет а юбка на столько коротка что больше похожа на пояс совершенно не закрывающая ничего и все ваши прелести видны со всех сторон.'
		'Подойдя к зеркалу вы рассматриваете эту так называемую юбку, продавец встает на колени сзади вас и начинает наглаживать ваш зад расхваливая юбку, его руки уже блуждают по вашим бедрам а губы на столько близко к ягодицам что когда о говорит они касаются вашей кожи, вскоре слова прекращаются и остаются лишь прикосновения его губ к вашей коже, все ближе приближающиеся к киске.'

		act 'Оттолкнуть его':gt'sexshop','start'
		act 'Позволить ему':gt'sex','kuni'
	end
end
--- sexshop ---------------------------------

