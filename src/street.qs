# street
$metka = $ARGS[0]
$loc = $CURLOC

music_on = 0
gs'dinam'

'<center><b>Спальный район</b></center>'
'<center><img src="images/pic/street.jpg"></center>'
if opusk > 0 and housr > 0:'На стене вашего дома, рядом с дверью в ваш подъезд красуется большая надпись краской <b>"Светка из 69й квартиры опущенная хуесоска"</b>'

clr
gs'stat'
gs'time'
palMir = 0
bordysh = 0
housrA = 0
palMir = 0
obdysh = 0
tanhouse1 = 0
obMir = 0
obLoker = 0
houseob = 0
borMir = 0
borLoker = 0
$onobjsel = 'onobjsel'

if gopdeath = 1 and vsehsdaladay ! day:
	over = 6
	gt'gameover'
	exit
end

if shantpopala > 0:
	cla
	*clr
	hour += 8
	cumbelly += 1
	cumpussy += 1
	cumass += 1
	cumlip += 1
	cumface += 1
	cumfrot += 1
	cumanus += 1
	fingal += 1
	guy += 2
	rape += 1
	sex += 1
	bj += 1
	anal += 1
	shantpopala -= 1

	'<center><img src="images/img/centr/rape.jpg"></center>'
	'На улице около вас резко тормозит черный джип, из него выскакивают двое амбалов и затаскивают вас в машину.'
	'"Твоя работа тварь?" кричит один тыча вам в нос фотографии которые вы вчера отправили в надежде получить прибыль.'
	'"Нет, я ничего не понимаю" пытались вы оправдаться'
	'"Не ври сука тебя вычислили" с этими словами он бьет вас рукояткой по голове и вы отрубаетесь'
	'Очнулись вы уже где то за городом, связанная и абсолютно голая, все тело было покрыто спермой а анус с вагиной ужасно болели.'
	'Амбалы сидели недалеко и курили, "О наконец очнулась, ну что еще кружок, сейчас затрепыхается, будет веселее." сказал один из них.'
	'Они встали и подошли к вам, через минуту вы пожалели что очнулись, эти уроды имели вас как им хотелось, вы пытались сопротивляться но скотч не позволял вам двигаться, вскоре вы опять потеряли сознание.'
	'"Ну что поняла, сука" очнулись вы от голоса одного из них и тут же получили удар ботинком в живот. Амбалы сели в машину и уехали. До дороги было метров сто и вы связанная, извиваясь как змея поползли в сторону дороги. Когда вы доползли то снова отключились, очнулись вы в какой то машине, которая и довезла вас до дома.'

	act 'Уйти':gt $curloc

	exit
end

if workDolgDay <= 0 and workDolg > 0:
	cls
	gs'stat'
	gs'time'
	workDisk = 0

	'<center><img src="images/sauna/bug.jpg"></center>'
	'Около подъезда к вам подошли два бугая у которых вы заметили пистолеты. Они равнодушно посмотрели на вас. "Пора долги отдавать."'

	if money >= workDolg:
		money -= workDolg
		workDolg = 0

		'Вы отдали деньги бугаям, они их пересчитали и удалились.'

		act 'Уйти':gt $curloc
		exit
	else
		if money+stolmoney+karta >= workDolg:
			money += stolmoney+karta
			stolmoney = 0
			karta = 0
			money -= workDolg
			workDolg = 0

			'При себе такой суммы у вас не оказалось и бугаи пошли с вами на квартиру. Там вы расплатились с ними и они ушли.'

			act 'Уйти':gt'korr'
			exit
		else
			money += stolmoney+karta
			stolmoney = 0
			karta = 0
			workDolg -= money
			money = 0
			workDolg += 10000

			'Денег на покрытие долга у вас нет. Здоровяки оттащили вас в вашу квартиру и стали обыскивать.'
			'Бугаи все забрали что у вас было и сказали. Короче, с тебя еще долг <<workDolg>>. Долг вырастает еще на 10 штук, и раз ты не можешь расплатится, то мы тебе поможем. Бугаи потащили вас в машину и забросили на заднее сиденье. Машина тронулась и вы поехали куда то.'

			act 'Выйти из машины':
				cls
				minut += 30
				gs'stat'

				'Вы приехали в сауну. Бандиты вас оттащили в какую то комнату и начали объяснять. "Ты будешь жить здесь и работать, до тех пор пока не расплатишься с долгами. Все понятно? Попробуешь бузить или сбежать, все, мы тебе пулю в башку всадим и в лесу закопаем, усекла?"'
				'Вы испуганно кивнули, поняв что они не шутят.'

				act 'Оглядеться':gt'saunaroom'
			end
		end
	end

	exit
