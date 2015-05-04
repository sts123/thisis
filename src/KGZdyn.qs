# KGZdyn
if KGZweapon = 0:$KGZweapon = 'Кулаки' & $KGZweapona = 'Кулаком'
if KGZweapon = 1:$KGZweapon = 'Дубинка' & $KGZweapona = 'Дубинкой'
if KGZweapon = 2:$KGZweapon = 'Топор' & $KGZweapona = 'Топором'
if KGZgun > 0:$KGZgun = 'Пистолет, патроны <<bullet>> штук'
if KGZgun2 > 0:$KGZgun2 = 'Дробовик, патроны <<bullet2>> штук'
if KGZgun3 > 0:$KGZgun3 = 'Автомат, патроны <<bullet3>> штук'

if KGZhour >= 24:
	KGZhour -= 24
	KGZday += 1

	if KGZsup = 0:
		KGZHP -= 10
	else
		KGZsup -= 1
	end
end

$KGZvihod = {
	if KGZweapon = 0:KGZweapon = 1 & 'Вы нашли хорошую дубину лежащую на асфальте и взяли ее'

	act 'Идти в квартиру':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 0
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли в квартиру стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в магазин':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 2
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли в магазин с выбитыми витринами стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в больницу':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 3
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли в больницу, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти на бульвар':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 4
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли по улице, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
}

$KGZvihod2 = {
	act 'Идти на улицу':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 1
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли на улицу стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Искать провизию':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		gs'stat'

		'Стараясь не шуметь вы начали обыскивать магазин разыскивая еду.'

		KGZsupoisk = RAND(0,100)
		if KGZsupoisk = 100:
			KGZsup += 1

			'Вы нашли еды достаточно, чтобы протянуть еще один день.'
		elseif KGZday < KGZsupoisk:
			KGZsup += 1

			'Вы нашли еды достаточно, чтобы протянуть еще один день.'
		else
			'Вы не сумели найти ничего съедобного, все что вы нашли протухло и не годится в пищу.'
		end

		act 'Далее':gt $curloc
	end
}

$KGZvihod3 = {
	act 'Идти на улицу':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 1
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли на улицу стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Искать аптечки':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		gs'stat'

		'Стараясь не шуметь вы начали обыскивать больницу разыскивая аптечки.'

		KGZsupoisk = RAND(0,100)
		if KGZsupoisk = 100:
			KGZmedkit += 1

			'Вы нашли аптечку.'
		elseif KGZday < KGZsupoisk:
			KGZmedkit += 1

			'Вы нашли аптечку.'
		else
			'Вы не сумели найти ничего полезного.'
		end

		act 'Далее':gt $curloc
	end
}

$KGZvihod4 = {
	act 'Идти на улицу в сторону своего дома':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 1
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли на улицу стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в охотничий магазин':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 5
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли в охотничий магазин стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в полицейский участок':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 6
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли в полицейский участок стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в хозяйственный магазин':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 7
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли в хозяйственный магазин стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end

	if KGZcopcar = 0:
		act 'Обыскать полицейскую машину':
			cls
			KGZhour += 1
			minut += 1
			!KGZplace = 2
			KGZbatl = 1
			KGZcopcar = 1
			bullet += 10
			gs'stat'

			'Стараясь не шуметь вы начали обыскивать полицейскую машину.'
			if KGZgun = 0:KGZgun = 1 & 'Вы нашли пистолет'
			'Вы нашли 10 патронов к пистолету.'

			act 'Далее':gt $curloc
		end
	end

	act 'Идти на шоссе':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 8
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли в сторону шоссе стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
}

$KGZvihod5 = {
	act 'Выйти из магазина':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 4
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли на улицу стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Обыскать торговый зал':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		bulletrand = RAND(3,20)
		bullet2 += bulletrand
		gs'stat'

		'Стараясь не шуметь вы начали обыскивать охотничий магазин.'
		if KGZgun2 = 0:KGZgun2 = 1 & 'Вы нашли дробовик'
		'Вы нашли <<bulletrand>> патронов к дробовику.'

		act 'Далее':gt $curloc
	end
}

