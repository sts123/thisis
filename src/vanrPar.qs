# vanrPar
act 'Выйти из комнаты':
	gt'korrPar'
end

$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
minut = minut + 1
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Ванна</font></b></center>'
'<center><img src="images/qwest/alter/<<$loc>>.jpg"></center>'
'Ванная тесная и очень простенькая.'

if stanok > 0:'Вашего бритвенного станка хватит еще на <<stanok>> раз.'

act 'Мыться под душем 15 мин':
	cls
	dynamic $showerdin
	minut += 15
	horny = horny + 1
	hapri = 0
	mop = 1
	sweat = -3
	if frost > 0:frost = 0
	gs'stat'

	'<center><img src="images/pics/dush.jpg"></center>'
	'Вы залезли в душ и начали намыливать свое тело мочалкой. После смыли мыло и помыли волосы шампунем. Смыв шампунь вы стали совершенно чистой.'

	act 'Выйти из ванны':gt $locM, $metkaM
end
act 'Мыться в ванной 1 час':
	cls
	dynamic $showerdin
	minut += 60
	sweat = -3
	horny = horny + 3
	hapri = 0
	mop = 1
	manna = manna + 10
	if frost > 0:frost = 0
	skinvan = skinvan + 1
	if skinvan >= 20:skinvan = 0 & skin = skin + 1
	gs'stat'

	'<center><img src="images/pics/wash4.jpg"></center>'
	'Включив воду, вы залезли в ванную и легли в теплую воду. Понаслаждавшись приятным теплом вы намылили свое тело мочалкой и волосы шампунем. Затем вы все смыли водой.'

	act 'Выйти из ванны':gt $locM, $metkaM

	if horny >= 90:
		act 'Направить воду на киску':
			cla
			*clr
			horny = 0
			minut = minut + 30
			mastr = mastr + 1
			orgasm = orgasm + 1
			manna = manna + 15
			willpower = willpower + 15

			'<center><img src="images/pics/wash7.jpg"></center>'
			'Вы направили кран с водой на киску и тугая струя теплой воды начали ласкать вас. Вскоре вы почувствовали как теплая волна охватывает весь ваш организм и вы начали содрогаться в оргазме.'

			act 'Выйти из ванной и одеться':gt $locM, $metkaM
		end
	elseif horny >= 40 and horny < 90:
		act 'Направить воду на киску':
			cla
			*clr
			horny = horny + 5
			minut = minut + 30
			manna = manna + 10
			willpower = willpower + 10

			'<center><img src="images/pics/wash7.jpg"></center>'
			'Вы направили кран с водой на киску и тугая струя теплой воды начали ласкать вас. Сначала было очень даже не плохо, но потом возбуждение спало и стало даже как то не приятно. Поэтому вы прекратили мастурбировать.'

			act 'Выйти из ванной и одеться':gt $locM, $metkaM
		end
	end

	if horny >= 50:
		act 'Мастурбировать':
			gt'selfplay'
		end
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
		gs'stat'

		'<center><img src="images/picb/tampon.jpg"></center>'
		'Вы поменяли тампон.'

		act 'Закончить':gt $curloc
	end
end

if mop ! 1:
	act 'Смыть косметику':
		cla
		mop = 1
		minut = minut + 15
		gs'stat'

		'<center><img src="images/pic/facesp.jpg"></center>'
		'Вы смыли косметику.'

		act 'Закончить':gt $curloc
	end
end

if cumfrot > 0:
	act 'Оттирать сперму с одежды':
		cla
		cumfrot = 0
		minut = minut + 15
		gs'stat'

		'<center><img src="images/pic/frotsp.jpg"></center>'
		'Вы замыли пятна спермы на своей одежде.'

		act 'Закончить':gt $curloc
	end
end

if leghair > 0 and stanok > 0:
	act 'Брить ноги 15 мин':
		cla
		*clr
		minut = minut + 15
		leghair = -5
		horny = horny + 5
		stanok = stanok - 1

		'<center><img src="images/pics/shave.jpg"></center>'
		'Вы намылили свои ноги и взяли бритву. Ловкими движениями вы сбрили волосы на ногах и смыли пенку для бритья.'

		act 'Отложить станок':gt $curloc
	end
end

if lobok > 0 and stanok > 0:
	act 'Брить лобок 15 мин':
		cla
		*clr
		minut = minut + 15
		lobok = -5
		horny = horny + 5
		stanok = stanok - 1

		'<center><img src="images/pics/shave3.jpg"></center>'
		'Вы намылили лобок и взяв бритву ловкими движениями начали брить лобок и сбривать волоски вокруг киски. Наконец с бритьем было покончено и вы смыли пенку с киски.'

		act 'Отложить станок':gt $curloc
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

if pregtest > 0:
	act 'Сделать тест на беременность':
		cla
		pregtest -= 1
		gs'stat'

		if preg = 1:
			'Тест показал две полоски. Вы беременны.'
			'Вы думаете, что отец <<$father>>.'
		else
			'Тест показал одну полоску.'
		end

		act 'Далее':gt $curloc
	end
end
--- vanrPar ---------------------------------