end

if workDiskAtkPlayer = 1:
	workDisk = 1
	workDiskAtkPlayer = 0

	'<center><img src="images/sauna/car.jpg"></center>'
	'Вас хватают и забрасывают на заднее сиденье машины. Справа и слева от вас сидят два амбала. На переднем сидении - менеджер порно студии.'
	'-Где конверт – спросил он.'

	if konvert = 0:
		workDolg = 200000
		workDolgDay = 7

		'Украли.'
		'-ЧТО!!! Да как такое могло произойти!!! Ты понимаешь, в какие бабки ты попала?!! Срок тебе даю до следующей пятницы. В мой кабинет приносишь 200 тысяч. Если нет – пиняй на себя.'
	else
		konvert = 0
		money += 5000

		'Вы отдали конверт. Он предупредил вас, что подобные задержки в будущем могут быть вредны для ваших деловых отношений.'
	end

	act 'Уйти':gt $curloc

	exit
end

if vladimirday = day and vladimirQW = 30 and hour >= 16 and week = 6:'<a href="exec:GT ''qwmeet2''">Перед вашим подъездом стоит ауди и около него флегматично стоит дожидаясь вас водитель Слава</a>'
if vladimirday = day and vladimirQW = 40 and hour >= 16 and week = 6:'<a href="exec:GT ''qwmeet3''">Перед вашим подъездом стоит ауди и около него флегматично стоит дожидаясь вас водитель Слава</a>'

housrA = 0

if car > 0 and cardrive = 1:
	cardrive = 1

	'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>'
end

if hour >= 8 and hour <= 22:'В киоске продают <a href="exec:dynamic $kiosksig">сигареты</a>'

if housr = 1:
	act '<b>ИДТИ ДОМОЙ</b>':

		gorand = RAND(0,100)
		if loh > 0 and gopdolg > 0 and hour >= 20 and gorand >= 80:
			gt'gopnew','start'
			exit
		end
		if opusk > 0 and hour >= 20 and gorand >= 80 and gopopusday ! day:
			gt'gopnew','start'
			exit
		end

		gt'korr'
	end
end

act 'Ждать':
	cla
	waiting = input ("Сколько минут ждать? (Не больше 120 минут)")

	if waiting <= 0 or waiting > 120:
		minut = minut + 15
	elseif waiting > 0 and waiting <= 120:
		minut = minut + waiting
	end

	act 'Посмотреть на часы':gt curloc
end

act 'Ехать на такси':
	cla
	*clr
	minut += 5

	'<center><img src="images/pic/taxi1.jpg"></center>'
	'Вы поймали проезжавшую мимо таксишку.'
	'Стоимость проезда 250 руб.'

	if $loc ! 'street':
		act 'Ехать в Спальный район':
			$loc = 'street'
			dynamic $taxi
		end
	end
	if $loc ! 'down':
		act 'Ехать в Центр':
			$loc = 'down'
			dynamic $taxi
		end
	end
	if $loc ! 'Nord':
		act 'Ехать в Северный район':
			$loc = 'Nord'
			dynamic $taxi
		end
	end

	act 'Отказаться':gt'<<$loc>>'
end

