# sexm
if $ARGS[0] = 'start':
	cla
	*clr

	if love = 0 and bfa >= 100 and daya >= 30 and husband = 0:
		act 'Поговорить о сожительстве':gt'love','start'
	end

	'<<$boyA>> проводил вас до подъезда.'

	if harakBoyA = 2:'Светик, может пригласишь меня к себе на чашечку кофе?'
	if harakBoyA = 1:'Дай я тебя поцелую, любимая.'
	if harakBoyA = 0:'Пока Света, я буду ждать момента когда мы снова увидимся и буду скучать по тебе.'

	act 'Поцеловать на прощанье':
		cla

		if boyonceA = 0:
			if harakBoyA = 2:
				if daya < 3:
					bfa = bfa + 1

					'<<$boyA>> целует вас в губы на прощанье и мнет руками вашу попу.'
				elseif daya >= 3:
					bfa = bfa - 2

					'<<$boyA>> целует вас в губы и оторвавшись от поцелуя раздраженно бубнит "Ладно, пока, динама."'
				end
			elseif harakBoyA = 1:
				if daya < 10:
					bfa = bfa + 2

					'<<$boyA>> целует вас в губы на прощанье крепко обнимая вас за талию.'
				elseif daya >= 10:
					bfa = bfa - 2

					'<<$boyA>> целует вас в губы на прощанье и на прощание говорит "Долго мы будем как пионеры за ручки держаться?".'
				end
			elseif harakBoyA = 0:
				if daya < 20:
					bfa = bfa + 3

					'<<$boyA>> целует вас в губы на прощанье и нежно обнимает вас за талию.'
				elseif daya >= 20:
					bfa = bfa - 1

					'<<$boyA>> целует вас в губы на прощанье и оторвавшись от поцелуя смотрит на вас большими печальными глазами.'
				end
			end
		elseif boyonceA = 1:
			if harakBoyA = 2:
				if daya < 3:
					bfa = bfa - 2

					'<<$boyA>> целует вас в губы на прощанье и мнет руками вашу попу.'
				elseif daya >= 3:
					bfa = bfa - 3

					'<<$boyA>> целует вас в губы и оторвавшись от поцелуя раздраженно бубнит "А что ты сегодня то секса не хочешь?"'
				end
			elseif harakBoyA = 1:
				if daya < 10:
					bfa = bfa - 1

					'<<$boyA>> целует вас в губы на прощанье крепко обнимая вас за талию.'
				elseif daya >= 10:
					bfa = bfa - 2

					'<<$boyA>> целует вас в губы на прощанье и на прощание говорит "Ладно, проживу денек и без секса.".'
				end
			elseif harakBoyA = 0:
				if daya < 20:
					bfa = bfa + 1

					'<<$boyA>> целует вас в губы на прощанье и нежно обнимает вас за талию.'
				elseif daya >= 20:
					bfa = bfa - 1

					'<<$boyA>> целует вас в губы на прощанье и оторвавшись от поцелуя смотрит на вас большими печальными глазами.'
				end
			end
		end

		act 'Зайти в квартиру':gt'street'
	end
	act 'Попрощаться':
		cla

		if boyonceA = 0:
			if harakBoyA = 2:
				if daya < 3:
					bfa = bfa - 1

					'<<$boyA>> слегка раздражен "Не строй из себя святую невинность."'
				elseif daya >= 3:
					bfa = bfa - 3

					'<<$boyA>> сильно раздражен "Значит даже поцеловать не хочешь? Ну ну."'
				end
			elseif harakBoyA = 1:
				if daya < 10:
					bfa = bfa + 1

					'<<$boyA>> помахал рукой и пошел из подъезда.'
				elseif daya >= 10:
					bfa = bfa - 2

					'<<$boyA>> раздраженно махнул вам рукой на прощанье и быстро вышел из подъезда.'
				end
			elseif harakBoyA = 0:
				if daya < 20:
					bfa = bfa + 2

					'<<$boyA>> машет вам на прощание рукой и улыбается.'
				elseif daya >= 20:
					bfa = bfa - 1

					'<<$boyA>> машет вам на прощание рукой и смотрит на вас большими печальными глазами.'
				end
			end
		elseif boyonceA = 1:
			if harakBoyA = 2:
				if daya < 3:
					bfa = bfa - 2

					'<<$boyA>> раздражен "Ну какого хера ты из себя целку ломаешь?"'
				elseif daya >= 3:
					bfa = bfa - 4

					'<<$boyA>> в ярости "Брезгуешь?"'
				end
			elseif harakBoyA = 1:
				if daya < 10:
					bfa = bfa - 1

					'<<$boyA>> помахал рукой и пошел из подъезда.'
				elseif daya >= 10:
					bfa = bfa - 3

					'<<$boyA>> раздраженно махнул вам рукой на прощанье и быстро вышел из подъезда.'
				end
			elseif harakBoyA = 0:
				if daya < 20:
					bfa = bfa + 1

					'<<$boyA>> машет вам на прощание рукой и улыбается.'
				elseif daya >= 20:
					bfa = bfa - 2

					'<<$boyA>> машет вам на прощание рукой и смотрит на вас большими печальными глазами.'
				end
			end
		end

		act 'Зайти в квартиру':gt'street'
	end

	if husband = 0:
		act 'Пригласить к себе':
			cla
			gt'sexm','room'
		end
	elseif husband > 0:
		if week < 6 and hour < 17 and hour > 7:
			act 'Пригласить к себе':gt'sexm','room'
		elseif week > 5 or week < 6 and hour > 16:
			act 'Сказать что дома муж и к вам нельзя':
				cla

				if harakBoyA = 0:
					bfA = 0

					'"Что? Ты замужем, ты меня обманывала, а я тебя так любил, прощай!" прокричал он и убежал в слезах.'

					act 'Зайти в квартиру':gt'korr'
				elseif harakBoyA = 1:
					'"Ну тогда, до встречи, я тебе позвоню" сказал он и спокойно ушел.'

					act 'Зайти в квартиру':gt'korr'
				elseif harakBoyA = 2:
					'"Муж не стенка, может и подвинуться, а может поднимемся немного выше, к примеру зайдем на чердак?" сказал он, довольно ухмыляясь.'

					act 'Отказаться':bfa -= 1 & gt'korr'
					act 'Согласиться':
						bfa += 1
						boycherdaksex = 1
						gt'sexm','room'
					end
				end
			end
		end
	end
