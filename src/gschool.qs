# gschool
$metka = $ARGS[0]
$loc = $CURLOC

gs'stat'
gs'time'

'<center><b><font color = maroon>Школа</font></b></center>'
'<center><img src="images/qwest/alter/gschool.jpg"></center>'
'Обыкновенная школа в которой учится местная детвора.'

act 'Выйти':gt'gorodok'

if zverRageQW = 1:
	cls
	zverRageQW = 2
	gs'stat'
	gs'time'

	'Вы вышли во двор школы после уроков, внезапно вам кто то завалил мощный пендель под зад, вы ошарашенно обернулись и увидели Кристину Звереву с перекошенным от злобы лицом. Она заорала на вас "Ты охуела, что ли сука, про меня всякую хуйню болтать? Я тебе сейчас ебальник разобью!"'

	$nameV = 'Кристина'
	!Статы
	strenV = 100
	speedV = 90
	agilV = 90
	reactV = 90
	vitalV = 120
	intelV = 50
	willV = 50
	!Навыки
	magikV = 100
	boxingV = 40
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*10 + magikV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 0
	ZverevaFight = 1
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500
	round = 0

	act 'Драка':gt'fight','start'

	exit
end

if day = 29 and month = 12 and year = 2010 and StoryLine = 1:
	if hour = 14:
		'Возле школы уже стоят нарядные девчонки и ребята из вашего класса. Кто то крикнул вам "Светка, ты еще тысячу не сдавала на новый год"'

		if money >= 1000:act 'Идти на вечеринку (1000р)':money -= 1000 & gt'sny'
	end
end

if week = 6 and schoolSorev = 2 and hour = 10:
	'Около школы стоят ученики из разных школ и физкультурники готовящиеся к проведению соревнований по бегу.'

	act 'Участвовать в городских соревнованиях по бегу':
		cls
		minut += 30
		gs'stat'

		'Вы подошли к физкультурнику и он записал вас. После этого физкультурник закончил все приготовления к соревнованиям и парни вышли на старт. Парни пробежались и как и ожидалось выиграл Иван Прохоров. После того как парни закончили наступил черед девушек.'

		if swinbeggor = 0:
			'К старту готовится Кристина Зверева, одна из девушек вашего класса. Она презрительно посмеивается над вами "Ты никогда не сможешь победить меня."'
		elseif swinbeggor = 1:
			'К старту готовится Кристина Зверева, одна из девушек вашего класса. Она злобно смотрит на вас "Ты обогнала меня один раз, но сейчас у тебя ничего не выйдет."'
		elseif swinbeggor = 2:
			'К старту готовится Кристина Зверева, одна из девушек вашего класса. Она с ненавистью смотрит на вас "Опять пришла сучка? Ну ничего, в этот раз я тебя сделаю!"'
		end

		act 'Выйти на старт':
			cls
			kolsorev += 1
			minut += 30
			schoolSorev = 0
			gs'stat'

			'<center><img src="images/pic/begsor.jpg"></center>'
			'Девушки, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

			begplus = beg + speed + vital + RAND(1,20)
			begminus = salo + RAND(1,20)
			begresult = begplus - begminus
			if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
			if begresult > 0 and begresult < 70:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
			if begresult >= 70 and begresult < 80:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
			if begresult >= 80 and begresult < 90:'Вы упорно боролись, но сумели занять только 6 место.'
			if begresult >= 90 and begresult < 100:'Вы упорно боролись, но сумели занять только 5 место.'
			if begresult >= 100 and begresult < 110:'Вы упорно боролись, но сумели занять только 4 место.'
			if begresult >= 110 and begresult < 120:'Вы упорно боролись, и сумели занять 3 место. Физрук поздравляет вас с успехом.'
			if begresult >= 120 and begresult < 130:'Вы упорно боролись, и сумели занять 2 место. Физрук поздравляет вас с успехом.'
			if begresult >= 130:swinbeggor += 1 & dom += 1 & 'Вы упорно боролись, и сумели занять 1 место. Физрук поздравляет вас с победой на соревнованиях.'

			beg = beg + 1
			fat = fat - 10

			if swinbeggor = 3 and razradbeg = 1:
				razradbeg = 2
				grupNPC[18] = 0
				zverevaQW = 1
				'Вы трижды победили на городских соревнованиях и Физрук объявляет вам о том, что он походатайствовал и вам вручают 2й спортивный разряд по бегу. Кристина Зверева стоит в стороне сжав руки в кулаки и с ненавистью смотрит на вас.'
			elseif swinbeggor = 2 and begresult >= 130:
				grupNPC[18] = 0
				'На финишной линии стоит Кристина Зверева и пытается отдышаться, она не смогла вас обогнать и пришла второй. Кристина сквозь зубы рычит на вас "Вот сука!"'
			elseif swinbeggor = 1 and begresult >= 130:
				grupNPC[18] = 0
				'На финишной линии стоит Кристина Зверева и пытается отдышаться, она не смогла вас обогнать и пришла второй. Кристина старается не смотреть вам в глаза.'
			end

			gs'stat'

			act 'Выйти':gt'gorodok'
		end
	end