if tanga = 0 and ski = 1 and hour > 6 and hour <= 20 or tanga = 0 and glamur = 1 and hour > 6 and hour <= 20:
	nurand = RAND(0,100)
	if nurand >= 90:
		manna = manna - 5
		SUB = SUB + 1
		horny = horny + SUB

		'Вы услышали нарочито громкий шепот бабушек на скамейке "Вот шлюха! Ходит в короткой юбке и без трусов, мандищей то светит!"'
		'Вы покраснели от стыда после едкого замечания старушек.'
	end
end

if magik >= 1 and mainQW = 0 and StoryLine = 0:
	cla
	*clr
	mainQW = 1

	'<center><img src="images/picQW/main.jpg"></center>'
	'У подъезда вы видите Карин и Джуго. Карин поправляет очки и озирается по сторонам, Джуго кажется витает в облаках и как не странно, на его лице не видно татуировки.'
	'Карин пристально оглядывает вас "Я почувствовала всплеск энергии. На тебя не нападал маг?"'

	act 'Нет':gt'mainQW'
	exit
end

if katkey = 1:'Квартира <a href="exec:gt''katspalnya'',''start''">Кати</a>'
if IrinaQW >= 1:'Дом в котором расположена квартира <a href="exec:GT ''IrinaRoom'',''start''">Ирины</a>'
if hour >= 16 and hour < 22 and dimaQW > 0:'Квартира <a href="exec:GT ''dima'',''start''">Димы</a>'
if klofQW >= 2:'Квартира <a href="exec:GT ''klofdomhouse'',''start''">Жоры</a>'

if hour >= 5 and hour <= 23:'Станция <a href="exec:GT ''metro'',''start''">Метро</a> расположена в 15 минутах ходьбы'
if hour >= 8 and hour <= 20:'Не далеко от дома находится <a href="exec:GT ''shop'',''start''">Супермаркет</a>'
if hour >= 8 and hour <= 20:'Бабушки стайками идут к <a href="exec:GT ''poli'',''start''">Поликлиннике</a>'
if hour >= 6 and hour <= 9 and military = 1 and week = 6:'У поликлиники стоит <a href="exec:minut += 60 & gt''Military'',''start''">автобус</a>. на военные игры'
if hour >= 8 and hour <= 14 and week ! 1:'Около шумного <a href="exec:GT ''rinok'',''start''">рынка</a> очень много идущих за покупками людей'
if hour >= 11 and hour < 12 and week > 1 and week < 5 and workKafe = 1:'Вы можете выйти на рабочую смену в <a href="exec:GT ''kafe'',''work''">кафе</a>'
if hour >= 12 and hour <= 22 and week ! 1:'Неподалеку от <a href="exec:GT ''kafe'',''start''">кафе</a> громко матерятся <a href="exec:GT''gopnew'',''start''">гопники</a>'
if hour > 22 or hour <= 3:'Во дворе громко матерятся <a href="exec:GT''gopnew'',''start''">гопники</a>.'

if clener >= 1 and hour >= 7 and hour <= 22:'Офисное здание в котором требуются <a href="exec:GT ''clener'',''start''">уборщицы</a>'
'Большой <a href="exec:GT ''park'',''start''">парк</a> расположен в 30 минутах ходьбы'
'Единственное <a href="exec:GT ''lake'',''start''">озеро</a> в городе находится около окраины города в часе ходьбы'
'Круглосуточная <a href="exec:GT ''aptek'',''start''">Аптека</a>'

