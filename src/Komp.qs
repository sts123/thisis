# Komp
if $ARGS[0] = 'start':
	cla
	clr
	elektro = elektro + 5
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Включенный компьютер радостно приветствует вас стартовым окном.'

	act 'Раскладывать пасьянс 15 мин':gt'Komp','pasians'

	if GameCD > 0:act 'Играть в Дисопль':gt'KGDstart'
	if GameCD2 > 0:act 'Играть в Закат мертвецов':gt'KGZstart'
	if GameCD3 > 0:act 'Играть в Альбидо':gt'FSstart'

	!act 'Тест Закат мертвецов':gt'KGZstart'

	if internet > 0:
		internet = internetM/60

		'У вас осталось <<internet>> часов интернета'

		act 'Браузер':gt'Komp','brows'
	end

	if karta >= 10:
		'Вы можете оплатить интернет через свой банковский счет. 1 час интернета стоит 10 рублей. На счету <<karta>> рублей.'

		act 'Оплатить интернет банковским счетом':
			cla
			intinp = input ("Сколько денег положить на интернет? (час = 10 руб.)")
			if intinp <= 0 or intinp*10 > karta:
				'Не корректная операция.'
			elseif intinp*10 <= karta:
				inttime = intinp*10
				karta = karta - inttime
				internetM = internetM + intinp*60
				internet = internetM/60

				'Вы оплатили <<inttime>> часов интернета, теперь у вас <<internet>> часов интернета. С вашего счета сняли <<intinp>> рублей.'
			end

			act 'Выйти из системы оплаты':gt'Komp','start'
		end
	end

	act 'Выключить компьютер':
		cla
		gt'Komp','fin'
	end
end

if $ARGS[0] = 'brows':
	cla
	clr
	*clr
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Вы вошли в поисковую систему.'

	act 'Сайт квартирного ремонта (15 мин)':gt'Komp','remont'
	if housr = 1 and husband = 0:act 'Сайт объявлений':gt'Komp','sale'
	act 'Порно сайт (15 мин)':gt'Komp','porno'
	act 'Сайт знакомств (15 мин)':gt'Komp','znak'
	if hour < 20 and hour > 7:act 'Подработка.su':gt'Komp','rabota'
	act 'Услуги кабельного ТВ (15 мин)':gt'Komp','kabtv'
	act 'Онлайн игра':gt'KGstart'
	if shantfoto > 0:act 'Искать героиню фото в "В жопе"':gt'Komp','foto'
	if gor_dorm = 7:act 'Письмо от Евгении Анатольевны':gt'etoexhib','pos91'
	act 'Выйти из браузера':gt'Komp','start'
end

if $ARGS[0] = 'sale':
	cla
	clr
	*clr
	minut += 2
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Вы вошли на сайт бесплатных объявлений.'

	if obkvsdam = 0 and housrA = 1:
		act 'Подать объявление о сдачи квартиры':obkvsdam = 1 & gt'Komp','sale'
	elseif obkvsdam > 0:
		act 'Проверить отклики на ваше объявление о сдачи квартиры':
			cla
			if obkvsdam = 1:
				'Никто не откликнулся на ваше объявление'
			elseif obkvsdam > 1:
				if obkvsdam = 2:predsumm = 7000
				if obkvsdam = 2:predsumm = 8000
				if obkvsdam = 2:predsumm = 9000
				if obkvsdam = 2:predsumm = 10000

				'Вашу квартиру хотят снять на месяц за <<predsumm>> руб.'

				act 'Сдать':
					sdaday = day
					sdamonth = month+1
					housr = 0
					money += predsumm
					gt'Komp','start'
				end
			end

			act 'Выйти':gt'Komp','start'
		end
	end

	act 'Выйти':gt'Komp','start'
end

