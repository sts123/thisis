# init
!Расчет инициативы
!Обязательно проверять наличие станов
!hod переменная отвечающая за то кто будет атаковать
!hod = 0 игрок атакует hod = 1 противник атакует
!<font color = red><<$name>> </font>

if GedoMazo = 1 and stunV > 0:stunV = 0 & mannaV = mannaV - 1000 & '<font color = red><<$nameV>> с оглушительным ревом, выделяет большое количество энергии позволяющей ему снова вас атаковать.</font>'

initi = react*20/100
initi = initi - dospehVes
if initi < 0:initi = 0
init = RAND(react-initi,react+initi) + initBonus
initiV = reactV*20/100
initiV = initiV - dospehVesV
if initiV < 0:initiV = 0
initV = RAND(reactV-initiV,reactV+initiV) + initBonusV

if hodtime >= 3 and stun = 0 and stunV = 0 and initBonus = 0:
	!игрок уже трижды атаковал
	'<font color = red><<$nameV>> перехватил инициативу</font>'

	hod = 1
	hodtime = 0
	exit
elseif hodtimeV >= 3 and stun = 0 and stunV = 0 and initBonusV = 0:
	!противник уже трижды атаковал
	'<font color = green>Вы перехватили инициативу</font>'

	hod = 0
	hodtimeV = 0
	exit
end

if stun = 0 and stunV = 0 and hodtime < 3 and hodtimeV < 3 or stun = 0 and stunV = 0 and initBonus > 0 or stun = 0 and stunV = 0 and initBonusV > 0:
	!оба не в стане
	if tuman = 0 and tumanV = 0:
		!нет тумана
		if init > initV:
			!инициативу захватил игрок
			'<font color = green>Вы захватили инициативу</font>'

			hod = 0
			hodtime = hodtime + 1
			exit
		elseif init < initV:
			!инициативу захватил противник
			'<font color = red><<$nameV>> захватил инициативу</font>'

			hod = 1
			hodtimeV = hodtimeV + 1
			exit
		elseif init = initV:
			hod = RAND(0,1)
			if hod = 0:'<font color = green>Вы с трудом захватили инициативу</font>'
			if hod = 1:'<font color = red><<$nameV>> с трудом захватил инициативу</font>'
			exit
		end
	elseif tuman > 0:
		!туман игрока
		tuman = tuman - 1
		initV = reactV-initiV

		if init > initV:
			!инициативу захватил игрок
			'<font color = green>В вашем тумане <<$nameV>> не успевает за вами и вы захватили инициативу</font>'

			hod = 0
			hodtime = hodtime + 1
			exit
		elseif init < initV:
			!инициативу захватил противник
			'<font color = red>Не смотря на ваш туман <<$nameV>> захватил инициативу</font>'

			hod = 1
			hodtimeV = hodtimeV + 1
			exit
		elseif init = initV:
			hod = RAND(0,1)
			if hod = 0:'<font color = green>Вы с трудом захватили инициативу не смотря на ваш туман</font>'
			if hod = 1:'<font color = red><<$nameV>> не смотря на ваш туман все таки захватил инициативу</font>'
			exit
		end
	elseif tumanV > 0:
		!туман противника
		tumanV = tumanV - 1
		init = react-initi

		if init > initV:
			!инициативу захватил игрок
			'<font color = green>Не смотря на туман, вы захватили инициативу</font>'

			hod = 0
			hodtime = hodtime + 1
			exit
		elseif init < initV:
			!инициативу захватил противник
			'<font color = red><<$nameV>> используя свой туман легко захватывает инициативу</font>'

			hod = 1
			hodtimeV = hodtimeV + 1
			exit
		elseif init = initV:
			hod = RAND(0,1)
			if hod = 0:'<font color = green>Вы с трудом захватили инициативу не смотря на туман</font>'
			if hod = 1:'<font color = red><<$nameV>> используя свой туман захватил инициативу</font>'
			exit
		end
	end
end

if stun > 0:
	!игрок в стане
	stun = stun - 1
	hod = 1
	if tuman > 0:tuman = tuman - 1
	if tumanV > 0:tumanV = tumanV - 1

	'<font color = red>Вы не можете двигаться и <<$nameV>> легко захватывает инициативу</font>'

	exit
elseif stunV > 0:
	!противник в стане
	stunV = stunV - 1
	hod = 0
	if tuman > 0:tuman = tuman - 1
	if tumanV > 0:tumanV = tumanV - 1

	'<font color = green><<$nameV>> не может двигаться и вы легко захватываете инициативу</font>'

	exit
end
--- init ---------------------------------

