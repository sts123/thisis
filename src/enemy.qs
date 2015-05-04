# enemy
!Расчет атаки противника
if $ARGS[0] = 'start':
	cla
	!в этом блоке на основании переменной выбирается программа атаки противника
	if program = 0:
		!программа действий простых атакеров физухой
		xgt'enemy','fighter'
	elseif program = 1:
		!программа действий физуха и ножи
		xgt'enemy','fighter2'
	elseif program = 2:
		!программа действий физуха, ножи, туман
		xgt'enemy','fighter3'
	elseif program = 3:
		!программа действий физуха, ножи, туман, клоны
		xgt'enemy','fighter4'
	elseif program = 4:
		!программа действий физуха, ножи, туман, клоны, паралич
		xgt'enemy','fighter5'
	elseif program = 5:
		!программа действий Кисаме
		xgt'enemy','kisame'
	elseif program = 6:
		!программа действий Тоби
		xgt'enemy','tobi'
	elseif program = 7:
		!программа действий Тоби
		xgt'enemy','gedomazo'
	elseif program = 8:
		!программа действий Огнестрела
		xgt'enemy','gun'
	elseif program = 9:
		!программа действий Сасори
		xgt'enemy','sasori'
	elseif program = 10:
		!программа действий Конан
		xgt'enemy','konan'
	elseif program = 11:
		!программа действий Хидан
		xgt'enemy','hidan'
	end
end

if $ARGS[0] = 'hidan':
	cla
	if zerkaloV > 0:barierV = 0
	if zerkaloV <= 0:barierV = 5500
	if healthV < vitalV*10 + strenV*5:healthV = vitalV*10 + strenV*5

	if zerkaloV > 0:
		healthV = vitalV*10 + strenV*5
		mannaV = intelV*magikV + magikV*100 + vitalV*10
		willpowerV = willV*10
		health = health - 400
		manna = manna - 500

		'<b><font color = red><<$nameV>> орет "РИТУАЛ НАЧИНАЕТСЯ!" и встает в круг начертанный кровью на земле.</font></b>'
		'<b><font color = red>Он протыкает себя и вы чувствуете, как боль пронзает тело.</font></b>'

		xgt'fight','sta'
		exit
	elseif zerkaloV <= 0 and defence > 0:
		damTipV = 5000
		bonusShV = 100
		hidanAtk = 1

		'<b><font color = red><<$nameV>> орет "ТВОЕ СУЩЕСТВОВАНИЕ ОСКОРБЛЯЕТ МОЕГО БОГА ДЖАШИНА!" и швыряет в вас свою трехлезвийную косу управляя ей при помощи каната.</font></b>'

		if klon > 0:klon = klon/2 & '<b><font color = red><<$nameV>> орет "МРАЗЬ! Я ЗАРЕЖУ ТЕБЯ КАК СВИНЬЮ!"</font></b>'

		xgt'atakA1','atak'
		exit
	elseif zerkaloV <= 0 and defence <= 0:
		damTipV = 300
		bonusShV = 100
		hidanAtk = 1

		'<b><font color = red><<$nameV>> орет "ТЫ УМРЕШЬ БОГОХУЛЬНИК!" и швыряет в вас свою трехлезвийную косу управляя ей при помощи каната.</font></b>'

		if klon > 0:klon = 0 & '<b><font color = red>Ваши клоны превратились в пар от удара косы. <<$nameV>> орет "Я БЕССМЕРТНЫЙ ОПУСТОШИТЕЛЬ! А ТЫ ГОВНО!"</font></b>'
		if tuman > 0:tuman = 0 & '<b><font color = red><<$nameV>> орет "ТЫ ЖАЛОК В СВОИХ ТЩЕТНЫХ ПОПЫТКАХ СПРЯТАТСЯ ОТ МЕНЯ!"</font></b>'

		xgt'atakA1','atak'
		exit
	end
end

