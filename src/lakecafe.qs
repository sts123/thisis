# lakecafe
if $ARGS[0] = 'main':
	cla
	*clr
	barrnd = RAND(1,3)
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)

	'<center><img src="images/LakeCafe/LakeCafe.jpg"></center>'
	'Наиобыкновеннейшая шашлычная, коих много на просторах страны.'
	'Стоимость обеда - 75 рублей'
	'Время работы кафе - с 14:00 до 04:00'
	*nl

	if hour >= 14 or hour < 4:
		if barmenshameet = 0:
			if barrnd = 1:'За барной стойкой стоит улыбчивая <a href="exec:GT ''lakecafe'',''barmensha''">барменша</a> и полирует бокалы'
			if barrnd = 2:'За барной стойкой стоит улыбчивая <a href="exec:GT ''lakecafe'',''barmensha''">барменша</a> и протирает стол'
			if barrnd = 3:'За барной стойкой стоит улыбчивая <a href="exec:GT ''lakecafe'',''barmensha''">барменша</a> и что-то смешивает'
		elseif barmenshameet = 1:
			if barrnd = 1:'За барной стойкой стоит <a href="exec:GT ''lakecafe'',''barmensha''">Женя</a> и полирует бокалы'
			if barrnd = 2:'За барной стойкой стоит <a href="exec:GT ''lakecafe'',''barmensha''">Женя</a> и протирает стол'
			if barrnd = 3:'За барной стойкой стоит <a href="exec:GT ''lakecafe'',''barmensha''">Женя</a> и что-то смешивает'
		end

		if week = 1 and hour = 22:
			LCWorkRand = RAND(1,6)
			if LCWorkRand = 1:
				randguycafe = RAND(3,6)
				if LCwork = 0:'За одним из столов сидит группа мужчин и выпивает, громко разговаривая и хохоча.'
				if LCwork = 1:'За одним из столов сидит <a href="exec:GT ''LCwork'',''start1''"><<randguycafe>> мужчин</a> и выпивает, громко разговаривая и хохоча.'
			elseif LCWorkRand = 2:
				if LCwork = 0:'За одним из столов сидит пожилой мужчина и ест шашлык.'
				if LCwork = 1:'За одним из столов сидит <a href="exec:GT ''LCwork'',''start2''">пожилой мужчина</a> и ест шашлык.'
			elseif LCWorkRand = 3:
				if LCwork = 0:'За одним из столов сидят два парня и выпивают.'
				if LCwork = 1:'За одним из столов сидят <a href="exec:GT ''LCwork'',''start3''">два парня</a> и выпивают.'
			elseif LCWorkRand = 4:
				if LCwork = 0:'За одним из столов сидят парень с девушкой и болтают о чём-то.'
				if LCwork = 1:'За одним из столов сидят <a href="exec:GT ''LCwork'',''start4''">парень с девушкой</a> и болтают о чём-то.'
			elseif LCWorkRand = 5:
				if LCwork = 0:'За одним из столов сидит девушка и ужинает.'
				if LCwork = 1:'За одним из столов сидит <a href="exec:GT ''LCwork'',''start5''">девушка</a> и ужинает.'
			elseif LCWorkRand = 6:
				if LCwork = 0:'За одним из столов сидит толстый мужчина и разговаривает по телефону.'
				if LCwork = 1:'За одним из столов сидит <a href="exec:GT ''LCwork'',''start6''">толстый мужчина</a> и разговаривает по телефону.'
			end
		end

		'<a href="exec:GT ''laketoilet'',''main''">Туалет</a>'

		if money >= 75:
			act 'Поесть 75 руб':
				cla
				*clr
				minut = minut + 30
				health = health + 10
				money = money - 75
				manna = manna + 5
				willpower = willpower + 5

				'<center><img src="images/pics/food.jpg"></center>'

				if energy >= 30:
					fat = fat + 5

					'Вы больше не можете есть.'
				elseif energy >= 20 and energy < 30:
					fat = fat + 3
					energy = energy + 10

					'Вы через силу затолкали в себя еду.'
				elseif energy < 20:
					energy = energy +20
					fat = fat + 1

					'Вы с удовольствием съели еду.'
				end

				if water >= 20:
					'Чай в вас больше не лезет.'
				elseif water < 20:
					water = water +20

					'Вы с удовольствием выпили кружку чая.'
				end

				act 'Встать из за стола':minut = minut + 20 & gt'lakecafe','main'
			end
		end
	end

	if LCwork2 >= 1 and LCwork2day ! day and hour = 18:
		act 'Помогать на кухне':
			gt'LCwork','Kitchen'
		end
	end

	act 'Уйти':minut = minut + 2 & gt'nord'