end

!harakHusb > 0

if $ARGS[0] = 'room':
	clr
	minut += 20
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	if boycherdaksex = 1:
		'<center><img src="images/etogame/cherdak.jpg"></center>'
		'Вы с парнем поднялись на чердак.'
	elseif boycherdaksex = 0:
		'<center><b><font color = maroon>Спальня</font></b></center>'
		if rembedr = 0:'<center><img src="images/pic/bedr.jpg"></center>'
		if rembedr = 1:'<center><img src="images/pic/bedr2.jpg"></center>'
		'Вы разулись и прошли с парнем в спальную комнату.'
	end

	if harakBoyA = 2:
		'<<$boyA>> хватает вас и грубо прижимает вас к себе начиная страстно вас целовать и пытаться стащить с вас одежду.'
		'Наконец то <<$boyA>> одержал победу в неравном бою с бретельками вашего лифчика и раздел вас.'

		if boyonceA = 1:
			sexrand = RAND(0,3)
			if sexrand = 0:
				'"Светик, сосни у меня сочного хуйца."'

				act 'Сделать минет':
					cla
					bfa = bfa + 3
					gt'sexm','minet'
				end
				act 'Я не хочу, давай по другому':gt'sexm','variant'
			elseif sexrand = 1:
				'"Светик, подставляй попку."'

				act 'Анальный секс':
					cla
					bfa = bfa + 5
					gt'sexm','anal'
				end
				act 'Да ну нафиг, давай по другому':gt'sexm','variant'
			elseif sexrand = 2:
				'"Ложись Светик и раздвинь ляжки."'

				act 'Раздвинуть ноги':gt'sexm','miss'
				act 'Я не хочу, давай по другому':gt'sexm','variant'
			elseif sexrand = 3:
				'"Вставай рачком Светик."'

				act 'Встать раком':gt'sexm','dog'
				act 'Я не хочу, давай по другому':gt'sexm','variant'
			end
		elseif boyonceA = 0:
			'<<$boyA>> повалил вас на кровать и впился губами в вашу грудь.'

			act 'Секс':gt'sexm','miss'
			act 'Я не хочу, давай по другому':gt'sexm','variant'
		end
	elseif harakBoyA = 1:
		'<<$boyA>> нежно обнимает вас и прижимает к себе.'
		'Вы плавно раздеваетесь и <<$boyA>> говорит вам, как ты хочешь, любимая.'
		act 'Я хочу так, как хочешь ты':
			cla

			if boyonceA = 1:
				sexrand = RAND(0,3)
				if sexrand = 0:
					'"Светуль, пососи у меня."'

					act 'Сделать минет':
						cla
						bfa = bfa + 2
						gt'sexm','minet'
					end
					act 'Я не хочу, давай по другому':gt'sexm','variant'
				elseif sexrand = 1:
					'"Светуль, я хочу тебя в попку."'

					act 'Анальный секс':
						cla
						bfa = bfa + 4
						gt'sexm','anal'
					end
					act 'Я не хочу, давай по другому':gt'sexm','variant'
				elseif sexrand = 2:
					'"Светуль, я хочу тебя."'

					act 'Раздвинуть ноги':gt'sexm','miss'
					act 'Я не хочу, давай по другому':gt'sexm','variant'
				elseif sexrand = 3:
					'"Светуль, встань на четвереньки."'

					act 'Встать раком':gt'sexm','dog'
					act 'Я не хочу, давай по другому':gt'sexm','variant'
				end
			elseif boyonceA = 0:
				'<<$boyA>> повалил вас на кровать и впился губами в вашу грудь.'

				act 'Секс':gt'sexm','miss'
				act 'Я не хочу, давай по другому':gt'sexm','variant'
			end
		end
		act 'Предложить варианты':gt'sexm','variant'
	elseif harakBoyA = 0:
		'<<$boyA>> стесняется и не знает, что ему делать.'

		act 'Предложить варианты':gt'sexm','variant'
	end
end

