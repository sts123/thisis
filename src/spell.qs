# spell
if $ARGS[0] = 'reset':
	cla
	!Создание тумана
	'Накоплено манны <<mannaReset>> единиц.'

	act 'Поглотить накопленную манну':
		cla
		*clr
		manna = manna + mannaReset
		mannaReset = 0
		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'unmat':
	cla
	!Создание тумана
	'Вы можете стать бесплотным на 30 ходов, в обмен на 3000 единиц сил Рикудо. Эта часть силы будет потеряна для вас навсегда после применения заклинания.'
	'Не материальность позволяет пропускать сквозь свое тело любой удар не получая урона, при этом немного уменьшается долговечность заклинания.'

	if rikudo >= 3000:
		act 'Стать бесплотным':
			cla
			*clr
			unmaterial = 31
			rikudo = rikudo + 3000
			mannaReset = 0
			xgt'fight','sta'
		end
	elseif rikudo < 3000:
		'У вас слишком мало сил Рикудо для этого заклинания.'
	end

	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'tuman':
	cla
	!Создание тумана
	if tumanV > 0:
		'Не возможно наложить ваш туман на уже существующий туман противника.'
	elseif tumanV <= 0:
		'Создать туман на поле боя, закрывающий обзор противнику. Стоимость 10 манны.'

		act 'Создать туман (10 манны)':
			cla
			*clr
			manna = manna - 10
			tuman = tuman + 10
			gt'fight','sta'
		end
	end

	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'klon':
	cla
	'Вы можете создать клона точно копирующего вас, а сами ускользнуть из поля зрения противника. Стоимость 15 манны 1 клон.'

	act 'Создать клона':
		cla
		*clr
		manna = manna - 15
		klon = klon + 1
		gt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'stun':
	cla
	'Вам нужно дотронутся до противника, тогда он будет парализован. Стоимость 20 манны.'

	act 'Ударить параличом':
		cla
		*clr
		manna = manna - 20
		stunner = 1
		xgt'atak','player'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'weap':
	cla
	'Вы можете вложить магическую силу в оружие повысив его урон. Стоимость 20 манны.'

	act 'Вложить энергию':
		cla
		*clr
		manna = manna - 20
		magweapbonus = weapbonus*4
		xgt'atak','player'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'wind':
	cla
	'Наслать ветер, что бы сдуть туман. Стоимость 40 манны.'

	act 'Применить':
		cla
		*clr
		manna = manna - 40
		tumanV = 0
		tuman = 0

		'<b><font color = green>Вы наслали ветер на поле боя и уничтожили туман.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'klon2':
	cla
	'Вы можете создать трех клонов точно копирующего вас, а сами ускользнуть из поля зрения противника. Стоимость 45 манны 3 клон.'

	act 'Создать клонов':
		cla
		*clr
		manna = manna - 45
		klon = klon + 3
		gt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'energo':
	cla
	'Вы можете создать энерго щит для защиты от атак на здоровье. 100 единиц защиты стоит 50 манны.'

	act 'Создать энерго щит':
		cla
		*clr
		manna = manna - 50
		defence = defence + 100

		'<b><font color = green>Вы наложили энерго щит, теперь у вас <<defence>> единиц защиты.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'init':
	cla
	'Вы можете создать слабое замедление времени, что бы получить преимущество в скорости реакции и захватить инициативу. Стоит 60 манны.'

	act 'Создать замедление':
		cla
		*clr
		manna = manna - 60
		initBonus = 120

		'<b><font color = green>Вы вложили манну в усиление реакции.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'hel':
	cla
	!Создание тумана
	'Вылечить или добавить себе 400 единиц здоровья. Стоимость 400 манны.'

	act 'Лечиться (400 манны)':
		cla
		*clr
		manna = manna - 400
		health = health + 400

		'<b><font color = green>Вы вложили манну в ускорение восстановительных процессов в организме.</font></b>'

		gt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'hand':
	cla
	!Создание тумана
	'Разящая ладонь увеличивает урон в 10 раз на одну атаку. Стоимость 100 манны.'

	act 'Разящая ладонь (100 манны)':
		cla
		*clr
		manna = manna - 100
		strenK = stren*20/100
		magweapbonus = RAND(stren*10 - strenK,stren*10 + strenK)

		'<b><font color = green>Вы вложили манну в ладонь для нанесения разрушительного удара.</font></b>'

		xgt'atak','player'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'fire1':
	cla
	!Создание тумана
	'Пламя. Стоимость 10 манны.'

	act 'Пламя (10 манны)':
		cla
		*clr
		manna = manna - 10
		damTip = 250

		'<b><font color = green>Вы создали стремительный поток пламени вырывающийся из вашей руки.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'fire2':
	cla
	!Создание тумана
	'Высвобождение огня. Стоимость 100 манны.'

	act 'Высвобождение огня (100 манны)':
		cla
		*clr
		manna = manna - 100
		damTip = 2500

		'<b><font color = green>Вы создали огромный поток пламени вырывающийся из вашей руки.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'fire3':
	cla
	!Создание тумана
	'Барьер огня, создает щит в 750 единиц. Стоимость 150 манны.'

	act 'Барьер огня (150 манны)':
		cla
		*clr
		manna = manna - 150
		defence = defence + 750

		'<b><font color = green>Вы создали вокруг себя огненный барьер, теперь у вас <<defence>> единиц защиты.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'fire4':
	cla
	!Создание тумана
	'Огненный шторм. Стоимость 250 манны.'

	act 'Огненный шторм (250 манны)':
		cla
		*clr
		manna = manna - 250
		damTip = 6250
		bonusSh = 100

		'<b><font color = green>Воздух вокруг вас раскалился и воспламенился, целое море огня обрушилось на противника.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'fire5':
	cla
	!Создание тумана
	'Пламенный щит, создает щит в 2500 единиц. Стоимость 500 манны.'

	act 'Пламенный щит (500 манны)':
		cla
		*clr
		manna = manna - 500
		defence = defence + 2500

		'<b><font color = green>Вы создали вокруг себя стену огня поглощающую урон, теперь у вас <<defence>> единиц защиты.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ele1':
	cla
	!Создание тумана
	'Разряд. Стоимость 10 манны.'

	act 'Разряд (10 манны)':
		cla
		*clr
		manna = manna - 10
		damTip = 150
		eleSh = 1

		'<b><font color = green>Вы создали электрический разряд вырывающийся из вашей руки.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ele2':
	cla
	!Создание тумана
	'Молния. Стоимость 100 манны.'

	act 'Молния (100 манны)':
		cla
		*clr
		manna = manna - 100
		damTip = 1500
		eleSh = 1

		'<b><font color = green>Вы создали молнию с грохотом выстрелившую из вашей руки.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ele3':
	cla
	!Создание тумана
	'Электро барьер, создает щит в 1500 единиц. Стоимость 150 манны.'

	act 'Электро барьер (150 манны)':
		cla
		*clr
		manna = manna - 150
		defence = defence + 1500

		'<b><font color = green>Вы создали вокруг себя стену пляшущих молний, теперь у вас <<defence>> единиц защиты.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ele4':
	cla
	!Создание тумана
	'Танец тысячи птиц. Стоимость 250 манны.'

	act 'Танец тысячи птиц (250 манны)':
		cla
		*clr
		manna = manna - 250
		damTip = 3750
		bonusSh = 30
		eleSh = 1

		'<b><font color = green>Вы собрали манну в руке и вокруг вашей ладони заплясали молнии рассекающие воздух с визгом.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ele5':
	cla
	!Создание тумана
	'Пляшущая сфера, создает щит в 5000 единиц. Стоимость 500 манны.'

	act 'Пляшущая сфера (500 манны)':
		cla
		*clr
		manna = manna - 500
		defence = defence + 5000

		'<b><font color = green>Вы создали вокруг себя большую сферу пляшущих молний, теперь у вас <<defence>> единиц защиты.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ert1':
	cla
	!Создание тумана
	'Зыбучий песок, ловит противника в ловушку зыбучего песка и наносит урон в 100 единиц. Стоимость 10 манны.'

	act 'Зыбучий песок (10 манны)':
		cla
		*clr
		manna = manna - 10
		damTip = 100
		eleSh = 5

		'<b><font color = green>Вы создали под противником затягивающий зыбучий песок.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ert2':
	cla
	!Создание тумана
	'Активная защита, создает защитную сферу из земли, камня и песка 2500 единиц защиты манны и здоровья, эта защита самовосстанавливается в течении 10 ходов поглощая 20 единиц манны в ход. Стоимость 100 манны.'

	act 'Активная защита (100 манны)':
		cla
		*clr
		manna = manna - 100
		defence = defence + 2500
		defenceM = defenceM + 2500
		defenceActPar = 1000
		defenceActParM = 1000
		defenceAct = 10
		defenceActM = 10

		'<b><font color = green>Земля окружила вас, дав вам защиту.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ert3':
	cla
	!Создание тумана
	'Пропасть, земля разверзнется под ногами врага нанося ему урон в 1500 единиц и лишая его возможности двигаться. Стоимость 150 манны.'

	act 'Зыбучий песок (150 манны)':
		cla
		*clr
		manna = manna - 150
		damTip = 1500
		eleSh = 5

		'<b><font color = green>Вы разверзли землю под ногами противника.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ert4':
	cla
	!Создание тумана
	'Абсолютная защита, создает огромную защитную сферу земли, которая регенерирует каждый ход и сама атакует противника. Стоимость 250 манны.'

	act 'Абсолютная защита (250 манны)':
		cla
		*clr
		manna = manna - 250
		defence = defence + 6250
		defenceM = defenceM + 6250
		defenceW = defenceW + 6250
		defenceActPar = 1000
		defenceActParM = 1000
		defenceActParW = 1000
		defenceAct = 15
		defenceActM = 15
		defenceActW = 15
		defAtk = 15

		'<b><font color = green>Земля окружила вас, дав вам защиту.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'ert5':
	cla
	!Создание тумана
	'Сандо, две огромных плиты выходят из земли и схлопываются раздавливая противника нанося ему урон в 5000 единиц и лишая его возможности двигаться. Стоимость 500 манны.'

	act 'Сандо (500 манны)':
		cla
		*clr
		manna = manna - 500
		damTip = 5000
		bonusSh = 50
		eleSh = 5

		'<b><font color = green>Две огромных плиты с грохотом вышли из земли и схлопнулись.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'wind1':
	cla
	!Создание тумана
	'Порыв ветра, наносит урон в 100 единиц уничтожает клонов и туман, очень сложно увернутся. Стоимость 10 манны.'

	act 'Порыв ветра (10 манны)':
		cla
		*clr
		manna = manna - 10
		damTip = 100
		bonusSh = 50

		'<b><font color = green>Вы создали порыв ветра.</font></b>'
		if klonV > 0:klonV = 0 & '<b><font color = green>Клона противника превратились в пар.</font></b>'
		if tumanV > 0:tumanV = 0 & '<b><font color = green>Туман противника разорван в клочья ветром.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'wind2':
	cla
	!Создание тумана
	'Ужасающее давление, наносит урон в 1000 единиц уничтожает клонов и туман, очень сложно увернутся. Стоимость 100 манны.'

	act 'Ужасающее давление (100 манны)':
		cla
		*clr
		manna = manna - 100
		damTip = 1000
		bonusSh = 100

		'<b><font color = green>Вы резко подняли давление воздуха.</font></b>'
		if klonV > 0:klonV = 0 & '<b><font color = green>Клона противника не выдержали и превратились в пар.</font></b>'
		if tumanV > 0:tumanV = 0 & '<b><font color = green>Туман противника разорван в клочья давлением.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'wind3':
	cla
	!Создание тумана
	'Вакуумная сфера, создает щит в 1500 единиц. Стоимость 150 манны.'

	act 'Вакуумная сфера (150 манны)':
		cla
		*clr
		manna = manna - 150
		defence = defence + 1500

		'<b><font color = green>Вы создали вокруг себя сферу вакуума, теперь у вас <<defence>> единиц защиты.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'wind4':
	cla
	!Создание тумана
	'Вакуумные снаряды, наносят урон в 2500 единиц уничтожает клонов и туман, очень сложно увернутся. Стоимость 250 манны.'

	act 'Вакуумные снаряды (250 манны)':
		cla
		*clr
		manna = manna - 250
		damTip = 2500
		bonusSh = 100

		'<b><font color = green>Вы создали вокруг себя множество сфер вакуума и они на огромной скорости со свистом понеслись по полю боя.</font></b>'
		if klonV > 0:klonV = 0 & '<b><font color = green>Клона противника не выдержали и превратились в пар.</font></b>'
		if tumanV > 0:tumanV = 0 & '<b><font color = green>Туман противника разорван в клочья давлением.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'wind5':
	cla
	!Создание тумана
	'Пожирающий вакуум, засасывает щит противника разрушая его какой бы прочности он не был. Стоимость 500 манны.'

	if defenceV > 0:
		act 'Пожирающий вакуум (500 манны)':
			cla
			*clr
			manna = manna - 500
			defenceV = 0
			defenceMV = 0
			defenceWV = 0
			defenceActParV = 0
			defenceActParMV = 0
			defenceActV = 0
			defenceActMV = 0
			defAtkMV = 0

			'<b><font color = green>Вы создали вокруг себя сферу вакуума которая всосала в себя защиту противника уничтожив ее.</font></b>'

			xgt'fight','sta'
		end
	elseif defenceV <= 0:
		'У противника нет щита который можно разрушить этим заклинанием.'
	end

	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'water1':
	cla
	!Создание тумана
	'Ручей манны, наносит урон в 100 единиц и поглощает 1000 единиц манны. Стоимость 10 манны.'

	act 'Ручей манны (10 манны)':
		cla
		*clr
		manna = manna - 10
		damTip = 100
		damTipM = 1000

		'<b><font color = green>Вы создали в руке небольшую струю воды которой выстрелили в противника.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'water2':
	cla
	!Создание тумана
	'Затопление, наносит урон в 1000 единиц и поглощает 500 единиц манны. Стоимость 100 манны.'

	act 'Затопление (100 манны)':
		cla
		*clr
		manna = manna - 100
		damTip = 1000
		damTipM = 500

		'<b><font color = green>Из вашего рта хлынул поток воды затапливающий округу.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'water3':
	cla
	!Создание тумана
	'Водяной пузырь, создает защитную сферу из воды 1500 единиц защиты от всех воздействий, эта защита самовосстанавливается в течении 10 ходов поглощая 20 единиц манны в ход. Стоимость 150 манны.'

	act 'Водяной пузырь (150 манны)':
		cla
		*clr
		manna = manna - 150
		defence = defence + 1500
		defenceM = defenceM + 1500
		defenceW = defenceW + 1500
		defenceActPar = 500
		defenceActParM = 500
		defenceAct = 10
		defenceActM = 10

		'<b><font color = green>Вода создала вокруг вас сферу защиты.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'water4':
	cla
	!Создание тумана
	'Водяная акулья ракета, наносит урон в 1500 единиц и поглощает 2500 единиц манны. Стоимость 250 манны.'

	act 'Водяная акулья ракета (250 манны)':
		cla
		*clr
		manna = manna - 250
		damTip = 1500
		damTipM = 2500
		bonusSh = 50

		'<b><font color = green>Вы выпустили стаю акул состоящих из воды летящих в сторону противника как торпеды.</font></b>'
		if klonV > 0:klonV = 0 & '<b><font color = green>Клоны противника исчезли.</font></b>'

		xgt'atakA','atak'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end

if $ARGS[0] = 'water5':
	cla
	!Создание тумана
	'Великий потоп, создает огромную водяную сферу которая поглощает и противника выкачивая из него манну и передавая ее на усиление защиты. Стоимость 500 манны.'

	act 'Великий потоп (500 манны)':
		cla
		*clr
		manna = manna - 500
		defence = defence + 5000
		defenceM = defenceM + 5000
		defenceW = defenceW + 5000
		defenceActPar = 500
		defenceActParM = 500
		defenceAct = 10
		defenceActM = 10
		defAtkM = 10

		'<b><font color = green>Вы заполнили всю округу водой которая защищает вас и пожирает ману противника.</font></b>'
		if klonV > 0:klonV = 0 & '<b><font color = green>Клоны противника исчезли.</font></b>'

		xgt'fight','sta'
	end
	act 'Физические атаки':gt'boxing'

	if magik > 0:
		act 'Магические атаки':gt'magik'
	end
end
--- spell ---------------------------------

