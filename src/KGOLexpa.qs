# KGOLexpa
KGOLneedExpNextLvl = (KGOLlvl*10)*KGOLlvl
KGOLneedExp = KGOLneedExpNextLvl-KGOLexp
if KGOLneedExp <= 0 and KGOLlvl > KGOLlvlr:KGOLlvlr = KGOLlvl & KGOLpoint += 10 & KGOLspellpoint += 1 & KGOLlvl += 1 & KGOLexp = 0

$KGOLatk = {
	KGOLzasV = RAND(KGOLspeedV/4,KGOLspeedV)
	KGOLataka = RAND(KGOLspeed/2,KGOLspeed*2)

	if KGOLataka >= KGOLzasV:
		if KGOLataka >= KGOLzasV*2:
			KGHPnpow = RAND(KGOLpower/2,KGOLpower)
			KGHPV -= KGHPnpow

			'<font color = green>КРИТ <<KGHPnpow>></font>'
		else
			KGHPnpow = RAND(KGOLpower/10,KGOLpower/4)
			KGHPntpow = KGHPnpow-KGOLbronaV
			if KGHPntpow <= 0:KGHPntpow = 1
			KGHPV -= KGHPnpow

			'<font color = blue>Попадание <<KGHPnpow>></font>'
		end
	else
		'<font color = red><<$KGname>> увернулся от вашей атаки</font>'
	end
}

$KGOLatkPoison = {
	KGOLzasV = RAND(KGOLspeedV/4,KGOLspeedV)
	KGOLataka = RAND(KGOLspeed/2,KGOLspeed*2)

	if KGOLataka >= KGOLzasV:
		poison += KGOLspell4+1
		if KGOLataka >= KGOLzasV*2:
			KGHPnpow = RAND(KGOLpower/2,KGOLpower)
			KGHPV -= KGHPnpow

			'<font color = green>КРИТ <<KGHPnpow>></font>'
		else
			KGHPnpow = RAND(KGOLpower/10,KGOLpower/4)
			KGHPntpow = KGHPnpow-KGOLbronaV
			if KGHPntpow <= 0:KGHPntpow = 1
			KGHPV -= KGHPnpow

			'<font color = blue>Попадание <<KGHPnpow>></font>'
		end
	else
		'<font color = red><<$KGname>> увернулся от вашей атаки</font>'
	end
}

$KGOLatkFB = {
	KGHPV -= KGOLpower

	'<font color = green>Фаербол наносит урон <<KGOLpower>> ед</font>'
}

$KGOLatkV = {
	KGOLzas = RAND(KGOLspeed/4,KGOLspeed)
	KGOLatakaV = RAND(KGOLspeedV/2,KGOLspeedV*2)

	if KGOLatakaV >= KGOLzas:
		if KGOLatakaV >= KGOLzas*2:
			KGHPnpow = RAND(KGOLpowerV/2,KGOLpowerV)
			KGHP -= KGHPnpow

			'<font color = red>КРИТ <<KGHPnpow>></font>'
		else
			KGHPnpow = RAND(KGOLpowerV/10,KGOLpowerV/4)
			KGHPntpow = KGHPnpow-KGOLbrona
			if KGHPntpow <= 0:KGHPntpow = 1
			KGHP -= KGHPnpow

			'<font color = brown>Попадание <<KGHPnpow>></font>'
		end
	else
		'<font color = green>Вы увернулись от атаки</font>'
	end
}

$KGOLrise = {
	cls
	'<center><b>Экран повышения уровня</b></center>'
	'Сила <<KGOLstren>>, скорость и уклонение <<KGOLspeed>>, выносливость <<KGOLvital>>, интеллект <<KGOLintel>>'
	'Доступных очков повышения навыков <<KGOLpoint>>'

	if KGOLpoint > 0:
		act 'Сила':
			KGOLstren += 1
			KGOLpoint -= 1
			dynamic $KGOLrise
		end
		act 'Скорость/Уклонение':
			KGOLspeed += 1
			KGOLpoint -= 1
			dynamic $KGOLrise
		end
		act 'Выносливость':
			KGOLvital += 1
			KGOLpoint -= 1
			dynamic $KGOLrise
		end
		act 'Интеллект':
			KGOLintel += 1
			KGOLpoint -= 1
			dynamic $KGOLrise
		end
	end

	act 'Выйти из экрана повышения уровня':gt'KGOLgame'
}

$KGOLrise2 = {
	cls
	'<center><b>Экран умений</b></center>'
	'Доступных очков повышения умений <<KGOLspellpoint/4>>'
	''

	if KGOLspellpoint >= 4:
		if KGOLklass = 1:
			!воин
			'Мощный удар, навык = <<KGOLspell>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Множественный удар, навык = <<KGOLspell2>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell2 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Увеличение брони, навык = <<KGOLspell3>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell3 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
		elseif KGOLklass = 2:
			!вор
			'Подлый удар, навык = <<KGOLspell4>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell4 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Отравленный клинок, навык = <<KGOLspell5>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell5 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Невидимость, навык = <<KGOLspell6>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell6 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
		elseif KGOLklass = 3:
			!маг
			'Фаербол, навык = <<KGOLspell7>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell7 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Отбрасывание, навык = <<KGOLspell8>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell8 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Круг огня, навык = <<KGOLspell9>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell9 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
		elseif KGOLklass = 4:
			!жрец
			'Удар магией, навык = <<KGOLspell10>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell10 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Лечение, навык = <<KGOLspell11>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell11 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Обкаст, навык = <<KGOLspell12>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell12 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
		elseif KGOLklass = 5:
			!лучник
			'Мощный выстрел, навык = <<KGOLspell13>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell13 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Тройной выстрел, навык = <<KGOLspell14>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell14 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Реген манны, навык = <<KGOLspell15>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell15 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
		else
			!варвар
			'Громовой удар, навык = <<KGOLspell16>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell16 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Стан, навык = <<KGOLspell17>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell17 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
			'Восстановление, навык = <<KGOLspell18>>. <a href="exec:KGOLspellpoint -= 4 & KGOLspell18 += 1 & dynamic $KGOLrise2 ">Вложить очко в умение</a>'
		end
	end

	act 'Выйти из экрана умений':gt'KGOLgame'
}

$KGOLatkKGOLspell2 = {
	:multiloop
	KGLOloop -= 1
	dynamic $KGOLatk
	if KGLOloop > 0:jump'multiloop'
}
--- KGOLexpa ---------------------------------