if $ARGS[0] = 'konan':
	cla
	if round < 6:
		mannaV = mannaV - 10
		damTipV = 500

		'<b><font color = red><<$nameV>> складывает знаки руками и в вас летят листы бумаги.</font></b>'

		if klon > 0:klon = 0 & '<b><font color = red>Ваши клоны превратились в пар от удара бумаги.</font></b>'

		xgt'atakA1','atak'
		exit
	elseif round >= 6:
		if unmaterialV > 5 and defence > 0:
			mannaV = mannaV - 250
			damTipV = 15000
			bonusShV = 100

			'<b><font color = red><<$nameV>> взмывает в воздух на белоснежных крыльях и вырываясь из ее крыльев бумага обрушивается на вас целым потоком летящих с страшной скоростью бумажных мечей.</font></b>'

			if klon > 0:klon = 0 & '<b><font color = red>Ваши клоны превратились в пар от удара бумаги.</font></b>'

			xgt'atakA1','atak'
			exit
		elseif unmaterialV > 5 and defence <= 0:
			mannaV = mannaV - 20
			damTipV = 450

			'<b><font color = red><<$nameV>> создает бумажные бумеранги которые летят в вашу сторону.</font></b>'

			xgt'atakA1','atak'
			exit
		elseif defenceV <= 0 and unmaterialV <= 5:
			mannaV = mannaV - 250
			defenceV = defenceV + 3000
			defenceMV = defenceMV + 3000
			defenceWV = defenceWV + 3000

			'<b><font color = red>Конан взмывает вверх на своих бумажных крыльях как ангел. Вокруг нее начинает кружится бумага создавая ей защиту.</font></b>'

			xgt'fight','sta'
			exit
		elseif unmaterialV <= 2 and konanD < 3:
			mannaV = mannaV - 150
			konanD = konanD + 1

			'<b><font color = red>Конан замирает в воздухе медитируя.</font></b>'

			xgt'fight','sta'
			exit
		elseif konanD >= 3:
			mannaV = mannaV - 250
			konanD = 0
			unmaterialV = 20

			'<b><font color = red>Конан рассыпается в воздухе на тысячи листов бумаги.</font></b>'

			xgt'fight','sta'
			exit
		end
	end
end

if $ARGS[0] = 'sasori':
	cla
	if SasoriBody > 1:damTipV = 1000
	if SasoriBody = 1:damTipV = 2000
	poisonAV = 1
	defenceV = defenceV + 10
	defenceMV = defenceMV + 20
	defenceWV = defenceWV + 50
	mannaV = mannaV - 10

	if SasoriBody = 1 and defence > 0:
		defSasori = defence*20/100
		defence = defence - defSasori
		'<b><font color = red>Сверху падает дождь из стальных игл сильно ослабляя вашу защиту.</font></b>'
	end

	'<b><font color = red><<$nameV>> стреляет в вас целым облаком ядовитых шипов.</font></b>'

	if klon > 0:klon = 0 & '<b><font color = red>Ваши клоны превратились в пар от удара игл.</font></b>'

	xgt'atakA1','atak'
end

if $ARGS[0] = 'gedomazo':
	cla
	if klon <= 0 and tuman <= 0:
		magweapbonusV = 5000

		'<b><font color = red><<$nameV>> с бешеным ревом бьет по вам своим огромным каменным кулаком.</font></b>'

		xgt'atak','enemy'
		exit
	elseif klon > 0 or tuman > 0:
		klon = 0
		tuman = 0
		mannaV = mannaV - 500

		'<b><font color = red><<$nameV>> издает страшный рык и ударная волна воздуха проносится над полем боя.</font></b>'

		xgt'fight','sta'
		exit
	end
end

