# salon
if $ARGS[0] = 'start':
	$zavivka = {
		minut += 60
		curly += 10
		money -= 1000
		if salonrand = 0 and masha = 0:gt'salon','0'
		gs'stat'

		'Вам завили волосы.'

		act 'Выйти':gt'salon','start'
	}

	$pokraska = {
		cla
		money = money - 1000
		gs'stat'

		'Вы заплатили деньги и сели в кресло, к вам подошла девушка косметолог и спросила в какой цвет желаете перекрасится.'

		if hcol ! 0:
			act 'Черный цвет':
				cla
				minut = minut + 60
				hcol = 0
				if salonrand = 0 and masha = 0:gt'salon','0'
				gs'stat'

				'Вам покрасили волосы.'

				act 'Выйти':gt'salon','start'
			end
		end

		if hcol ! 1:
			act 'Русый цвет':
				cla
				minut = minut + 60
				hcol = 1
				if salonrand = 0 and masha = 0:gt'salon','0'
				gs'stat'

				'Вам покрасили волосы.'

				act 'Выйти':gt'salon','start'
			end
		end

		if hcol ! 2:
			act 'Рыжий цвет':
				cla
				minut = minut + 60
				hcol = 2
				if salonrand = 0 and masha = 0:gt'salon','0'
				gs'stat'

				'Вам покрасили волосы.'

				act 'Выйти':gt'salon','start'
			end
		end

		if hcol ! 3:
			act 'Светлый цвет':
				cla
				minut += 60
				hcol = 3
				if salonrand = 0 and masha = 0:gt'salon','0'
				gs'stat'

				'Вам покрасили волосы.'

				act 'Выйти':gt'salon','start'
			end
		end
	}

	$solyariy = {
		minut += 60
		tan += 10
		money -= 1000
		if salonrand > 6 and nastjaQW > 2:gt'etoexhib','pos1'
		if salonrand = 0 and masha = 0:gt'salon','0'
		gs'stat'

		'Вы загорали в солярии.'

		act 'Выйти':gt'salon','start'
	}

	$resnici = {
		minut += 60
		resnic = resnic + 1
		money = money - 5000
		if salonrand = 0 and masha = 0:gt'salon','0'
		gs'stat'

		'Вам удлинили ресницы.'

		act 'Выйти':gt'salon','start'
	}

	$epilyaciya = {
		minut += 60
		leghair = -20
		lobok = -20
		money = money - 5000
		if salonrand = 0 and masha = 0:gt'salon','0'
		gs'stat'

		'Вам провели полную эпиляцию тела.'

		act 'Выйти':gt'salon','start'
	}

	$ozdormas = {
		minut += 60
		salo -= 2
		vidageday += 3
		money -= 5000
		gs'stat'

		if salonrand = 0:
			cla
			*clr
			picrand = RAND(25,28)

			'<center><img src="images/img/centr/mass.jpg"></center>'
			'В процессе массажа парень увлекается и его масляные пальцы начинают проскальзывать то в вашу киску то в анус.'

			act 'Возмутиться':gt'salon','start'
			act 'Наслаждаться':
				guy += 1
				gt'sex','minet'
			end
		end

		act 'Выйти':gt'salon','start'
	}

	$tatyadd = {
		cla
		minut += 60
		gs'stat'

		if tatlip = 0:
			act 'Посмотреть татуировку на губе №1':
				cla
				*clr
				'<center><img src="images/picBody/tatlip1.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatlip = 1
					horny = horny + 5
					money = money - 8000
					minut += 60
					vaf += 10
					gs'stat'

					'Вы ложитесь на кушетку, открываете рот и вам набивают татуировку на губе.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на губе №2':
				cla
				*clr
				'<center><img src="images/picBody/tatlip2.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatlip = 2
					horny = horny + 5
					money = money - 8000
					minut += 60
					vaf += 10
					gs'stat'

					'Вы ложитесь на кушетку, открываете рот и вам набивают татуировку на губе.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на губе №3':
				cla
				*clr
				'<center><img src="images/picBody/tatlip3.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatlip = 3
					horny = horny + 5
					money = money - 8000
					minut += 60
					vaf += 10
					gs'stat'

					'Вы ложитесь на кушетку, открываете рот и вам набивают татуировку на губе.'

					act 'Выйти':gt'salon','start'
				end
			end
		end

		if tatplech = 0:
			act 'Посмотреть татуировку на плече "цветы"':
				cla
				*clr
				'<center><img src="images/picBody/tatplech1.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatplech = 1
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете плечи и, вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на плече "бабочка"':
				cla
				*clr
				'<center><img src="images/picBody/tatplech2.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatplech = 2
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете плечи и, вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на плече "цветы №2"':
				cla
				*clr
				'<center><img src="images/picBody/tatplech3.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatplech = 3
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете плечи, и вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на плече "Пиковая дама"':
				cla
				*clr
				'<center><img src="images/picBody/tatplech4.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatplech = 4
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете плечи, и вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
		end

		if tatback = 0:
			act 'Посмотреть татуировку "крылья" на спине №1':
				cla
				*clr
				'<center><img src="images/picBody/tatb1.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatback = 1
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете спину, и вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку "крылья" на спине №2':
				cla
				*clr
				'<center><img src="images/picBody/tatb2.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatback = 2
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете спину, и вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку "корсет" на спине':
				cla
				*clr
				'<center><img src="images/picBody/tatb3.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatback = 3
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете спину, и вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку "иероглифы" на спине':
				cla
				*clr
				'<center><img src="images/picBody/tatb4.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatback = 4
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, открываете спину, и вам набивают татуировку.'

					act 'Выйти':gt'salon','start'
				end
			end
		end

		if tatupb = 0:
			act 'Посмотреть татуировку на пояснице №1':
				cla
				*clr
				'<center><img src="images/picBody/tatupb1.jpg"></center>'
				'Татуировка на пояснице традиционно называется trump stamp, шлюхино клеймо, татуировка девушек не обремененных тяжестью поведения.'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatupb = 1
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на пояснице.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на пояснице №2':
				cla
				*clr
				'<center><img src="images/picBody/tatupb2.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatupb = 2
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на пояснице.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на пояснице №3':
				cla
				*clr
				'<center><img src="images/picBody/tatupb3.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatupb = 3
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на пояснице.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на пояснице №4':
				cla
				*clr
				'<center><img src="images/picBody/tatupb4.jpg"></center>'
				'Татуировка на пояснице традиционно называется trump stamp, шлюхино клеймо, татуировка девушек не обремененных тяжестью поведения.'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatupb = 4
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на пояснице.'

					act 'Выйти':gt'salon','start'
				end
			end
		end

		if tatvag = 0:
			act 'Посмотреть татуировку в паху "Звезды"':
				cla
				*clr
				'<center><img src="images/picBody/tatvag.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatvag = 1
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, снимаете бельё и вам набивают татуировку в паху.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку в паху "Лизни меня"':
				cla
				*clr
				'<center><img src="images/picBody/tatvag2.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatvag = 2
					horny = horny + 5
					money = money - 8000
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, снимаете бельё и вам набивают татуировку в паху.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку в паху "Black Owned"':
				cla
				*clr
				'<center><img src="images/picBody/tatvag3.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatvag = 3
					horny = horny + 5
					money = money - 8000
					vnesh = vnesh + 5
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, снимаете бельё и вам набивают татуировку в паху.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку в паху "Счастливчик"':
				cla
				*clr
				'<center><img src="images/picBody/tatvag4.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatvag = 4
					horny = horny + 5
					money = money - 8000
					vnesh = vnesh + 5
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, снимаете бельё и вам набивают татуировку в паху.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку в паху "Ангел греха"':
				cla
				*clr
				'<center><img src="images/picBody/tatvag5.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatvag = 5
					horny = horny + 5
					money = money - 8000
					vnesh = vnesh + 5
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, снимаете бельё и вам набивают татуировку в паху.'

					act 'Выйти':gt'salon','start'
				end
			end
		end

		if tatleg = 0:
			act 'Посмотреть татуировку на лодыжке №1':
				cla
				*clr
				'<center><img src="images/picBody/tatleg1.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatleg = 1
					horny = horny + 5
					money = money - 8000
					vnesh = vnesh + 5
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на лодыжке.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на лодыжке №2':
				cla
				*clr
				'<center><img src="images/picBody/tatleg2.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatleg = 2
					horny = horny + 5
					money = money - 8000
					vnesh = vnesh + 5
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на лодыжке.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на лодыжке №3':
				cla
				*clr
				'<center><img src="images/picBody/tatleg3.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatleg = 3
					horny = horny + 5
					money = money - 8000
					vnesh = vnesh + 5
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на лодыжке.'

					act 'Выйти':gt'salon','start'
				end
			end
			act 'Посмотреть татуировку на лодыжке №4':
				cla
				*clr
				'<center><img src="images/picBody/tatleg4.jpg"></center>'

				act 'Выйти':gt'salon','start'
				act 'Сделать татуировку':
					cla
					tatleg = 4
					horny = horny + 5
					money = money - 8000
					vnesh = vnesh + 5
					minut += 60
					gs'stat'

					'Вы ложитесь на кушетку, и вам набивают татуировку на лодыжке.'

					act 'Выйти':gt'salon','start'
				end
			end
		end
	}

	$uhodkosha = {
		minut += 60
		skin = skin + 1
		money = money - 15000
		if salonrand = 0 and masha = 0:gt'salon','0'
		gs'stat'

		'Вам наложили маску на лицо, через некоторое время косметолог удалила ее.'

		act 'Выйти':gt'salon','start'
	}

	$delgub = {
		minut += 60
		lip = lip - 1
		money = money - 15000
		gs'stat'

		'Вам уменьшили губы.'

		act 'Выйти':gt'salon','start'
	}

	$addgub = {
		minut += 60
		lip = lip + 1
		money = money - 25000
		gs'stat'

		'Вам увеличили губы.'

		act 'Выйти':gt'salon','start'
	}

	$addglaza = {
		minut += 60
		glaraz = glaraz + 1
		money = money - 30000
		gs'stat'

		'Вам увеличили глаза.'

		act 'Выйти':gt'salon','start'
	}

	$addtitki = {
		minut += 60
		silicone = silicone + 10
		money = money - 150000
		gs'stat'

		'Вам вставили силикон в груди увеличив их размер на 10 см.'

		act 'Выйти':gt'salon','start'
	}

	$delshir = {
		minut += 60
		fat = 0
		salo = 0
		money = money - 150000
		gs'stat'

		'Вам полностью отсосали жир из тела.'

		act 'Выйти':gt'salon','start'
	}

	$omoloshenie = {
		minut += 60
		vidageday = vidageday + 50
		money = money - 250000
		if salonrand = 0 and masha = 0:gt'salon','0'
		gs'stat'

		'Вам провели процедуры омоложения, они не могут повернуть время в спять, они могут только приостановить старение на время.'

		act 'Выйти':gt'salon','start'
	}

	$dshorthair = {
		minut += 60
		money = money - 1000
		shorthair = 1
		shorthairday = 0
		gs'stat'

		'Вам подстригли волосы очень коротко сделав вам прическу под мальчика.'

		act 'Выйти':gt'salon','start'
	}

	$permtatbro = {
		minut += 60
		money = money - 6000
		browper = 1
		gs'stat'

		'Вам сделали перманентный татуаж бровей.'

		act 'Выйти':gt'salon','start'
	}

	$sexloc = $CURLOC

	if week = 1 and hour >= 9 and hour <= 10 and worksalon = 1:gt'salon','beginwork'
	if week = 3 and hour >= 9 and hour <= 10 and worksalon = 1:gt'salon','beginwork'
	if week = 5 and hour >= 9 and hour <= 10 and worksalon = 1:gt'salon','beginwork'

	cla
	clr
	*clr
	salonrand = RAND(0,9)
	minut += 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Салон красоты</font></b></center>'
	'<center><img src="images/pic/salon.jpg"></center>'
	'Подойти к <a href="exec:gt''salon'',''1''">администратору.</a>'

	if money >= 1000:'<a href="exec: dynamic $zavivka ">Завить волосы - 1 тыс.руб</a>'
	if money < 1000:'Завить волосы - 1 тыс.руб'
	if money >= 1000:'<a href="exec: dynamic $pokraska ">Покрасить волосы - 1 тыс.руб</a>'
	if money < 1000:'Окрашивание волос 1 тыс.руб'
	if money >= 1000:'<a href="exec: dynamic $solyariy ">Солярий - 1 тыс.руб</a>'
	if money < 1000:'Солярий - 1 тыс.руб'
	if money >= 1000:'<a href="exec: dynamic $dshorthair ">Короткая прическа - 1 тыс.руб</a>'
	if money < 1000:'Короткая прическа - 1 тыс.руб'
	if money >= 5000:'<a href="exec: dynamic $resnici ">Удлинение ресниц - 5 тыс.руб</a>'
	if money < 5000:'Удлинение ресниц - 5 тыс.руб'
	if money >= 5000:'<a href="exec: dynamic $epilyaciya ">Полная эпиляция - 5 тыс.руб</a>'
	if money < 5000:'Полная эпиляция - 5 тыс.руб'
	if money >= 5000:'<a href="exec: dynamic $ozdormas ">Оздоровительный массаж (разгоняет жир, омолаживает тело), 5 тыс.руб</a>'
	if money < 5000:'Оздоровительный массаж (разгоняет жир, омолаживает тело), 5 тыс.руб'
	if money >= 8000:'<a href="exec: dynamic $tatyadd ">Татуирока или пирсинг - 8 тыс.руб</a>'
	if money < 8000:'Татуирока или пирсинг - 8 тыс.руб'
	if money >= 15000:'<a href="exec: dynamic $uhodkosha ">Уход за кожей - 15 тыс.руб</a>'
	if money < 15000:'Уход за кожей - 15 тыс.руб'
	if money >= 15000 and lip > 0:'<a href="exec: dynamic $delgub ">Уменьшение губ - 15 тыс.руб</a>'
	if money < 15000 or lip < 1:'Уменьшение губ - 15 тыс.руб'
	if money >= 25000 and lip < 4:'<a href="exec: dynamic $addgub ">Увеличение губ - 25 тыс.руб</a>'
	if money < 25000 or lip >= 4:'Увеличение губ - 25 тыс.руб'
	if money >= 30000:'<a href="exec: dynamic $addglaza ">Увеличение глаз - 30 тыс.руб</a>'
	if money < 30000:'Увеличение глаз - 30 тыс.руб'
	if money >= 150000:'<a href="exec: dynamic $addtitki ">Увеличение груди - 150 тыс.руб</a>'
	if money < 150000:'Увеличение груди - 150 тыс.руб'
	if money >= 150000:'<a href="exec: dynamic $delshir ">Отсос жира - 150 тыс.руб</a>'
	if money < 150000:'Отсос жира - 150 тыс.руб'
	if money >= 250000:'<a href="exec: dynamic $omoloshenie ">Процедуры омоложения - 250 тыс.руб</a>'
	if money < 250000:'Процедуры омоложения - 250 тыс.руб'
	if money >= 6000 and browper = 0:'<a href="exec: dynamic $permtatbro ">Перманентный татуаж бровей - 6 тыс.руб</a>'
	if money < 6000 and browper = 1:'Перманентный татуаж бровей - 6 тыс.руб'

	if hour < 8 or hour > 20:
		cls
		'Салон красоты закрывается и вас просят удалится.'

		act 'Выйти':minut = minut + 5 & gt'torgcentr'

		exit
	end

	act 'Выйти':minut += 5 & gt'torgcentr'
