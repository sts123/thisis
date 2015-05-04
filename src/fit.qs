# fit
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Фитнес центр</font></b></center>'
	'<center><img src="images/pic/fit.jpg"></center>'
	'Абонемент на 30 занятий стоит 3000 рублей'
	'На занятия обязательно приходить в спортивной одежде.'
	if abonement > 0:'Абонемент действителен на <<abonement>> занятий'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'down'
	end

	if money >= 3000:
		act 'Купить абонемент (3 тыс.руб)':
			cla
			money = money - 3000
			abonement = abonement + 30

			'Вы купили абонемент на 30 занятий'

			act 'Отойти от кассы':gt'fit','start'
		end
	end

	if abonement > 0 and fitday ! day:
		act 'Идти в раздевалку':
			cla
			frost = 0
			abonement = abonement - 1
			fitday = day
			razdtumbler = 1
			gt'fit','razd'
		end
	end
end

if $ARGS[0] = 'razd':
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Раздевалка</font></b></center>'
	'<center><img src="images/pic/razd.jpg"></center>'
	'Объявления'
	'Производится набор девушек в секцию бега, призеры соревнований получают денежные призы.'
	'Внимание, посещать спортивные секции разрешается только со спортивном костюмом.'

	if razdrand = 0 and tanznak = 0 and tanday ! day:
		tanday = day

		'В раздевалке вы замечаете <a href="exec:gt''fitgirl''">симпатичную девушку</a>.'
	elseif tanznak = 2:
		cls
		tanznak = 3
		tanga = 0
		nude = 1
		tanya += 5

		'<center><img src="images/img/centr/razd4.jpg"></center>'
		'"Тебя хоть как зовут, маньячка, а то изнасиловала честную девушку и даже не представилась" спросила девушка отдышавшись.'
		'"Я Света, и я тебе не насиловала ты сама была не против" ответили вы пытаясь глазами найти свои трусики.'
		'"Не это ищешь?" спросила девушка вертя на пальце ваши трусики "А я Таня, и все таки ты меня совратила, у меня девушек раньше не было, и как выяснилось очень даже зря, я живу тут рядом с родителями, если хочешь приходи в гости."'
		'"Ладно как нибудь забегу, трусы то верни" сказали вы протягивая руку.'
		'"Не-а не верну, должно же у меня что-то остаться на память о первой девушке." с этими словами Таня сунула ваши трусики в карман и вышла.'

		act 'Дальше':gt'fit','razd'

		exit
	end

	if begsec = 0:act 'Записаться в секцию бега':gt'fit','1'
	if begsec > 0 and razdtumbler = 1 and sport > 0:act 'Идти в секцию':gt'beg','start'
	if begsec > 0 and razdtumbler = 1 and sport > 0 and beg >= 20 and week = 6:act '<b>Соревнования по бегу</b>':gt'beg1','start'

	act 'Принять душ 15 мин':
		cla
		*clr
		minut = minut + 15
		sweat = -3
		horny = horny + 1
		hapri = 0
		mop = 1

		dynamic $showerdin

		'<center><img src="images/pics/dush.jpg"></center>'
		'Вы залезли в ванную и включили душ. Намылили тело и смыли под душем.'

		act 'Выйти из душевой':gt'fit','razd'
	end
	act 'Зеркало':
		cla
		fitMir = 1
		gt'mirror','start'
	end
	act 'Шкафчик':
		cla
		fitLoker = 1
		gt'loker','start'
	end

	if razdtumbler = 1 and sport > 0:
		act 'Идти в спорт зал':
			cla
			gt'fit','raz'
		end
		act 'Идти в танцевальную студию':
			cla
			gt'danceclass'
		end
	elseif razdtumbler = 0 or sport = 0:
		act 'Выйти из раздевалки':
			cla
			gt'fit','start'
		end
	end
end