if $ARGS[0] = 'tobi':
	cla
	!программа атаки Тоби
	if unmaterialV <= 0 and IzanagiV = 0 and GedoMazo = 0:
		*clr
		'<b><font color = red><<$nameV>> приложил пальцы к губам и тихо произнес "КУЧИЕ СЕН НО ДЖИТСУ".</font></b>'
		'<b><font color = red>Перед вами появилась гигантская каменная статуя демона и бросилась на вас в атаку.</font></b>'

		GedoMazo = 1
		$nameV = 'Гедо Мазо'
		!Статы
		strenV = 1000
		speedV = 100
		agilV = 90
		reactV = 100
		vitalV = 5000
		intelV = 50
		willV = 50
		!Навыки
		magikV = 1
		boxingV = 100
		shootV = 100
		!Параметры
		healthV = vitalV*10 + strenV*5
		mannaV = intelV*magikV + magikV*100 + vitalV*10
		willpowerV = willV*10
		BonusAtakV = 0
		BonusDefV = 0
		!программа действий
		barierV = 1500
		program = 7
		xgt'fight','start'
		exit
	elseif unmaterialV <= 2 and IzanagiV = 0 and GedoMazo > 0 and TobiStena = 0:
		mannaV = mannaV - 500
		TobiStena = 1
		defenceV = defenceV + 25000

		'<b><font color = red><<$nameV>> делает магический знак и его кожа чернеет упрочняя его тело и создавая защиту в 25000 единиц.</font></b>'

		barierV = 2000

		xgt'fight','sta'
		exit
	elseif unmaterialV <= 2 and IzanagiV = 0 and GedoMazo > 0 and TobiStena = 1:
		mannaV = mannaV + 6000
		TobiStena = 2

		'<b><font color = red><<$nameV>> делает магический знак и вы чувствуете как его магическая энергия резко возрастает.</font></b>'

		xgt'fight','sta'
		exit
	elseif stun > 0:
		magweapbonusV = 2000

		'<b><font color = red><<$nameV>> победоносно произнес, "ТЕПЕРЬ ТЫ ТРУП".</font></b>'
		'<b><font color = red>Он хватает вас за горло рукой и поднимает в воздух.</font></b>'
		'<b><font color = red>Его пальцы будто из стали и они сдавливают ваше горло со страшной силой.</font></b>'

		xgt'atak','enemy'
		exit
	elseif defence >= 5000:
		defence = 0
		defenceM = 0
		defenceActPar = 0
		defenceActParM = 0
		defenceAct = 0
		defenceActM = 0
		defAtk = 0
		mannaV = mannaV - 100
		stunV = 1

		'<b><font color = red><<$nameV>> закрыл глаз и вы увидели, из него как слеза потекла капля крови.</font></b>'
		'<b><font color = red>Он открыл глаз ставший абсолютно красным с черными прожилками и произнес АМАТЕРАСУ</font></b>'
		'<b><font color = red>В вашу сторону устремилось черное всепожирающее пламя молниеносно уничтожившее вашу защиту.</font></b>'

		xgt'fight','sta'
		exit
	elseif tuman > 0:
		tumanV = tumanV + tuman
		tuman = 0

		'<b><font color = red><<$nameV>> складывает магические знаки руками и ваш туман переходит под его контроль застилая вам обзор.</font></b>'
		'<b><font color = red>Он атакует вас.</font></b>'

		xgt'atak','enemy'
		exit
	elseif unmaterialV > 0 and klon <= 0:
		stunnerV = 1
		mannaV = mannaV - 20
		magweapbonusV = 800

		'<b><font color = red><<$nameV>> атакует вас собрав манну в руку.</font></b>'

		xgt'atak','enemy'
		exit
	elseif unmaterialV > 0 and klon > 0:
		klon = 0
		stunV = 1

		'<b><font color = red><<$nameV>> складывает знаки руками и все ваши клоны просто превращаются в пар.</font></b>'

		xgt'atak','enemy'
		exit
	elseif unmaterialV <= 0 and tobizanagi < 2:
		mannaV = mannaV - 250
		tobizanagi = tobizanagi + 1
		!unmaterialV = 10

		'<b><font color = red><<$nameV>> складывает знаки руками.</font></b>'

		xgt'fight','sta'
		exit
	elseif unmaterialV <= 0 and tobizanagi = 2:
		mannaV = mannaV - 250
		tobizanagi = 0
		unmaterialV = 20
		stunV = 1

		'<b><font color = red><<$nameV>> складывает знаки руками и вокруг его глаза закручивается вихрь.</font></b>'

		xgt'fight','sta'
		exit
	end
end

if $ARGS[0] = 'kisame':
	cla
	!программа атаки Кисаме
	if defenceV <= 0 and kisamePro = 0:
		kisamePro = 1
		mannaV = mannaV - 150
		defenceV = defenceV + 1500
		defenceMV = defenceMV + 1500
		defenceWV = defenceWV + 1500
		defenceActParV = 500
		defenceActParMV = 500
		defenceActV = 10
		defenceActMV = 10

		'<b><font color = red><<$nameV>> складывает знаки руками и вокруг его образуется водяная сфера защищающая его от повреждений.</font></b>'

		xgt'fight','sta'
		exit
	elseif defenceV <= 1000 and kisamePro > 0:
		mannaV = mannaV - 500
		defenceV = defenceV + 5000
		defenceMV = defenceMV + 5000
		defenceWV = defenceWV + 5000
		defenceActParV = 500
		defenceActParMV = 500
		defenceActV = 10
		defenceActMV = 10
		defAtkMV = 10

		'<b><font color = red><<$nameV>> складывает знаки руками и пространство вокруг начинает погружаться в воду.</font></b>'

		if klon > 0:klon = 0 & '<b><font color = red>Ваши клоны превратились в пар от удара воды.</font></b>'

		xgt'fight','sta'
		exit
	elseif defenceV > 1000:
		kisameRAND = RAND(0,3)
		if kisameRAND = 0:
			klonV = klonV + 3

			'<b><font color = red><<$nameV>> складывает знаки руками.</font></b>'

			xgt'fight','sta'
			exit
		elseif kisameRAND > 0:
			mannaV = mannaV - 250
			damTipV = 1500
			damTipMV = 2500
			bonusShV = 50

			'<b><font color = red><<$nameV>> складывает знаки руками и в вас летят акулы созданные из воды.</font></b>'

			if klon > 0:klon = 0 & '<b><font color = red>Ваши клоны превратились в пар от удара воды.</font></b>'

			xgt'atakA1','atak'
			exit
		end
	end

	'<b><font color = red><<$nameV>> атакует.</font></b>'

	xgt'enemy','fighter'