end

if week = 6 and schoolSorev = 1 and hour = 10:
	'Около школы стоят ученики разных классов и Физкультурник готовящийся к проведению соревнований по бегу.'

	act 'Участвовать в школьных соревнованиях по бегу':
		cls
		minut += 30
		gs'stat'

		'Вы подошли к физкультурнику и он записал вас. После этого физкультурник закончил все приготовления к соревнованиям и парни вышли на старт. Парни пробежались и как и ожидалось выиграл Иван Прохоров. После того как парни закончили наступил черед девушек.'

		act 'Выйти на старт':
			cls
			minut += 30
			schoolSorev = 0
			kolsorev += 1
			gs'stat'

			'<center><img src="images/pic/begsor.jpg"></center>'
			'Девушки, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

			begplus = beg + speed + vital + RAND(1,20)
			begminus = salo + RAND(1,20)
			begresult = begplus - begminus
			if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
			if begresult > 0 and begresult < 10:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
			if begresult >= 10 and begresult < 20:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
			if begresult >= 20 and begresult < 30:'Вы упорно боролись, но сумели занять только 6 место.'
			if begresult >= 30 and begresult < 40:'Вы упорно боролись, но сумели занять только 5 место.'
			if begresult >= 40 and begresult < 50:'Вы упорно боролись, но сумели занять только 4 место.'
			if begresult >= 50 and begresult < 60:'Вы упорно боролись, и сумели занять 3 место. Физрук поздравляет вас с успехом.'
			if begresult >= 60 and begresult < 70:'Вы упорно боролись, и сумели занять 2 место. Физрук поздравляет вас с успехом.'
			if begresult >= 70:swinbeg += 1 & dom += 1 & 'Вы упорно боролись, и сумели занять 1 место. Физрук поздравляет вас с победой на соревнованиях.'

			beg = beg + 1
			fat = fat - 10

			if swinbeg = 3 and razradbeg = 0:
				razradbeg = 1

				'Вы трижды победили на школьных соревнованиях и Физрук объявляет вам о том, что он походатайствовал и вам вручают 3й спортивный разряд по бегу.'
			end

			gs'stat'

			act 'Выйти':gt'gorodok'
		end
	end
end

if hour <= 8 and week < 6 and StoryLine > 0 and SchoolAtestat = 0 and kanikuli = 4 and month = 5 and day >= 25 and age = 17:
	'Сегодня у вас будет выпускной вечер.'

	act 'Идти на выпускной':
		cls
		SchoolAtestat = 1
		intel += 10
		gs'stat'

		'Ваш класс построили на линейке и учителя поздравили вас с успешным окончанием школы.'

		act 'Выйти':gt'gorodok'
		act 'Идти на выпускной':
			cls
			minut += 120
			alko += 5
			gs'stat'

			!гы гы, нету нормального выпускного
			'На выпускном все нажрались в сраку. Вы почти ничего не помните, только то, что купались в фонтане как десантник.'

			act 'Выйти':gt'gorodok'
		end
	end
end

if hour <= 8 and week < 6 and StoryLine > 0 and SchoolAtestat = 0 and kanikuli = 0:
	if Sforma > 0:
		act 'Идти в школу':gt'gschool2'
	else
		'Вы не одеты в школьную форму и вас не пускают в школу.'
	end
end