if $ARGS[0] = 'variant':
	if harakBoyA = 0:bfa = bfa + 1
	if harakBoyA = 2:bfa = bfa - 1

	'<<$boyA>> смотрит на вас и ждет что вы скажете'

	act 'Раздвинуть ноги':gt'sexm','miss'
	act 'Встать раком':gt'sexm','dog'
	act 'Анальный секс':gt'sexm','anal'
	act 'Сделать минет':gt'sexm','minet'
	act 'Подрочить ему':gt'sexm','hand'

	if kunday ! day:
		act 'Куни':gt'sexm','kuni'
	end

	if DOM > 0 and boyonceA = 1 and harakBoyA = 0 and izvratA = 1 and strapon > 0:
		act 'Отстрапонить':gt'sexm','strapon'
	end
end

if $ARGS[0] = 'minet':
	*clr
	popolaini = 1
	bfA = bfA + 1
	bj = bj + 1
	bja += 1
	dick = dickA
	harakBoy = harakBoyA
	minut = minut + 30
	$nameV = $boyA
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/bj.jpg"></center>'
	'<<$boyA>> своим членом провел вам по губам.'
	if bj = 1:'Вы подумали "Черт, докатился же я, сижу перед мужиком, а он мне в рот хером тычет."'

	gs'oral','start'

	act 'Продолжать сосать':
		cla
		*clr
		swallow = swallow + 1
		cumlip = cumlip + 1
		bfa = bfa + 3

		'<center><img src="images/picV/swallow.jpg"></center>'
		'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$boyA>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

		act 'Уйти':gt'sexm','endsex'
	end
	act 'Вынуть изо рта':
		cla
		*clr

		if harakBoyA = 0:
			'<center><img src="images/picV/hand.jpg"></center>'
			'Вы вынули член изо рта и <<$boyA>> кончил вам в ладонь.'
		elseif harakBoyA = 1:
			tiprand = RAND(0,3)
			if tiprand < 3:
				'<center><img src="images/picV/hand.jpg"></center>'
				'Вы вынули член изо рта и <<$boyA>> кончил вам в ладонь.'
			elseif tiprand = 3:
				facial = facial + 1
				cumface = cumface + 1
				bfa = bfa + 1

				'<center><img src="images/picV/facial.jpg"></center>'
				'Вы вынули член и в этот момент <<$boyA>> разрядился прямо вам на лицо, покрывая его теплой и липкой спермой.'
			end
		elseif harakBoyA = 2:
			facial = facial + 1
			cumface = cumface + 1
			bfa = bfa + 1

			'<center><img src="images/picV/facial.jpg"></center>'
			'<<$boyA>> удерживая вас за волосы вынул член из вашего рта и кончил вам на лицо, покрывая его теплой и липкой спермой.'
		end

		act 'Уйти':gt'sexm','endsex'
	end
end

if $ARGS[0] = 'hand':
	*clr
	popolaini = 1
	DOM = DOM + 1
	hj = hj + 1
	hja += 1
	minut = minut + 30
	horny = horny + DOM
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/hand1.jpg"></center>'
	'Вы достали его <<dick>> сантиметровый член и начали ласкать руками его руками, двигая кожицу по багровой головке.'
	'Вскоре от ваших умелых движений парень кончил вам в ладошки, покрыв их теплой и вязкой спермой.'

	if harakBoyA = 0:bfA = bfA - 1
	if harakBoyA = 1:bfA = bfA - 5
	if harakBoyA = 2:bfA = bfA - 10

	act 'Вытереть руки и проводить парня до дверей':gt'sexm','endsex'
end

if $ARGS[0] = 'kuni':
	*clr
	kunday = day
	DOM = DOM + 1
	kuni = kuni + 1
	minut = minut + 30
	horny = horny + DOM + (silaVag*2 + 5)
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/kuni.jpg"></center>'
	'Вы разделись и легли на кровать, сказав что бы парень поласкал вас своим язычком.'
	'<<$boyA>> лег между ваших ног и начал работать язычком по вашей киске.'

	if harakBoyA = 0:bfA = bfA - 1
	if harakBoyA = 1:bfA = bfA - 5
	if harakBoyA = 2:bfA = bfA - 10

	if horny >= 90:
		horny = 0
		manna = manna + 15
		willpower = willpower + 15
		orgasm = orgasm + 1

		'От умелых действий парня вас охватил оргазм.'
	else
		'Действия парня хоть и были возбуждающие, но они начали вас утомлять.'
	end

	act 'Дальше':
		cla
		if husband > 0 and hour < 17 and hour > 7 and boycherdaksex = 0:popolaini = 2 & gt'sexm','popala'
		gt'sexm','variant'
	end
end

if $ARGS[0] = 'strapon':
	*clr
	DOM = DOM + 5
	pegging = pegging + 1
	minut = minut + 30
	horny = horny + DOM
	bfA = bfA + 5
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/pegging.jpg"></center>'
	'Вы достали из ящичка страпон и одели его. <<$boyA>> встал раком на кровати.'
	'Смазали лубрикантом анус парня и воткнули в него страпон. Пока вы трахали его задницу он стонал и наконец кончил. Вы вынули страпон из него и пошли в ванную.'

	act 'Вытереть руки и проводить парня до дверей':
		cla
		gt'korr'
	end
end

