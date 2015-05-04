# BDsex
if $ARGS[0] = 'start':
	!выбор интеракций
	!gs'BDsex','start'
	minut += 3
	if NoGuy = 0:guy += 1
	horny += 10
	gs'stat'

	'<center><img src="images/picKav/petting.jpg"></center>'

	if harakBoy = 0:
		'<<$boy>> обнимает вас и нежно ласкает ваши груди.'

		act 'Полижи у меня':gt'BDsex','kuni'
		act 'Дрочить ему член':gt'BDsex','hj'
		act 'Взять в рот':gt'BDsex','minet'
		act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
		act 'Встать на четвереньки':gt'BDsex','sex2'
		act 'Анальный секс':gt'BDsex','anal2'
	elseif harakBoy = 1:
		'<<$boy>> вас и умело ласкает ваши груди.'

		brand = RAND(0,100)
		if brand < 70:
			'<<$boy>> обнимает вас и ласкает вашу киску своими пальцами.'

			trand = RAND(0,2)
			if trand < 2:
				'Он кладет вас на спину.'

				act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
			else
				'Он переворачивает вас на живот.'

				act 'Встать на четвереньки':gt'BDsex','sex2'
			end

			act 'Давай я пососу':gt'BDsex','minet'
		else
			'<<$boy>> малышка, поласкай меня ротиком.'

			act 'Дрочить ему член':gt'BDsex','hj'
			act 'Взять в рот':gt'BDsex','minet'
			act 'Я так не хочу. Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
		end
	elseif harakBoy = 2:
		'<<$boy>> обнимает вас и страстно ласкает ваши груди.'

		brand = RAND(0,100)
		if brand < 70:
			'<<$boy>> ласкает вашу киску своими пальцами.'

			trand = RAND(0,2)
			if trand < 2:
				'Он кладет вас на спину.'
				act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
			else
				'Он переворачивает вас на живот.'
				act 'Встать на четвереньки':gt'BDsex','sex2'
			end
		elseif brand >= 70 and brand < 90:
			'<<$boy>> берет вас за голову и тянет вас лицом к своему члену.'
			act 'Взять в рот':gt'BDsex','minet'
			if dom > 0:
				act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
				act 'Встать на четвереньки':gt'BDsex','sex2'
			end
		elseif brand >= 90:
			'<<$boy>> говорит вам что он хочет вас в попу.'

			act 'Анальный секс':gt'BDsex','anal2'

			if dom > 0:
				act 'Я так не хочу! Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
				act 'Я встану раком, но в попу не дам!':gt'BDsex','sex2'
				act 'Взять в рот':gt'BDsex','minet'
			end
		end
	end
end

if $ARGS[0] = 'kuni':
	minut += 15
	DOM = DOM + 1
	kuni = kuni + 1
	horny = horny + DOM + (silaVag*2 + 5)
	gs'stat'

	'<center><img src="images/picV/kuni.jpg"></center>'
	'Вы разделись и легли на кровать, сказав что бы парень поласкал вас своим язычком.'
	'<<$boy>> лег между ваших ног и начал работать язычком по вашей киске.'

	if horny >= 90:
		horny = 0
		manna = manna + 15
		willpower = willpower + 15
		orgasm = orgasm + 1

		'От умелых действий парня вас охватил оргазм.'
	else
		'Действия парня хоть и были возбуждающие, но они начали вас утомлять.'
	end

	act 'Дрочить ему член':gt'BDsex','hj'
	act 'Взять в рот':gt'BDsex','minet'
	act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
	act 'Встать на четвереньки':gt'BDsex','sex2'
	act 'Анальный секс':gt'BDsex','anal2'
end