end

if $ARGS[0] = 'barmensha':
	cls
	gs'stat'

	'<center><img src="images/LakeCafe/LakeBarmensha.jpg"></center>'

	if barmenshameet = 0:
		'Барменша подняла на вас глаза и, с улыбкой, спросила:'
		'-Желаете чего- нибудь?'
	elseif barmenshameet = 1:
		'Женя улыбнулась, когда вы подошли к ней'
		'-Привет! - с улыбкой сказала она'
	end

	if hour >= 14 or hour < 4:
		if barmenshameet = 0:
			act 'Поболтать':
				cla
				*clr
				barmenshameet = 1
				JenyaLC = 10
				minut = minut + 30
				gs'stat'

				'<center><img src="images/LakeCafe/LakeBarmensha.jpg"></center>'
				'Вы поболтали с барменшей. В ходе разговора вы выяснили, что её зовут Женя и она работает тут вместе со своей подругой, Анжелой, которая в шашлычной на должности повара.'

				act '...':
					gt'lakecafe','barmensha'
				end
			end
		elseif barmenshameet = 1:
			act 'Поболтать':
				cla
				*clr
				if JenyaLC < 60:JenyaLC = JenyaLC + 3
				minut = minut + 30
				gs'stat'

				'<center><img src="images/LakeCafe/LakeBarmensha.jpg"></center>'
				'Вы разговариваете с Женей о делах, работе, жизни и всяких пустяках.'

				act '...':
					gt'lakecafe','barmensha'
				end
			end
		end

		if JenyaLC >= 60 and horny > 50:
			act 'Заигрывать':
				cla
				*clr
				minut = minut + 10
				gs'stat'

				'<center><img src="images/LakeCafe/LakeBarmensha.jpg"></center>'
				'Вы болтаете с Женей, делая ей неоднозначные намёки. Женя, кажется, понимает вас и предлагает вам пойти за ней. Вы соглашаетесь и следуете вместе с ней на кухню.'

				act '...':
					if JenyaLCfirst = 0:gt'LCporn','firsttime'
					if JenyaLCfirst = 1:gt'LCporn','sex'
				end
			end
		end

		if JenyaLC >= 35:
			act 'Спросить о работе':
				cla
				*clr
				'<center><img src="images/LakeCafe/LakeBarmensha.jpg"></center>'

				if LCworkwork2 < 1:
					LCworkwork2 = 1
					LCwork2 = 1

					'Вы спрашиваете Женю о работе. Она вам говорит, что её сестре необходима помощь на кухне, приходить в 18 часов, работать нужно полтора часа, за это вам будут платить 175 рублей.'

					act '...':
						minut = munut + 4
						gt'lakecafe','barmensha'
					end
				else
					'Вы спрашиваете Женю о работе. Она вам напоминает о том, что её сестре необходима помощь на кухне, приходить в 18 часов, работать нужно полтора часа, за это платят 175 рублей.'

					act '...':
						minut = munut + 4
						gt'lakecafe','barmensha'
					end
				end
			end
		end

		if JenyaLC >= 80:
			act 'Спросить об "особой" работе':
				cla
				*clr
				'<center><img src="images/LakeCafe/LakeBarmensha.jpg"></center>'

				if LCworkwork = 0:
					'Вы спрашиваете Женю об "особой" работе. Она говорит вам, что по понедельникам, в 22 часа, в кафе приходят посетители, которые нуждаются в качественном "обслуживании". Платят от 500 до 2000 рублей.'

					act '...':
						LCworkwork = 1
						LCwork = 1
						minut = munut + 4
						gt'lakecafe','barmensha'
					end
				elseif LCworkwork = 1:
					'Вы спрашиваете Женю о работе. Она напоминает вам условия: по понедельникам, в 22 часа, нужно будет "обслужить" определённых посетителей. За это платят от 500 до 2000 рублей.'

					act '...':
						minut = minut + 3
						gt'lakecafe','barmensha'
					end
				end
			end
		end
	end

	act 'Отойти':gt'lakecafe','main'
end
--- lakecafe ---------------------------------