end

if $ARGS[0] = '0':
	cla
	*clr
	cumfrot += 1

	'<center><img src="images/img/centr/pri1.jpg"></center>'
	'Во время процедуры девушка умудряется испачкать вашу одежду какой то жидкостью, теперь на ней следы очень похожие на сперму. Вы начинаете возмущаться к вам подходит администратор и пытается вас успокоить, обещая что девушка будет наказана, а вам компенсируют расходы на хим чистку в размере 5000 рублей.'

	act 'Согласиться':money += 5000 & gt'salon','start'

	if DOM > 10:
		act 'Потребовать наказать сейчас':
			cla
			orgasm += 1
			DOM += 1

			'Администратор смотрит на вас не понимая что вы хотите'
			'"Что не понятно я хочу что-бы эту сучку сейчас наказали" начали возмущаться вы.'
			'"Как вы хотите что-бы её наказали?" спросил администратор'
			'"Трахни её здесь при мне" закричали вы.'
			'"Извините, но я не могу этого сделать" пролепетал парень'

			act 'Все ты можешь':
				cla
				*clr
				'<center><img src="images/img/centr/pri2.jpg"></center>'
				'"Все ты можешь" сказали вы и расстегнув парню штаны достали его член, по сильно возбужденному фалосу было понятно что парню очень нравиться ваша идея с наказанием.'

				act 'Соси сучка':
					cla
					*clr
					'<center><img src="images/img/centr/pri3.jpg"></center>'
					'C этими словами вы притянули голову девушки к члену и она послушно обхватила его губами.'
					'"Активнее, глубже" подгоняли вы девушку'

					act 'Поставь её раком':
						cla
						*clr
						'<center><img src="images/img/centr/pri4.jpg"></center>'
						'Парень послушно поставил её раком, и вставил свой фалос в её вагину, девушка тихонько взвизгнула, а парень войдя в роль трахал её яростно заталкивая член как можно глубже в неё. Вы взяли руку девушки и положили на свой лобок, она послушно принялась массировать ваш клитор'

						act 'Посади её сверху':
							cla
							*clr
							'<center><img src="images/img/centr/pri5.jpg"></center>'
							'Парень сел на кресло, девушка быстро заскочила сверху и начала скакать, вы взяли ей ягодицы и при каждом её скачке с силой опускали её на член, девушка вскрикивала, а вы продолжали насаживать её на его фалос.'

							act 'Ложись на пол':
								cla
								*clr
								'<center><img src="images/img/centr/pri6.jpg"></center>'
								'Девушка легла на пол, а парень пристроился с боку, вы же сели на лицо девушке она не дала вам шанса скомандовать и как только ваша киска оказалась в зоне досягаемости её языка начала вылизывать вас стараясь не пропустить ни миллиметра вашей киски, как снаружи так и внутри, на сколько хватало её язычка. Вскоре приятные волны накрыли вас и вы кончили сидя на её лице'

								act 'Заканчивай':
									cla
									*clr
									telmasha = 1
									masha += 1

									'<center><img src="images/img/centr/pri7.jpg"></center>'
									'Парень встал, поднял девушку на колени и разрядился, заливая её рот, лицо и грудь горячей спермой'
									'"Вот так надо наказывать сучек" с этими словами вы взяли визитку девушки "Так ты у нас Маша, я тебе может позвоню, у тебя хороший язычок" с этими словами вы вышли оставив девушку на полу всю в сперме.'

									act 'Уйти':gt'salon','start'
								end
							end
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = '1':
	cla
	minut += 5

	if worksalon = 0:
		'Вы спрашиваете возьмут ли вас на работу.'

		if masash < 10:
			'Вы же ничего не умете, приходите когда научитесь'

			act 'Отойти':gt'salon','start'
		elseif masash >= 10:
			'"Хорошо нам нужны массажистки. Работать будешь понедельник, среда, пятница с 9 до 10 часов, и выходи на смену, работать будешь до 19 часов. Не придешь, тебе этот день не зачтется в зарплату. Зарплата перечисляется 25-го числа, за каждую отработанную смену - 800 рублей."'
			'"Трудовую надо сдать в отдел кадров. Вам все понятно, будете работать?"'

			if (work = 0 and worksalon = 0 and cheatWork = 0) or (cheatWork = 0 and cheatWork = 1):
				act 'Отойти':gt'salon','start'
				act 'Устроиться на работу':
					cla
					worksalon = 1
					work = 1

					'Вы отнесли трудовую в отдел кадров."'

					act 'Отойти':gt'salon','start'
				end
			end

			act 'Отойти':gt'salon','start'
		end
	elseif worksalon = 1:
		act 'Уволиться':gt'salon','discharge'
		act 'Отойти':gt'salon','start'
	end
end

if $ARGS[0] = 'beginwork':
	cla
	*clr
	'<center><b><font color = maroon>Салон красоты</font></b></center>'
	'<center><img src="images/pic/salon.jpg"></center>'
	'Вы пришли на смену в салон красоты.'

	act 'Начать работу':
		smena += 1
		gt'worksalon','start'
	end
	act 'Уволиться':gt'salon','discharge'
end

if $ARGS[0] = 'discharge':
	cla
	minut += 10
	worksalon = 0
	work = 0
	pay = smena * 800
	money = money + pay
	smena = 0

	'Администратор посмотрел на вас: "Вот ваш расчет <<pay>> рублей и трудовая книжка. До свидания."'

	act 'Уйти':gt'salon','start'
end
--- salon ---------------------------------

