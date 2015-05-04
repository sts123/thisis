# aptek
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'
	gs'time'

	'<center><b><font color = maroon>Аптека</font></b></center>'
	'<center><img src="images/pic/aptek.jpg"></center>'
	'Презервативы - 100 руб'
	'Тест на беременность - 200 руб'
	'Противозачаточные таблетки - 500 руб'
	'Лекарства - 500 руб'
	'Витамины - 500 руб'
	if klisma = 0:'Клизма - 500 руб'
	'Мазь от мозолей - 600 руб'
	'Увлажняющий бальзам для губ - 1000 руб'
	'Жиросжигатели - 1500 руб'
	if KandidNapr = 1:'Таблетки от молочницы - 1500 руб'

	if money >= 100:
		act 'Купить презервативы (100 руб)':
			cla
			*clr
			portion = input ("Сколько упаковок вы хотите купить?")
			if portion*100 > money:'У вас не хватает денег.'
			if portion*100 <= money:
				prezik = prezik + portion*5
				money = money - portion*100

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили презервативы и заплатили деньги в кассу.'
			end

			act 'Отойти от прилавка':gt'aptek','start'
		end
	end

	if money >= 200:
		act 'Купить тест на беременность (200 руб)':
			cla
			*clr
			money = money - 200
			pregtest += 2

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили тест и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'aptek','start'
		end
	end

	if money >= 500:
		act 'Купить противозачаточные таблетки (500 руб)':
			cla
			*clr
			portion = input ("Сколько упаковок вы хотите купить?")
			if portion*500 > money:'У вас не хватает денег.'
			if portion*500 <= money:
				tabletki = tabletki + portion*28
				money = money - portion*500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили противозачаточные таблетки и заплатили деньги в кассу.'
			end

			act 'Отойти от прилавка':gt'aptek','start'
		end
		act 'Купить лекарства (500 руб)':
			cla
			*clr
			portion = input ("Сколько упаковок вы хотите купить?")
			if portion*500 > money:'У вас не хватает денег.'
			if portion*500 <= money:
				lekarstvo += portion*10
				money = money - portion*500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили лекарства и заплатили деньги в кассу.'
			end

			act 'Отойти от прилавка':gt'aptek','start'
		end
		act 'Купить витамины (500 руб)':
			cla
			*clr
			portion = input ("Сколько упаковок вы хотите купить?")
			if portion*500 > money:'У вас не хватает денег.'
			if portion*500 <= money:
				vitamin += portion*20
				money = money - portion*500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили витамины и заплатили деньги в кассу.'
			end

			act 'Отойти от прилавка':gt'aptek','start'
		end

		if klisma = 0:
			act 'Купить клизму (500 руб)':
				cla
				*clr
				klisma = 1
				money = money - 500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили клизму и заплатили деньги в кассу.'

				act 'Отойти от прилавка':gt'aptek','start'
			end
		end
	end

	if money >= 600:
		act 'Купить мазь от мозолей (600 руб)':
			cla
			*clr
			money = money - 600
			mosolmaz += 10

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили мазь и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'aptek','start'
		end
	end

	if money >= 1000:
		act 'Купить увлажняющий бальзам для губ (1000 руб)':
			cla
			*clr
			lipbalm += 25
			money = money - 1000

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили витамины и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'aptek','start'
		end
	end

	if money >= 1500:
		act 'Купить жиросжигатели (1500 руб)':
			cla
			*clr
			fatdel = fatdel + 1
			money = money - 1500

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы купили жиросжигающую капсулу и заплатили деньги в кассу.'

			act 'Отойти от прилавка':gt'aptek','start'
		end

		if KandidNapr = 1:
			act 'Купить таблетки от молочницы (1500 руб)':
				cla
				*clr
				money = money - 1500
				Kandidoz = 0

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили таблетки и заплатили деньги в кассу.'
				'Сразу же около кассы вы выпили таблетку.'

				act 'Отойти от прилавка':gt'aptek','start'
			end
		end
	end

	act 'Выйти':gt'street'
end
--- aptek ---------------------------------

