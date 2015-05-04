# QwestDisdock
!в локацию stat на любое место
if qwestonce = 0:
	qwestonce = 1
	!ADDQST 'qwest/qwest.qsp'
end

!ссылка на переход
!расположена в локации park массив luna
if vladimirQW = 0 and hour >= 9 and hour <= 20 and week > 5:'<a href="exec:GT ''qwloc''">Около ограды стоит крепкий мужчина и разглядывает вас</a>'

!в локацию korr
if vladimirday ! day and vladimirQW = 20 and hour = 16:'<a href="exec:GT ''qwloc2''">Звонит телефон</a>'

!в локацию telefon массив start
if vladimirday ! day and vladimirQW = 20 and hour = 16:gt'qwloc2'

!в локацию restoran массив start
if vladimirday = day and vladimirQW = 21 and hour = 20:gt'qwmeet'

!в локацию korr
if vladimirday ! day and vladimirQW = 25 and hour = 16 and week = 6:'<a href="exec:GT ''qwloc3''">Звонит телефон</a>'

!в локацию telefon массив start
if vladimirday ! day and vladimirQW = 25 and hour = 16 and week = 6:gt'qwloc3'

!street
if vladimirday = day and vladimirQW = 30 and hour >= 16 and week = 6:'<a href="exec:GT ''qwmeet2''">Перед вашим подъездом стоит Ауди и около него флегматично стоит дожидаясь вас водитель Слава</a>'

!down
if izoldaQW >= 1:'<a href="exec:GT ''qwIzoldaApp''">Квартира Изольды</a>'

!nord
if slavaQW >= 1:'<a href="exec:GT ''qwBarPolet''">Бар "Полет"</a>'
--- QwestDisdock ---------------------------------

