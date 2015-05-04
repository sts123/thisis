# stripclub
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Стрип клуб</font></b></center>'
	'<center><img src="images/pic/stripclub.jpg"></center>'

	scrand = RAND(1,100)
	if scrand <= 40 and stripday ! day:
		stripday = day
		cfnm = 1
	elseif scrand > 40 and stripday ! day:
		stripday = day
		cfnm = 0
	end

	if cfnm = 1:'Сегодня в программе, мужской стриптиз, входной билет 500 руб.'
	if cfnm = 0:'Сегодня в программе, стриптиз, входной билет 500 руб.'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'down'
	end

	if stripdolg > 0 and money >= 50000:
		act 'Заплатить штраф 50000 руб':
			stripdolg = 0
			money -= 50000
			gt'stripclub','start'
		end
	end

	if stripdolg = 0:
		if cfnm = 1 and money >= 500 and hour < 23:
			act 'Заплатить 500 рублей и войти':
				cla
				money = money - 500
				minut = minut + 5
				frost = 0
				gt'stripclub','forwoman'
			end
		elseif cfnm = 0 and money >= 500 and hour < 23:
			act 'Заплатить 500 рублей и войти':
				cla
				money = money - 500
				minut = minut + 5
				frost = 0
				gt'stripclub','forman'
			end
		end

		if stripdance > 0 and stripwork = 0:
			act 'Поговорить с менеджером о работе стриптизершей':
				cla
				minut = minut + 15
				gs'stat'

				'Вас проводили в офис менеджера. В офисе, молодой мужчина пригласил вас присесть и начал речь. "Мы работаем каждый день с 15 до 2х ночи. Иногда есть дни мужского стриптиза. Стриптизершам мы вообще не платим, только предоставляем сценические костюмы. Это для того что бы был стимул зарабатывать чаевые. Так же стриптизерша может танцевать приватный танец за отдельную плату клиента, но это нужно заинтересовать клиента, с каждого приватного танца стриптизерша получает 800 рублей, 200 идет клубу, нельзя отказываться от приватных танцев. И если приватный танец это сплошной стрипдэнс, то танец на сцене включает в себя очень много работы на шесте. Если не умеете танцевать на шесте, то лучше не позорьтесь. Со сменами я не тороплю, стриптизерши сами приходят когда хотят на работу. График абсолютно свободный, так же мне не нужна ваша трудовая, поэтому работу стриптизершей можно совмещать с другими видами работ. Ну так как? Устраивает?"'

				act 'Нет':gt'stripclub','start'
				act 'Да':
					cls
					stripwork = 1

					'Да, меня все устраивает кивнули вы. Менеджер проводил вас в примерочную и показал женщину которая отвечает за костюмы. Он представил вас начальнику охраны, который выписал вам пропуск и ушел оставив вас.'

					if cfnm = 0:
						act 'Осматриваться':gt'stwork','start'
					elseif cfnm = 1:
						'Сегодня в программе мужской стриптиз, поэтому за сценой одни мужики.'

						act 'Выйти':gt'stripclub','start'
					end
				end
			end
		end

		if cfnm = 0 and stripwork > 0:
			act 'Идти в раздевалку':frost = 0 & gt'stwork','start'
		elseif cfnm = 1 and stripwork > 0:
			'Сегодня работы нет, мужской стриптиз.'
		end
	end
end

if $ARGS[0] = 'forman':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Стрип клуб</font></b></center>'
	'<center><img src="images/pic/stripclub1.jpg"></center>'
	'На сцене в общем зале выступают девушки раздевающиеся под музыку, существует услуга приват танцев, стоимость 1000 рублей за танец.'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'stripclub','start'
	end

	if hour < 23:
		act 'Сесть за столик около сцены и смотреть стриптиз':gt'stripclub','stol'

		if money >= 1000:
			act 'Заказать приватный танец (1000 руб)':gt'stripclub','privat'
		end

		if money >= 5000:
			act 'Заказать особенное шоу':
				stprrand = RAND(0,1)
				if stprrand = 0:gt'stripclub','stpr1'
				if stprrand = 1:gt'stripclub','stpr2'
			end
		end
	end
end

if $ARGS[0] = 'privat':
	cla
	clr
	*clr
	money = money - 1000
	minut = minut + 60
	horny = horny + 25
	DOM = DOM + 1
	gs'stat'

	privrand = RAND(0,4)
	if privrand = 0:
		'<center><img src="images/img/centr/priv2.jpg"></center>'
		'В процессе девушки сильно увлекаются и начинают откровенно вас ласкать.'

		act 'Закончить':gt'stripclub','forman'
		act 'Позволить им':gt'stripclub','privsex'
	elseif privrand > 0:
		'<center><img src="images/pic/privat.jpg"></center>'
		'Девушки очень горячо танцуют вокруг вас, вы чувствуете как возбуждаетесь.'

		if money >= 1000:
			act 'Еще один приватный танец (1000 руб)':gt'stripclub','privat'
		end

		act 'Уйти к сцене':gt'stripclub','forman'
	end