if $ARGS[0] = 'sex':
	!миссионерская поза
	minut += 10
	pose = 0
	gs'stat'

	'<center><img src="images/picV/vag.jpg"></center>'

	gs'BDsex','org'

	givfinrand = RAND(0,10)
	if harakBoy > 0:
		if givfinrand >= 8:

			'Внезапно <<$boy>> вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

			act 'Подставить лицо':gt'BDsex','facial'
			act 'Открыть рот':gt'BDsex','swallow'

			exit
		end
	end

	givfinrand = RAND(0,10)
	if harakBoy = 2:
		if givfinrand >= 8:
			'Внезапно <<$boy>> вынул из вас член и стал ласкать вашу попку готовя ее к проникновению.'

			act 'Анальный секс':gt'BDsex','anal2'

			exit
		end
	end

	gs'BDsex','cum'

	act 'Уйти':gt'BDsex','end'
end

if $ARGS[0] = 'sex2':
	!раком
	minut += 10
	pose = 1
	gs'stat'

	picrand = RAND(1,5)
	if picrand = 1:'<center><img src="images/pics/vagdog.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/vagdog2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/vagdog3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/vagdog4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/vagdog5.jpg"></center>'

	gs'BDsex','org'

	givfinrand = RAND(0,10)
	if harakBoy > 0:
		if givfinrand >= 8:
			'Внезапно <<$boy>> вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

			act 'Подставить лицо':gt'BDsex','facial'
			act 'Открыть рот':gt'BDsex','swallow'

			exit
		end
	end

	givfinrand = RAND(0,10)
	if harakBoy = 2:
		if givfinrand >= 8:
			'Внезапно <<$boy>> вынул из вас член и стал ласкать вашу попку готовя ее к проникновению.'

			act 'Анальный секс':gt'BDsex','anal2'

			exit
		end
	end

	gs'BDsex','cum'
	act 'Уйти':gt'BDsex','end'
end

if $ARGS[0] = 'sex3':
	!с верху
	minut += 10
	pose = 0
	gs'stat'

	picrand = RAND(1,5)
	if picrand = 1:'<center><img src="images/pics/vagcow.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/vagcow.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/vagcow.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/vagcow.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/vagcow.jpg"></center>'

	gs'BDsex','org'
	gs'BDsex','cum'
end

if $ARGS[0] = 'anal':
	!миссионерская поза
	minut += 10
	gs'stat'
	gs'bdsex','an'
	gs'bdsex','ancum'
end

if $ARGS[0] = 'anal2':
	!раком
	minut += 10
	gs'stat'

	picrand = RAND(1,10)
	if picrand = 1:'<center><img src="images/pics/anal.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/anal2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/anal3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/anal4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/anal5.jpg"></center>'
	if picrand = 6:'<center><img src="images/pics/anal6.jpg"></center>'
	if picrand = 7:'<center><img src="images/pics/anal7.jpg"></center>'
	if picrand = 8:'<center><img src="images/pics/anal8.jpg"></center>'
	if picrand = 9:'<center><img src="images/pics/anal9.jpg"></center>'
	if picrand = 10:'<center><img src="images/pics/anal10.jpg"></center>'

	gs'bdsex','an'

	givfinrand = RAND(0,10)
	if harakBoy > 0:
		if givfinrand >= 8:
			'Внезапно <<$boy>> вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

			act 'Подставить лицо':gt'BDsex','facial'
			act 'Открыть рот':gt'BDsex','swallow'

			exit
		end
	end

	gs'bdsex','ancum'

	act 'Уйти':gt'BDsex','end'
end

if $ARGS[0] = 'anal3':
	!с верху
	gs'bdsex','an'
	gs'bdsex','ancum'
end

