# husbSex
if $ARGS[0] = 'room':
	clr
	minut += 60
	$nameV = $husName
	dick = husDick
	silavag = silavagH
	husbandsexday += 1
	suprdolg += 1
	sexrand = RAND(0,3)

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Спальня</font></b></center>'
	if rembedr = 0:'<center><img src="images/pic/bedr.jpg"></center>'
	if rembedr = 1:'<center><img src="images/pic/bedr2.jpg"></center>'

	'Вы прошли с мужем в спальную комнату.'
	'<<$husName>> хватает вас и грубо прижимает вас к себе начиная страстно вас целовать и пытаться стащить с вас одежду.'
	'Наконец то <<$husName>> одержал победу в неравном бою с бретельками вашего лифчика и раздел вас.'

	if husbdolg = 0:
		cla
		*clr
		sexrand = 4
		husbdolg = 1

		'<center><img src="images/img/hasb/d0.jpg"></center>'
		'Только <<$husName>> залез на вас собираясь войти, как кто-то стащил его с вас и вы увидели в комнате двух мужчин. Один стоял у кровати держа вашего мужа за волосы, второй чуть в стороне с пистолетом в руке.'
		'"Ну что придурок платить будешь?" спросил тот что держал мужа.'
		'"Я же сказал, что все отдам, у меня сейчас нету денег, но через месяц я все отдам" ответил <<$husName>>.'
		'"Об этом надо было думать когда ты за стол садился, а деньги нам нужны сейчас" продолжал бандит.'
		'"Но, где я вам их сейчас возьму, рожу что ли?" взмолился <<$husName>>.'
		'"Не родишь сам, мы их сейчас у твоей сучки во всех дырках поищем, и с тебя уже 100000" сказал бандит.'

		if harakHusb < 2:
			'"Не надо её трогать, я вам все принесу, завтра все верну" сказал <<$husName>>.'
			'"Ну раз завтра, вот завтра и не тронем, а сегодня поищем, да красавица, открывай свой рот, да по шире что-бы сразу два вместилось" заржал бандит.'
		elseif harakHusb = 2:
			'"Не пацаны, ну за неё не грех и часть долга списать, смотри какая краля." сказал <<$husName>>.'

			if vnesh < 15:'"Да ну нах, какая краля, ей только полы мыть в общественном сортире" ответил бандит.'
			if vnesh >= 15 and vnesh < 30:'"Ну да ничего такая, можно попользовать, но на скидку не тянет" ответил бандит.'
			if vnesh > 30:'"Да хорошая чикса, но про скидку забудь, считай это платой за наши издержки" рассмеялся бандит.'
		end

		if vnesh >= 15:'"А женушка у тебя хороша, сейчас мы её опробуем и наверно заберем с собой пусть должок твой отработает, ну а как отработает вернем, если конечно захочет возвращаться" рассмеялся бандит.'

		if money+stolmoney+karta >= 100000:
			act 'Предложить деньги':
				cla
				if money >= 100000 and husbdolg = 1:money -= 100000 & husbdolg = 2
				if money+stolmoney >= 100000 and husbdolg = 1:money = money+stolmoney-100000 & husbdolg = 2 & stolmoney = 0
				if money+stolmoney+karta >= 100000 and husbdolg = 1:money = money+stolmoney+karta-100000 & husbdolg = 2 & stolmoney = 0 & karta = 0

				'"У меня есть деньги я отдам долг" сказали вы.'
				'"Молодец, но за издержки заплатить все равно придется" ответил бандит ухмыляясь.'

				act 'Открыть рот':gt'husbSex','dolg'
			end
		end

		act 'Открыть рот':gt'husbSex','dolg'
	end

	if sexrand = 0:
		'"Светик, сосни у меня сочного хуйца."'

		act 'Сделать минет':
			cla
			husband += 1
			gt'husbsex','minet'
		end
		act 'Я не хочу, давай по другому':husband -= 1 & gt'husbsex','variant'
	elseif sexrand = 1:
		'"Светик, подставляй попку."'

		act 'Анальный секс':
			cla
			husband += 2
			gt'husbsex','anal'
		end
		act 'Да ну нафиг, давай по другому':husband -= 1 & gt'husbsex','variant'
	elseif sexrand = 2:
		'"Ложись Светик и раздвинь ляшки."'

		act 'Раздвинуть ноги':gt'husbsex','miss'
		act 'Я не хочу, давай по другому':husband -= 1 & gt'husbsex','variant'
	elseif sexrand = 3:
		'"Вставай рачком Светик."'

		act 'Встать раком':gt'husbsex','dog'
		act 'Я не хочу, давай по другому':husband -= 1 & gt'husbsex','variant'
	end