if $ARGS[0] = 'remont':
	cla
	clr
	*clr
	minut = minut + 15
	internetM = internetM - 60
	elektro = elektro + 3
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Вы вошли на сайт квартирного ремонта.'

	if housr = 1:
		if rembedr = 0:
			act 'Отремонтировать спальную (50 тыс.руб)':
				if money >= 50000:
					cla
					rembedr = 1
					money = money - 50000

					'Вы оплатили ремонт и вам его тот же сделали, Равшан и Джумшут просто волшебники.'
				else
					cla
					'К сожалению, у вас не хватит денег.'
				end

				act 'Выйти':gt'Komp','remont'
			end
		end
		if remsitr = 0:
			act 'Отремонтировать зал (50 тыс.руб)':
				if money >= 50000:
					cla
					remsitr = 1
					money = money - 50000

					'Вы оплатили ремонт и вам его тот же сделали, Равшан и Джумшут просто волшебники.'
				else
					cla
					'К сожалению, у вас не хватит денег.'
				end

				act 'Выйти':gt'Komp','remont'
			end
		end
		if remkorr = 0:
			act 'Отремонтировать коридор (50 тыс.руб)':
				if money >= 50000:
					cla
					remkorr = 1
					money = money - 50000

					'Вы оплатили ремонт и вам его тот же сделали, Равшан и Джумшут просто волшебники.'
				else
					cla
					'К сожалению, у вас не хватит денег.'
				end

				act 'Выйти':gt'Komp','remont'
			end
		end
		if remvanr = 0:
			act 'Отремонтировать ванную (50 тыс.руб)':
				if money >= 50000:
					cla
					remvanr = 1
					money = money - 50000

					'Вы оплатили ремонт и вам его тот же сделали, Равшан и Джумшут просто волшебники.'
				else
					cla
					'К сожалению, у вас не хватит денег.'
				end

				act 'Выйти':gt'Komp','remont'
			end
		end
		if remkuhr = 0:
			act 'Отремонтировать кухню (50 тыс.руб)':
				if money >= 50000:
					cla
					remkuhr = 1
					money = money - 50000

					'Вы оплатили ремонт и вам его тот же сделали, Равшан и Джумшут просто волшебники.'
				else
					cla
					'К сожалению, у вас не хватит денег.'
				end

				act 'Выйти':gt'Komp','remont'
			end
		end
	end

	act 'Выйти':gt'Komp','start'
end

if $ARGS[0] = 'porno':
cla
clr
*clr
minut = minut + 15
internetM = internetM - 60
manna = manna + 5
elektro = elektro + 3
willpower = willpower + RAND(5,10)
manna = manna + RAND(10,50)
horny = horny + 5
gs'stat'

'<center><img src="images/pics/komp.jpg"></center>'
'Вы вошли на порно сайт.'

$pornomastr = {
	cls
	minut = minut + 15
	sweat += 1
	horny = horny + RAND(10,25)
	if divanmastr = 0:divanmastr = 1 & mastr = mastr + 1
	gs'stat'

	'<center><img src="images/pics/kompmas.jpg"></center>'
	'Вы устроились поудобней перед компом и начали одной рукой ласкать свою грудь, пальчиком другой руки вы начали тереть и гладить маленький бугорок между ног который отзывался на прикосновения приятной негой охватывающей все ваше тело.'

	if horny >= 100:
		orgasm += 1
		horny = 0
		'Внезапно приятная судорога свела ваше тело и вас накрыл мощный оргазм, от которого вы застонали.'
	end

	act 'Закончить':divanmastr = 0 & gt'Komp','porno'
	if horny >= 50:act 'Продолжить':dynamic $pornomastr
}

act 'Смотреть порно дальше':
	cla
	'<center><img src="images/pic/porno.jpg"></center>'

	gt'Komp','porno'
end

if horny >= 50:act 'Мастурбировать 15 мин':dynamic $pornomastr
	act 'Выйти':gt'Komp','start'
end

if $ARGS[0] = 'pasians':
	cla
	clr
	*clr
	minut = minut + 15
	manna = manna + 5
	elektro = elektro + 3
	willpower = willpower + RAND(5,10)
	manna = manna + RAND(10,50)
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Вы в течении часа развлекались раскладыванием пасьянса на компьютере.'

	act 'Раскладывать еще 15 минут':gt'Komp','pasians'
	act 'Закрыть пасьянс':gt'Komp','start'
end

if $ARGS[0] = 'znak':
	cla
	clr
	*clr
	minut = minut + 15
	internetM = internetM - 60
	manna = manna + 5
	elektro = elektro + 3
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Вы вошли на сайт знакомств.'
	'Подбор парней возможен только в случае отсутствия бойфренда.'

	if bfA <= 0:
		act 'Подобрать парня с мягким характером':
			cla
			gs'boy'
			gs'boyfrend','start'
			stopboy = 0
			harakBoyA = 0

			'Вы написали парню по имени <<$boyA>>, пообщались с ним и оставили ему телефончик в надежде что он вам позвонит.'

			act 'Выйти':gt'Komp','start'
		end
		act 'Подобрать парня с обыкновенным характером':
			cla
			gs'boy'
			gs'boyfrend','start'
			stopboy = 0
			harakBoyA = 1

			'Вы написали парню по имени <<$boyA>>, пообщались с ним и оставили ему телефончик в надежде что он вам позвонит.'

			act 'Выйти':gt'Komp','start'
		end
		act 'Подобрать парня с твердым характером':
			cla
			gs'boy'
			gs'boyfrend','start'
			stopboy = 0
			harakBoyA = 2

			'Вы написали парню по имени <<$boyA>>, пообщались с ним и оставили ему телефончик в надежде что он вам позвонит.'

			act 'Выйти':gt'Komp','start'
		end
	end

	if gor_dorm = 8:
		act 'Подобрать женихов для Евгении':
			cla
			gor_dorm = 9

			'Вы перелопатили десятки анкет, прежде чем выбрали подходящих по всем параметрам кандидатов и отправили им письма с предложением встретиться.'
			'Теперь осталось дождаться получиться у неё, что-нибудь с ними или нет.'

			act 'Выйти':gt'Komp','start'
		end
	end

	act 'Выйти':gt'Komp','start'