$KGZvihod6 = {
	act 'Выйти на улицу':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 4
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли на улицу стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Обыскать полицейский участок':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		bulletrand = RAND(3,20)
		bullet += bulletrand
		gs'stat'

		'Стараясь не шуметь вы начали обыскивать полицейский участок.'
		if KGZgun = 0:KGZgun = 1 & 'Вы нашли пистолет'
		'Вы нашли <<bulletrand>> патронов к пистолету.'

		act 'Далее':gt $curloc
	end

	if KGZcopdoor = 0:
		'Оруженая комната заперта на массивную железную дверь, которую можно вскрыть только болгаркой, но вот беда, электричества нет.'

		if KGZgenerator > 0 and KGZbenzin > 0 and KGZbolgarka > 0:
			act 'Вскрыть болгаркой оружейную комнату':
				cls
				KGZhour += 1
				minut += 1
				KGZcopdoor = 1
				KGZbatl = 0
				bullet3 += 500
				KGZdead = KGZday*10
				gs'stat'

				'Стараясь не шуметь вы начали обыскивать полицейский участок.'
				if KGZgun3 = 0:KGZgun3 = 1 & 'Вы нашли автомат'
				'Вы нашли 500т патронов к автомату.'
				'На шум от болгарки сбежались мертвецы и напали на вас.'

				act 'Сражаться':KGZdist = RAND(5,8) & gt'KGZfight'
			end
		end
	elseif KGZcopdoor = 1:
		'Оружейная комната пуста, только куча мертвецов на полу, свидетельствуют о недавнем бое с вами.'

		if KGZratia = 0:
			act 'Подобрать рацию':
				cls
				KGZhour += 1
				minut += 1
				KGZratia = 1
				KGZbatl = 1
				gs'stat'

				'Вы нашли рацию. Включив ее вы услышали голос повторявший одну и ту же фразу. "Всем кто меня слышит. Безопасное убежище находится на 10м километре шоссе. Идите в форт Брагг."'

				act 'Далее':gt $curloc
			end
		end
	end
}

$KGZvihod7 = {
	act 'Выйти на улицу':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 4
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли на улицу стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Обыскать магазин':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		gs'stat'

		'Стараясь не шуметь вы начали обыскивать хозяйственный магазин.'

		if KGZweapon < 2:
			KGZweapon = 2

			'Вы нашли топор'

			act 'Далее':gt $curloc

			exit
		end

		if KGZgenerator = 0:
			KGZgenerator = 1

			'Вы нашли переносной генератор заправляемый бензином.'

			act 'Далее':gt $curloc

			exit
		end

		if KGZbolgarka = 0:
			KGZbolgarka = 1

			'Вы нашли болгарку работающую от электричества.'

			act 'Далее':gt $curloc

			exit
		end

		'Вы не нашли ничего полезного.'

		act 'Далее':gt $curloc
	end
}

$KGZvihod8 = {
	act 'Выйти на бульвар':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 4
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли к бульвару стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти к заправке':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 9
		KGZbatl = 0
		gs'stat'

		'Стараясь не шуметь вы пошли к заправке.'

		act 'Далее':gt $curloc
	end

	if KGZratia > 0:
		act 'Идти в сторону форта Брагг':
			cls
			KGZhour += 1
			minut += 1
			KGZplace = 10
			KGZplaceA = 1
			KGZbatl = 0
			gs'stat'

			'Стараясь не шуметь вы пошли сторону форта Брагг.'

			act 'Далее':gt $curloc
		end
	end
}

$KGZvihod9 = {
	act 'Выйти на шоссе':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 8
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли к шоссе, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end

	if KGZbenzin = 0:
		act 'Налить бензина':
			cls
			KGZhour += 1
			minut += 1
			KGZbenzin = 1
			KGZbatl = 0
			gs'stat'

			'Стараясь не шуметь вы налили бензина из колонки.'

			act 'Далее':gt $curloc
		end
	end
}

$KGZvihod10 = {
	if KGZplaceA < 10:$KGZplaceA = 'Форта Брагг' & $KGZplaceB = 'от города'
	if KGZplaceA > 10:$KGZplaceA = 'от города' & $KGZplaceB = 'Форта Брагг'

	act 'Идти в сторону <<$KGZplaceA>>':
		cls
		KGZhour += 1
		minut += 1
		KGZplaceA += 1
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли к шоссе, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в сторону <<$KGZplaceB>>':
		cls
		KGZhour += 1
		minut += 1
		KGZplaceA -= 1
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли к шоссе, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end

	if KGZplaceA > 10:
		act 'Идти в лес':
			cls
			KGZhour += 1
			minut += 1
			KGZbatl = 0
			KGZplace = 200
			gs'stat'

			'Вы ушли с шоссе в лес.'

			act 'Далее':gt $curloc
		end
	end
}