end

if $ARGS[0] = 'dolg':
	cla
	*clr
	minut += 30
	guy += 2
	sex += 1
	anal += 1
	bj += 1

	'<center><img src="images/img/hasb/d1.jpg"></center>'
	'Бандиты достали свои члены и попытались втолкнуть вам в рот оба сразу, вы старались открыть рот как можно шире, но второй член так толком и не влез, в итоге вы плюнули на это дело и стали сосать их поочередно. Вскоре им надоело и швырну вас на кровать она стали рассуждать кто куда вам первый засунет.'

	act 'Далее':
		cla
		*clr
		'<center><img src="images/img/hasb/d2.jpg"></center>'
		'Они начали вертеть вас как им вздумается, каждый по несколько раз перепробовал все ваши дырочки. Периодически вы поглядывали в сторону мужа.'

		if harakHusb = 0 and izvratH = 0:'Он забился в угол и тихонько плакал, не смотря в вашу сторону.'
		if harakHusb = 0 and izvratH = 1:'Он забился в угол и тихонько плакал, украдкой поглядывая в вашу сторону, было видно, что он сильно возбужден.'
		if harakHusb = 1 and izvratH = 0:'Он стоял в стороне, отвернувшись к стене и не смотрел на вас.'
		if harakHusb = 1 and izvratH = 1:'Он стоял в стороне, и наблюдал за вами, было видно, что он сильно возбужден.'
		if harakHusb = 2 and izvratH = 0:'Он стоял в стороне и не глядя на вас громко матерился, проклиная то карты, то себя, то называя вас похотливой шлюхой.'
		if harakHusb = 2 and izvratH = 1:
			cla
			*clr
			picrand = 18

			'<center><img src="images/img/hasb/d2.jpg"></center>'
			'Они начали вертеть вас как им вздумается, каждый по несколько раз перепробовал все ваши дырочки. Периодически вы поглядывали в сторону мужа.'
			'Он стоял в стороне, и смотрел на вас, дроча себе член. В итоге он не вытерпел и подошел к кровати, ну вы как хотите, но это моя сучка и я её тоже трахну. Бандиты возражать не стали.'

			act 'Далее':gt'paysex','var'
		end

		act 'Закончить':gt'husbSex','dolgend'
	end
end

if $ARGS[0] = 'dolgend':
	cla
	*clr
	cumpussy = 0
	cumbelly = 0
	cumass = 0
	cumanus = 0
	cumlip = 0
	cumface = 0
	cumanus = 0
	gs'stat'

	'<center><img src="images/img/hasb/d3.jpg"></center>'
	'Когда все кончилось, они отвели вас в ванную и приказали привести себя в порядок, затем снова привели в спальню.'

	if vnesh >= 15 and husbdolg = 1:
		cla
		husbdolg = 2
		workDolg += 100000

		'"Ну что красотка, поехали c нами будешь долги мужа натурой отрабатывать" сказал один ухмыляясь.'

		act 'Ехать':
			cla
			leghair = -5
			lobok = -5
			sweat = -3
			hapri = 1
			mop = 3

			'Вы приехали в сауну. Бандиты вас оттащили в какую то комнату и начали объяснять. "Ты будешь жить здесь и работать, до тех пор пока не расплатишься с долгами. Все понятно? Попробуешь бузить или сбежать, все, мы тебе пулю в башку всадим и в лесу закопаем, усекла?"'
			'Вы испуганно кивнули, поняв что они не шутят.'

			act 'Оглядеться':gt'saunaroom'
		end

		exit
	elseif vnesh >= 15 and husbdolg = 2:
		cla
		husbdolg = 3
		saunaWorkWhore = 1

		'"Ну что красотка, хорошо отработала, будет желание еще поработать приходи в сауну, там для тебя работа найдется" сказал один ухмыляясь.'

		act 'Закончить':gt'bedr'
	end

	if vnesh < 15:'"Как кикимору не расчесывай, она кикиморой останется" сказал один, глядя на вас. "Ладно пошли отсюда, а ты чтобы деньги завтра принес, а то завтра мы тебя ебать будем." сказал второй вашему мужу.'

	act 'Закончить':gt'bedr'
end