end

if $ARGS[0] = 'stol':
	cla
	clr
	*clr
	gs'stat'

	'<center><img src="images/pic/stripclub2.jpg"></center>'
	'На сцене зажигают девчонки бойко танцуя и раздеваясь перед напряженной мужской публикой.'

	act 'Смотреть стриптиз':
		cla
		clr
		*clr
		gs'stat'
		minut = minut + 15

		'<center><img src="images/pic/stripclub4.jpg"></center>'
		'Около вас танцует девушка явно рассчитывая на чаевые.'

		if money >= 50:
			act 'Сунуть ей 50 рублей':
				cla
				*clr
				horny = horny + 5
				minut = minut + 15
				money = money - 50

				'<center><img src="images/pic/stripclub6.jpg"></center>'
				'Вы сунули 50 рублей стриптизерше в трусики и она призывно начала вилять бедрами и трясти титьками перед вами, вы чувствуете как вы плавно начинаете возбуждаться.'

				act 'Далее':gt'stripclub','stol'
			end
		end

		act 'Потупить взор':
			cla
			horny = horny - 5
			minut = minut + 15

			'Вы решили не давать денег стриптизерше и отвели от нее взгляд, вам немного стыдно и возбуждение уменьшается.'

			act 'Далее':gt'stripclub','stol'
		end
	end
	act 'Отойти от сцены':gt'stripclub','forman'
end

if $ARGS[0] = 'forwoman':
	cla
	clr
	*clr
	stripguy = 0
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Стрип клуб</font></b></center>'
	'<center><img src="images/pic/stripclub1.jpg"></center>'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'stripclub','start'
	end

	if hour < 23 and zenit > 0 and minifoto = 0:
		act 'Фотографировать':
			minut += 10

			'Стоило вам достать фотоаппарат как к вам тут же подошел охранник, и сказал что здесь снимать нельзя, вы извиняетесь и прячете фотоаппарат в сумочку.'
		end
	elseif hour < 23 and minifoto > 0:
		act 'Фотографировать':
			cla
			minut += 60

			'Вы достаете мини фотоаппарат и начинаете осторожно снимать прогуливаясь по залу.'

			stripfotorand = RAND(0,10)
			if stripfotorand < 2:
				minifoto = 0
				stripdolg = 1

				'К вам подходит охранник и крепко взяв вас за руку ведет к выходу, на выходе уже ждет администратор, он забирает у вас фотоаппарат, и говорит что с вас штраф 50000 руб. и пока вы его не заплатите войти в клуб больше не сможете.'

				act 'Выйти':gt'stripclub','start'
			elseif stripfotorand >= 2 and stripfotorand < 6:
				shantfoto += 1

				'У вас никак не получается нормально сделать снимок, то окружающие девушки заслоняют обзор, то охранник подходит очень близко, но в итоге вам все таки удается сделать нормальный снимок.'

				act 'Выйти':gt'stripclub','start'
			elseif stripfotorand >= 6:
				'У вас никак не получается нормально сделать снимок, то окружающие девушки заслоняют обзор, то охранник подходит очень близко.'

				act 'Выйти':gt'stripclub','start'
			end
		end
	end

	if hour < 23:
		act 'Сесть за столик около сцены и смотреть стриптиз':gt'stripclub','stolW'
	end
end

if $ARGS[0] = 'stolW':
	cla
	clr
	*clr
	stripguy = 0
	gs'stat'

	'<center><img src="images/picVA/stripW.jpg"></center>'
	'На сцене выступают атлетичные и накаченные парни, девчонки визжат и суют им деньги в плавки.'

	if hour < 23:
		act 'Смотреть стриптиз':
			cla
			*clr
			clr
			gs'stat'
			minut = minut + 15

			'<center><img src="images/picVA/stripW1.jpg"></center>'
			'К вам подошел стриптизер и обнял вас.'

			if money >= 50:
				act 'Сунуть ему 50 рублей':
					cla
					*clr
					horny = horny + 5
					minut = minut + 15
					money = money - 50

					'<center><img src="images/picVA/stripW2.jpg"></center>'
					'Вы сунули 50 рублей стриптизеру и он усадив вас на стул начал танцевать перед вами, он сдернув плавки и вы увидели его вставший член. Стриптизер взял вас за грудь и пытается вытащить ее из под кофточки.'

					act 'Прекратить':gt'stripclub','stolW'
					!act 'Потрогать рукой член':gt'cfnm','start'
					act 'Позволить ему обнажить вашу грудь':gt'cfnm','start'
				end
			end

			act 'Потупить взор':
				cla
				horny = horny - 5
				minut = minut + 15

				'Вы решили не давать денег стриптизеру и отвели от него взгляд, вам немного стыдно и возбуждение уменьшается.'

				act 'Далее':gt'stripclub','stolW'
			end
		end
	end
	act 'Отойти от сцены':gt'stripclub','forwoman'