if $ARGS[0] = 'hj':
	!ханджоб
	hj += 1
	minut += 5
	gs'stat'

	'<center><img src="images/picV/hand1.jpg"></center>'
	'Вы достали его <<dick>> сантиметровый член и начали ласкать руками его руками, двигая кожицу по багровой головке.'

	bjrand = RAND(0,100)
	if bjrand >= 75:
		if harakBoy = 0:
			'<<$boy>> застонал "Я сейчас кончу."'

			act 'Пусть кончает':
				cla
				*clr
				'<center><img src="images/picV/hand2.jpg"></center>'
				'<<$boy>> кончил вам в ладошки покрыв их горячей и липкой спермой.'

				act 'Уйти':gt'BDsex','end'
			end
			act 'Взять в рот':gt'BDsex','minet'
			act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
		elseif harakBoy = 1:
			'<<$boy>> застонал "Светик, возьми в рот или давай сексом займемся."'

			act 'Взять в рот':gt'BDsex','minet'
			act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
		else
			brand = RAND(0,100)
			if brand < 70:
				'<<$boy>> ласкает вашу киску своими пальцами.'

				trand = RAND(0,2)
				if trand < 2:
					'Он кладет вас на спину.'

					act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
				else
					'Он переворачивает вас на живот.'

					act 'Встать на четвереньки':gt'BDsex','sex2'
				end
			elseif brand >= 70 and brand < 80:
				'<<$boy>> говорит вам что он хочет вас в попу.'

				act 'Анальный секс':gt'BDsex','anal2'

				if dom > 5:
					act 'Я так не хочу! Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
					act 'Я встану раком, но в попу не дам!':gt'BDsex','sex2'
					act 'Взять в рот':gt'BDsex','minet'
				end
			elseif brand >= 80:
				'<<$boy>> подтягивает ваше лицо к своему члену.'

				act 'Взять в рот':gt'BDsex','minet'
			end
		end
	else
		'<<$boy>> сейчас кончит.'

		act 'Подставить лицо':gt'BDsex','facial'
		act 'Открыть рот':gt'BDsex','swallow'
	end
end

if $ARGS[0] = 'minet':
	!минет
	minut += 5
	gs'stat'

	picrand = RAND(0,4)
	if picrand = 0:'<center><img src="images/picV/bj.jpg"></center>'
	if picrand = 1:'<center><img src="images/picV/bj1.jpg"></center>'
	if picrand = 2:'<center><img src="images/picV/bj2.jpg"></center>'
	if picrand = 3:'<center><img src="images/picV/bj3.jpg"></center>'
	if picrand = 4:'<center><img src="images/picV/bj4.jpg"></center>'

	gs'bdsex','autobj'

	bjrand = RAND(0,100)
	if bjrand >= 75:
		if harakBoy = 0:
			'<<$boy>> застонал "Я сейчас кончу."'

			act 'В ладони':
				cla
				*clr
				'<center><img src="images/picV/hand2.jpg"></center>'
				'<<$boy>> кончил вам в ладошки покрыв их горячей и липкой спермой.'

				act 'Уйти':gt'BDsex','end'
			end
			act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
		elseif harakBoy = 1:
			'<<$boy>> застонал "Светик, возьми в рот или давай сексом займемся."'

			act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
		else
			brand = RAND(0,100)
			if brand < 70:
				'<<$boy>> ласкает вашу киску своими пальцами.'

				trand = RAND(0,2)
				if trand < 2:
					'Он кладет вас на спину.'

					act 'Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
				else
					'Он переворачивает вас на живот.'

					act 'Встать на четвереньки':gt'BDsex','sex2'
				end
			elseif brand >= 70:
				'<<$boy>> говорит вам что он хочет вас в попу.'

				act 'Анальный секс':gt'BDsex','anal2'

				if dom > 0:
					act 'Я так не хочу! Лечь на спину и раздвинуть ноги':gt'BDsex','sex'
					act 'Я встану раком, но в попу не дам!':gt'BDsex','sex2'
				end
			end
		end
	else
		'<<$boy>> сейчас кончит.'

		act 'Подставить лицо':gt'BDsex','facial'
		act 'Открыть рот':gt'BDsex','swallow'

		if harakBoy = 0:
			act 'В ладони':
				cla
				*clr
				'<center><img src="images/picV/hand2.jpg"></center>'
				'<<$boy>> кончил вам в ладошки покрыв их горячей и липкой спермой.'

				act 'Уйти':gt'BDsex','end'
			end
		end
	end
end

