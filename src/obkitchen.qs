# obkitchen
$metkaM = $ARGS[0]
$locM = $CURLOC

gs'stat'

'<center><b>Кухня в общаге</b></center>'
'<center><img src="images/img/centr/obkitchen.jpg"></center>'

act 'В коридор':gt'dorm','korr'

if eda > 0:
	act 'Приготовить еду':
		cla
		*clr
		minut = minut + 60
		gs'stat'
		edahot = edahot + 1
		eda = eda - 1
		manna = manna - 5

		'<center><img src="images/pics/cook.jpg"></center>'
		'Вы приготовили еду на плите.'

		act 'Отойти от плиты':gt'obkitchen'
	end
end

if edahot > 0:
	act 'Есть':
		cla
		*clr
		gs'stat'
		frost = 0
		minut = minut + 30
		edahot = 0
		health = health + 10
		manna = manna + 20

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
			!fat = fat + 1

			'Вы с удовольствием съели приготовленную еду.'
		end

		if water >= 20:
			'Чай в вас больше не лезет.'
		elseif water < 20:
			water = water +20

			'Вы с удовольствием выпили кружку чая.'
		end

		act 'Встать из за стола':gt'obkitchen'
	end
end

if pranik > 0:
	act 'Выпить чаю с печеньем (5 мин)':
		cla
		*clr
		minut += 5
		pranik -= 1
		health = health + 30
		manna = manna + 100
		energy += 20
		water += 20
		fat += 50
		frost = 0
		gs'stat'

		'<center><img src="images/pics/food.jpg"></center>'
		'Вы попили чаю с печеньем, очень сладко и вредно для фигуры, но так приятно.'

		act 'Встать из за стола':gt'obkitchen'
	end
end

if edaD > 0:
	act 'Есть диетическую еду (30 мин)':
		cla
		*clr
		frost = 0
		minut = minut + 30
		health = health + 10
		manna = manna + 20
		edaD = edaD - 1

		'<center><img src="images/pics/food.jpg"></center>'

		if energy >= 30:
			'Вы больше не можете есть.'
		elseif energy >= 20 and energy < 30:
			energy = energy + 10

			'Вы через силу затолкали в себя еду.'
		elseif energy < 20:
			energy = energy +20

			'Вы с удовольствием съели приготовленную еду.'
		end

		if water >= 20:
			'Чай в вас больше не лезет.'
		elseif water < 20:
			water = water +20

			'Вы с удовольствием выпили кружку чая.'
		end

		act 'Встать из за стола':gt'obkitchen'
	end
end

if fatdel > 0:
	act 'Употребить жиросжигатели':
		cla
		*clr
		fatdel = fatdel - 1
		fat = fat - 25
		if fat < 0:fat = 0

		'Вы выпили жиросжигающую капсулу. Эти капсулы действуют постепенно и результаты будут видны не сразу.'

		act 'Встать из за стола':gt'obkitchen'
	end
end

act 'Пить':
	cla
	minut = minut + 5

	if water >= 20:
		'Вода в вас больше не лезет.'
	elseif water < 20:
		water = water +20

		'Вы с удовольствием выпили стакан воды.'
	end

	act 'Встать из за стола':gt'obkitchen'
end

if lekarstvo > 0:
	'У вас <<lekarstvo>> таблеток.'

	if sick > 0 and lekarday ! day:
		act 'Выпить таблетку':
			cla
			*clr
			minut = minut + 5
			lekarday = day
			lekarstvo -= 1
			sick -= sick*20/100

			lekrand = RAND(0,8)
			if lekrand = 0:'<center><img src="images/inBed/lekr1.jpg"></center>'
			if lekrand = 1:'<center><img src="images/inBed/lekr2.jpg"></center>'
			if lekrand = 2:'<center><img src="images/inBed/lekr3.jpg"></center>'
			if lekrand = 3:'<center><img src="images/inBed/lekr4.jpg"></center>'
			if lekrand = 4:'<center><img src="images/inBed/lekr5.jpg"></center>'
			if lekrand = 5:'<center><img src="images/inBed/lekr6.jpg"></center>'
			if lekrand = 6:'<center><img src="images/inBed/lekr7.jpg"></center>'
			if lekrand = 7:'<center><img src="images/inBed/lekr8.jpg"></center>'
			if lekrand = 8:'<center><img src="images/inBed/lekr9.jpg"></center>'

			'Вы выпили таблетку'

			act 'Отойти':gt'obkitchen'
		end
	end
end

if vitamin > 0:
	'У вас <<vitamin>> витаминок.'

	if vitaminday ! day:
		act 'Выпить витаминку':
			cla
			*clr
			minut = minut + 5
			vitaminday = day
			vitamin -= 1
			frost = 0
			skinvan = skinvan + 1
			if skinvan = 20:skinvan = 0 & skin = skin + 1

			'Вы выпили витаминку'

			act 'Отойти':gt'obkitchen'
		end
	end
end
--- obkitchen ---------------------------------