if $ARGS[0] = 'variant':
	'<<$husName>> смотрит на вас и ждет что вы скажете'

	act 'Раздвинуть ноги':gt'husbsex','miss'
	act 'Встать раком':gt'husbsex','dog'
	act 'Анальный секс':gt'husbsex','anal'
	act 'Сделать минет':gt'husbsex','minet'
	act 'Подрочить ему':gt'husbsex','hand'

	if kundayH ! day:
		act 'Куни':gt'husbsex','kuni'
	end

	if DOM > 0 and harakHusb = 0 and izvratH = 1 and strapon > 0:
		act 'Отстрапонить':gt'husbsex','strapon'
	end
end

if $ARGS[0] = 'minet':
	*clr
	gs'brosok'
	bj = bj + 1
	minut = minut + 30

	'<center><img src="images/picV/bj.jpg"></center>'
	'Муж своим <<husDick>> сантиметровым членом провел вам по губам.'
	if bj = 1:'Вы подумали "Черт, докатился же я, сижу перед мужиком, а он мне в рот хером тычет."'

	gs'oral','start'

	act 'Продолжать сосать':
		cla
		*clr
		swallow = swallow + 1
		cumlip = cumlip + 1
		husband += 1

		'<center><img src="images/picV/swallow.jpg"></center>'
		'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$husName>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

		act 'Уйти':
			cla
			gt'vanr'
		end
	end
	act 'Вынуть изо рта':
		cla
		*clr

		tiprand = RAND(0,1)
		if tiprand = 0:
			facial = facial + 1
			cumface = cumface + 1
			husband += 1

			'<center><img src="images/picV/facial.jpg"></center>'
			'Вы вынули член и в этот момент <<$husName>> разрядился прямо вам на лицо, покрывая его теплой и липкой спермой.'
		elseif tiprand = 1:
			husband -= 1

			'<center><img src="images/picV/hand.jpg"></center>'
			'Вы вынули член изо рта и <<$husName>> кончил вам в ладонь.'
		end

		act 'Уйти':
			cla
			gt'vanr'
		end
	end
end

if $ARGS[0] = 'hand':
	*clr
	gs'brosok'
	DOM = DOM + 1
	hj = hj + 1
	minut = minut + 30
	horny = horny + DOM

	'<center><img src="images/picV/hand1.jpg"></center>'
	'Вы достали его <<husDick>> сантиметровый член и начали ласкать руками его руками, двигая кожицу по багровой головке.'
	'Вскоре от ваших умелых движений муж кончил вам в ладошки, покрыв их теплой и вязкой спермой.'

	act 'Идти в ванную':
		cla
		gt'vanr'
	end
end

if $ARGS[0] = 'kuni':
	*clr
	kunday = day
	gs'brosok'
	DOM = DOM + 1
	kuni = kuni + 1
	minut = minut + 30
	horny = horny + DOM + (silaVag*2 + 5)

	'<center><img src="images/picV/kuni.jpg"></center>'
	'Вы разделись и легли на кровать, сказав что бы парень поласкал вас своим язычком.'
	'<<$husName>> лег между ваших ног и начал работать язычком по вашей киске.'

	if horny >= 90:
		horny = 0
		manna = manna + 15
		willpower = willpower + 15
		orgasm = orgasm + 1

		'От умелых действий парня вас охватил оргазм.'
	else
		'Действия мужа хоть и были возбуждающие, но они начали вас утомлять.'
	end

	act 'Дальше':
		cla
		gt'husbsex','variant'
	end
end

if $ARGS[0] = 'strapon':
	*clr
	gs'brosok'
	DOM = DOM + 5
	pegging = pegging + 1
	minut = minut + 30
	horny = horny + DOM

	'<center><img src="images/picV/pegging.jpg"></center>'
	'Вы достали из ящичка страпон и одели его. <<$husName>> встал раком на кровати.'
	'Смазали лубрикантом анус мужа и воткнули в него страпон. Пока вы трахали его задницу он стонал и наконец кончил. Вы вынули страпон из него и пошли в ванную.'

	act 'Идти в ванную':
		cla
		gt'vanr'
	end
end

