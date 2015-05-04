# yvan
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Ванная комната</center>'

if ymanrem[5] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[5] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[5] = 2:'<center><img src="images/pic/yvan.jpg"></center>'
if ymanrem[5] = 2:'<a href="exec:GT ''mirror'',''start''">зеркало</a> <a href="exec: gt''vann'',''start''">помыться</a>'

if tampon > 0:
	'На полке лежит упаковка тампонов. Ее хватит еще на <b><<tampon>></b> раз'
else
	'<b><font color = red>У вас нет тампонов.</font></b>'
end

if stanok > 0:'На полке лежит станок для бритья, у него хватит лезвий на то, что бы побриться <b><<stanok>></b> раз.'
if dirtbelo > 0:'В корзине лежит <font color = red><b><<dirtbelo>></b></font> ед. грязного белья.'

if poroshok > 0:
	'Под ванной стоит жестяная банка для стирального порошка, которого хватит на <b><<poroshok>></b> стирок.'
else
	'<b><font color = red>У вас нет стирального порошка и нечем стирать белье.</font></b>'
end

if clrbelo > 0:
	'В шкафчике лежит <font color = blue><b><<clrbelo>></b></font>ед. чистого белья. Вы можете <a href="exec: gt''vann'',''start''">помыться</a> поменяв белье.'
else
	'<b><font color = red>Вы не можете мыться, так как вам не во что переодеться.</font></b>'
end

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

act 'Выйти из комнаты':minut += 1 & gt'ymans'

if tanga = 0:
	act 'Одеть нижнее белье':
		cla
		tanga = 1
		gt $curloc
	end
elseif tanga = 1:
	act 'Снять нижнее белье':
		cla
		tanga = 0
		gt $curloc
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

		'<center><img src="images/pics/wash3.jpg"></center>'
		'Вы поменяли тампон.'

		act 'Выйти':gt $curloc
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

		act 'Выйти':gt $curloc
	end
end

if cumlip > 0 or cumface > 0:
	act 'Смыть сперму с лица 5 мин':
		cla
		*clr
		cumlip = 0
		cumface = 0
		sweat = sweat - 1
		minut = minut + 5

		'<center><img src="images/pic/facesp.jpg"></center>'
		'Вы тщательно смыли сперму с лица.'

		act 'Выйти':gt $curloc
	end
end

if mop ! 1:
	act 'Смыть косметику':
		cla
		mop = 1
		minut = minut + 15

		'Вы смыли косметику.'

		act 'Выйти':gt $curloc
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

		act 'Выйти':gt $curloc
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

		act 'Выйти':gt $curloc
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
elseif analplug = 1 and analplugin = 0 and klismaday1 = 1:
	act 'Вставить анальную пробку 5 мин':
		cla
		*clr
		minut = minut + 5
		analplugIN = 1
		if anus < 30:anus = anus + 5

		'<center><img src="images/pic/analplug.jpg"></center>'
		if butpluguse > 0:'Вы наклонились и привычным движением вставили себе анальную пробку.'
		if butpluguse = 0:butpluguse = 1 & '"Я к этому даже не прикоснусь,и зачем я это купила!" подумали вы. Потом все же решили рассмотреть поближе. Пощупали, понюхали, в общем то обыкновенная затычка. "Эх была не была," подумали вы "Надо же попу разрабатывать когда нибудь, ей предстоят большие приключения, можно даже сказать огромные и толстые приключения с багровыми головками, эээ, что то я увлеклась." Почесали вы тонкими пальчиками непривычно волосатую голову. После этого вы направили затычку себе в попу, стало немного больно когда анус начал растягиваться принимая в себя посторонний предмет, но как только самая широкая часть погрузилась в сумрачные анальные глубины, стало легче, и затычка практически сама залетела до конца, и встала на положенное производителем место.'

		act 'Выйти':gt $curloc
	end
end
--- yvan ---------------------------------