if $ARGS[0] = 'anal':
	*clr
	popolaini = 3
	bfA = bfA + 1
	minut += 30
	anal = anal + 1
	anala += 1
	if dickA < anus:anus = anus + 1
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/dog2.jpg"></center>'

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0

		if anus < 16:
			'<<$boyA>> вытащил из вашей ещё узкой и тугой попки пробку, '
		elseif anus >= 16:
			'<<$boyA>> вытащил из вашей разгорячённой сочащейся соками попки пробку, '
		end

		'и вы почувствовали как твердый член уперся в вашу дырочку.'

		if anus + analpluginbonus < dick:
			'Вы взвизгнули и закусили губы от резкой боли когда его <<dickA>> сантиметровый член раздвинув вашу попку вошел в вас.'
		elseif anus + analpluginbonus >= dick:
			'Вы застонали от чувства переполненности когда его <<dickA>> сантиметровый член раздвинув вашу попку вошел в вас.'
		end

		'Наконец <<$boyA>> схватил вас крепче за зад и вогнав в вашу ноющую попку член до самых яиц кончил вам внутрь.'

		cumass += 1
		minut = minut + 3
		cumanus = cumanus + 1
		if anus < dickA:anus = anus + 1
		horny = horny + ((anus-dickA)*3)
		if horny < 1:horny = 1
		if horny >= 100:
			horny = 1
			orgasm = orgasm + 1
			analorgasm = analorgasm+1

			'В анусе полыхал пожар и волны удовольствия охватили тело, вы стонали и сами насаживались попкой на член.'
		end
		gs'stat'

		act 'Проводить до дверей':gt'sexm','endsex'
	else
		if lubri = 0:
			lubonus = 2

			'Лубриканта у вас нет и <<$boyA>> плюнув на пальцы стал смазывать слюной вашу попку.'
		elseif lubri > 0:
			lubri = lubri - 1
			lubonus = 10

			'Вы достали из ящика тюбик с лубрикантом и передали его парню, он выдавил немного на ладонь и смазал ваш анус.'
		end

		'<<$boyA>> положил вас животом на кровать и раздвинув ваши ягодица стал массировать ваше анальное отверстие пальцами, сначала одним, потом двумя.'
		if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
		if anus >= 10:'Потом парень ввел вам три пальца и начал растягивать ваш анус.'
		'<<$boyA>> вытащил пальцы из вашей попы и вы почувствовали как его твердый член уперся в вашу дырочку.'

		if anus + lubonus < dickA:
			'Вы взвизгнули и закусили губы от резкой боли когда его член раздвинув вашу попку вошел в вас.'
		elseif anus + lubonus >= dickA:
			'Вы застонали от чувства переполненности когда его член раздвинув вашу попку вошел в вас.'
		end

		'<<$boyA>> замер на минуту давая вашей попе приспособится к торчащему из нее члену, после чего начал водить им все настойчивей.'

		if anus + lubonus + 2 < dickA:
			if mop > 1:mop = 0

			'Вы заплакали и вцепились зубами в подушку когда <<dickA>> сантиметровый член начал трахать вашу попу на полную силу.'
		elseif anus + lubonus + 2 >= dickA:
			'Вы начали ритмично стонать в такт движениям члена внутри вас.'
		end

		'Наконец <<$boyA>> схватил вас крепче за зад и вогнав в вашу ноющую попку член до самых яиц кончил вам внутрь.'

		if klismaday ! day:
			bfA = bfA - 8

			'<<$boyA>> достал член из вашей попки и увидев на своем хую дерьмо сказал, "Обана, Чарли и шоколадная фабрика, детка, перед аналом клизму надо делать, а то не гигиенично глину хуем месить."'
		elseif klismaday = day:
			bfA = bfA + 5
			cumanus = cumanus + 1
			if anus < dickA:anus = anus + 1
			horny = horny + ((anus-dickA)*3)
			if horny< 1:horny = 1
			if horny >= 100:
				horny = 1
				orgasm = orgasm + 1
				analorgasm = analorgasm+1
				'В анусе полыхал пожар и волны удовольствия охватили тело, вы стонали и сами насаживались попкой на член.'
			end

			'<<$boyA>> достал член из вас и поцеловав вас пошел в ванную.'
		end

		if anus < dick:anus = anus + 1
		gs'stat'

		act 'Проводить до дверей':lubonus = 0 & gt'sexm','endsex'
	end
end

if $ARGS[0] = 'miss':
	*clr
	popolaini = 3
	bfA = bfA + 1
	sex = sex + 1
	sexa += 1
	minut = minut + 30
	pose = 0
	$nameV = $boyA
	dick = dickA
	silavag = silavagA
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/vag.jpg"></center>'
	'<<$boyA>> раздвинул ваши ноги и стал ласкать пальцами киску.'

	gs'orgazm','start'

	act 'Проводить до дверей':gt'sexm','endsex'
end

if $ARGS[0] = 'dog':
	*clr
	popolaini = 3
	bfA = bfA + 1
	sex = sex + 1
	sexa += 1
	minut = minut + 30
	pose = 1
	$nameV = $boyA
	dick = dickA
	silavag = silavagA
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/dog1.jpg"></center>'
	'<<$boyA>> поставил вас раком и раздвинул ваши булки прежде чем войти в вас.'

	gs'orgazm','start'

	act 'Проводить до дверей':gt'sexm','endsex'
end