end

if $ARGS[0] = 'privsex':
	cla
	*clr
	horny = 0
	orgasm += 1

	'<center><img src="images/img/centr/priv3.jpg"></center>'
	'Вы широко раздвигаете ноги и вот уже одна вылизывает вашу киску, доводя вас до оргазма, а вторая продолжает ласкать тело.'

	act 'Закончить':gt'stripclub','forman'
	act 'Еще':gt'stripclub','privsex1'
end

if $ARGS[0] = 'privsex1':
	cla
	*clr
	girl += 2
	lesbian += 1

	privpicrand = RAND(4,7)
	'<center><img src="images/img/centr/priv<<privpicrand>>.jpg"></center>'
	'Вы ласкаете друг друга.'

	act 'Закончить':gt'stripclub','forman'

	if hour > 23:
		act 'Еще':gt'stripclub','privsex1'
	end
end

if $ARGS[0] = 'stpr1':
	cla
	*clr
	horny += 30

	'<center><img src="images/img/centr/prsex1.jpg"></center>'
	'В комнату входят две девушки со страпонами, и начинают трахать друг друга.'

	act 'Закончить':gt'stripclub','forman'
	act 'Присоединиться':
		cla
		*clr
		SUB += 3
		girl += 2
		lesbian += 1
		sex += 1
		anal += 1

		'<center><img src="images/img/centr/prsex2.jpg"></center>'
		'Вы раздеваетесь и встаете на колени перед девушками, они обступают вас и подставляют страпоны к вашему лицу, схватив страпоны вы начинаете жадно их сосать, слизывая остатки их соков.'

		act 'Встать раком':
			cla
			*clr
			'<center><img src="images/img/centr/prsex3.jpg"></center>'
			'Вы встаете раком и одна из девушек входит вам в киску пока вы продолжаете сосать у второй.'

			act 'В два ствола':
				cla
				*clr
				horny = 0
				orgasm += 1

				'<center><img src="images/img/centr/prsex4.jpg"></center>'
				'Вы садитесь на один из страпонов а вторая девушка входит вам в анус, они трахают вас в обе дырочки доводя до оргама.'

				act 'Далее':
					cla
					*clr
					cumlip += 1
					cumface += 1
					cumbrest += 1

					'<center><img src="images/img/centr/prsex5.jpg"></center>'
					'Когда вы кончили, девушки встают над вами и из их страпонов выливается жидкость, по вкусу сильно похожая на сперму, она заливается вам в рот, на лицо и грудь.'

					act 'Закончить':gt'stripclub','forman'
				end
			end
		end
	end
end

if $ARGS[0] = 'stpr2':
	cla
	*clr
	girl += 2
	lesbian += 1

	'<center><img src="images/img/centr/prsex6.jpg"></center>'
	'В комнату входят две девушки со страпонами в руках, они раздевают вас и замирают в ожидании ваших пожеланий.'

	act 'Трахнуть их':
		cla
		*clr
		DOM += 3

		'<center><img src="images/img/centr/prsex7.jpg"></center>'
		'Вы одеваете страпон, а девушки встают на колени и начинают сосать его.'

		act 'Трахнуть их':gt'stripclub','stpr3'
	end
	act 'Отдаться':
		cla
		*clr
		SUB += 3

		'<center><img src="images/img/centr/prsex8.jpg"></center>'
		'Вы встаете на колени, а девушки одевают страпоны и дают вам их сосать, что вы с радостью и делаете.'

		act 'Отдаться':gt'stripclub','stpr4'
	end
end

if $ARGS[0] = 'stpr3':
	cla
	*clr
	horny = 0
	orgasm += 1

	prsexrand = RAND(9,13)
	'<center><img src="images/img/centr/prsex<<prsexrand>>.jpg"></center>'
	'Вы трахаете их как вашей душе захочется, в итоге кончаете сами.'

	if hour > 23:
		act 'Еще':gt'stripclub','stpr3'
	end

	act 'Закончить':gt'stripclub','forman'
end

if $ARGS[0] = 'stpr4':
	cla
	*clr
	horny = 0
	orgasm += 1

	prsexrand = RAND(14,19)
	'<center><img src="images/img/centr/prsex<<prsexrand>>.jpg"></center>'
	'Они вертят вас как хотят, трахая то вдвоем то по одной, в итоге вы кончаете.'

	if hour > 23:
		act 'Еще':gt'stripclub','stpr4'
	end

	act 'Закончить':gt'stripclub','forman'
end
--- stripclub ---------------------------------