end

if $ARGS[0] = 'gun':
	cla
	!непосредственно программа атаки
	!gs'atak'
	damTipV = 1500

	'<b><font color = red><<$nameV>> стреляет в вас.</font></b>'

	xgt'atakA1','atak'
end

if $ARGS[0] = 'fighter':
	cla
	!непосредственно программа атаки
	!gs'atak'
	xgt'atak','enemy'
end

if $ARGS[0] = 'fighter2':
	cla
	!непосредственно программа атаки
	deystrand = RAND(0,1)
	if deystrand = 0:
		xgt'atak','enemy'
	elseif deystrand = 1:
		knifeV = RAND(1,3)

		'<b><font color = red><<$nameV>> метает в вас <<knifeV>> ножей</font></b>'

		xgt'atak','enemy'
	end
end

if $ARGS[0] = 'fighter3':
	cla
	!непосредственно программа атаки
	if tuman = 0 and tumanV < 5 and mannaV > 10:
		mannaV = mannaV - 10
		tumanV = tumanV + 10

		'<b><font color = red><<$nameV>> выпускает туман на поле боя.</font></b>'

		xgt'fight','sta'
		exit
	end

	deystrand = RAND(0,1)
	if deystrand = 0:
		xgt'atak','enemy'
	elseif deystrand = 1:
		knifeV = RAND(1,3)

		'<b><font color = red><<$nameV>> метает в вас <<knifeV>> ножей</font></b>'

		xgt'atak','enemy'
	end
end

if $ARGS[0] = 'fighter4':
	cla
	!непосредственно программа атаки
	if tuman = 0 and tumanV < 5 and mannaV > 10:
		mannaV = mannaV - 10
		tumanV = tumanV + 10

		'<b><font color = red><<$nameV>> выпускает туман на поле боя.</font></b>'

		xgt'fight','sta'
		exit
	elseif klonV < 1 and mannaV > 15:
		mannaV = mannaV - 15
		klonV = klonV + 1

		'<b><font color = green>ПРОМАХ</font></b>'

		xgt'fight','sta'
		exit
	end

	deystrand = RAND(0,1)
	if deystrand = 0:
		xgt'atak','enemy'
	elseif deystrand = 1:
		knifeV = RAND(1,3)

		'<b><font color = red><<$nameV>> метает в вас <<knifeV>> ножей</font></b>'

		xgt'atak','enemy'
	end
end

if $ARGS[0] = 'fighter5':
	cla
	!непосредственно программа атаки
	if tuman = 0 and tumanV < 5 and mannaV > 10:
		mannaV = mannaV - 10
		tumanV = tumanV + 10

		'<b><font color = red><<$nameV>> выпускает туман на поле боя.</font></b>'

		xgt'fight','sta'
		exit
	elseif klonV < 1 and mannaV > 15:
		mannaV = mannaV - 15
		klonV = klonV + 1

		'<b><font color = green>ПРОМАХ</font></b>'

		xgt'fight','sta'
		exit
	elseif stun < 1 and manna > 20:
		stunnerV = 1
		mannaV = mannaV - 20

		'<b><font color = red><<$nameV>> атакует вас парализующим ударом.</font></b>'

		xgt'atak','enemy'
	end

	deystrand = RAND(0,1)
	if deystrand = 0:
		xgt'atak','enemy'
	elseif deystrand = 1:
		knifeV = RAND(1,3)

		'<b><font color = red><<$nameV>> метает в вас <<knifeV>> ножей</font></b>'

		xgt'atak','enemy'
	end
end
--- enemy ---------------------------------