if $ARGS[0] = 'facial':
	facial += 1
	cumface += 1
	minut += 3
	gs'stat'

	picrand = RAND(1,5)
	if picrand = 1:'<center><img src="images/pics/facial.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/facial2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/facial3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/facial4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/facial5.jpg"></center>'

	'Густые струи резко пахнущей спермы ударили вас по лицу.'

	act 'Приводить себя в порядок':gt'BDsex','end'
end

if $ARGS[0] = 'swallow':
	swallow += 1
	cumlip += 1
	minut += 3
	gs'stat'

	picrand = RAND(1,10)
	if picrand = 1:'<center><img src="images/pics/cum.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/cum2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/cum3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/cum4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/cum5.jpg"></center>'
	if picrand = 6:'<center><img src="images/pics/cum6.jpg"></center>'
	if picrand = 7:'<center><img src="images/pics/cum7.jpg"></center>'
	if picrand = 8:'<center><img src="images/pics/cum8.jpg"></center>'
	if picrand = 9:'<center><img src="images/pics/cum9.jpg"></center>'
	if picrand = 10:'<center><img src="images/pics/cum10.jpg"></center>'

	'Густые струи резко пахнущей спермы ударили вам в рот.'

	act 'Приводить себя в порядок':gt'BDsex','end'
end

if $ARGS[0] = 'end':
	NoGuy = 0

	if InYouHome = 1:
		InYouHome = 0
		'<<$boy>> вежливо попрощался и ушел.'

		act 'Уйти':gt'korr'

		exit
	end

	if harakBoy = 0:
		minut = minut + 15
		sweat = -3
		horny = horny + 1
		hapri = 1
		mop = 1

		dynamic $showerdin

		'<center><img src="images/pics/dush.jpg"></center>'
		'Вы залезли в ванную и включили душ. Намылили тело и смыли под душем.'
	elseif harakBoy = 1:
		if cumface > 0:cumface = 0

		'Вы умылись и <<$boy>> начал вас поторапливать.'
	elseif harakBoy = 2:
		'<<$boy>> не дал вам даже сходить в ванную.'
	end

	if finance > 0:
		if finance = 1:money += 300
		if finance = 2:money += 500

		'<<$boy>> дал вам денег на такси и выпроводил из квартиры.'
	elseif finance = 0:
		'<<$boy>> выпроводил вас из квартиры.'
	end

	if GoToGuy = 0:
		act 'Уйти':
			gorand = RAND(0,2)
			if gorand = 0:gt'street'
			if gorand = 1:gt'down'
			if gorand = 2:gt'nord'
		end
	elseif GoToGuy > 0:
		act 'Уйти':
			if GoToGuy = 1:GoToGuy = 0 & gt'nord'
			if GoToGuy = 2:GoToGuy = 0 & gt'street'
		end
	end
end