if $ARGS[0] = 'raz':
	cla
	clr
	*clr
	minut = minut + 5
	razdtumbler = 0
	sportzalrand = RAND(0,20)
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Фитнес центр</font></b></center>'
	'<center><img src="images/pic/fit.jpg"></center>'
	'В фитнес центре представлено множество различных программ для физического развития организма.'

	act 'Аэробика (сгон жира)':
		cla
		*clr
		minut = minut + 120
		fat = fat - 10
		reakt = reakt + RAND(1,3)
		manna = manna - 5
		sweat = sweat + 3

		if sportzalrand = 0:gt'zal','0'
		if sportzalrand = 1:gt'zal','1'
		if sportzalrand = 2:gt'zal','2'
		if sportzalrand = 3:gt'zal','3'

		'<center><img src="images/pic/fit1.jpg"></center>'
		'Вы очень энергично выполняли упражнения под музыку для сгона жира.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Тренажерка (на силу)':
		cla
		*clr
		minut = minut + 120
		stren = stren + RAND(1,3)
		fat = fat - 1
		manna = manna - 5
		sweat = sweat + 3

		if sportzalrand = 0:gt'zal','0'
		if sportzalrand = 1:gt'zal','1'
		if sportzalrand = 2:gt'zal','2'
		if sportzalrand = 3:gt'zal','3'

		'<center><img src="images/pic/fit2.jpg"></center>'
		'Вы занимались с железом для развития силы.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Тренажерка (на выносливость)':
		cla
		*clr
		minut = minut + 120
		vital = vital + RAND(1,3)
		manna = manna - 5
		fat = fat - 2
		sweat = sweat + 3

		if sportzalrand = 0:gt'zal','0'
		if sportzalrand = 1:gt'zal','1'
		if sportzalrand = 2:gt'zal','2'
		if sportzalrand = 3:gt'zal','3'

		'<center><img src="images/pic/fit3.jpg"></center>'
		'Вы занимались на тренажерах для развития выносливости.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Теннис отработка защиты (на ловкость)':
		cla
		*clr
		minut = minut + 120
		agil = agil + RAND(1,3)
		fat = fat - 5
		manna = manna - 5
		sweat = sweat + 3
		TenisDef = TenisDef + 1

		if sportzalrand = 0:gt'zal','0'
		if sportzalrand = 1:gt'zal','1'
		if sportzalrand = 2:gt'zal','2'
		if sportzalrand = 3:gt'zal','3'

		'<center><img src="images/pic/fit4.jpg"></center>'
		'Вы занимались теннисом отрабатывая защитные действия.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Теннис отработка атак (на скорость)':
		cla
		*clr
		minut = minut + 120
		speed = speed + RAND(1,3)
		manna = manna - 5
		fat = fat - 5
		sweat = sweat + 3
		TenisAt = TenisAt + 1

		if sportzalrand = 0:gt'zal','0'
		if sportzalrand = 1:gt'zal','1'
		if sportzalrand = 2:gt'zal','2'
		if sportzalrand = 3:gt'zal','3'

		'<center><img src="images/pic/fit4.jpg"></center>'
		'Вы занимались теннисом отрабатывая атакующие действия.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Секция кикбоксинга':gt'fit','kik'
end

