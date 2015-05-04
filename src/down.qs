# down
$metka = $ARGS[0]
$loc = $CURLOC

clr
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
gs'dinam'
gs'stat'
gs'time'

'<center><b>Центр города</b></center>'
'<center><img src="images/pic/down.jpg"></center>'

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

if car > 0 and cardrive = 2:
	cardrive = 2

	'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
end

if hour >= 8 and hour <= 22:'В киоске продают <a href="exec:dynamic $kiosksig">сигареты</a>'

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

if tanya > 0 and tanwork = 0 and hour >= 16 and hour <= 21 and tanday ! day: '<a href="exec:gt''tanhouse''">Квартира Тани</a>'
if tanwork = 1:'<a href="exec:gt''house''">Квартира Тани</a>'
if izoldaQW >= 1:'<a href="exec:GT ''qwIzoldaApp''">Квартира Изольды</a>'
if mainQW >= 1:'Тайное <a href="exec:GT ''lab'',''start''">убежище Карины</a>'
if yaq = 1:'Квартира <a href="exec:GT ''yarik'',''start''">Ярослава</a>'
if peter > 0:'Квартира <a href="exec:GT ''peterroom'',''start_door''">Питера</a>'
if hour >= 9 and hour <= 21:'<a href="exec:minut += 15 & GT ''NewCloShop''">Магазин женской одежды "Модница"</a>'
if hour >= 4 and hour <= 23:'Станция <a href="exec:GT ''metro'',''start''">Метро</a> расположена в 5 минутах ходьбы'
if week >= 4 and hour >= 15:'Модный <a href="exec:GT ''club'',''start''">Ночной клуб</a> сияет огнями, привлекая молодежь со всего города'
if hour >= 15 or hour <= 2:'Яркий <a href="exec:GT ''stripclub'',''start''">Стрип клуб</a> сверкает огнями, привлекая мужчин со всего города'

if hour >= 9 and hour <= 20:
	'В центре города стоит большой <a href="exec:gt''torgcentr''">торгово-развлекательный центр</a>'
	'Популярный <a href="exec:GT ''fit'',''start''">Фитнес центр</a> в котором тренируются как и профессиональные спортсмены, так и желающие похудеть к пляжному сезону'
	'<a href="exec:GT ''foto'',''start''">Фотостудия</a>'
	'<a href="exec:GT ''bass'',''start''">Бассейн</a>'
end

if hour >= 8 and hour <= 22:'Дорогой <a href="exec:GT ''restoran'',''start''">Ресторан</a> вокруг которого стоят роскошные автомашины'
'Крупный <a href="exec:GT ''sexshop'',''start''">Секс шоп</a> для извращенцев со всего города'
if hour >= 6 and hour <= 23:'Закусочная <a href="exec:GT ''burger'',''start''">Быстроешка</a>'
if bordel > 0 and hour >= 20 or bordel > 0 and hour <= 3:'Во дворах вход в <a href="exec:GT ''bordel''">бордель</a>'
if pornstudio >= 1 and hour > 5:'<a href="exec:GT ''pornstudio'',''start''">Киностудия</a>, в которой снимают фильмы для взрослых'
if week < 6 and hour >= 7:'Престижный <a href="exec:GT ''univer'',''start''">Университет</a> является альма матер практически всех образованных людей города'
if hour >= 6 and hour <= 23:'Университетское <a href="exec:GT ''dorm'',''start''">Общежитие</a> немного не приглядное, не смотря на высокий статус университета'
if week < 6 and hour >= 9 and hour <= 18:'Важнейший <a href="exec:GT ''bank'',''start''">Банк</a> в городе'
if week < 6 and hour >= 8 and hour <= 17:'Крупнейшая <a href="exec:GT ''office'',''start''">Проектная организация</a> в городе'
if hour >= 8 and hour <= 22:'<a href="exec:GT ''agentned''">Агентство недвижимости</a>'

!if beg >= 50 and begmon ! month and hour >= 6 and hour <= 23:'Идти на <a href="exec:GT ''beg1'',''start''">соревнования по бегу</a>'
!end

dynamic $din_street_cum
--- down ---------------------------------