if $ARGS[0] = 'startPod':
	podrand = RAND(0,1)
	if podrand = 0:
		'<<$boyA>> прошептал вам, возьми в рот.'

		act 'Отвали!':
			cla
			DOM = DOM + 1
			bfA = 0
			gt'street'
		end
		act 'Встать на корточки':gt'sexm','blow'
	elseif podrand = 1:
		'<<$boyA>> начал сдирать с вас одежду.'

		act 'Отвали!':
			cla
			DOM = DOM + 1
			bfA = 0
			gt'street'
		end
		act 'Встать раком':gt'sexm','doggy'
	end
end

if $ARGS[0] = 'doggy':
	bfA = bfA + 1
	sex = sex + 1
	sexa += 1
	minut = minut + 30
	pose = 1
	$nameV = $boyA
	dick = dickA
	silavag = silavagA
	gs'brosok'
	gs'stat'

	'<center><img src="images/picV/dog.jpg"></center>'
	'<<$boyA>> поставил вас раком и раздвинул ваши булки прежде чем войти в вас.'

	gs'orgazm','start'

	act 'Поправить одежду и уйти':
		cla
		gt'street'
	end
end

if $ARGS[0] = 'blow':
	minut = minut + 20
	gs'stat'

	'Вы сели на корточки и <<$boyA>> достал свой член.'

	act 'Взять в рот':
		cla
		*clr
		bfA = bfA + 1
		bj = bj + 1
		bja += 1
		dick = dickA
		harakBoy = harakBoyA
		minut = minut + 30
		$nameV = $boyA
		gs'brosok'
		gs'stat'

		'<center><img src="images/picV/bj.jpg"></center>'
		'<<$boyA>> своим членом провел вам по губам.'
		if bj = 1:'Вы подумали "Черт, докатился же я, сижу перед мужиком, а он мне в рот хером тычет."'

		gs'oral','start'

		act 'Продолжать сосать':
			cla
			*clr
			swallow = swallow + 1
			cumlip = cumlip + 1

			'<center><img src="images/picV/swallow.jpg"></center>'
			'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$boyA>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

			act 'Уйти':
				cla
				gt'korr'
			end
		end
		act 'Вынуть изо рта':
			cla
			*clr

			if harakBoyA = 0:
				'<center><img src="images/picV/hand.jpg"></center>'
				'Вы вынули член изо рта и <<$boyA>> кончил вам в ладонь.'
			elseif harakBoyA = 1:
				tiprand = RAND(0,3)
				if tiprand < 3:
					'<center><img src="images/picV/hand.jpg"></center>'
					'Вы вынули член изо рта и <<$boyA>> кончил вам в ладонь.'
				elseif tiprand = 3:
					facial = facial + 1
					cumface = cumface + 1

					'<center><img src="images/picV/facial.jpg"></center>'
					'Вы вынули член и в этот момент <<$boyA>> разрядился прямо вам на лицо, покрывая его теплой и липкой спермой.'
				end
			elseif harakBoyA = 2:
				facial = facial + 1
				cumface = cumface + 1

				'<center><img src="images/picV/facial.jpg"></center>'
				'<<$boyA>> удерживая вас за волосы вынул член из вашего рта и кончил вам на лицо, покрывая его теплой и липкой спермой.'
			end

			act 'Уйти':
				cla
				gt'korr'
			end
		end
	end
	act 'Подрочить ему':
		cla
		*clr
		DOM = DOM + 1
		hj = hj + 1
		hja += 1
		minut = minut + 30
		horny = horny + DOM
		gs'brosok'
		gs'stat'

		'<center><img src="images/picV/hand1.jpg"></center>'
		'Вы достали его член и начали ласкать руками его руками.'
		'Вскоре от ваших умелых движений парень кончил вам в ладошки.'

		if harakBoyA = 0:bfA = bfA - 1
		if harakBoyA = 1:bfA = bfA - 5
		if harakBoyA = 2:bfA = bfA - 10

		act 'Вытереть руки и уйти':
			cla
			gt'korr'
		end
	end
end

if $ARGS[0] = 'gangrape':
	'Вы стали вырываться и один из парней ударил вас ладонью по щеке со словами "Заткнись шлюха и раздвигай ляжки! А то ебало сейчас разнесу!"'

	act 'Подчиниться':gt'sexm','gangbang'
	act 'Начать драку':
		cla
		$nameV = 'Пьяное мурло'
		!Статы
		strenV = 100
		speedV = 20
		agilV = 10
		reactV = 10
		vitalV = 50
		intelV = 10
		willV = 10
		!Навыки
		magikV = 100
		boxingV = 10
		shootV = 100
		!Параметры
		healthV = vitalV*10 + strenV*5
		mannaV = intelV*10 + magikV*10
		willpowerV = willV*10
		BonusAtakV = 0
		BonusDefV = 0
		!программа действий
		program = 0
		gangrapeFight = 1
		if spellavtoklon = 1:klon = 3
		if spellbefshild = 1:defence = 500
		gt'fight','start'
	end
end