$KGZvihod11 = {
	if KGZfortQW = 0:'С крыши раздаются выстрелы снайперской винтовки.'
	if KGZfortQW = 0:'Человек на крыше кричит вам. "Форт Брагг пал. Я остался один живой человек. Спаси меня. У меня патроны кончаются, а мертвяки так и лезут."'

	act 'Пробиваться на крышу':
		cls
		KGZhour += 1
		minut += 1
		if KGZfortQW = 0:KGZfortQW = 1
		KGZplace = 12
		KGZbatl = 0
		KGZdead = RAND(KGZday*20,KGZday*30)
		gs'stat'

		'Вы вбежали в форт окруженный со всех сторон мертвецами.'

		act 'Сражаться':KGZdist = RAND(5,12) & gt'KGZfight'
	end
	act 'Идти в сторону шоссе (сторона ведущая в город)':
		cls
		KGZhour += 1
		minut += 1
		KGZplaceA = 9
		KGZplace = 10
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли к шоссе, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в сторону шоссе (сторона ведущая из города)':
		cls
		KGZhour += 1
		minut += 1
		KGZplaceA = 11
		KGZplace = 10
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли к шоссе, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end

	if KGZfortQW = 2:
		act 'Пробиваться на склад продовольствия':
			cls
			KGZhour += 1
			minut += 1
			KGZplace = 13
			KGZbatl = 0
			KGZdead = RAND(KGZday*20,KGZday*30)
			gs'stat'

			'Вы вбежали на склад окруженный со всех сторон мертвецами.'

			act 'Сражаться':KGZdist = RAND(5,12) & gt'KGZfight'
		end
		act 'Пробиваться в лазарет':
			cls
			KGZhour += 1
			minut += 1
			KGZplace = 14
			KGZbatl = 0
			KGZdead = RAND(KGZday*20,KGZday*30)
			gs'stat'

			'Вы вбежали в лазарет окруженный со всех сторон мертвецами.'

			act 'Сражаться':KGZdist = RAND(5,12) & gt'KGZfight'
		end
		act 'Пробиваться в оружейную':
			cls
			KGZhour += 1
			minut += 1
			KGZplace = 15
			KGZbatl = 0
			KGZdead = RAND(KGZday*20,KGZday*30)
			gs'stat'

			'Вы вбежали в лазарет окруженный со всех сторон мертвецами.'

			act 'Сражаться':KGZdist = RAND(5,12) & gt'KGZfight'
		end
		act 'Пробиваться в гараж':
			cls
			KGZhour += 1
			minut += 1
			KGZplace = 16
			KGZbatl = 0
			KGZdead = RAND(KGZday*20,KGZday*30)
			gs'stat'

			'Вы вбежали в лазарет окруженный со всех сторон мертвецами.'

			act 'Сражаться':KGZdist = RAND(5,12) & gt'KGZfight'
		end
	end
}

$KGZvihod13 = {
	act 'Выйти в форт Брагг':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 11
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Обыскать склад':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		gs'stat'

		'Стараясь не шуметь вы начали обыскивать темный склад.'

		udacharand = RAND(0,1)
		if udacharand = 1:
			KGZsuprand = RAND(1,3)
			KGZsup += KGZsuprand

			'Вы нашли рацион питания на <<KGZsuprand>> дней'
		elseif udacharand = 0:
			KGZdead = RAND(KGZday*5,KGZday*10)

			'Из за ящика показался едва различимый в темноте мертвец и с утробным воем направился к вам.'

			act 'Сражаться':KGZdist = RAND(5,10) & gt'KGZfight'

			exit
		end

		act 'Далее':gt $curloc
	end
}

$KGZvihod14 = {
	act 'Выйти в форт Брагг':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 11
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Обыскать лазарет':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		gs'stat'

		'Стараясь не шуметь вы начали обыскивать темный лазарет.'

		udacharand = RAND(0,1)
		if udacharand = 1:
			KGZmedkit += 1

			'Вы нашли аптечку'
		elseif udacharand = 0:
			KGZdead = RAND(KGZday*5,KGZday*10)

			'Из за ящика показался едва различимый в темноте мертвец и с утробным воем направился к вам.'

			act 'Сражаться':KGZdist = RAND(5,10) & gt'KGZfight'

			exit
		end

		act 'Далее':gt $curloc
	end
}

