# restoran
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Ресторан</font></b></center>'
	'<center><img src="images/pic/restoran.jpg"></center>'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	!eto было glamur > 1 and vnesh > 50
	if glamur >= 1 and mop > 1 and hapri = 1 and sweat <= 0:
		'Мужчина на входе вежливо интересуется какой столик вы предпочитаете в VIP зале или в общем зале'

		if money >= 5000:
			act 'VIP зал (5 тыс.руб)':
				cla
				money = money - 5000
				gt'restoran','vip'
			end
		end

		act 'Общий зал':gt'restoran','zal'
	else
		'К вам подходит мужчина и вежливо вам сообщает, что с подобным внешним видом в ресторан нельзя.'
	end

	act 'Выйти из Ресторана':
		cla
		minut = minut + 5
		gt'down'
	end

	if vladimirday = day and vladimirQW = 21 and hour = 20:gt'qwmeet'
end

if $ARGS[0] = 'zal':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Ресторан, общий зал</font></b></center>'
	'<center><img src="images/pic/restoran2.jpg"></center>'
	'В зале довольно приятная атмосфера. Мягкое освещение и светлая мебель. До вас доносятся звуки музыки, звон бокалов и женский смех. Кажется вы, наконец, можете немного расслабиться.'

	!etogame
	nastjarand = RAND(0,100)
	if nastjarand > 80 and nastjaQW = 0 and energy > 15 and nastjaday ! day:
		cls
		nastjaday = day
		gs'stat'

		'<center><img src="images/etogame/nastja1.jpg"></center>'
		'В зале вы замечаете симпатичную девушку, интересно почему она сидит одна. У нее довольно приятная внешность. Пока вы разглядывали прекрасную незнакомку, она поймала ваш взгляд на себе и неожиданно посмотрела на вас.'

		act 'Опустить глаза':
			cla
			'Она отвернулась'

			act 'Уйти':gt'restoran','zal'
		end
		act 'Улыбнуться ей':gt'nastja','pos1'
	end

	if money >= 5000:
		act 'Поесть (5 тыс.руб)':
			cla
			minut = minut + 60
			energy = 22
			fat += 5
			water = 22
			willpower += 30
			manna = manna+80
			health = health+20
			money -= 5000
			gs'stat'

			'По рекомендации шеф повара, вы заказали чудесное блюдо и с удовольствием поели в шумном зале ресторана.'

			act 'Уйти':gt'restoran','zal'
		end
	end

	act 'Уйти':minut = minut + 5 & gt'restoran','start'
end

if $ARGS[0] = 'vip':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Ресторан, VIP зал</font></b></center>'
	'<center><img src="images/pic/restoran3.jpg"></center>'
	'Оказавшись в vip ложе вы, поймали себя на мысли, что невольно улыбаетесь. В ложе спокойная, приятная атмосфера. Мягкое освещение и мебель в стиле ампир. Вы слышите легкую музыку. Наконец, ваша новая слабая женская сущность, хоть и ненадолго, но может почувствовать себя в безопасности.'

	if money >= 5000:
		act 'Поесть (5 тыс.руб)':
			cla
			minut = minut + 60
			energy = 22
			fat += 5
			water = 22
			willpower += 30
			manna = manna+100
			health = health+20
			money -= 5000
			gs'stat'

			'По рекомендации шеф повара, вы заказали чудесное блюдо и с удовольствием поели в уютном vip зале ресторана.'

			act 'Уйти':gt'restoran','vip'
		end
	end

	act 'Уйти':
		cla
		minut = minut + 5
		gt'restoran','start'
	end
end
--- restoran ---------------------------------

