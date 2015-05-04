# rinok
if $ARGS[0] = 'start':
	$rinbuy1 = {
		cla
		*clr

		portion = input ("Сколько вы хотите купить?")
		if portion <= 0:portion = 1
		if portion*50 > money:'У вас не хватает денег.'
		if portion*50 <= money:
			fairy += portion
			money = money - portion*50

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили средство для мытья посуды.'
		end

		act 'Отойти от прилавка':gt'rinok','start'
	}

	$rinbuy2 = {
		cla
		*clr

		portion = input ("Сколько вы хотите купить?")
		if portion <= 0:portion = 1
		if portion*150 > money:'У вас не хватает денег.'
		if portion*150 <= money:
			poroshok += portion
			money = money - portion*150

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили стиральный порошок.'
		end

		act 'Отойти от прилавка':gt'rinok','start'
	}

	$rinbuy3 = {
		cla
		*clr

		portion = input ("Сколько вы хотите купить?")
		if portion <= 0:portion = 1
		if portion*150 > money:'У вас не хватает денег.'
		if portion*150 <= money:
			cltarelka += portion*3
			money = money - portion*150

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили тарелки.'
		end

		act 'Отойти от прилавка':gt'rinok','start'
	}

	$rinbuy4 = {
		cla
		*clr

		portion = input ("Сколько вы хотите купить?")
		if portion <= 0:portion = 1
		if portion*500 > money:'У вас не хватает денег.'
		if portion*500 <= money:
			kosmetica += portion*25
			money = money - portion*500

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили косметику.'
		end

		act 'Отойти от прилавка':gt'rinok','start'
	}

	$rinbuy5 = {
		cla
		*clr

		portion = input ("Сколько вы хотите купить?")
		if portion <= 0:portion = 1
		if portion*200 > money:'У вас не хватает денег.'
		if portion*200 <= money:
			stanok += portion*10
			money = money - portion*200

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили бритвы.'
		end

		act 'Отойти от прилавка':gt'rinok','start'
	}

	$rinbuy6 = {
		cla
		*clr

		portion = input ("Сколько вы хотите купить?")
		if portion <= 0:portion = 1
		if portion*150 > money:'У вас не хватает денег.'
		if portion*150 <= money:
			tampon += portion*20
			money = money - portion*150

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили тампоны.'
		end

		act 'Отойти от прилавка':gt'rinok','start'
	}

	$rinbuy7 = {
		cla
		*clr

		portion = input ("Сколько вы хотите купить?")
		if portion <= 0:portion = 1
		if portion*200 > money:'У вас не хватает денег.'
		if portion*200 <= money:
			clrbelo += portion
			money = money - portion*200

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили белье.'
		end

		act 'Отойти от прилавка':gt'rinok','start'
	}

	$rinbuy8 = {
		if money >= 1000 and bikini < 1:
			cla
			*clr
			money = money - 1000
			bikini = 1

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили купальник.'

			act 'Отойти от прилавка':gt'rinok','start'
		else
			'У вас не хватает денег.'
		end
	}

	$rinbuy9 = {
		if money >= 1000 and umbrella < 1:
			cla
			*clr
			money = money - 1000
			umbrella = 1

			'<center><img src="images/pic/kassa2.jpg"></center>'
			'Вы заплатили в кассу и купили зонтик.'

			act 'Отойти от прилавка':gt'rinok','start'
		else
			'У вас не хватает денег.'
		end
	}

	cla
	*clr
	minut = minut + 5
	mag = 1

	$metka = $ARGS[0]
	$loc = $CURLOC
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	'<center><b><font color = maroon>Рынок</font></b></center>'
	'<center><img src="images/pic/rinok.jpg"></center>'
	'<a href="exec: dynamic $rinbuy1 ">средство для мытья посуды - 50 р</a> <a href="exec: dynamic $rinbuy2 ">стиральный порошок - 150 р</a> <a href="exec: dynamic $rinbuy3 ">набор из 3х тарелок - 150 р</a> <a href="exec: dynamic $rinbuy4 ">косметика - 500 р</a> <a href="exec: dynamic $rinbuy5 ">бритвенный станок - 200 р</a> <a href="exec: dynamic $rinbuy6 ">тампоны - 100 р</a> <a href="exec: dynamic $rinbuy7 ">белье - 200 р</a>'
	if bikini < 1:'<a href="exec: dynamic $rinbuy8 ">купальник - 1000р</a>'
	if umbrella < 1:'<a href="exec: dynamic $rinbuy9 ">зонтик - 1000р</a>'
	'На одной из палаток висит объявление <a href="exec:GT ''loker2'',''start''">"Принимаем вещи на реализацию"</a>'
	'<a href="exec:numdres = 1 & payclo = 1500 & GT ''loker'',''jeans''">Осмотреть джинсы №1</a> <a href="exec:numdres = 2 & payclo = 1500 & GT ''loker'',''jeans''">Осмотреть джинсы. №2</a> <a href="exec:numdres = 3 & payclo = 1500 & GT ''loker'',''jeans''">Осмотреть джинсы. №3</a> <a href="exec:numdres = 4 & payclo = 1500 & GT ''loker'',''jeans''">Осмотреть джинсы. №4</a> <a href="exec:numdres = 5 & payclo = 1500 & GT ''loker'',''jeans''">Осмотреть джинсы. №5</a>'

	if analplugIN = 1 and tanga = 0 and ski = 1 or analplugIN = 1 and tanga = 0 and glamur = 1:
		nurand = RAND(0,100)
		if nurand >= 80:
			manna = manna - 5
			SUB = SUB + 1
			horny = horny + SUB
			nudity = nudity+1

			'Вы чувствуете что кто-то мягко коснулся <a href="exec:GT ''etoexhib'',''pos15''">вашей попы рукой!</a>'
		end
	end

	clr
	gs'stat'
	gs'time'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'street'
	end

	if workrin = 1:
		if week = 2 or week = 4 or week = 6:
			if hour < 9:
				'Артур с товаром уже ждет вас.'

				act '<b>Принимать товар</b>':
					cla
					*clr
					hour = 9
					minut = 0
					prodpayum = 1200

					'Артур выгрузил барахло из своей ушатанной шохи к лотку и отдал вам. Вы начали развешивать одежду по палатке.'
					'Перед тем как уйти Артур дает вам инструкции. "Продавай как хочешь, но что бы вечером мне отдала с каждой проданной вещи по 1000. И чтоб наторговала не меньше чем <<arturplan>> рублей."'

					act 'Работать':gt'rinwork','start'
				end
			end
		end

		act 'Уволиться с работы':
			cla
			work = 0
			workrin = 0

			'Вы уволились с работы и забрали трудовую.'

			act 'Выйти':gt'rinok','start'
		end
	end

	if (work = 0 and workrin = 0 and cheatWork = 0) or (workrin = 0 and cheatWork = 1):
		nl
		'На одной из палаток висит объявление "Нужен женщин продавщиц. Зарплат большой."'

		act 'Подойти к хозяину палатки с объявлением':
			cla
			*clr
			'Привет, меня зовут Артур. Я хозяин палатки, мне нужна продавщица. Сам не справляюсь. Ну как? Пойдешь?'
			'Плачу процент от заработанного. Работать будешь по вторникам, четвергам и субботам. С 8ми до 14.'
			'Работа по трудовой.'

			act 'Выйти':gt'rinok','start'
			act 'Устроиться на работу':
				cla
				work = 1
				workrin = 1
				arturplan = 5000

				'Вы устроились работать к Артуру и отдали ему трудовую.'

				act 'Выйти':gt'rinok','start'
			end
		end
	end

	if palto < 1:
		'На рынке продают зимние пуховики за 5000 рублей.'

		if money >= 5000:
			act 'Купить пуховик':
				cla
				money -= 5000
				palto = 1
				$palto = 'китайский пуховик'

				'Вы купили пуховик.'

				act 'Выйти':gt'rinok','start'
			end
		end
	end
end
--- rinok ---------------------------------