$KGZvihod15 = {
	act 'Выйти в форт Брагг':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 11
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Обыскать оружейную':
		cls
		KGZhour += 1
		minut += 1
		!KGZplace = 2
		KGZbatl = 0
		gs'stat'

		if KGZfortOru = 1:
			'В оружейке нет ничего полезного.'
		elseif KGZfortOru = 0:
			KGZfortOru = 1
			KGZgranade += 10
			bullet3 += 300

			'В оружейке вы нашли патроны для автомата 300 штук и 10 гранат.'
		end

		act 'Далее':gt $curloc
	end
}

$KGZvihod16 = {
	act 'Выйти в форт Брагг':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 11
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end

	if KGZgruzovik = 0:
		act 'Залезть в грузовик':
			cls
			KGZhour += 1
			minut += 1
			!KGZplace = 2
			KGZbatl = 0
			gs'stat'

			if KGZgruzBenz = 1:
				'Вы сели в кабину на место водителя и завели грузовик.'

				act 'Ехать':
					cls
					'Грузовик утробно зарычав выскочил во двор форта где собралась целая толпа мертвецов, вы с ходу врезались в толпу и начали давить мертвяков, обороты двигателя падали, движок надрываясь ревел скользя по раздавленным телам, руки мертвецов цеплялись за кабину. Некоторые мертвяки повисли на кабине, в зеркала было видно что в кузов вам тоже залезли мертвецы. Ворота в форте закрыты и их придется выбивать.'

					act 'Выбить ворота':
						cls
						'Вы с разгону ударили грузовиком в ворота форта. Вас сильно тряхнуло и ворота с грохотом рухнули. Грузовик кое как выехал со двора форта на шоссе забитом машинами.'

						act 'Ехать по шоссе в город':
							cls
							KGZgruzovik = 1
							KGZplace = 10
							KGZplaceA = 9
							KGZdead = RAND(KGZday*50,KGZday*100)

							'Ваш грузовик окруженный кольцом мертвецов пытался расчищать дорогу от автомобильной пробки. Но вы быстро застряли. Выбора нет, мертвецы уже облепили грузовик как мухи.'

							act 'Сражаться':KGZdist = RAND(5,10) & gt'KGZfight'
						end
						act 'Ехать по шоссе из города':
							cls
							KGZgruzovik = 2
							KGZplace = 10
							KGZplaceA = 11
							KGZdead = RAND(KGZday*50,KGZday*100)

							'Ваш грузовик окруженный кольцом мертвецов пытался расчищать дорогу от автомобильной пробки. Но вы быстро застряли. Выбора нет, мертвецы уже облепили грузовик как мухи.'

							act 'Сражаться':KGZdist = RAND(5,10) & gt'KGZfight'
						end
						act 'Ехать по обочине в город':
							cls
							KGZgruzovik = 3
							KGZplace = 10
							KGZplaceA = 7
							KGZdead = RAND(KGZday*50,KGZday*100)

							'Ваш грузовик окруженный кольцом мертвецов поехал по скользкой обочине. Когда грузовик давил трупы руль очень сильно выбивало из рук и вы все таки допустили ошибку, грузовик сполз в канаву и перевернулся. Выбора нет, мертвецы уже облепили грузовик как мухи.'

							act 'Сражаться':KGZdist = RAND(5,10) & gt'KGZfight'
						end
						act 'Ехать по обочине из города':
							cls
							KGZgruzovik = 4
							KGZplace = 10
							KGZplaceA = 13
							KGZdead = RAND(KGZday*50,KGZday*100)

							'Ваш грузовик окруженный кольцом мертвецов поехал по скользкой обочине. Когда грузовик давил трупы руль очень сильно выбивало из рук и вы все таки допустили ошибку, грузовик сполз в канаву и перевернулся. Выбора нет, мертвецы уже облепили грузовик как мухи.'

							act 'Сражаться':KGZdist = RAND(5,10) & gt'KGZfight'
						end
					end
				end
			elseif KGZgruzBenz = 0:
				KGZgruzBenzMark = 1

				'Черт, у грузовика пустой бак, колонка стоит рядом, нужно только заправить.'
			end

			act 'Вылезти из кабины':gt $curloc
		end
	end

	if KGZgruzBenzMark = 1:
		act 'Выйти в форт Брагг':
			cls
			KGZhour += 1
			minut += 1
			KGZbatl = 0
			KGZgruzBenz = 1
			gs'stat'

			'Вы осторожно заправили грузовик бензином.'

			act 'Далее':gt $curloc
		end
	end
}

