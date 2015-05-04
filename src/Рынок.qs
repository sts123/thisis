# Рынок
час = час + 1
horny = horny + 1
clr
gs'stat'

'<center><b>РЫНОК</b></center>'
'<center><img src="images/pic/rinok2.jpg"></center>'
'Шумный рынок, вы можете покупать на рынке одежду или купить место за 30000 руб и получать доход от торговой точки, но для покупки и доставки товара естественно необходимо иметь машину. Можно торговать самостоятельно или нанять продавщицу.'

if car = 0:
	money = money - 20

	'Вы добирались на маршрутке и заплатили за проезд 20 рублей.'
elseif car > 0 and benzin > 0:
	benzin = benzin - 1
	gs'stat'

	'Вы доехали на своем <<$marka>>.'
elseif car > 0 and benzin <= 0:
	money = money - 20
	gs'stat'

	'У вас кончился бензин и вам пришлось ехать на маршрутке, заплатив за проезд 20 рублей.'
end

act 'Покупать':gt'РынокП','выбор'
act 'Идти домой':gt'street'

if rinwork > 0 and час < 9:
	act 'Работать продавщицей':
		cla
		clr
		*clr
		час = 17
		fat = fat + 5
		vnesh = vnesh - 1
		monrand = RAND(500,2000)
		money = money + monrand
		gs'stat'

		'Вы целый день продавали вещи на рынке и заработали <<monrand>> рублей'

		rinrand = RAND(1,100)
		if rinrand < 70 and palevorin = 0 and rinhoz = 0:
			act 'Идти домой':gt'street'
		elseif rinrand >= 70 and palevorin = 0 and rinhoz = 0:
			'К вам подошел хозяин палатки и начал приставать к вам, обещая выписать премиальные'

			act 'Отказаться':
				cla
				money = money - 2000

				'Хозяин накладывает на вас штраф в 2000 рублей'

				act 'Идти домой':gt'street'
			end
			act 'Строить глазки':gt'РынокХоз','начало'
		elseif rinrand < 60 and palevorin = 0 and rinhoz = 1:
			act 'Идти домой':gt'street'
		elseif rinrand >= 60 and palevorin = 0 and rinhoz = 1:
			'К вам подошел хозяин палатки и начал приставать к вам, обещая выписать премиальные'

			act 'Отказаться':
				cla
				money = money - 2000

				'Хозяин накладывает на вас штраф в 2000 рублей'

				act 'Идти домой':gt'street'
			end
			act 'Строить глазки':gt'РынокХоз','начало'
		elseif rinrand < 60 and palevorin = 1:
			'На рынке идет слух среди продавщиц что вас трахает хозяин лотка'

			act 'Идти домой':gt'street'
		elseif rinrand >= 60 and palevorin = 1:
			'К вам подошел хозяин палатки и начал приставать к вам, обещая выписать премиальные'

			act 'Отказаться':
				cla
				money = money - 2000

				'Хозяин накладывает на вас штраф в 2000 рублей'

				act 'Идти домой':gt'street'
			end
			act 'Строить глазки':gt'РынокХоз','начало'
		elseif rinrand < 40 and palevorin = 2:
			'На рынке идет слух среди продавщиц что вас трахает хозяин лотка с дружками'

			slutrand = RAND(1,100)
			if slutrand >= 70:
				'После работы к вам подошел армянин и стал склонять вас к минету.'

				act 'Согласиться':gt'РынокХоз','опустеха2'
			end
			act 'Идти домой':gt'street'
		elseif rinrand >= 40 and rinrand < 70 and palevorin = 2:
			'К вам подошел хозяин палатки и начал приставать к вам, обещая выписать премиальные'

			act 'Отказаться':
				cla
				money = money - 2000

				'Хозяин накладывает на вас штраф в 2000 рублей'

				act 'Идти домой':gt'street'
			end
			act 'Строить глазки':gt'РынокХоз','начало'
		elseif rinrand >= 70 and palevorin = 2:
			'К вам подошел хозяин палатки c уже знакомыми вам парнями и они начали склонять вас к оральному сексу, обещая выписать премиальные'

			act 'Отказаться':
				cla
				money = money - 2000

				'Хозяин накладывает на вас штраф в 2000 рублей'

				act 'Идти домой':gt'street'
			end
			act 'Строить глазки':gt'РынокХоз','опустеха'
		end
	end
	act 'Уволиться':
		cla
		work = 0
		rinwork = 0

		'Вы увольняетесь.'

		act 'Идти домой':gt'street'
	end
end

if busRinok = 0 and money >= 30000 and car > 0:
	act 'Купить место на рынке на месяц 30000 руб':
		cla
		busRinok = 30
		money = money - 30000

		'Вы купили место на рынке за 30000 рублей. Вам нужен товар'

		act 'Идти домой':gt'street'
	end
end

if busRinok > 0 and tovarR > 0 and rinhour ! число:
	act 'Торговать самостоятельно':
		cla
		clr
		fat = fat - 2
		rinhour = число
		torghour = 16 - rinhour
		torgrand = RAND(1,50)
		if tovarR >= torgrand:tovarR = tovarR - torgrand
		if tovarR < torgrand:torgrand = tovarR & tovarR = 0
		torgmoney = torgrand*200
		money = money + torgmoney
		час = 17
		torgmoney = 0
		gs'stat'

		'Вы заработали за день <<torgmoney>> рублей, распродав <<torgrand>> штук товара, у вас осталось <<tovarR>> единиц товара.'

		act 'Идти домой':gt'street'
	end

	if rinokTorg = 0 and rinhour ! число:
		act 'Нанять продавщицу':
			cla
			rinokTorg = 1

			'Вы наняли продавщицу 1000 рублей в день'

			act 'Идти домой':gt'street'
		end
	elseif rinokTorg = 1 and rinhour ! число and tovarR > 0:
		act 'Выдать товар продавщице':
			cla
			rinokTorgW = 1
			rinhour = число
			torghour = 16 - rinhour
			torgrand = RAND(1,50)
			if tovarR >= torgrand:tovarR = tovarR - torgrand
			if tovarR < torgrand:torgrand = tovarR & tovarR = 0
			torgmoney = torgrand*200

			'Вы выдали товар продавщице, теперь она может торговать самостоятельно.'

			act 'Идти домой':gt'street'
		end
	end
end

if rinokTorg = 1 and rinhour ! число:
	act 'Уволить продавщицу':
		cla
		rinokTorg = 0

		'Вы уволили продавщицу'

		act 'Идти домой':gt'street'
	end
end
--- Рынок ---------------------------------

