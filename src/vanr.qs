# vanr
act 'В коридор':
	gt'korr'
end

$stirkad = {
	cla
	*clr
	minut = minut + dirtbelo*5
	suhbelo = suhbelo + dirtbelo
	poroshok = poroshok - 1
	dirtbelo = 0
	manna = manna - 10

	'<center><img src="images/pic/stir.jpg"></center>'
	'Вы замочили белье в тазике и насыпали туда порошка, после чего вы стали стирать белье, пока оно наконец не стало чистым.'

	act 'Развесить белье сушиться':gt'korr'
}

$metka = $ARGS[0]
$loc = $CURLOC
$metkaM = $ARGS[0]
$locM = $CURLOC

clr
minut = minut + 1
housrA = 1
elektro = elektro + 1
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Ванная</font></b></center>'
if remvanr = 0:'<center><img src="images/pic/vanr.jpg"></center>'
if remvanr = 1:'<center><img src="images/pic/vanr2.jpg"></center>'

if stiralka > 0:
	if husband > 0 and husbanday > 0 and husporday ! day and poroshok >= 2:
		husband += 5
		poroshok = poroshok - 2
		husporday = day

		'Стиральная машина постирала вонючие носки мужа и его проссанные и проперданные труселя.'
	end
	if dirtbelo > 0 and poroshok >= dirtbelo:
		clrbelo += dirtbelo
		poroshok -= dirtbelo
		dirtbelo = 0

		'Стиральная машина выстирала ваше белье'
	elseif poroshok < dirtbelo:
		'У вас кончился порошок для стиральной машины.'
	end
end

if tampon > 0:
	'На полке лежит упаковка тампонов. Ее хватит еще на <b><<tampon>></b> раз'
else
	'<b><font color = red>У вас нет тампонов.</font></b>'
end

if stanok > 0:'На полке лежит станок для бритья, у него хватит лезвий на то, что бы побриться <b><<stanok>></b> раз.'
if dirtbelo > 0:'В корзине лежит <font color = red><b><<dirtbelo>></b></font> ед. грязного белья.'

if poroshok > 0:
	if dirtbelo = 0:$stirka = ''
	if dirtbelo > 0:$stirka = '<a href="exec: dynamic $stirkad ">Вы можете постирать белье</a>'
	'Под ванной стоит жестяная банка для стирального порошка, которого хватит на <b><<poroshok>></b> стирок. <<$stirka>>'
else
	'<b><font color = red>У вас нет стирального порошка и нечем стирать белье.</font></b>'
end

if clrbelo > 0:
	'В шкафчике лежит <font color = blue><b><<clrbelo>></b></font>ед. чистого белья.'
else
	'<b><font color = red>У вас нет чистого белья.</font></b>'
end

if shampoo > 0:
	'У вас хватит шампуня на <<shampoo>> раз. Вы можете <a href="exec: gt''vann'',''start'' ">помыться</a>.'
else
	'У вас кончился шампунь, поэтому с мытьем проблемы.'
end

if mosolmaz > 0:'На полке лежит тюбик с противомозольной мазью, которой хватит еще на <<mosolmaz>> применений.'
if stiralka > 0:'В ванной стоит стиральная машина.'

if tanga = 0 and clrbelo > 0:
	act 'Одеть нижнее белье':
		cla
		tanga = 1
		gt'vanr'
	end
else
	act 'Снять нижнее белье':
		cla
		tanga = 0
		gt'vanr'
	end
end

if tampon > 0 and mesec > 0 and isprok = 0:
	act 'Поменять тампон':
		cla
		*clr
		tampon = tampon - 1
		isprok = 1
		minut = minut + 5
		manna = manna - 5

		'<center><img src="images/picb/tampon.jpg"></center>'
		'Вы поменяли тампон.'

		act 'Выйти':gt'vanr'
	end
end

if cumpussy > 0 and clrbelo > 0 or cumbelly > 0 and clrbelo > 0 or cumass > 0 and clrbelo > 0 or cumanus > 0 and clrbelo > 0:
	act 'Подмыться 5 мин':
		cla
		*clr
		cumpussy = 0
		cumbelly = 0
		cumass = 0
		cumlip = 0
		cumface = 0
		cumanus = 0
		cumfrot = 0
		sweat = sweat - 1
		minut = minut + 5
		clrbelo = clrbelo - 1
		dirtbelo = dirtbelo + 1

		'<center><img src="images/pics/wash5.jpg"></center>'
		'Вы тщательно смыли сперму в ванной.'

		act 'Выйти':gt'vanr'
	end
