# kuhrPar
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

'<center><b><font color = maroon>Кухня</font></b></center>'
'<center><img src="images/qwest/alter/<<$loc>>.jpg"></center>'
'На кухне рядом с плитой находится мойка. Большой холодильник в углу и кухонный стол со стульями находится у стены.'

gs'family'

act 'Есть':
	cla
	*clr
	gs'stat'
	frost = 0
	minut = minut + 30
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

	gs'stat'

	act 'Встать из за стола':gt $locM, $metkaM
end
act 'Перекусить':
	cla
	*clr
	gs'stat'
	frost = 0
	minut = minut + 15
	health = health + 10
	manna = manna + 20

	'<center><img src="images/pics/food.jpg"></center>'

	if energy >= 30:
		fat = fat + 3

		'Вы больше не можете есть.'
	elseif energy >= 20 and energy < 30:
		fat = fat + 1
		energy = energy + 5

		'Вы через силу затолкали в себя еду.'
	elseif energy < 20:
		energy = energy +10
		!fat = fat + 1

		'Вы с удовольствием съели приготовленную еду.'
	end

	if water >= 20:
		'Чай в вас больше не лезет.'
	elseif water < 20:
		water = water +20

		'Вы с удовольствием выпили кружку чая.'
	end

	gs'stat'

	act 'Встать из за стола':gt $locM, $metkaM
end
act 'Пить':
	cls

	if water >= 20:
		'Чай в вас больше не лезет.'
	elseif water < 20:
		water = water +20

		'Вы с удовольствием выпили кружку чая.'
	end

	gs'stat'

	act 'Встать из за стола':gt $locM, $metkaM
end

if pranik > 0:
	'Печенья хватит еще на <<pranik>> раз.'

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

		act 'Встать из за стола':gt $curloc
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

		act 'Встать из за стола':gt $curloc
	end
end

if fatdel > 0:
	act 'Употребить жиросжигатели':
		cla
		*clr
		if fat > salo:fat = salo
		fatdel = fatdel - 1
		fat = fat - 25
		if fat < 0:fat = 0

		'Вы выпили жиросжигающую капсулу. Эти капсулы действуют постепенно и результаты будут видны не сразу.'

		act 'Встать из за стола':gt $curloc
	end
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

			act 'Отойти':gt $curloc
		end
	end
end

if vitamin > 0:
	'У вас <<vitamin>> витаминок.'

	if vitaminday ! day:
		act 'Выпить витаминку':
			cla
			*clr
			if fat > salo:fat = salo
			minut = minut + 5
			vitaminday = day
			vitamin -= 1
			frost = 0
			if KandidozOnce = 1:Kandidoz -= 2
			if GerpesOnce = 1:Gerpes -= 2
			if SifacOnce = 1 and Sifilis >= 10:Sifilis -= RAND(0,1)
			skinvan = skinvan + 1
			if skinvan = 20:skinvan = 0 & skin = skin + 1

			'Вы выпили витаминку'

			act 'Отойти':gt $curloc
		end
	end
end
--- kuhrPar ---------------------------------