if hour >= 16 and GorSlut >= 3 and SchoolGossip > 0 and afterschoolday ! day:
	aftgopbjrand = RAND(0,2)
	if aftgopbjrand = 0:
		cla
		'На выходе из школы вас уже поджидали пацаны во главе с Котовым. "Ну что соска? Готова еще поработать своим блядским ротиком? Пойдем за школу."'

		act 'Идти за школу':
			cls
			afterschoolday = day
			SchoolGossip += 1
			minut += 60
			gs'stat'

			'Вас отвели за школу где пацаны хихикая смотрели на вас. Котов сказал "Я не понял, ты хуесоска почему еще за щеку не взяла?"'

			act 'Отсосать':
				cls
				minut += 60
				bj += 3
				if npcSex[9] = 0:npcSex[9] = 1 & guy += 1
				if npcSex[10] = 0:npcSex[10] = 1 & guy += 1
				if npcSex[11] = 0:npcSex[11] = 1 & guy += 1
				sub += 1
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/toiletBJtreesome.jpg"></center>'
				'Вы покорно сели на корточки и Витек достал член из своих спортивных штанов. Вы обхватили его своими <<$liptalk3>> твердый член и начали его сосать. Дэн Рыжов и Васян Шульгин подошли к вам и достали свои члены. Вы стали по очереди обрабатывать хуи своим ртом лаская те, что не в вашем рту своими руками.'

				act 'Сосать':
					cls
					minut += 60
					bj += 3
					cumlip += 1
					cumface += 1
					cumfrot += 1
					sub += 1
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/toiletBJcum.jpg"></center>'
					'Наконец один из членов разрядился спермой вам в рот. Глядя на то как вытекает сперма из вашего рта оставшиеся парни начали кончать вам на лицо. Вы закрыли глаза и покорно ждали пока парни не прекратят кончать. Наконец они закончили и посмеиваясь над вами ушли.'

					act 'Выйти':gt $curloc
				end
			end
		end

		exit
	end
end

if JuliaMilLernQW >= 1 and hour = 16 and week < 6 and kanikuli = 0:
	'Во дворе школы прогуливается <a href="exec:minut += 1 & GT ''JuliaMilGo''">Юля Милова</a>'
end

if NatBelLernQW >= 1 and hour = 16 and week < 6 and kanikuli = 0:
	'Во дворе школы прогуливается <a href="exec:minut += 1 & GT ''NatBelGo''">Наташа Белова</a>'
end

if artomLernQW >= 1 and hour = 16 and week < 6 and kanikuli = 0 and artomVitokQW ! 2 and artemblok = 0:
	'Во дворе школы вас уже ожидает <a href="exec:minut += 15 & GT ''artemEv''">Артем Чеботарев</a>'
end

if week = 1 and kanikuli = 0 and arthakQW >= 10 and apmeetday ! daystart and hour >= 16:
	gt'artgar'
end

if hour = 16 and albinaCarday ! day and week < 6 and kanikuli = 0:
	if DanceWhore > 0 or AlbinaLast > 0 or AlbinaBlokDance > 0:
		!'Вы видите стоящий во дворе школы BMW X5 и <a href="exec:minut += 15 & GT ''albinaEv''">Альбину Барловскую</a> сидящую за рулем'
	end
	if AlbFrend >= 1 and albrideday ! daystart:
		'Возле большого черного джипа припаркованного возле школы стоит <a href="exec:minut += 15 & GT ''albinaRide''">Альбина Барловская</a>'
	end
end

if hour = 16 and week < 6 and kanikuli = 0 and katjaMeynoldday ! day and meynoldQW >= 2:
	'Во дворе школы прогуливается <a href="exec:minut += 15 & GT ''katjaEv''">Катя Мейнольд</a>'
end

if DimaRudeQW > 0 and hour = 16 and week < 6 and kanikuli = 0 and dimarudeday ! day and DimaRudeBlock = 0:
	'Во дворе школы стоит задумавшись <a href="exec:minut += 15 & GT ''dimaGoHome''">Дима Носов</a>'
end

if IgorLoverQW > 0 and hour = 16 and week < 6 and kanikuli = 0 and igorkruglovday ! day and IdorBlock = 0:
	'Во дворе школы прогуливается <a href="exec:minut += 15 & GT ''IgorEv''">Игорь Круглов</a>'
end

if fedorKozlovQW >= 10 and hour = 16 and week < 6 and kanikuli = 0:
	'неподалеку от школьного входа стоит <a href="exec:minut += 15 & GT ''FedorEv''">Федор Козлов</a>, увидев вас он обрадовался и пошел к вам.'
end

if strelaDay ! day and strelaQW = 1 and hour = 16:
	cls
	gs'stat'

	'К школе подъехал Митсубиси Паджеро и БМВ. Из машин вышли крепкие, накаченные парни в кожаных куртках и спортивных костюмах. Им на встречу вышли Котов, Рыжий и Шульга. Они о чем то поговорили и тут из школы вышел Федор Козлов с опухшим лицом, покрытым синяками. Котов махнул вам рукой, "Света, иди сюда, ты очевидец."'

	act 'Идти на стрелку':gt'strela'

	exit
end

gs'family'
--- gschool ---------------------------------