$KGZvihod100 = {
	act 'Бродить по мертвому городу':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 100
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		KGZlocrand = RAND(0,100)
		if KGZlocrand >= 90 and KGZlok = 0:
			KGZlok = 1

			'Вы нашли крепкий дом с железными решетками на окнах'

			act 'Войти в дом':KGZplace = 101 & gt $curloc
		elseif KGZlocrand >= 80 and KGZlok2 = 0:
			KGZlok2 = 1

			'Вы нашли большой супермаркет в котором когда то продавались различные товары'

			act 'Войти в супермаркет':KGZplace = 102 & gt $curloc
		end

		act 'Далее':gt $curloc
	end
	act 'Идти в сторону шоссе':
		cls
		KGZhour += 1
		minut += 1
		KGZplaceA = 19
		KGZplace = 10
		KGZbatl = 0
		gs'stat'

		'Вы осторожно пошли к шоссе, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end

	if KGZlok = 1:act 'Войти в дом':KGZhour += 1 & KGZplace = 101 & gt $curloc
	if KGZlok2 = 1:act 'Войти в супермаркет':KGZhour += 1 & KGZplace = 102 & gt $curloc
}

$KGZvihod102 = {
	act 'Выйти из супермаркета':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 100
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Обыскивать супермаркет':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		gs'stat'

		'Вы осторожно начали шарить в поисках полезного, стараясь не наткнутся на мертвецов.'

		udarand = RAND(0,100)
		if udarand >= 90:
			tiprand = RAND(0,1)
			if tiprand = 0:KGZsup += 1 & 'Вам повезло и вы нашли еду'
			if tiprand = 1:KGZmedkit += 1 & 'Вам повезло и вы нашли аптечку'
		end

		act 'Далее':gt $curloc
	end
}

$KGZvihod200 = {
	act 'Идти по лесу к шоссе':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 10
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти по лесу от шоссе':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 201
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
}

$KGZvihod201 = {
	act 'Идти к лесу':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 200
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
	act 'Идти в фермерский дом':
		cls
		KGZhour += 1
		minut += 1
		KGZbatl = 0
		KGZplace = 202
		gs'stat'

		'Вы осторожно пошли, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
}

$KGZvincent = {
	cls
	if KGZfortQW = 1:KGZfortQW = 2

	'В форте есть и арсенал, склад с продовольствием, лазарет и гараж с грузовиками. Но очень много мертвецов, действительно много. Несколько солдат пыталось пробиться, но погибли. Некоторые пробовали применить огнеметы, но пока мертвецы горят, они успевают дойти до человека и конец. Из форта надо уходить как можно скорее.'

	act 'Далее':gt $curloc
}

$KGZfizatk = {
	if KGZweapon = 0:
		KGZuspeh = RAND(0,100)
		if KGZuspeh <= 30:
			KGZdead -= 1

			'Вы очень хорошо попали мертвяку кулаком по голове и он упал прекратив шевелится.'
		else
			'Мертвяк не обратил никакого внимания на ваш удар кулаком.'
		end
	elseif KGZweapon = 1:
		KGZuspeh = RAND(0,100)
		if KGZuspeh <= 50:
			KGZdead -= 1

			'Вы очень хорошо попали мертвяку дубиной по голове и он упал прекратив шевелится.'
		else
			'Мертвяк не обратил никакого внимания на ваш удар дубиной.'
		end
	elseif KGZweapon = 2:
		KGZuspeh = RAND(0,100)
		if KGZuspeh <= 70:
			KGZdead -= 1

			'Вы очень хорошо попали мертвяку топором по голове и он упал прекратив шевелится.'
		else
			'Мертвяк не обратил никакого внимания на ваш удар топором.'
		end
	end

	if KGZdead > 0:
		kgzuron = RAND(KGZdead*2,KGZdead*5)
		KGZHP -= kgzuron

		'<<KGZdead>> мертвецов вцепилось в вас, стремясь загрызть.'
		'<b><font color = red>Вам нанесли урон <<kgzuron>> единиц.</font></b>'
	end
}