end

if cumlip > 0 or cumface > 0:
	act 'Смыть сперму с лица 5 мин':
		cla
		*clr
		mop = 1
		cumlip = 0
		cumface = 0
		sweat = sweat - 1
		minut = minut + 5

		'<center><img src="images/pic/facesp.jpg"></center>'
		'Вы тщательно смыли сперму с лица.'

		act 'Выйти':gt'vanr'
	end
end

if mop ! 1:
	act 'Смыть косметику':
		cla
		mop = 1
		minut = minut + 15

		'Вы смыли косметику.'

		act 'Выйти':gt'vanr'
	end
end

if klisma = 1 and klismaday ! day:
	act 'Сделать себе клизму 5 мин':
		cla
		*clr
		minut = minut + 5
		klismaday = day
		klismaday1 = 1

		'<center><img src="images/picV/klisma.jpg"></center>'
		'Вы поставили себе клизму и прочистили кишечник, теперь ваша попка готова к анальному сексу.'

		act 'Выйти':gt $curloc
	end
end

if vibrator = 1 and vibratorIN = 1:
	act 'Вынуть вибратор 5 мин':
		cla
		*clr
		minut = minut + 5
		vibratorIN = 0
		if vagina < 30:vagina = vagina + 1

		'<center><img src="images/pic/vibrator.jpg"></center>'
		'Вы наклонились и вынули вибратор из влагалища.'

		act 'Выйти':gt'vanr'
	end
elseif vibrator = 1 and vibratorIN = 0:
	act 'Вставить вибратор 5 мин':
		cla
		*clr
		minut = minut + 5
		vibratorIN = 1
		if vagina < 30:vagina = vagina + 2

		'<center><img src="images/pic/vibrator.jpg"></center>'
		'Вы наклонились и вставили фаллический предмет себе в киску.'

		act 'Выйти':gt'vanr'
	end
end

if analplug = 1 and analplugin = 1:
	act 'Вынуть анальную пробку 5 мин':
		cla
		*clr
		minut = minut + 5
		analplugIN = 0
		if anus < 30:anus = anus + 1

		'<center><img src="images/pic/analplug.jpg"></center>'
		if butpluguse > 0:'Вы наклонились и привычным движением вынули из себя анальную пробку.'

		act 'Выйти':gt $curloc
	end
elseif analplug = 1 and analplugin = 0 and klismaday1 = 1 and plugday ! daystart:
	act 'Вставить анальную пробку 5 мин':
		cla
		*clr
		plugday = daystart
		minut = minut + 5
		analplugIN = 1
		if anus < 10:anus = anus + 5
		if anus >= 10 and anus < 20:anus += RAND(1,2)
		if anus >= 20 and anus < 30:anus += RAND(0,1)

		'<center><img src="images/pic/analplug.jpg"></center>'
		if butpluguse > 0:'Вы наклонились и привычным движением вставили себе анальную пробку.'
		if butpluguse = 0:butpluguse = 1 & 'Вы постарались как можно сильнее расслабить попу и стали вставлять себе пробку, закусив губу от чувства, что ваша попа вот вот лопнет вы аккуратно протолкнули толстую часть в свою попу и наконец то пробка встала на место.'

		act 'Выйти':gt $curloc
	end
end

if husband > 0 and husbanday > 0 and husporday ! day and poroshok >= 2:
	act 'Стирать одежду мужа 1 час (2 единицы стирального порошка)':
		cla
		*clr
		husband += 5
		poroshok = poroshok - 2
		minut = minut + 60
		husporday = day
		manna -= 25

		'<center><img src="images/pic/stir.jpg"></center>'
		'Вы целый час отстирывали вонючие носки мужа и его проссанные и проперданные труселя.'

		act 'Отойти от ванной':gt'vanr'
	end
end

if husband > 0 and husbanday > 0 and huspolday ! day:
	act 'Убираться в квартире 1 час':
		cla
		*clr
		husband += 5
		minut = minut + 60
		huspolday = day
		manna -= 25

		!'<center><img src="images/pics/cook.jpg"></center>'
		'Вы взяли тряпку и начали убираться в квартире.'

		act 'Уйти':gt'vanr'
	end
end

if pregtest > 0:
	act 'Сделать тест на беременность':
		cla
		pregtest -= 1
		gs'stat'

		if preg = 1:
			'Тест показал две полоски. Вы беременны.'
			!'Отец - <<$father>>.'
		else
			'Тест показал одну полоску.'
		end

		act 'Далее':gt $curloc
	end
end
--- vanr ---------------------------------