if $ARGS[0] = 'gangbang':
	if izvrat = 1:
		bfA = bfA + 5
	else
		bfa = 0
	end

	minut = minut + 30
	gang = gang + 1
	guy = guy + 4
	bj += 4
	anal += 1
	sex += 1
	cumface = cumface + 1
	cumlip = cumlip + 1
	facial = facial + 1
	vagina = vagina + 1
	anus = anus + 1
	throat = throat + 1
	if mop > 1:mop = 0
	SUB = SUB + 3
	horny = horny + SUB*10
	gs'stat'

	'<center><img src="images/picV/gangbang.jpg"></center>'
	'Один из парней живет в этом подъезде и вас затащили в его квартиру, там сорвали с вас одежду.'
	'Парни разделись и поставили вас на колени подставив свои перцы для обслуживания. Вы послушно стали обрабатывать ртом и руками толстые члены как настоящая многостаночница.'
	'Один из парней лег на диван и схватив вас за талию подтянул к себе и насадил вашу киску на свой член, не успели вы опомнится как к вашим губам прижалось еще два мокрых от ваших слюней члена.'
	'Вы почувствовали как ваш анус смазывают чем то холодным и после этого туда начало входить что то большое и твердое.'

	act 'Стонать':
		cla
		*clr
		'<center><img src="images/picV/gangbang1.jpg"></center>'
		'Вы застонали когда вам в попку засадили толстый член и начали вас трахать во все дыры.'

		if anus >= 10:
			horny = horny + anus + SUB

			'Два члена долбят вас сзади, вы чувствуете как они трутся через тонкую перегородочку между полыхающим анусом и хлюпающей вагиной. Вы с удвоенным энтузиазмом обрабатываете два хуя своими опухшими от работы губами.'
		elseif anus < 10:
			horny = horny + (10 - anus)

			'Из ваших глаз капают слезы от жуткой боли, когда твердый член таранит вашу попку и трется через тонкую стеночку с другим членом в вашей киске.'
		end

		if horny >= 90:
			orgasm = orgasm + 1

			'Ощущения внизу живота начали нарастать и вскоре все ваше тело как будто пробило током, вы застонали от оргазма.'
		end

		'Кажется парни наигрались с вами и решили обкончать вам лицо. Вас сняли с членов и указали на пол.'

		act 'Встать на колени':
			cla
			*clr
			'<center><img src="images/picV/gangbang2.jpg"></center>'
			'Вы покорно встали на колени перед парнями, они окружили вас и начали кончать вам на лицо, покрывая его липкой, теплой и пахучей спермой.'
			'После того как парни иссякли они потеряли к вам интерес и стали собираться уходить.'

			act 'Уйти':
				cla
				gt'korr'
			end
		end
	end
end

if $ARGS[0] = 'popala':
	cla
	*clr

	if popolaini = 1:
		'<center><img src="images/img/hasb/p0.jpg"></center>'
		'Только вы собрались идти в ванну что бы умыться как на пороге появился ваш муж, застав вас стоящей на коленях всю в сперме перед опускающимся членом.'
	elseif popolaini = 2:
		'<center><img src="images/img/hasb/p5.jpg"></center>'
		'Только вы собрались сменить позу как в комнату входит муж.'
	end
!'
	if popolaini = 2:
		'<center><img src="images/img/hasb/p4.jpg"></center>'
		'Только вы вошли во вкус как в комнату входит муж.'
	end