if $ARGS[0] = 'org':
	protect = 0
	vidageday = vidageday - 1

	if tabletki <= 0 and prezik > 0:
		prezik = prezik - 1
		protect = 1

		'<<$boy>> взял у вас презерватив и одел его на свой <<dick>> сантиметровый член.'
	end

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10

		'У вас месячные и в то время пока член таранит вас, из влагалища потихоньку вытекает кровь. Ощущения болезненные и не приятные. Вы стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
	elseif mesec <= 0 and vagina > 0:
		!месячных нет
		!horny - возбужденность
		!vagina - эластичность вагины
		!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
		!dick - размер члена парня
		!orgazm - коэфициент удовольствия Итог
		!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			if silavag = 0:orgazm = 0
			if silavag = 1:orgazm = 1
			if silavag = 2:orgazm = 2
		elseif dick < prinat*2 and dick > prinat:
			!член больше возможностей гг
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny >= 80 and horny < 90:orgazm = 3
				if horny >= 70 and horny < 80:orgazm = 2
				if horny >= 60 and horny < 70:orgazm = 1
				if horny < 60:orgazm = 0
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny >= 70 and horny < 80:orgazm = 3
				if horny >= 60 and horny < 70:orgazm = 2
				if horny >= 50 and horny < 60:orgazm = 1
				if horny < 50:orgazm = 0
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny >= 60 and horny < 70:orgazm = 3
				if horny >= 50 and horny < 60:orgazm = 2
				if horny >= 40 and horny < 50:orgazm = 1
				if horny < 40:orgazm = 0
			end
		elseif dick <= prinat and dick >= vagina:
			!член меньше возможностей гг
			if silavag = 0:
				if horny >= 80:orgazm = 5
				if horny >= 60 and horny < 80:orgazm = 4
				if horny >= 40 and horny < 60:orgazm = 3
				if horny < 40:orgazm = 2
			elseif silavag = 1:
				if horny >= 70:orgazm = 5
				if horny >= 50 and horny < 70:orgazm = 4
				if horny >= 30 and horny < 50:orgazm = 3
				if horny < 30:orgazm = 2
			elseif silavag = 2:
				if horny >= 60:orgazm = 5
				if horny >= 40 and horny < 60:orgazm = 4
				if horny >= 20 and horny < 40:orgazm = 3
				if horny < 20:orgazm = 2
			end
		elseif dick <= prinat and dick < vagina:
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny < 90:orgazm = 6
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny < 80:orgazm = 6
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny < 70:orgazm = 6
			end
		end

		if orgazm = 0:
			horny = 0
			manna = manna - 15
			willpower = willpower - 15

			'Вы застонали от боли когда <<$boy>> вошел в вас, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут. Вы плачете и стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 1:
			horny = horny - 10
			manna = manna - 10
			willpower = willpower - 10

			'Вы закусили губу от боли когда <<$boy>> вошел в вас, между ног болезненные ощущения. Вы морщитесь и стонете от боли пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 2:
			horny = horny - 5
			manna = manna - 5
			willpower = willpower - 5

			'Вы вздрогнули от внезапной боли когда <<$boy>> вошел в вас, между ног болезненные ощущения, которые плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока крепкий <<dick>> сантиметровый член трахает вашу киску, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 4:
			!horny = horny + 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиваться принимая в себя член. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как член проникает в вашу киску, когда <<$boy>> вошел в вас. Между ног приятно, но член значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end

		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1

		'Вы закусили губу от боли и из глаз брызнули слезы когда <<$boy>> вошел в вас, разорвав вашу девственную плеву. Вы плачете и стоните пока крепкий <<dick>> сантиметровый член трахает вашу окровавленную киску.'
	end

	if vagina < dick:vagina += 1
	sex += 1
end

if $ARGS[0] = 'cum':
	if protect ! 1:
		!не защищенный секс
		finrand = RAND(0,1)
		if finrand = 0:
			!внутрь
			cumpussy = cumpussy + 1

			'<<$boy>> застонал и вы почувствовали как струя спермы ударила вам внутрь вашего тела.'

			if tabletki <= 0 and mesec <= 0:
				gs'preg'
				manna = manna - 15
				willpower = willpower - 15

				'Черт, так ведь и залететь можно, подумалось вам с ужасом.'
			end
		elseif finrand = 1:
			!наружу
			if pose = 0:
				cumbelly = cumbelly + 1

				'<<$boy>> застонал и вынув член из вас, кончил на ваш живот.'
			elseif pose = 1:
				cumass = cumass + 1

				'<<$boy>> застонал и вынув член из вас, кончил на вашу попу.'
			end
		end
	elseif protect = 1:
		protect = 0

		'<<$boy>> застонал и вы поняли, что он кончил в презерватив.'
	end

	pose = 0
end

