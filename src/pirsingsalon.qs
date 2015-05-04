# pirsingsalon
$pirsyaz = {
	cls
	minut += 30
	money -= 5000
	pirsA = 1
	pirs_pain_ton = 7
	gs'stat'

	'<center><img src="images/pic/pirsing.jpg"></center>'
	'Сев на кресло вы высунули язык, мастер проколол вам язык и вставил туда штангу.'

	act 'Уйти':gt $curloc
}

$pirsyazout = {
	cls
	minut += 30
	money -= 5000
	pirsA = 0
	gs'stat'

	'<center><img src="images/pic/pirsing.jpg"></center>'
	'Мастер вынул штангу из вашего языка.'

	act 'Уйти':gt $curloc
}

$pirsgub = {
	cls
	minut += 30
	money -= 6000
	pirsB = 1
	gs'stat'

	'<center><img src="images/pic/pirsing2.jpg"></center>'
	'Мастер проколол вам губу и вставил туда кольцо.'

	act 'Уйти':gt $curloc
}

$pirsgubout = {
	cls
	minut += 30
	money -= 6000
	pirsB = 0
	gs'stat'

	'<center><img src="images/pic/pirsing2.jpg"></center>'
	'Мастер вынул кольцо из вашей губы.'

	act 'Уйти':gt $curloc
}

$pirsysh = {
	cls
	minut += 30
	money -= 3000
	pirsC = 1
	gs'stat'

	'Мастер проколол вам уши и вставил туда сережки.'

	act 'Уйти':gt $curloc
}

$pirsyshout = {
	cls
	minut += 30
	money -= 3000
	pirsC = 0
	gs'stat'

	'Мастер вынул серьги из ваших ушей.'

	act 'Уйти':gt $curloc
}

$pirsnos = {
	cls
	minut += 30
	money -= 5000
	pirsD = 1
	gs'stat'

	'Мастер проколол вам нос и вставил туда кольцо.'

	act 'Уйти':gt $curloc
}

$pirsnosout = {
	cls
	minut += 30
	money -= 5000
	pirsD = 0
	gs'stat'

	'Мастер вынул кольцо из вашего носа.'

	act 'Уйти':gt $curloc
}

$pirsbro = {
	cls
	minut += 30
	money -= 5000
	pirsE = 1
	gs'stat'

	'Мастер проколол вам бровь и вставил туда штангу.'

	act 'Уйти':gt $curloc
}

$pirsbroout = {
	cls
	minut += 30
	money -= 5000
	pirsE = 0
	gs'stat'

	'Мастер вынул штангу из вашей брови.'

	act 'Уйти':gt $curloc
}

$pirssos = {
	cls
	minut += 30
	money -= 10000
	pirsF = 1
	nippain = 2
	nippainday = daystart
	gs'stat'

	'Мастер проколол вам соски и вставил туда колечки.'

	act 'Уйти':gt $curloc
}

$pirssosout = {
	cls
	minut += 30
	money -= 10000
	pirsF = 0
	gs'stat'

	'Мастер вынул колечки из ваших сосков.'

	act 'Уйти':gt $curloc
}

$pirsvla = {
	cls
	minut += 30
	money -= 25000
	pirsG = 1
	painpub = 2
	painpubday = daystart
	gs'stat'

	'Мастер проколол вам половые губы на влагалище и вставил туда штангу.'

	act 'Уйти':gt $curloc
}

$pirsvlaout = {
	cls
	minut += 30
	money -= 25000
	pirsG = 0
	gs'stat'

	'Мастер вынул штангу из ваших половых губ.'

	act 'Уйти':gt $curloc
}

$pirspyp = {
	cls
	minut += 30
	money -= 10000
	pirsN = 1
	gs'stat'

	'Мастер проколол вам пупок и вставил туда штангу.'

	act 'Уйти':gt $curloc
}

$pirspypout = {
	cls
	minut += 30
	money -= 10000
	pirsN = 0
	gs'stat'

	'Мастер вынул штангу из вашего пупка.'

	act 'Уйти':gt $curloc
}

gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b>Салон пирсинга</b></center>'
'<center><img src="images/pic/pirsingstudia.jpg"></center>'
'Небольшой салон где работает мастер одиночка.'

if hour >= 12 and hour < 20 and pirsA = 0 and money >= 5000:'<a href="exec:dynamic $pirsyaz">Сделать пирсинг языка 5000 рублей</a>'
if hour >= 12 and hour < 20 and pirsA = 1 and money >= 5000:'<a href="exec:dynamic $pirsyazout">Убрать пирсинг языка 5000 рублей</a>'
if hour >= 12 and hour < 20 and pirsB = 0 and money >= 6000:'<a href="exec:dynamic $pirsgub">Сделать пирсинг губ 6000 рублей</a>'
if hour >= 12 and hour < 20 and pirsB = 1 and money >= 6000:'<a href="exec:dynamic $pirsgubout">Убрать пирсинг губ 6000 рублей</a>'
if hour >= 12 and hour < 20 and pirsC = 0 and money >= 3000:'<a href="exec:dynamic $pirsysh">Сделать пирсинг ушей 3000 рублей</a>'
if hour >= 12 and hour < 20 and pirsC = 1 and money >= 3000:'<a href="exec:dynamic $pirsyshout">Убрать пирсинг ушей 3000 рублей</a>'
if hour >= 12 and hour < 20 and pirsD = 0 and money >= 5000:'<a href="exec:dynamic $pirsnos">Сделать пирсинг носа 5000 рублей</a>'
if hour >= 12 and hour < 20 and pirsD = 1 and money >= 5000:'<a href="exec:dynamic $pirsnosout">Убрать пирсинг носа 5000 рублей</a>'
if hour >= 12 and hour < 20 and pirsE = 0 and money >= 5000:'<a href="exec:dynamic $pirsbro">Сделать пирсинг бровей 5000 рублей</a>'
if hour >= 12 and hour < 20 and pirsE = 1 and money >= 5000:'<a href="exec:dynamic $pirsbroout">Убрать пирсинг бровей 5000 рублей</a>'
if hour >= 12 and hour < 20 and pirsF = 0 and money >= 10000:'<a href="exec:dynamic $pirssos">Сделать пирсинг сосков 10000 рублей</a>'
if hour >= 12 and hour < 20 and pirsF = 1 and money >= 10000:'<a href="exec:dynamic $pirssosout">Убрать пирсинг сосков 10000 рублей</a>'
if hour >= 12 and hour < 20 and pirsN = 0 and money >= 10000:'<a href="exec:dynamic $pirspyp">Сделать пирсинг пупка 10000 рублей</a>'
if hour >= 12 and hour < 20 and pirsN = 1 and money >= 10000:'<a href="exec:dynamic $pirspypout">Убрать пирсинг пупка 10000 рублей</a>'
if hour >= 12 and hour < 20 and pirsG = 0 and money >= 25000:'<a href="exec:dynamic $pirsvla">Сделать пирсинг влагалища 25000 рублей</a>'
if hour >= 12 and hour < 20 and pirsG = 1 and money >= 25000:'<a href="exec:dynamic $pirsvlaout">Убрать пирсинг влагалища 25000 рублей</a>'

act 'Уйти':gt'nord'
--- pirsingsalon ---------------------------------