if hour >= 8 and lesbiQW >= 1 and lesbiQW < 3:'Квартирa <a href="exec:GT ''lesbidomhouse'',''start''">Натальи Петровны</a>'
if lesbiday ! day and hour >= 8 and (lesbiQW = 3 or lesbiQW = 4):'Квартирa <a href="exec:GT ''lesbidomhouse'',''start1''">Хозяйки</a>'
if lesbiday ! day and hour >= 8 and lesbiQW = 5:'Квартирa <a href="exec:GT ''lesbidomhouse'',''ev15''">Хозяйки</a>'
if lesbiday ! day and hour >= 8 and lesbiQW = 6:'Квартирa <a href="exec:GT ''lesbidomhouse'',''ev22''">долбаной извращенки</a>'
if lesbiday ! day and hour >= 8 and lesbiQW = 7:'Квартирa <a href="exec:GT ''lesbidomhouse'',''ev25''">Хозяйки</a>'
if lesbiday ! day and hour >= 8 and lesbiQW = 8:'Квартирa <a href="exec:GT ''lesbidomhouse'',''ev28''">Хозяйки</a>'
if lesbiday ! day and hour >= 8 and lesbiQW = 9:'Квартирa <a href="exec:GT ''lesbidomhouse'',''ev29''">Хозяйки</a>'
if lesbiday = day and hour >= 8:'Квартира хозяйки, сегодня вы её уже навещали'

'Неподалеку от дома где расположена ваша квартира находится <a href="exec:GT ''trashplace''">мусорка</a>'
if SNarkPriton > 0:'Возле одного из подъездов лежат шприцы и на корточках сидят нарики с пустыми глазами, в одной из квартир тут находится <a href="exec:minut += 5 & GT ''narkopriton''">наркопритон</a>'
if hour >= 8 and hour <= 23 or saunaWorkWhore > 0 or workDisk = 2:'В 10 минутах ходьбы <a href="exec:minut += 15 & GT ''sauna''">"Логово разврата"</a> как говорят бабульки, а так просто <a href="exec:minut += 15 & GT ''sauna''">сауна</a>'

if hour = meethour:
	if svidanieA = 1:'<b>Около подъезда вас ожидает <a href="exec:GT ''meet'',''start''"><<$boyA>></a></b>'
	if svidanieB = 1:'<b>Около подъезда вас ожидает <a href="exec:GT ''svidan'',''start''"><<$boyB>></a></b>'
	if svidanieC = 1:'<b>Около подъезда вас ожидает <a href="exec:GT ''svidan'',''start''"><<$boyC>></a></b>'
end

streetrand = RAND(0,100)
if streetrand >= 100 and hour <= 3:
	cla
	*clr
	'<center><img src="images/pic/street.jpg"></center>'
	'Внезапно на вас напал какой-то негодяй, он подошел к вам и процедив сквозь зубы "Шалава лучше не дёргайся!" и потащил вас в парковые кусты.'

	act 'Сопротивляться бесполезно':
		cla
		*clr
		!money = money + 500
		$nameV = 'Насильник'
		sex = sex + 1
		guy = guy + 1
		vagina = vagina + 1

		'<center><img src="images/picV/dogging.jpg"></center>'

		if prezik > 0:
			protect = 1
			prezik = prezik - 1

			'Вы дали презерватив парню и он молча одел его.'
		end

		'Парень отводит вас в кусты и ставит вас раком к дереву, вы чувствуете как его твердый член входит в вашу вагину.'

		if horny >= 90:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1

			'Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		end

		if protect ! 1:
			!не защищенный секс
			finrand = RAND(0,1)
			if finrand = 0:
				!внутрь
				cumpussy = cumpussy + 1

				'Парень застонал и вы почувствовали как струя спермы ударила вам внутрь вашего тела.'

				if tabletki <= 0 and mesec <= 0:
					gs'preg'
					manna = manna - 15
					willpower = willpower - 15

					'Черт, так ведь и залететь можно, подумалось вам с ужасом.'
				end
			elseif finrand = 1:
				!наружу
				cumass = cumass + 1

				'<<$nameV>> застонал и вынув член из вас, кончил на вашу попу.'
			end
		elseif protect > 0:
			protect = 0

			'Парень кончает в презерватив. Вытаскивает член из вас и сняв презерватив швыряет его на землю, после натягивает штаны и уходит.'
		end

		act 'Уйти':gt'street'
	end
	act 'Драться':
		cla
		$nameV = 'Насильник'
		!Статы
		strenV = 100
		speedV = 50
		agilV = 40
		reactV = 40
		vitalV = 50
		intelV = 10
		willV = 10
		!Навыки
		magikV = 100
		boxingV = 50
		shootV = 100
		!Параметры
		healthV = vitalV*10 + strenV*5
		mannaV = intelV*10 + magikV*10
		willpowerV = willV*10
		BonusAtakV = 0
		BonusDefV = 0
		!программа действий
		program = 0
		RapistFight = 1
		if spellavtoklon = 1:klon = 3
		if spellbefshild = 1:defence = 500

		gt'fight','start'
	end

	exit
