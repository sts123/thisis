# Nord
$metka = $ARGS[0]
$loc = $CURLOC
$metkaStreet = $ARGS[0]
$locStreet = $CURLOC

gs'dinam'
clr
gs'stat'
gs'time'

'<center><b>Северный район</b></center>'
'<center><img src="images/pic/nord.jpg"></center>'

!act 'Выйти на северное шоссе':minut += 15 & nroad = 0 & gt'road'

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

if car > 0:
	if cardrive = 3 or cardrive >= 6 and cardrive <= 9:'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
end

if hour >= 8 and hour <= 22:'В киоске продают <a href="exec:dynamic $kiosksig">сигареты</a>'
'<a href="exec:minut += 15 & GT ''vokzal''">Вокзал</a>'
if slavaQW >= 1:'<a href="exec:GT ''qwBarPolet''">Бар "Полет"</a>'
litltown = 0
'Автомобильная <a href="exec:GT ''zaprF'',''start''">заправка</a>'
if hour >= 5 and hour <= 23:'Станция <a href="exec:GT ''metro'',''start''">Метро</a> расположена в 5 минутах ходьбы'
if hour >= 9 and hour <= 17 and week > 1:'<a href="exec:GT ''autosalonF'',''start''">Автомобильный салон</a>'
if hour >= 9 and hour <= 20 and week < 7:'<a href="exec:GT ''autoservisF'',''start''">Автосервис</a>'
if hour >= 9 and hour <= 17 and week > 1:'<a href="exec:GT ''autotraidF'',''start''">Авторынок</a>'
if hour >= 9 and hour <= 17 and week < 6:'<a href="exec:GT ''dk'',''start''">Дом культуры имени Ленина</a>'
if hour >= 9 and hour <= 17 and week < 6 and bumtolik > 3:'<a href="exec:GT ''buklinik'',''start''">Клиника милосердия</a>'
if hour >= 8 and hour <= 20:'Ярким пятном на пустыре стоит <a href="exec:GT ''shop'',''start''">Супермаркет</a>'
if hour >= 12 and hour <= 19:'Над дверью в полуподвальное помещение красуется надпись <a href="exec:GT ''pirsingsalon''">салон пирсинга</a>'
if tobiQW >= 1:'Старинный особняк где проживает <a href="exec:GT ''kakuzu'',''start''">Какузу</a>'
'Огромное здание в котором находится <a href="exec:GT ''casino''">Казино</a> и отель сверкает огнями'
if hour >= 14 or hour < 4:'Неподалеку от новостроек расположена <a href="exec:GT ''lakecafe'',''main''">шашлычная</a>'
if jouryResult = 10:'В одной из новостроек расположена <a href="exec:GT ''youry''">квартира Юрия</a>'
if IvanKvartira > 0:'В одном из домов находится <a href="exec:GT ''ivanRoom''">квартира менеджера Ивана</a>'
'За длинным бетонным забором находится <a href="exec:GT ''Terminal''">складской терминал</a>'

dynamic $din_street_cum
--- Nord ---------------------------------