end

if $ARGS[0] = 'kabtv':
	cla
	clr
	*clr
	minut = minut + 15
	internetM = internetM - 60
	elektro = elektro + 3
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Вы вошли на сайт провайдера кабельного ТВ.'

	if kabel = 1:
		'У вас уже подключено кабельное ТВ (абонентская плата 300 руб в месяц снимается 25-го числа)'

		act 'Отказаться от кабельного ТВ':
			cla
			kabel = 1
			money = money - 300

			'Вы отключили кабельные каналы, оплатив текущий месяц'

			gt'Komp','kabtv'
		end
	elseif kabel = 0 and TV = 1:
		'У вас не подключено кабельное ТВ'

		act 'Подключить кабельное ТВ':
			cla
			'К сожалению для просмотра кабельного телевидения требуется более современный телевизор'

			gt'Komp','kabtv'
		end
	elseif kabel = 0 and TV >= 2:
		'У вас не подключено кабельное ТВ'

		act 'Подключить кабельное ТВ (300 руб в месяц)':
			cla
			kabel = 1

			'Вы подключили услуги кабельного телевидения'

			gt'Komp','kabtv'
		end
	end

	act 'Выйти':gt'Komp','start'
end

if $ARGS[0] = 'foto':
	cla
	*clr
	internetM = internetM - 60
	elektro = elektro + 3
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'
	'Вы вошли в социальную сеть "В жопе".'

	if shantfoto > 0:
		act 'Искать':
			cla
			minut += 60

			fotsearchrand = RAND(0,10)
			if fotsearchrand <= 7:
				'Вы никого не нашли, может, позже повезет больше.'

				act 'Закончить':gt'Komp','foto'
			end
			if fotsearchrand > 7:
				shantfoto -= 1

				'Вы нашли героиню одной фотосессии'

				gerofotorand = RAND(0,100)
				if gerofotorand > 30:
					'Судя по фотографиям на её странице это бедная девушка и взять с неё нечего.'

					act 'Закончить':gt'Komp','foto'
				end
				if gerofotorand >= 5 and gerofotorand <= 30:
					shantsr += 1

					'Судя по фотографиям на её странице это девушка из несуществующих средних слоев населения. Вы отправляете её фото и просите перевести 5000 на ваш счет.'

					act 'Закончить':gt'Komp','foto'
				end
				if gerofotorand < 5:
					shantbog += 1

					'Судя по фотографиям на её странице это весьма обеспеченная барышня. Вы отправляете её фото и просите перевести 30000 на ваш счет.'

					act 'Закончить':gt'Komp','foto'
				end
			end
		end
	end

	act 'Браузер':gt'Komp','brows'
end

if $ARGS[0] = 'rabota':
	cla
	*clr
	minut += 60
	internetM = internetM - 60
	komprabota = RAND(0,10)
	gs'stat'

	'<center><img src="images/pics/komp.jpg"></center>'

	if komprabota = 0:
		'Вы нашли объявление: "Требуются девушки модельной внешности для рекламы нижнего белья, оплата наличными по завершении съемок 2000 руб."'

		if vnesh < 30:
			'Но вы под это описание не подходите'
		elseif vnesh >= 30:
			act 'Отправиться по адресу':gt'qjob','var1'
		end

		if hour < 20 and hour > 7:act 'Искать ещё':gt'Komp','rabota'
		act 'Закончить':gt'Komp','brows'
	elseif komprabota = 1:
		'Вы нашли объявление: "Требуется девушка модельной внешности для рекламы нижнего белья, оплата наличными по завершении съемок 2000 руб."'

		if vnesh < 30:'Но вы под это описание не подходите'
		if vnesh >= 30:
			act 'Отправиться по адресу':gt'qjob','var2'
		end

		if hour < 20 and hour > 7:act 'Искать ещё':gt'Komp','rabota'
		act 'Закончить':gt'Komp','brows'
	elseif komprabota > 1 and komprabota < 5:
		'Вы нашли объявление: "Художнику требуется натурщица, симпатичной наружности, оплата наличными 1000 руб."'

		if vnesh < 15:
			'Но вы под это описание не подходите'
		elseif vnesh >= 15:
			act 'Отправиться по адресу':gt'qjob','var3'
		end

		if hour < 20 and hour > 7:act 'Искать ещё':gt'Komp','rabota'
		act 'Закончить':gt'Komp','brows'
	elseif komprabota > 4:
		'Вы не нашли ничего подходящего.'

		if hour < 20 and hour > 7:act 'Искать ещё':gt'Komp','rabota'
		act 'Закончить':gt'Komp','brows'
	end
end

if $ARGS[0] = 'fin':
	gt $locM, $metkaM
end
--- Komp ---------------------------------

