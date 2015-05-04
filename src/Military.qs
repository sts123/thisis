# Military
if $ARGS[0] = 'start':
	$sexloc = $CURLOC

	gs'stat'

	'<center><b><font color = maroon>Полигон</font></b></center>'
	'<center><img src="images/img/military/military.jpg"></center>'
	'Вокруг полно народа, рядом палаточный городок, и множество парней бегают вокруг с оружием.'

	act 'Работать в санчасти':
		cla
		minut += 60

		sanrand = RAND(0,10)
		if sanrand = 0:gt'Military','san0'
		if sanrand = 1:gt'Military','san1'

		'Вы поработали в санчасти.'

		act 'Выйти':gt'Military','start'
	end
	act 'Идти в свою палатку':gt'Palatka','start'
	act 'Гулять по лесу':
		cla
		minut += 60

		milprorand = RAND(0,10)
		if milprorand = 0:gt'Military','pro0'
		if milprorand = 1:gt'Military','pro1'

		'Вы прогулялись.'

		act 'Закончить':gt'Military','start'
	end
	act 'Есть в полевой кухне':
		minut = minut + 30
		health = health + 10
		manna = manna + 20
		energy = energy +20
		water = water +20
		gs'stat'
	end

	if week < 6 or week = 7 and hour >= 18:
		cla
		minut += 60
		money += 5000

		act 'Ехать в город':gt'street'
	end
end

if $ARGS[0] = 'san0':
	cla
	*clr
	'<center><img src="images/img/military/san0.jpg"></center>'
	'В процессе осмотра, пациент демонстрирует вам свой возбужденный член и смотрит на вас в ожидании реакции.'

	act 'Прогнать':gt'Military','start'
	act 'Дать':
		guy += 1
		picrand = 41
		gt'sex','minet'
	end
end

if $ARGS[0] = 'san1':
	cla
	*clr
	'<center><img src="images/img/military/san1.jpg"></center>'
	'Пока в санчасти никого нет, врач начинает приставать к вам.'

	act 'Послать':gt'Military','start'
	act 'Дать':
		guy += 1
		picrand = 42
		gt'sex','minet'
	end
end

if $ARGS[0] = 'pro0':
	cla
	'К вам подходят двое парней и предлагают помочь им в одной игре, сыграть роль пленной шпионки.'

	act 'Отказаться':gt'Military','start'
	act 'Согласиться':
		cla
		*clr
		'<center><img src="images/img/military/pro0.jpg"></center>'
		'Вам связывают руки и ведут в штаб, там они долго изображают допрос, а затем со словами "Сейчас мы тебя пытать будем" достают члены. Вот и чем вы раньше думали позволяя двум амбалам вас связать.'

		act 'Подчиниться':
			guy += 2
			SUB += 1
			picrand = 21
			xgt'sexdvoe','var'
		end
	end
end

if $ARGS[0] = 'pro1':
	cla
	'За вами уже несколько минут идет какой то парень'

	act 'Не обращать внимания':gt'military','rape'
	act 'Бежать':
		if beg < 10:peshimraperand = RAND(0,11)
		if beg >= 10 and beg < 20:peshimraperand = RAND(0,20)
		if beg >= 20 and beg < 30:peshimraperand = RAND(0,30)
		if beg >= 30 and beg < 40:peshimraperand = RAND(0,40)
		if beg >= 40 and beg < 50:peshimraperand = RAND(0,50)
		if beg >= 50 and beg < 60:peshimraperand = RAND(0,60)
		if beg >= 60 and beg < 70:peshimraperand = RAND(0,70)
		if beg >= 70 and beg < 80:peshimraperand = RAND(0,80)
		if beg >= 80 and beg < 90:peshimraperand = RAND(0,90)
		if beg >= 90:peshimraperand = RAND(11,100)
		if peshimraperand < 11:
			cla
			'Вы попытались убежать но парень вас догнал'

			act 'Далее':gt'military','rape'
		elseif peshimraperand > 10:
			'Вы несетесь сломя голову, продираясь сквозь кусты. Наконец вы выбежали к полигону'

			act 'Далее':gt'military','start'
		end
	end
end

if $ARGS[0] = 'rape':
	cla
	*clr
	rape += 1
	bj += 1
	sex += 1
	guy += 1
	anal += 1

	'<center><img src="images/img/military/rape1.jpg"></center>'
	'Вы очнулись в каком то сарае с мешком на голове, голова ужасно болела от удара.'

	act 'Кричать':
		cla
		*clr
		'<center><img src="images/img/military/rape2.jpg"></center>'
		'Вы начали кричать, как вдруг вам в рот воткнули член.'
		'"Вот тебе соска чтобы не кричала" раздался голос насильника.'
		'Вы попытались выплюнуть член, но от этого стало только хуже, он вонзил его вам в горло, и начал трахать ваш рот.'

		act 'Далее':
			cla
			*clr
			'<center><img src="images/img/military/rape3.jpg"></center>'
			'Когда вы уже начали терять сознание, задыхаясь от его члена в горле, он вынул его и швырнув вас на какой то ящик, с силой вошел вам в вагину, его член нещадно долбил вас, а вам оставалось лишь смотреть на него сквозь слезы.'

			act 'Далее':
				cla
				*clr
				'<center><img src="images/img/military/rape4.jpg"></center>'
				'Когда ваша киска ему надоела, он перевернул вас и раздвинув ягодицы вогнал свой болт вам в задницу, вы закричали от боли, но его это не трогало и он продолжал трахать вашу попку что было сил, вы кричали и умоляли его хотя бы смазать, но в ответ слышали лишь довольное сопение, говорила вам мама учись бегать что бы жопа не болела.'

				act 'Далее':
					cla
					*clr
					cumlip += 1
					mop = 0
					minut += 240
					SUB += 5

					'<center><img src="images/img/military/rape5.jpg"></center>'
					'Вы не помните сколько прошло времени вы то теряли сознание то снова приходили в себя, но в конце концов он стащил вас с ящика и вы без сил опустились на колени, он снова воткнул вам член в рот, со словами "Соси", вы покорно начали сосать его фалос, которым он только что зверски насиловал ваш анус, в голове мелькнула мысль откусить его, но вторая мысль выбила её, а вдруг не получиться что он тогда сделает с моей попкой, наконец он кончил вам в рот. И только вы опустили голову как вновь получили удар по голове.'

					act 'Далее':gt'military','start'
				end
			end
		end
	end
end
--- Military ---------------------------------

