# ykuh
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Кухня</center>'

if ymanrem[6] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[6] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[6] = 2:'<center><img src="images/pic/ykuh.jpg"></center>'
if ymanrem[6] = 2:''

if dirttarelka > 0 and fairy >= dirttarelka:
	cltarelka += dirttarelka
	fairy -= dirttarelka
	dirttarelka = 0

	'Посудомоечная машина вымыла грязную посуду.'
elseif fairy < dirttarelka:
	'Кончилось моющее средство для посуды.'
end

if cltarelka > 0:
	'Над раковиной стоит <b><<cltarelka>></b> штук чистых тарелок'
else
	'<b><font color = red>У вас не осталось чистой посуды.</font></b>'
end

if dirttarelka > 0:'В раковине лежат <b><<dirttarelka>></b> штук грязных тарелок. <a href="exec: dynamic $dirtarm ">Которые можно бы и помыть</a>.'

if fairy > 0:
	'Над раковиной стоит моющее средство для посуды, которого хватит на <b><<fairy>></b> раз.'
else
	'<b><font color = red>Вам не чем мыть посуду, нужно купить моющее средство для посуды.</font></b>'
end

if eda > 0:
	if cltarelka = 0 or edahot > 0:$edagot = ''
	if cltarelka > 0 and edahot = 0:$edagot = '<a href="exec: dynamic $edagotd ">Ее можно приготовить</a>'
	'В холодильнике хранится еда которой хватит на <b><<eda>></b> порций. <<$edagot>>'
elseif edaD = 0 and eda = 0:
	'<b><font color = red>В холодильнике шаром покати, вообще нечего есть.</font></b>'
end

act 'Выйти из комнаты':minut += 1 & gt'ymans'

if edahot > 0:'<a href="exec: dynamic $edahotd ">На столе стоит готовая еда.</a>'

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
	'В холодильнике хранится диетическая еда которой хватит на <b><<edaD>></b> порций.'

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
		fatdel = fatdel - 1
		fat = fat - 25
		if fat < 0:fat = 0

		'Вы выпили жиросжигающую капсулу. Эти капсулы действуют постепенно и результаты будут видны не сразу.'

		act 'Встать из за стола':gt $curloc
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

	act 'Встать из за стола':gt $curloc
end

if husband > 0 and husbanday > 0 and huseatday ! day and eda >= 2:
	act 'Готовить еду для мужа 1 час (2 единицы еды)':
		cla
		*clr
		husband += 5
		eda = eda - 2
		minut = minut + 60
		huseatday = day
		manna -= 25

		'<center><img src="images/pics/cook.jpg"></center>'
		'Вы приготовили еду на плите для мужа.'

		act 'Отойти из за плиты':gt $curloc
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
--- ykuh ---------------------------------