if $ARGS[0] = 'anal':
	*clr
	gs'brosok'
	anal = anal + 1
	minut = minut + 30

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0
		cumass += 1
		minut = minut + 3
		cumanus = cumanus + 1
		if anus < husDick:anus = anus + 1
		horny = horny + ((anus-husDick)*3)

		'<center><img src="images/picV/dog2.jpg"></center>'
		if anus < 16:'<<$husName>> вытащил из вашей ещё узкой и тугой попки пробку,'
		if anus >= 16:'<<$husName>> вытащил из вашей разгорячённой сочащейся соками попки пробку, и вы почувствовали как твердый член уперся в вашу дырочку.'

		if anus + analpluginbonus < husDick:
			'Вы взвизгнули и закусили губы от резкой боли когда его <<husDick>> сантиметровый член раздвинув вашу попку вошел в вас.'
		elseif anus + analpluginbonus >= husDick:
			'Вы застонали от чувства переполненности когда его <<husDick>> сантиметровый член раздвинув вашу попку вошел в вас.'
		end

		'Наконец <<$husName>> схватил вас крепче за зад и вогнав в вашу ноющую попку член до самых яиц кончил вам внутрь.'

		if horny < 1:
			horny = 1
		elseif horny >= 100:
			horny = 1
			orgasm = orgasm + 1
			analorgasm = analorgasm+1

			'В анусе полыхал пожар и волны удовольствия охватили тело, вы стонали и сами насаживались попкой на член.'
		end

		act 'Идти в ванную':
			cla
			gt'vanr'
		end
	end

	if husDick < anus:anus = anus + 1
	'<center><img src="images/picV/dog2.jpg"></center>'

	if lubri = 0:
		lubonus = 2
		'Лубриканта у вас нет и <<$husName>> плюнув на пальцы стал смазывать слюной вашу попку.'
	elseif lubri > 0:
		lubri = lubri - 1
		lubonus = 10

		'Вы достали из ящика тюбик с лубрикантом и передали его парню, он выдавил немного на ладонь и смазал ваш анус.'
	end

	'<<$husName>> положил вас животом на кровать и раздвинув ваши ягодица стал массировать ваше анальное отверстие пальцами, сначала одним, потом двумя.'
	if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
	if anus >= 10:'Потом парень ввел вам три пальца и начал растягивать ваш анус.'
	'<<$husName>> вытащил пальцы из вашей попы и вы почувствовали как его твердый член уперся в вашу дырочку.'

	if anus + lubonus < husDick:
		'Вы взвизгнули и закусили губы от резкой боли когда его член раздвинув вашу попку вошел в вас.'
	elseif anus + lubonus >= husDick:
		'Вы застонали от чувства переполненности когда его член раздвинув вашу попку вошел в вас.'
	end

	'<<$husName>> замер на минуту давая вашей попе приспособится к торчащему в ней члену, после чего начал водить им все настойчивей.'

	if anus + lubonus + 2 < husDick:
		if mop > 1:mop = 0
		'Вы заплакали и вцепились зубами в подушку когда <<husDick>> сантиметровый член начал трахать вашу попу на полную силу.'
	elseif anus + lubonus + 2 >= husDick:
		'Вы начали ритмично стонать в такт движениям члена внутри вас.'
	end

	'Наконец <<$husName>> схватил вас крепче за зад и вогнав в вашу ноющую попку член до самых яиц кончил вам внутрь.'

	if klismaday ! day:
		husband -= 1

		'<<$husName>> достал член из вашей попки и увидев на своем хую дерьмо сказал, "Черт подери. Светик мой жопу перед сексом."'
	elseif klismaday = day:
		husband += 5

		'<<$husName>> достал член из вас и поцеловав вас пошел в ванную.'
	end

	if anus < husDick:anus = anus + 1

	act 'Идти в ванную':
		cla
		lubonus = 0
		gt'vanr'
	end
end

if $ARGS[0] = 'miss':
	*clr
	husband += 1
	gs'brosok'
	sex = sex + 1
	minut = minut + 30
	pose = 0
	$nameV = $husName
	dick = husDick
	silavag = silavagH

	'<center><img src="images/picV/vag.jpg"></center>'
	'<<$husName>> раздвинул ваши ноги и стал ласкать пальцами киску.'

	gs'orgazm','start'

	act 'Идти в ванную':
		cla
		gt'vanr'
	end
end

if $ARGS[0] = 'dog':
	*clr
	husband += 1
	gs'brosok'
	sex = sex + 1
	minut = minut + 30
	pose = 1
	$nameV = $husName
	dick = husDick
	silavag = silavagH

	'<center><img src="images/picV/dog1.jpg"></center>'
	'<<$husName>> поставил вас раком и раздвинул ваши булки прежде чем войти в вас.'

	gs'orgazm','start'

	act 'Идти в ванную':
		cla
		gt'vanr'
	end
end
--- husbSex ---------------------------------

