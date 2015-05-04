# butik
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	cla
	clr
	*clr
	mag = 1
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Бутик</font></b></center>'
	'<center><img src="images/pic/butik.jpg"></center>'

	evrand = RAND(0,100)
	if evrand >= 80 and skin > 0 and lesbiQW = 0:
		'В бутике вы видите стильную и стройную сорокалетнюю женщину.'

		act 'Глазеть на женщину':gt'event','lesbi'
	end

	if QWdogreiqTimer = 0 and QWdogReiq = 1 and week = 7 and qwdogiventday ! day:
		qwdogiventday = day
		'Зайдя в бутик ВЫ начинаете рассматривать висящие на вешалках платье. Взяв одно вы вскользь его примеряете и вешаете обратно с легкой гримасой брезгливости.Неожиданно ваше внимание привлекает Одно из платьев,начав более пристально его изучать ВЫ чувствуете какое-то странное чувство будто за вами смотрят:'

		act 'Не обращать внимания':gt'butik','start'
		act 'Осмотреться':dynamic $butikreiqdi

		exit
	end

	if RimmaSex > 0:
		if rimmaday ! day:
			'Квартира <a href="exec:GT ''RimmaSexQW''">Римма</a> улыбнулась вам и закусив губу начала стрелять глазками в вашу сторону.'
		else
			'Римма улыбнулась вам и занялась делами.'
		end
	end

	if palto < 3:
		'В бутике продают шубу для зимы. 50000 руб'

		if money >= 50000:
			act 'Купить шубу':
				cla
				money -= 50000
				palto = 3
				$palto = 'шуба'

				'Вы купили шубу.'

				act 'Выйти':gt'butik','start'
			end
		end
	end

	if money >= 25000:
		if dress[1] = 0:
			act 'Осмотреть 1е платье (25 тыс.руб)':numdres = 1 & payclo = 25000 & gt'loker','dress'
		end
		if dress[2] = 0:
			act 'Осмотреть 2е платье (25 тыс.руб)':numdres = 2 & payclo = 25000 & gt'loker','dress'
		end
		if dress[3] = 0:
			act 'Осмотреть 3е платье (25 тыс.руб)':numdres = 3 & payclo = 25000 & gt'loker','dress'
		end
		if dress[5] = 0:
			act 'Осмотреть 5е платье (25 тыс.руб)':numdres = 5 & payclo = 25000 & gt'loker','dress'
		end
		if dress[6] = 0:
			act 'Осмотреть 6е платье (25 тыс.руб)':numdres = 6 & payclo = 25000 & gt'loker','dress'
		end
		if dress[7] = 0:
			act 'Осмотреть 7е платье (25 тыс.руб)':numdres = 7 & payclo = 25000 & gt'loker','dress'
		end
		if dress[8] = 0:
			act 'Осмотреть 8е платье (25 тыс.руб)':numdres = 8 & payclo = 25000 & gt'loker','dress'
		end
		if dress[9] = 0:
			act 'Осмотреть 9е платье (25 тыс.руб)':numdres = 9 & payclo = 25000 & gt'loker','dress'
		end
		if dress[10] = 0:
			act 'Осмотреть 10е платье (25 тыс.руб)':numdres = 10 & payclo = 25000 & gt'loker','dress'
		end
		if dress[11] = 0:
			act 'Осмотреть 11е платье (25 тыс.руб)':numdres = 11 & payclo = 25000 & gt'loker','dress'
		end
		if dress[12] = 0:
			act 'Осмотреть 12е платье (25 тыс.руб)':numdres = 12 & payclo = 25000 & gt'loker','dress'
		end
		if dress[13] = 0:
			act 'Осмотреть 13е платье (25 тыс.руб)':numdres = 13 & payclo = 25000 & gt'loker','dress'
		end
		if dress[14] = 0:
			act 'Осмотреть 14е платье (25 тыс.руб)':numdres = 14 & payclo = 25000 & gt'loker','dress'
		end
		if dress[15] = 0:
			act 'Осмотреть 15е платье (25 тыс.руб)':numdres = 15 & payclo = 25000 & gt'loker','dress'
		end
		if dress[16] = 0:
			act 'Осмотреть 16е платье (25 тыс.руб)':numdres = 16 & payclo = 25000 & gt'loker','dress'
		end
		if dress[17] = 0:
			act 'Осмотреть 17е платье (25 тыс.руб)':numdres = 17 & payclo = 25000 & gt'loker','dress'
		end
		if dress[18] = 0:
			act 'Осмотреть 18е платье (25 тыс.руб)':numdres = 18 & payclo = 25000 & gt'loker','dress'
		end
		if dress[19] = 0:
			act 'Осмотреть 19е платье (25 тыс.руб)':numdres = 19 & payclo = 25000 & gt'loker','dress'
		end
		if dress[20] = 0:
			act 'Осмотреть 20е платье (25 тыс.руб)':numdres = 20 & payclo = 25000 & gt'loker','dress'
		end
		if dress[21] = 0:
			act 'Осмотреть 21е платье (25 тыс.руб)':numdres = 21 & payclo = 25000 & gt'loker','dress'
		end
		if dress[22] = 0:
			act 'Осмотреть 22е платье (25 тыс.руб)':numdres = 22 & payclo = 25000 & gt'loker','dress'
		end
		if dress[23] = 0:
			act 'Осмотреть 23е платье (25 тыс.руб)':numdres = 23 & payclo = 25000 & gt'loker','dress'
		end
	end

	act 'Выйти из Бутика':
		cla
		minut = minut + 5
		gt'torgcentr'
	end
end
--- butik ---------------------------------