$KGZgunatk = {
	KGZuspeh = RAND(0,100)

	if KGZdist <= 5:
		if KGZuspeh <= 90:
			KGZdead -= 1

			'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	elseif KGZdist <= 10:
		if KGZuspeh <= 80:
			KGZdead -= 1

			'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	else
		if KGZuspeh <= 70:
			KGZdead -= 1

			'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	end
}

$KGZgunatk2 = {
	KGZuspeh = RAND(0,100)

	if KGZdist <= 5:
		if KGZuspeh <= 100:
			KGZdead -= 1

			'Вы всадили заряд дроби в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	elseif KGZdist <= 10:
		if KGZuspeh <= 70:
			KGZdead -= 1

			'Вы всадили заряд дроби в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	else
		if KGZuspeh <= 50:
			KGZdead -= 1

			'Вы всадили заряд дроби в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	end
}

$KGZgunatk3 = {
	KGZuspeh = RAND(0,100)

	if KGZdist <= 5:
		if KGZuspeh <= 70:
			KGZdead -= 1

			'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	elseif KGZdist <= 10:
		if KGZuspeh <= 95:
			KGZdead -= 1

			'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	else
		if KGZuspeh <= 85:
			KGZdead -= 1

			'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не попали в мертвеца.'
		end
	end
}

$KGZgunatk4 = {
	:KGZmarkgun
	KGZbulgun -= 1
	KGZuspeh = RAND(0,100)

	if KGZdead > 0:
		if KGZdist <= 5:
			if KGZuspeh <= 80:
				KGZdead -= 1

				'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
			else
				'Вы не попали в мертвеца.'
			end
		elseif KGZdist <= 10:
			if KGZuspeh <= 70:
				KGZdead -= 1

				'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
			else
				'Вы не попали в мертвеца.'
			end
		else
			if KGZuspeh <= 60:
				KGZdead -= 1

				'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
			else
				'Вы не попали в мертвеца.'
			end
		end
	end

	if KGZbulgun > 0:jump'KGZmarkgun'
}

$KGZgunatk5 = {
	:KGZmarkgunb
	KGZbulgun -= 1
	KGZuspeh = RAND(0,100)

	if KGZdead > 0:
		if KGZdist <= 5:
			if KGZuspeh <= 70:
				KGZdead -= 1

				'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
			else
				'Вы не попали в мертвеца.'
			end
		elseif KGZdist <= 10:
			if KGZuspeh <= 60:
				KGZdead -= 1

				'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
			else
				'Вы не попали в мертвеца.'
			end
		else
			if KGZuspeh <= 50:
				KGZdead -= 1

				'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
			else
				'Вы не попали в мертвеца.'
			end
		end
	end

	if KGZbulgun > 0:jump'KGZmarkgunb'
}

$KGZdeadmanatk = {
	if KGZdist > 0:KGZdist -= 1

	if KGZdead > 0 and KGZdist <= 2:
		kgzuron = RAND(KGZdead*2,KGZdead*5)
		KGZHP -= kgzuron

		'<<KGZdead>> мертвецов вцепилось в вас, стремясь загрызть.'
		'<b><font color = red>Вам нанесли урон <<kgzuron>> единиц.</font></b>'
	elseif KGZdist > 2 and KGZdead > 0:
		'<<KGZdead>> мертвецов хрипя и хромая приближаются к вам.'
	end
}

$KGZgranatk = {
	KGZuspeh = RAND(0,100)
	KGZgranade -= 1

	'Вы бросили гранату в мертвецов'

	if KGZdist <= 5:
		KGZdist += RAND(1,5)
		KGZdead -= RAND(5,20)
		KGZHP -= RAND(5,20)

		'Мощный взрыв отшвырнул покойников в разные стороны'
		'Вас задело осколком гранаты'
	elseif KGZdist <= 10:
		KGZdist += RAND(1,3)
		KGZdead -= RAND(3,10)

		'Мощный взрыв отшвырнул покойников в разные стороны'
	else
		if KGZuspeh <= 5:
			KGZdead -= 1

			'Вы всадили пулю в голову мертвяка и он упал прекратив шевелится.'
		else
			'Вы не докинули гранату и она взорвавшись не причинила никому вреда.'
		end
	end
}
--- KGZdyn ---------------------------------