'

	if harakHusb = 0:
		'"Дорогая что здесь происходит, ты что мне изменяешь" пролепетал <<$husName>> смотря на вас.'
		'"<<$husName>> это не то что ты думаешь, это всего лишь секс, никаких чувств, я люблю только тебя. Он для меня ничего не значит, иди ко мне я покажу тебе как сильно я тебя люблю." ответили вы, сами не понимая как вы можете нести такой бред.'

		if izvratH = 0:
			husbizvradd = 0
			husbharmin = 0
			husbandMark = 0
			husband = 0
			divorced += 1

			'"Нет, я ухожу, ты предала нашу любовь." пролепетал он и выбежал из комнаты почти рыдая.'

			if harakBoyA = 0:
				bfA = 0

				'"Так ты замужем, ты меня обманывала, а я тебя так любил, прощай!" прокричал ваш парень и убежал вслед за мужем.'

				act 'Уйти':gt'korr'
			elseif harakBoyA = 1:
				'"Ну ладно, я смотрю тебе сейчас не до меня, так что я пожалуй пойду, но если хочешь могу и остаться, утешить" сказал <<$boyA>>'

				act 'Пусть уходит':gt'korr'
				act 'Пусть останется':
					bfA += 1
					picrand = 83
					if popolaini = 3:picrand = 84
					xgt'sex','var'
				end
			elseif harakBoyA = 2:
				'"Вот это номер, ну да ладно клоун убежал, а я вновь готов, давай продолжим, пусть этот слюнтяй валит" сказал <<$boyA>>, явно собираясь продолжить вечер.'

				act 'Отказаться':bfA -= 1 & gt'korr'
				act 'Продолжать':
					bfA += 2
					picrand = 83
					if popolaini = 3:picrand = 84
					xgt'sex','var'
				end
			end
		elseif izvratH = 1:
			'"Ты правда только меня любишь." спросил <<$husName>>.'
			'"Да, только тебя, иди ко мне, я сделаю тебе все что делала ему, но это будет с любовью и ты поймешь в чем разница" ответили вы, не переставая поражаться как он верит в этот бред. <<$husName>> подошел к вам и вы расстегнув ему ширинку достали член.'

			if harakBoyA = 0:
				bfA = 0
				husbizvradd = 0
				husbharmin = 0
				husbandMark = 0
				husband = 0
				divorced += 1

				'"Так ты замужем, ты меня обманывала, а я тебя так любил, ты подлая обманщица, прощай!" прокричал ваш парень и выбежал из комнаты.'
				'"Он прав ты обманщица, и ты не достойна меня, ты падшая женщина, я больше не хочу тебя видеть" разрыдался ваш муж и выбежал в след за парнем.'

				act 'Уйти':gt'korr'
			elseif harakBoyA = 1:
				'<<$boyA>> стоял и смотрел как вы отсасываете мужу "Ну по моему она фальшивит, так тебе не сравнить, давай ты войдешь в неё, а я ей в рот дам вот тогда будет с чем сравнивать" сказал он.'
				'"А что давай." оживился <<$husName>> "Дорогая ложись на кровать"'

				act 'Лечь':
					cla
					*clr
					houseslut += 1

					'<center><img src="images/img/hasb/p1.jpg"></center>'
					'Вы легли на кровать и <<$husName>> вошел вам в вагину, а <<$boyA>> лег перед вами подставляя член ко рту. Вы старательно подмахивали мужу не забывая удовлетворять любовника ртом.'
					'"А может по другому попробуем, что бы так сказать проверить во всех позициях и быть уверенными до конца." вновь предложил <<$boyA>>, и муж согласился.'

					act 'Продолжать':
						bfA += 1
						if popolaini = 1:picrand = 40
						if popolaini = 2:picrand = 41
						if popolaini = 3:picrand = 42
						xgt'sexdvoe','var'
					end
				end
			elseif harakBoyA = 2:
				'"Вот это правильно трахни её в рот, а еще лучше поимей её в зад, а я буду её дрючить в рот, посмотришь как она задницей сможет проявить свою любовь, или нет" сказал <<$boyA>>, явно подначивая вашего мужа.'
				'"Да, давай на кровать, посмотрим как ты попкой будешь любить" сказал <<$husName>>.'

				act 'Лечь':
					cla
					*clr
					houseslut += 1

					'<center><img src="images/img/hasb/p2.jpg"></center>'
					'Вы легли на кровать и <<$husName>> вошел вам в анус, а <<$boyA>> лег перед вами подставляя член ко рту. Вы старательно подмахивали мужу стараясь надеть свою попку на его член по самый корень, не забывая при этом удовлетворять любовника ртом.'
					'"А теперь давай меняться, пусть проявит свою любовь к твоему члену, вынутому из её задницы, ртом." вновь предложил <<$boyA>>, и муж согласился.'

					act 'Продолжать':
						bfA += 1
						if popolaini = 2:picrand = 41
						if popolaini = 1:picrand = 40
						if popolaini = 3:picrand = 42
						xgt'sexdvoe','var'
					end
				end
			end
		end
	elseif harakHusb = 1:
		husbizvradd = 0
		husbharmin = 0
		husbandMark = 0
		husband = 0
		divorced += 1

		'"Это что за хрень здесь происходит" сказал <<$husName>> смотря на вас.'
		'"<<$husName>> это не то что ты думаешь, это всего лишь секс, никаких чувств, я люблю только тебя. Он для меня ничего не значит, иди ко мне я покажу тебе как сильно я тебя люблю." ответили вы, сами не понимая как вы можете нести такой бред.'

		if izvratH = 0:
			'"Ты совсем охренела потаскуха, какая любовь. ты трахаешься со всеми подряд, а меня видите ли она любит, иди ты лесом шлюха." сказал он и вышел из комнаты хлопнув дверью.'

			if harakBoyA = 0:
				bfA = 0

				'"Так ты замужем, ты меня обманывала, а я тебя так любил, прощай!" прокричал ваш парень и убежал из комнаты.'

				act 'Уйти':gt'korr'
			elseif harakBoyA = 1:
				'"Ну ладно, я смотрю тебе сейчас не до меня, так что я пожалуй пойду, но если хочешь могу и остаться, утешить" сказал <<$boyA>>'

				act 'Пусть уходит':gt'korr'
				act 'Пусть останется':
					bfA += 1
					picrand = 83
					if popolaini = 3:picrand = 84
					xgt'sex','var'
				end
			elseif harakBoyA = 2:
				'"Вот это номер, ну да ладно муженек свалил, а я вновь готов, давай продолжим, пусть этот рогоносец идет рогами косяки сшибает" сказал <<$boyA>>, явно собираясь продолжить вечер.'

				act 'Отказаться':bfA -= 1 & gt'korr'
				act 'Продолжать':
					bfA += 2
					picrand = 83
					if popolaini = 3:picrand = 84
					xgt'sex','var'
				end
			end
		elseif izvratH = 1:
			bfA = 0

			'"Ты сама то себя слышишь, какую чушь несешь" спросил <<$husName>>.'
			'"Прости" только и сказали вы, опустив глаза.'
			'<<$husName>> подошел к вам "Я сегодня уеду и подам на развод, но напоследок я тебе накажу" сказал он расстегивая ширинку и доставая член. "Ну чего замерла соси, блядь."'

			if harakBoyA = 0:
				act 'Взять в рот':
					cla
					*clr
					'<center><img src="images/img/hasb/p3.jpg"></center>'
					'"Так ты замужем, ты меня обманывала, а я тебя так любил, ты подлая обманщица, прощай!" прокричал ваш парень и выбежал из комнаты.'
					'<<$husName>> не обратил на него внимания, он вставил член вам в рот и держа вас за голову начал буквально трахать вас в рот с каждым толчком проталкивая его глубже. Вы судорожно хватали воздух, стараясь не задохнуться а он все продолжал, вдруг он сделал резкое движение и его член заскочил вам в горло, вы попытались отстраниться, но он обматерил вас велев терпеть. Он дал вам пару секунд привыкнуть к члену в глотке и начал трахать ваше горло, вам не хватало воздуха и вы стали судорожно бить его пытаясь освободиться, но <<$husName>> лишь крепче сжал вашу голову. Когда вы уже начали терять сознание, он наконец кончил, вы почувствовали как его сперма растекается по вашему горлу, сделав еще пару сильных толчков он отпустил вас и вы рухнули на пол откашливая сперму вперемешку с вашей слюной и хрипя глотали воздух. <<$husName>> посмотрел как вы корчитесь на полу, сплюнул на пол рядом с вами и вышел.'

					act 'Уйти':gt'korr'
				end
			elseif harakBoyA = 1:
				'<<$boyA>> стоял и смотрел как вы отсасываете мужу "Ну ладно я пожалуй пойду." сказал он.'
				'"Подожди, давай эту шлюху на двоих распишем" предложил ему <<$husName>>.'
				'"А что давай, я с ней все равно больше встречаться не намерен." ответил <<$boyA>>'

				act 'Лечь на кровать':
					cla
					*clr
					'<center><img src="images/img/hasb/p1.jpg"></center>'
					'Вы легли на кровать и <<$husName>> вошел вам в вагину, а <<$boyA>> лег перед вами подставляя член ко рту. Вы старательно подмахивали мужу не забывая удовлетворять любовника ртом.'
					'"А трахается он все таки классно" сказал муж.'
					'"Не могу не согласиться" поддержал <<$boyA>>'

					act 'Продолжать':
						if popolaini = 1:picrand = 40
						if popolaini = 2:picrand = 41
						if popolaini = 3:picrand = 42
						xgt'sexdvoe','var'
					end
				end
			elseif harakBoyA = 2:
				'"Вот это правильно таких блядей надо наказывать, если хочешь давай помогу, отимеем её вдвоем так что неделю сидеть не сможет" сказал <<$boyA>>, явно подначивая вашего мужа.'
				'"Да, давай накажем сучку, а потом пойдем в кабак отпразднуем мой развод и снимем еще пару сучек и их накажем, я проставляюсь" сказал <<$husName>>.'

				act 'Лечь на кровать':
					cla
					*clr
					'<center><img src="images/img/hasb/p2.jpg"></center>'
					'Вы легли на кровать и <<$husName>> вошел вам в анус, а <<$boyA>> лег перед вами подставляя член ко рту. Вы старательно подмахивали мужу стараясь надеть свою попку на его член по самый корень, не забывая при этом удовлетворять любовника ртом.'
					'"А жопой она все таки шикарно работает" сказал <<$husName>>.'
					'"Ага оставь и мне немного" ответил <<$boyA>>'

					act 'Продолжать':
						if popolaini = 1:picrand = 40
						if popolaini = 2:picrand = 41
						if popolaini = 3:picrand = 42
						xgt'sexdvoe','var'
					end
				end
			end
		end
	elseif harakHusb = 2:
		fingal += 1

		'"Ах ты блядь" успели вы расслышать перед тем как отлетели к стене от мощного удара в лицо.'

		if izvratH = 0:
			husbizvradd = 0
			husbharmin = 0
			husbandMark = 0
			husband = 0
			divorced += 1
			bfA = 0
			mop = 0
			minut += 120
			stolmoney = 0
			money = 0
			komp = 0

			'Лежа в углу вы видели как муж наносит удар за ударом по парню, а <<$boyA>> с трудом отбиваясь пытается выскочить в дверь, наконец ему это удается и он выбегает из квартиры сломя голову.'
			'<<$husName>> подходит к вам "Вот...тебе...шлюха...член...и в пизду...и в жопу...а вот и в рот." говорит он нанося сильный удар ногой в живот при каждом слове, на последнем слове, он бьет вас ногой в лицо и вы отключаетесь. Очнулись вы часа через два ни мужа ни его вещей в доме не было да и некоторых ваших тоже.'

			act 'Уйти':gt'korr'
		elseif izvratH = 1:
			bfA = 0
			houseslut += 1

			'"Ах ты блядь, я что разрешал тебе подставлять ему свои дырки" спросил <<$husName>>, "А ты мне теперь денег должен, за удовольствие надо платить, это моя шлюха" добавил он обращаясь к парню.'
			'"А теперь мы её вдвоем трахнем что-бы не повадно было." добавил он, поднимая вас с пола и швыряя на кровать.'

			if harakBoyA = 0:'<<$boyA>> попытался возразить, но увидев перекошенное яростью лицо вашего мужа согласился'
			if harakBoyA = 1:'<<$boyA>> молча согласился'
			if harakBoyA = 2:'<<$boyA>> с радостью согласился'

			act 'Продолжать':
				if popolaini = 1:picrand = 40
				if popolaini = 2:picrand = 41
				if popolaini = 3:picrand = 42
				xgt'sexdvoe','var'
			end
		end
	end
end

if $ARGS[0] = 'endsex':
	if husband > 0 and hour < 17 and hour > 7 and boycherdaksex = 0:gt'sexm','popala'
	boycherdaksex = 0
	gt'korr'
end
--- sexm ---------------------------------

