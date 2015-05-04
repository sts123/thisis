# dom_gor
act 'На улицу':
	cls
	if sick <= 72 and nude = 0:
		xgt'gorodok'
	elseif nude = 0:
		'<b><font color=red>ВЫ СЛИШКОМ СИЛЬНО БОЛЕЕТЕ ЧТО БЫ ХОДИТЬ ПО УЛИЦЕ.</font></b>'
		xgt $curloc
	else
		'<b><font color=red>ВАМ НАДО ОДЕТЬСЯ.</font></b>'
		xgt $curloc
	end
end

$metkaM = $ARGS[0]
$locM = $CURLOC

clr
gs'stat'
gs'time'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color=maroon>Ваша комната</font></b></center>'
'<center><img src="images/etogame/kom_gor.jpg"></center>'
'Ваша комната в общаге. Комната маленькая, есть только необходимый минимум. 2 спальных места, <a href="exec:GT ''gor_mirror'',''start''">зеркало</a>, <a href="exec:GT ''gor_exh'',''pos1''">вешалка</a>, <a href="exec:GT ''loker'',''start''">шкаф</a> для вещей и маленький телевизор.'

if cloth_vid = 2 and teachlevel > 20 and parkrunday ! day and hour < 21 and hour > 6:
	act 'Пробежка по скверу 1 час':
		cla
		*clr
		parkrunday = day
		minut = minut + 30
		manna = manna + 10
		willpower = willpower - 10
		beg = beg + 1
		fat = fat - 8
		speed = speed + 1
		sweat = sweat + 3

		'<center><img src="images/pic/parkbeg.jpg"></center>'
		'Вы сделали несколько кругов вокруг парка. Запыхались, вспотели и устали.'

		parkrand = RAND(0,10)
		if parkrand > 4 and beguch < 3:
			'В парке вам встретился ученик из школы и попросил пробежаться вместе с вами.'

			act 'Бежать вместе':
				cla
				*clr
				beguch += 1

				'<center><img src="images/etogame/stop.jpg"></center>'
				'Вы бежите вместе с учеником иногда останавливаясь и непринужденно болтая.'
				'Ученик: - Светлана Михайловна, вы такая красивая, вас все так любят! Вы: - Хмм, спасибо!'

				act 'Завершить пробежку':gt'gskver'
			end
		elseif parkrand > 4 and beguch >= 3 and beguch < 6:
			'В парке вам встретился ученик из школы и попросил пробежаться вместе с вами.'

			act 'Бежать вместе':
				cla
				*clr
				beguch += 1

				'<center><img src="images/etogame/stop2.jpg"></center>'
				'Вы остановились, чтобы сделать упражнения на растяжку мышц.'
				'Ученик: - Ахх если бы наши девчонки были бы хоть немножко похожи на вас! Вы: - Ты к ним просто привык, узнай их поближе!'

				act 'Завершить пробежку':gt'gskver'
			end
		elseif parkrand > 4 and beguch >= 6 and beguch < 9:
			'В парке вам встретился ученик из школы и попросил пробежаться вместе с вами.'

			act 'Бежать вместе':
				cla
				*clr
				beguch += 1
				horny += 3

				'<center><img src="images/etogame/stop3.jpg"></center>'
				'Вы бежите вместе с учеником иногда останавливаясь и непринужденно болтая.'
				''
				'Ученик: - Светлана Михайловна, можно я вас сфотографирую! Вы: - А что ты потом будешь делать с моей фотографией, а негодник!'
				'Ученик: - Нет, нет простите я не буду на нее мастурбировать! Вы: - Ага! Я этого не говорила!'
				'Ученик: - Простите, плохая была идея. Вы: - Да шучу я! Фоткай, только мне потом копию не забудь.'
				''
				'Вы подобрали фон, встали в позу и вас сфотографировали.'

				act 'Завершить пробежку':gt'gskver'
			end
		end

		act 'Завершить пробежку':gt'gskver'
	end
end

if hour < 23:
	act 'Полежать на диване':
		cla
		minut += 60

		if son < 30:
			son += 5
		else
			son = 29
		end

		'Я расслабляюсь лежа на диване.'

		act 'Потянуться':gt'dom_gor'
	end
end

if hour => 23:
	act 'Спать в кровати':
		cla
		*clr
		tanga = 1
		health = health + 5
		hapri = 0
		InSleep = 1
		cloth_vid = 0
		gs'stat'

		'<center><img src="images/pics/son.jpg"></center>'
		if analplugIN = 1:analplugIN = 0 & 'Перед сном вы вынули анальную пробку.'
		if vibratorIN = 1:vibratorIN = 0 & 'Перед сном вы вынули вибратор.'
		if mop > 1:mop = 0 & vidageday = vidageday - 1 & 'Косметика размазалась по лицу, вы подумали, что вредно для внешности спать с косметикой, кожа стареет быстрее от этого.'

		'Вы выспались'

		act 'Встать':
			cla
			InSleep = 0
			minut += 480
			son = 30
			gt'dom_gor'
		end
	end
end

if eda > 0:
	'В холодильнике хранится еда которой хватит на <b><<eda>></b> порций.'
end
if edaD = 0 and eda = 0:
	'<b><font color=red>В холодильнике шаром покати, вообще нечего есть.</font></b>'
end
if edaD > 0:
	'В холодильнике хранится диетическая еда которой хватит на <b><<edaD>></b> порций.'
end

if eda >= 1:
	act 'Приготовить еду':
		cla
		*clr
		eda -= 1
		minut += 120
		frost = 0
		edahot = 0
		health = health + 10
		manna = manna + 20
		gs'stat'

		if energy >= 30:
			fat = fat + 2

			'Вы больше не хотите есть и пить.'
		elseif energy < 30:
			energy += 25
			fat += 1

			'Вы с удовольствием поели.'
		end

		if water < 20:
			water = water + 20

			'Вы с удовольствием выпили кружку чая.'
		elseif water >= 20:
			'Чай в вас больше не лезет.'
		end

		act 'Встать из за стола':gt'dom_gor'
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
			energy = energy + 20

			'Вы с удовольствием съели приготовленную еду.'
		end

		if water >= 20:
			'Чай в вас больше не лезет.'
		elseif water < 20:
			water = water +20

			'Вы с удовольствием выпили кружку чая.'
		end

		act 'Встать из за стола':gt'dom_gor'
	end
end

if gor_dorm > 0: act 'В общую ванную':gt'etoexhib','pos41'
--- dom_gor ---------------------------------