if $ARGS[0] = 'kik':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'
	gs'razrKik'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Секция кикбоксинга</font></b></center>'
	'<center><img src="images/pic/kik.jpg"></center>'
	''

	act 'Отработка джебов на груше':
		cla
		*clr
		minut = minut + 120
		speed = speed + RAND(1,3)
		manna = manna - 5
		fat = fat - 4
		sweat = sweat + 3
		Jab = Jab + RAND(1,3)

		'<center><img src="images/pic/kik1.jpg"></center>'
		'Вы отрабатывали на груше джебы, длинные прямые удары с шагом вперед. Эти удары не так мощны как силовые, но они быстрее.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Отработка силовых ударов на груше':
		cla
		*clr
		minut = minut + 120
		stren = stren + RAND(1,3)
		manna = manna - 5
		fat = fat - 4
		sweat = sweat + 3
		Punch = Punch + RAND(1,3)

		'<center><img src="images/pic/kik1.jpg"></center>'
		'Вы отрабатывали на груше мощные силовые удары способные потрясти соперника. Эти удары мощны, но ими трудно попасть.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Отработка ударов ног':
		cla
		*clr
		minut = minut + 120
		stren = stren + RAND(1,3)
		manna = manna - 5
		fat = fat - 4
		sweat = sweat + 3
		Kik = Kik + RAND(1,3)

		'<center><img src="images/pic/kik1.jpg"></center>'
		'Вы отрабатывали на груше мощные удары ногами способные вырубить соперника. Эти удары мощны, но ими очень трудно попасть.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Отработка защиты':
		cla
		*clr
		minut = minut + 120
		agil = agil + RAND(1,3)
		manna = manna - 5
		fat = fat - 4
		sweat = sweat + 3
		KikDef = KikDef + RAND(1,3)

		'<center><img src="images/pic/kik1.jpg"></center>'
		'Вы отрабатывали защитные движения.'

		act 'Уйти':gt'fit','razd'
	end
	act 'Спарринг (тренировочный бой в ринге)':
		cla
		*clr
		round = 0

		'Вам нужно выбрать себе соперника для спарринга'

		act 'Соперница':
			minut = minut + 120
			manna = manna - 5
			fat = fat - 4
			sweat = sweat + 3
			strenV = RAND(10,20)
			speedV = RAND(10,20)
			agilV = RAND(10,20)
			reactV = RAND(10,20)
			vitalV = RAND(10,20)
			intelV = 10
			willV = 10
			!Навыки
			JabV = RAND(5,20)
			PunchV = RAND(5,20)
			KikV = RAND(5,20)
			KikDefV = RAND(5,20)
			!Параметры
			healthV = vitalV*10 + strenV*5
			$nameV = 'Спарринг партнерша'
			formula = 3
			sparing = 1
			gt'kikbox','start'
		end
	end

	if week >= 5:
		'Вы можете провести любительский бой.'

		act 'Любительский бой':
			round = 0
			minut = minut + 120
			manna = manna - 5
			fat = fat - 4
			sweat = sweat + 3

			razrand = RAND(0,1)
			if razradKik + razrand = 0:
				strenV = RAND(10,20)
				speedV = RAND(10,20)
				agilV = RAND(10,20)
				reactV = RAND(10,20)
				vitalV = RAND(10,20)
				intelV = 10
				willV = 10
				!Навыки
				JabV = RAND(10,30)
				PunchV = RAND(10,30)
				KikV = RAND(10,30)
				KikDefV = RAND(10,30)
				!Параметры
				healthV = vitalV*10 + strenV*5
				$nameV = 'Соперница без разряда'
				formula = 3
				amature = 1
			elseif razradKik + razrand = 1:
				strenV = RAND(15,25)
				speedV = RAND(15,25)
				agilV = RAND(15,25)
				reactV = RAND(15,25)
				vitalV = RAND(15,25)
				intelV = 10
				willV = 10
				!Навыки
				JabV = RAND(15,35)
				PunchV = RAND(15,35)
				KikV = RAND(15,35)
				KikDefV = RAND(15,35)
				!Параметры
				healthV = vitalV*10 + strenV*5
				$nameV = 'Соперница с третьим разрядом'
				formula = 3
				amature = 1
			elseif razradKik + razrand = 2:
				strenV = RAND(20,30)
				speedV = RAND(20,30)
				agilV = RAND(20,30)
				reactV = RAND(20,30)
				vitalV = RAND(20,30)
				intelV = 10
				willV = 10
				!Навыки
				JabV = RAND(30,50)
				PunchV = RAND(30,50)
				KikV = RAND(30,50)
				KikDefV = RAND(30,50)
				!Параметры
				healthV = vitalV*10 + strenV*5
				$nameV = 'Соперница со вторым разрядом'
				formula = 3
				amature = 1
			elseif razradKik + razrand = 3:
				strenV = RAND(30,40)
				speedV = RAND(30,40)
				agilV = RAND(30,40)
				reactV = RAND(30,40)
				vitalV = RAND(30,40)
				intelV = 10
				willV = 10
				!Навыки
				JabV = RAND(40,60)
				PunchV = RAND(40,60)
				KikV = RAND(40,60)
				KikDefV = RAND(40,60)
				!Параметры
				healthV = vitalV*10 + strenV*5
				$nameV = 'Соперница с первым разрядом'
				formula = 3
				amature = 1
			elseif razradKik + razrand = 4:
				strenV = RAND(40,60)
				speedV = RAND(40,60)
				agilV = RAND(40,60)
				reactV = RAND(40,60)
				vitalV = RAND(40,60)
				intelV = 10
				willV = 10
				!Навыки
				JabV = RAND(60,80)
				PunchV = RAND(60,80)
				KikV = RAND(60,80)
				KikDefV = RAND(60,80)
				!Параметры
				healthV = vitalV*10 + strenV*5
				$nameV = 'Соперница КМС'
				formula = 3
				amature = 1
			elseif razradKik + razrand >= 5:
				strenV = RAND(60,100)
				speedV = RAND(60,100)
				agilV = RAND(60,100)
				reactV = RAND(60,100)
				vitalV = RAND(60,100)
				intelV = 10
				willV = 10
				!Навыки
				JabV = RAND(80,110)
				PunchV = RAND(80,110)
				KikV = RAND(80,110)
				KikDefV = RAND(80,110)
				!Параметры
				healthV = vitalV*10 + strenV*5
				$nameV = 'Соперница МС'
				formula = 3
				amature = 1
			end

			gt'kikbox','start'
		end
	end
end

if $ARGS[0] = '1':
	cla
	*clr
	minut = minut + 5
	begsec = 1

	'Вы записались на секцию бега'

	act 'Уйти':gt'fit','razd'
end
--- fit ---------------------------------