if $ARGS[0] = 'autobj':
	bj += 1

	'Вы немного поласкали пальцами <<dick>> сантиметровый член, потом обхватили его губами и начали сосать.'

	if harakBoy = 0:
		'<<$boy>> закрыл глаза от удовольствия и наслаждается лаской ваших губ.'
	elseif harakBoy = 1:
		'<<$boy>> смотрит вам в лицо пока ваши губы скользят по его напряженному члену.'
	elseif harakBoy = 2:
		if mop > 1:mop = 0
		hapri = 0
		throat = throat + 1

		'<<$boy>> взял вас за волосы и стал трахать вас в рот, от ударов члена в горло у вас потекли слезы из глаз.'
	end

	horny = horny + throat + SUB + VAF - DOM

	'Твердый и горячий член скользит в вашем мокром ротике полностью наполняя его, ваши губы крепко обхватывают член лаская его.'

	if horny >= 100:
		VAF = VAF + 1
		orgasm = orgasm + 1
		horny = 20
		manna = manna + 15
		willpower = willpower + 15
		lipkoef = lipkoef + 1

		if lipkoef > 50:
			lipkoef = 0
			lip = lip + 1
		end

		'Неожиданно для вас отсасывая член вы начали кончать сами. Между ног полыхал пожар и волны удовольствия охватывали тело, вы стонали но не выпускали член изо рта продолжая его отсасывать.'
	end

	!'Наконец <<$boy>> застонал и вы поняли, что сейчас он начнет кончать.'
end

if $ARGS[0] = 'an':
!'
	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0

		if anus < 16:'<<$boy>> вытащил из вашей ещё узкой и тугой попки пробку,'
		if anus >= 16:'<<$boy>> вытащил из вашей разгорячённой сочащейся соками попки пробку,'

		'и вы почувствовали как твердый член уперся в вашу дырочку.'

		if anus + analpluginbonus < dick:
			'Вы взвизгнули и закусили губы от резкой боли когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
		elseif anus + analpluginbonus >= dick:
			'Вы застонали от чувства переполненности когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
		end

		!gs'BDsex','ancum'
	end
'

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0

		'<<$boy>> вытащил из вашей ещё узкой и тугой попки пробку,'
	end

	if dick < anus:anus = anus + 1

	if lubri = 0:
		lubonus = 2

		'Лубриканта у вас нет и <<$boy>> плюнув на пальцы стал смазывать слюной вашу попку.'
	elseif lubri > 0:
		lubri = lubri - 1
		lubonus = 10

		'Вы взяли тюбик с лубрикантом и передали его парню, он выдавил немного на ладонь и смазал ваш анус.'
	end

	'<<$boy>> положил вас животом на кровать и раздвинув ваши ягодицы стал массировать ваше анальное отверстие пальцами, сначала одним, потом двумя.'
	if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
	if anus >= 10:'Потом парень ввел вам три пальца и начал растягивать ваш анус.'
	'<<$boy>> вытащил пальцы из вашей попы и вы почувствовали как его твердый член уперся в вашу дырочку.'
	if anus + lubonus < dick:'Вы взвизгнули и закусили губы от резкой боли когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	if anus + lubonus >= dick:'Вы застонали от чувства переполненности когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	'<<$boy>> замер на минуту давая вашей попе приспособится к торчащему из нее члену, после чего начал водить им все настойчивей.'

	if anus + lubonus + 2 < dick:
		if mop > 1:mop = 0

		'Вы заплакали и вцепились зубами в подушку когда <<dick>> сантиметровый член начал трахать вашу попу на полную силу.'
	elseif anus + lubonus + 2 >= dick:
		'Вы начали ритмично стонать в такт движениям члена внутри вас.'
	end

	anal += 1
end

if $ARGS[0] = 'ancum':
	'Наконец <<$boy>> схватил вас крепче за зад и вогнав в вашу ноющую попку член до самых яиц кончил вам внутрь.'

	cumass += 1
	minut = minut + 3
	cumanus = cumanus + 1
	if anus < dick:anus = anus + 1
	horny = horny + ((anus-dick)*3)

	if horny < 1:
		horny = 1
	elseif horny >= 100:
		horny = 1
		orgasm = orgasm + 1
		analorgasm = analorgasm+1

		'В анусе полыхал пожар и волны удовольствия охватили тело, вы стонали и сами насаживались попкой на член.'
	end
end
--- BDsex ---------------------------------