end

streetrand = RAND(0,100)
if streetrand >= 100 and money >= 1000 and daystart >= 10 and hour <= 3:
	cla
	*clr
	'<center><img src="images/pic/street.jpg"></center>'
	'Неожиданно на вас напал грабитель'

	act 'Отдам деньги, здоровье важнее':
		cla
		clr
		money = 0
		gs'stat'

		'Вы потеряли все имеющиеся у вас в наличии сбережения.'

		act 'Уйти':gt'street'
	end
	act 'Хрен ему, а не деньги':
		cla
		'Грабитель с грязными ругательствами набрасывается на вас, теперь просто деньгами вы не отделаетесь.'

		act 'Драться':
			$nameV = 'Насильник'
			!Статы
			strenV = 100
			speedV = 50
			agilV = 40
			reactV = 40
			vitalV = 50
			intelV = 10
			willV = 10
			!Навыки
			magikV = 100
			boxingV = 50
			shootV = 100
			!Параметры
			healthV = vitalV*10 + strenV*5
			mannaV = intelV*10 + magikV*10
			willpowerV = willV*10
			BonusAtakV = 0
			BonusDefV = 0
			!программа действий
			program = 0
			RapistFight = 1
			if spellavtoklon = 1:klon = 3
			if spellbefshild = 1:defence = 500
			gt'fight','start'
		end
	end
	exit
end

streetrand = RAND(0,100)
if streetrand >= 100 and money >= 1000 and daystart >= 10 and hour <= 3:
	cla
	*clr
	'<center><img src="images/pic/street.jpg"></center>'
	'Вы подверглись ограблению, у вас из рук воришка вырвал сумочку с деньгами и быстро рванул в сторону лесопарковой леснухи.'

	act 'Не побегу, мне его не догнать':
		cla
		clr
		money = 0
		gs'stat'

		act 'Вот гад':gt'street'
	end
	act 'Догоню этого урода и тогда ему пиздец':
		if speed < 55 or agil < 55 or vital < 55:
			cla
			money = 0
			clr
			gs'stat'

			act 'Не догнала, надо тренироваться':gt'street'
		elseif speed >= 60 and agil >= 60 and vital >= 60:
			$nameV = 'Насильник'
			!Статы
			strenV = 100
			speedV = 50
			agilV = 40
			reactV = 40
			vitalV = 50
			intelV = 10
			willV = 10
			!Навыки
			magikV = 100
			boxingV = 50
			shootV = 100
			!Параметры
			healthV = vitalV*10 + strenV*5
			mannaV = intelV*10 + magikV*10
			willpowerV = willV*10
			BonusAtakV = 0
			BonusDefV = 0
			!программа действий
			program = 0
			RapistFight = 1
			if spellavtoklon = 1:klon = 3
			if spellbefshild = 1:defence = 500
			gt'fight','start'
		end
	end
	exit
elseif streetrand >= 10 and bfa < 1:
	vnerand = RAND(0,300)
	if vnerand <= vnesh:
		gs'boy'
		'К вам подошел <<$boybody>> <<$boybod>> <<$boyface>>. Он <<$boyClo>>'
		'Парень представился как <<$boy>> и попросил ваш телефончик.'

		act 'Сказать ему телефон':
			cla
			gs'boyfrend','start'
			stopboy = 0
			'<<$boyA>> записал ваш телефон и ушел.'
			act 'Завершить прогулку':gt'street'
		end
	end
end

dynamic $din_street_cum
--- street ---------------------------------

