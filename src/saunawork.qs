# saunawork
$metka = $ARGS[0]
$loc = $CURLOC

$metkaBroom = $ARGS[0]
$locBroom = $CURLOC

$metkaM = $ARGS[0]
$locM = $CURLOC

saunaYouRoom = 1
if paymamka = 0:paymamka = 300
if workDolg > 0:paymamka = 300
if workDolg <= 0:paymamka = 500
gs'stat'

'<center><b><font color = maroon>Сауна</font></b></center>'
'<center><img src="images/pic/sauna1.jpg"></center>'
'На стенах полно <a href="exec:GT ''mirror'',''start''">зеркал</a>.'

if saunaWorkNow = 1:
	saunaWorkNow = 0
	money -= paymamka

	'К вам подошла мамка и взяла с вас <<paymamka>> рублей за клиента.'
end

if money > 0 and workDolg > 0:workDolg -= money & money = 0
if workDolg > 0:'Ваш долг составляет <<workDolg>> рублей'

gs'stat'

if workDolg <= 0:act 'Уйти':gt'sauna'
if workDolg > 0:act 'Идти в свою комнату':gt'saunaroom'

if hour > 8 and hour < 12 and whorehour ! hour:
	whorehour = hour

	klientrand = RAND(0,100)
	if klientrand >= 80:saunaWorkKlient = 1
elseif hour >= 12 and hour < 16 and whorehour ! hour:
	whorehour = hour

	klientrand = RAND(0,100)
	if klientrand >= 50:saunaWorkKlient = 1
elseif hour >= 16 and hour < 21 and whorehour ! hour:
	whorehour = hour

	klientrand = RAND(0,100)
	if klientrand >= 10:saunaWorkKlient = 1
elseif hour >= 21 and whorehour ! hour:
	whorehour = hour
	saunaWorkKlient = 1
end

if saunaWorkKlient = 1:
	cls
	gs'stat'

	'<center><img src="images/pic/saunawhore.jpg"></center>'
	'В сауну приехал клиент, девочки выстроились что бы клиент мог выбрать понравившуюся.'

	if mop > 1 and hapri = 1 and sweat <= 0 and leghair <= 0 and lobok <= 0:
		whorerand = RAND(0,25)
		if whorerand < vnesh:
			'Клиент ткнул в вас пальцем "Вот эта."'

			act 'Идти в сауну с клиентом':saunaWorkKlient = 0 & gt'saunawhore'
		else
			'Клиент осмотрел придирчивым взглядом вас и отвернувшись выбрал другую девушку.'

			act 'Выйти':saunaWorkKlient = 0 & gt $curloc
		end
	else
		'Посмотрев на вас клиент сразу же отвернулся и выбрал другую девушку.'

		act 'Выйти':saunaWorkKlient = 0 & gt $curloc
	end

	exit
end

if vnesh = -10 or SLomka > 0:
	cls
	workDolg += 1500
	gs'stat'

	'Вас подозвала мамка. "Эй шалава иди сюда."'
	'Вы подошли к ней и она потребовала оголить вашу руку. Вы исполнили требуемое и она достала шприц с какой то дрянью. "Сиди спокойно, сейчас укол сделаю и приведу тебя в нормальный вид."'

	act 'Выйти':StrongNarkota += 25 & SNarkTimes += 1 & minut += 10 & gt $curloc
	exit
end

act 'Сидеть на диване (1 час)':
	cls
	minut += 60
	gs'stat'

	'<center><img src="images/pic/saunawork.jpg"></center>'
	'Вы в течении часа сидели на диване в ожидании клиентов.'

	act 'Выйти':gt $curloc
end

if clenerSauna ! day:
	act 'Чистить унитазы (1 час)':
		cla
		*clr
		minut = minut + 60
		clenerSauna = day
		manna = manna - 25
		workDolg -= 100
		sweat = sweat + 3

		'<center><img src="images/pic/clener2.jpg"></center>'
		'Вы в течении часа драили унитазы в сауне до блеска.'

		act 'Выйти':gt $curloc
	end
end

if clenerSauna2 ! day:
	act 'Драить полы (1 час)':
		cla
		*clr
		minut = minut + 60
		clenerSauna2 = day
		manna = manna - 25
		workDolg -= 100
		sweat = sweat + 3

		'<center><img src="images/pic/clener1.jpg"></center>'
		'Вы в течении часа драили полы шваброй до блеска.'

		act 'Выйти':gt $curloc
	end
end

act 'Принять душ 15 мин':
	cla
	*clr
	minut = minut + 15
	sweat = -3
	horny = horny + 1
	hapri = 0
	mop = 1
	dynamic $showerdin
	if frost > 0:frost = 0

	'<center><img src="images/pics/dush.jpg"></center>'
	'Вы залезли в ванную и включили душ. Намылили тело и смыли под душем.'

	act 'Достать бритву':dynamic $saunabrit

	if horny >= 90:
		act 'Направить душ на киску':
			cla
			*clr
			horny = 0
			minut = minut + 30
			mastr = mastr + 1
			orgasm = orgasm + 1
			manna = manna + 15
			willpower = willpower + 15

			'<center><img src="images/pics/wash2.jpg"></center>'
			'Вы направили душ на киску и тугие струи теплой воды начали ласкать вас. Вскоре вы почувствовали как теплая волна охватывает весь ваш организм и вы начали содрогаться в оргазме.'

			act 'Выйти из ванной и одеться':gt $curloc
		end
	elseif horny >= 40 and hormy < 90:
		act 'Направить душ на киску':
			cla
			*clr
			horny = horny + 5
			minut = minut + 30
			manna = manna + 10
			willpower = willpower + 10

			'<center><img src="images/pics/wash2.jpg"></center>'
			'Вы направили душ на киску и тугие струи теплой воды начали ласкать вас. Сначала вам было очень приятно, но через некоторое время стало даже как то больно. Возбуждение спало и вы прекратили мастурбировать.'

			act 'Выйти из ванной и одеться':gt $curloc
		end
	end

	act 'Выйти из ванной и одеться':gt $curloc
end

$saunabrit = {
	cls
	'Вы сполоснули бритву, лезвия которой хватит еще на <<stanok>> раз.'

	if leghair > 0:
		act 'Брить ноги 15 мин':
			cla
			*clr
			minut = minut + 15
			leghair = -5
			horny = horny + 5

			'<center><img src="images/pics/shave.jpg"></center>'
			'Вы намылили ноги и сбрили волосы с них.'

			act 'Отложить станок':dynamic $saunabrit
		end
	end

	if lobok > 0:
		act 'Брить лобок 15 мин':
			cla
			*clr
			minut = minut + 15
			lobok = -5
			horny = horny + 5

			'<center><img src="images/pics/shave3.jpg"></center>'
			'Вы намылили лобок, после чего сбрили с него все волосы.'

			act 'Отложить станок':dynamic $saunabrit
		end
	end

	act 'Выйти из ванной и одеться':gt $curloc
}
--- saunawork ---------------------------------

