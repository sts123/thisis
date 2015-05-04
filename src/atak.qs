# atak
if $ARGS[0] = 'player':
	cla
	tip = 0
	strenA = stren
	speedA = speed
	agilA = agil
	vitalA = vital
	!Навыки
	boxingA = boxing
	!Параметры
	healthA = health
	BonusA = BonusAtak
	strenD = strenV
	speedD = speedV
	agilD = agilV
	vitalD = vitalV
	!Навыки
	boxingD = boxingV
	!Параметры
	healthD = healthV
	initBonusA = initBonus
	initBonus = 0
	initBonusV = 0
	BonusD = BonusDefV

	if stunV <= 0:
		xgt'atak','popad'
	elseif stunV > 0:
		'<b><font color = green><<$nameV>> НЕ МОЖЕТ ПОШЕВЕЛИТЬСЯ КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

		xgt'atak','uronKrit'
	end
end

if $ARGS[0] = 'enemy':
	cla
	tip = 1
	strenA = strenV
	speedA = speedV
	agilA = agilV
	vitalA = vitalV
	!Навыки
	boxingA = boxingV
	!Параметры
	healthA = healthV
	BonusA = BonusAtakV
	strenD = stren
	speedD = speed
	agilD = agil
	vitalD = vital
	!Навыки
	boxingD = boxing
	!Параметры
	healthD = health
	BonusD = BonusDef
	initBonusA = initBonusV
	initBonus = 0
	initBonusV = 0

	if stun <= 0:
		xgt'atak','popad'
	elseif stun > 0:
		'<b><font color = red>ВЫ НЕ МОЖЕТЕ ПОШЕВЕЛИТЬСЯ КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

		xgt'atak','uronKritV'
	end
end

if $ARGS[0] = 'popad':
	cla
	!расчет попадания уворота
	poSp = speedA*20/100
	uvAg = agilD*20/100
	poBox = boxingA*20/100
	uvBox = boxingD*20/100
	popad = RAND(boxingA-poBox,boxingA+poBox) + RAND(speedA-poSp,speedA+poSp) + BonusA + initBonusA
	uvorot = RAND(boxingD-uvBox,boxingD+uvBox) + RAND(agilD-uvAg,agilD+uvAg) + BonusD
	uvorKoef = uvorot*50/100
	popKoef = popad*50/100

	if popad > uvorot:
		if popad >= uvorot+uvorKoef:
			!крит, очень точное попадание
			if tip = 0:
				!атаковал игрок
				'<b><font color = green>КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

				xgt'atak','uronKrit'
			elseif tip = 1:
				!атаковал противник
				'<b><font color = red>КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

				xgt'atak','uronKritV'
			end
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			if tip = 0:
				!атаковал игрок
				'<b><font color = green>ПОПАДАНИЕ</font></b>'

				xgt'atak','uron'
			elseif tip = 1:
				!атаковал противник
				'<b><font color = red>ПОПАДАНИЕ</font></b>'

				xgt'atak','uronV'
			end
		end
	elseif popad <= uvorot:
		if popad+popKoef <= uvorot:
			!критический промах
			if tip = 0:
				!атаковал игрок
				'<b><font color = red>КРИТИЧЕСКИЙ ПРОМАХ</font></b>'

				xgt'atak','uronKritV'
			elseif tip = 1:
				!атаковал противник
				'<b><font color = green>КРИТИЧЕСКИЙ ПРОМАХ</font></b>'

				xgt'atak','uronKrit'
			end
		elseif popad+popKoef > uvorot:
			!промах
			if tip = 0:
				!атаковал игрок
				'<b><font color = red>ПРОМАХ</font></b>'

				xgt'fight','sta'
			elseif tip = 1:
				!атаковал противник
				'<b><font color = green>ПРОМАХ</font></b>'

				xgt'fight','sta'
			end
		end
	end
end

if $ARGS[0] = 'uronKrit':
	cla
	damage = RAND(stren,stren*2) + weapbonus + magweapbonus

	if knife > 0:
		knibon = knife+1
		knife = 0
		damage = damage*knibon
		knibon = 0

		'<b><font color = green>В противника летит ваш метательный нож</font></b>'
	end

	if defenceV <= 0 and klonV <= 0 and unmaterialV <= 0 and barierV <= 0:
		if dospehV > 0:damage = damage - dospehDefV & dospehEnV = dospehEnV - 1
		if damage < 0:damage = 0
		healthV = healthV - damage
		if weaponTipe = 1:bloodV = bloodV + RAND(weapon/4,weapon/2)
		if weaponTipe = 2:stun = stun + RAND(1,2)
		if weaponTipe = 3:bloodV = bloodV + RAND(weapon/4,weapon/2)

		if stunner > 0:
			stunner = 0
			stunV = RAND(3,6)

			'<b><font color = green>Вы парализовали противника на <<stunV>> ходов.</font></b>'
		end

		'<b><font color = green>Нанесен урон <<damage>> единиц</font></b>'

		if zerkaloV > 0:
			zerkaloV = zerkaloV - 1
			health = health - damage

			'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	elseif defenceV > 0 and klonV <= 0 and unmaterialV <= 0:
		defenceV = defenceV - damage

		'<b><font color = green>Защите противника нанесен урон <<damage>> единиц</font></b>'

		xgt'fight','sta'
	elseif klonV > 0 and unmaterialV <= 0:
		klonV = klonV - 1

		'<b><font color = green>Уничтожен клон противника, у него осталось еще <<KlonV>> клонов</font></b>'

		xgt'fight','sta'
	elseif unmaterialV > 0:
		unmaterialV = unmaterialV - 1

		'<b><font color = red>Ваш удар пролетел прямо через тело противника. <<$nameV>> НЕ МАТЕРИАЛЕН</font></b>'

		xgt'fight','sta'
	elseif barierV > 0:
		!барьер именитета для урона
		if barierV >= damage:
			'<b><font color = red><<$nameV>> легко выдержал ваш удар</font></b>'

			xgt'fight','sta'
		elseif barierV < damage:
			healthV = healthV - damage
			if weaponTipe = 1:bloodV = bloodV + RAND(weapon/4,weapon/2)
			if weaponTipe = 2:stun = stun + RAND(1,2)
			if weaponTipe = 3:bloodV = bloodV + RAND(weapon/4,weapon/2)

			if stunner > 0:
				stunV = RAND(3,6)

				'<b><font color = green>Вы парализовали противника на <<stunV>> ходов.</font></b>'
			end

			'<b><font color = green>Нанесен урон <<damage>> единиц</font></b>'

			if zerkaloV > 0:
				zerkaloV = zerkaloV - 1
				health = health - damage

				'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
			end
		end
		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uron':
	cla
	stKo = stren*20/100
	damage = RAND(stren-stKo,stren+stKo) + weapbonus + magweapbonus

	if knife > 0:
		knibon = knife+1
		knife = 0
		damage = damage*knibon
		knibon = 0

		'<b><font color = green>В противника летит ваш метательный нож</font></b>'
	end

	if defenceV <= 0 and klonV <= 0 and unmaterialV <= 0 and barierV <= 0:
		if dospehV > 0:damage = damage - dospehDefV & dospehEnV = dospehEnV - 1
		if damage < 0:damage = 0
		healthV = healthV - damage

		if stunner > 0:
			stunner = 0
			stunV = RAND(1,3)

			'<b><font color = green>Вы парализовали противника на <<stunV>> ходов.</font></b>'
		end

		'<b><font color = green>Нанесен урон <<damage>> единиц</font></b>'

		if zerkaloV > 0:
			zerkaloV = zerkaloV - 1
			health = health - damage

			'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	elseif defenceV > 0 and klonV <= 0 and unmaterialV <= 0:
		defenceV = defenceV - damage

		'<b><font color = green>Защите противника нанесен урон <<damage>> единиц</font></b>'

		xgt'fight','sta'
	elseif klonV > 0 and unmaterialV <= 0:
		klonV = klonV - 1

		'<b><font color = green>Уничтожен клон противника, у него осталось еще <<KlonV>> клонов</font></b>'

		xgt'fight','sta'
	elseif unmaterialV > 0:
		unmaterialV = unmaterialV - 1

		'<b><font color = red>Ваш удар пролетел прямо через тело противника. <<$nameV>> НЕ МАТЕРИАЛЕН</font></b>'

		xgt'fight','sta'
	elseif barierV > 0:
		!барьер именитета для урона
		if barierV >= damage:
			'<b><font color = red><<$nameV>> легко выдержал ваш удар</font></b>'

			xgt'fight','sta'
		elseif barierV < damage:
			healthV = healthV - damage

			if stunner > 0:
				stunV = RAND(1,3)

				'<b><font color = green>Вы парализовали противника на <<stunV>> ходов.</font></b>'
			end

			'<b><font color = green>Нанесен урон <<damage>> единиц</font></b>'

			if zerkaloV > 0:
				zerkaloV = zerkaloV - 1
				health = health - damage

				'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
			end
		end
		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uronKritV':
	cla
	damage = RAND(strenV,strenV*2) + weapbonusV + magweapbonusV

	if knifeV > 0:
		knibonV = knifeV+1
		knifeV = 0
		damage = damage*knibonV
		knibonV = 0

		'<b><font color = red>В вас летит метательный нож</font></b>'
	end

	if defence <= 0 and klon <= 0 and unmaterial <= 0 and barier <= 0:
		if dospeh > 0:damage = damage - dospehDef & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		health = health - damage
		if weaponTipeV = 1:blood = blood + RAND(weaponV/4,weaponV/2)
		if weaponTipeV = 2:stunV = stunV + RAND(1,2)
		if weaponTipeV = 3:blood = blood + RAND(weaponV/4,weaponV/2)

		if stunnerV > 0:
			stunnerV = 0
			stun = RAND(3,6)

			'<b><font color = red><<$nameV>> парализовал вас на <<stun>> ходов.</font></b>'
		end

		'<b><font color = red>Вам нанесен урон <<damage>> единиц</font></b>'

		if zerkalo > 0:
			zerkalo = zerkalo - 1
			healthV = healthV - damage

			'<b><font color = green>Вы отразили урон и <<$nameV>> получили <<damage>> единиц урона</font></b>'
		end
		xgt'fight','sta'
	elseif defence > 0 and klon <= 0 and unmaterial <= 0:
		defence = defence - damage

		'<b><font color = red>Вашей защите нанесен урон <<damage>> единиц</font></b>'

		xgt'fight','sta'
	elseif klon > 0 and unmaterial <= 0:
		klon = klon - 1

		'<b><font color = red>Уничтожен ваш клон, у вас осталось еще <<Klon>> клонов</font></b>'

		xgt'fight','sta'
	elseif unmaterial > 0:
		unmaterial = unmaterial - 1

		'<b><font color = green>Удар противника пролетел прямо через ваше тело. ВЫ НЕ МАТЕРИАЛЬНЫ</font></b>'

		xgt'fight','sta'
	elseif barier > 0:
		!барьер именитета для урона
		if barier >= damage:
			'<b><font color = green>Вы легко выдержали удар противника</font></b>'

			xgt'fight','sta'
		elseif barier < damage:
			health = health - damage
			if weaponTipeV = 1:blood = blood + RAND(weaponV/4,weaponV/2)
			if weaponTipeV = 2:stunV = stunV + RAND(1,2)
			if weaponTipeV = 3:blood = blood + RAND(weaponV/4,weaponV/2)

			if stunnerV > 0:
				stun = RAND(3,6)

				'<b><font color = red><<$nameV>> парализовал вас на <<stun>> ходов.</font></b>'
			end

			'<b><font color = red>Вам нанесен урон <<damage>> единиц</font></b>'

			if zerkalo > 0:
				zerkalo = zerkalo - 1
				healthV = healthV - damage

				'<b><font color = green>Вы отразили урон и <<$nameV>> получили <<damage>> единиц урона</font></b>'
			end
		end
		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uronV':
	cla
	stKo = strenV*20/100
	damage = RAND(strenV-stKo,strenV+stKo) + weapbonusV + magweapbonusV

	if knifeV > 0:
		knibonV = knifeV+1
		knifeV = 0
		damage = damage*knibonV
		knibonV = 0

		'<b><font color = red>В вас летит метательный нож</font></b>'
	end

	if defence <= 0 and klon <= 0 and unmaterial <= 0 and barier <= 0:
		if dospeh > 0:damage = damage - dospehDef & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		health = health - damage

		if stunnerV > 0:
			stunnerV = 0
			stun = RAND(3,6)

			'<b><font color = red><<$nameV>> парализовал вас на <<stun>> ходов.</font></b>'
		end

		'<b><font color = red>Вам нанесен урон <<damage>> единиц</font></b>'

		if zerkalo > 0:
			zerkalo = zerkalo - 1
			healthV = healthV - damage

			'<b><font color = green>Вы отразили урон и <<$nameV>> получили <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	elseif defence > 0 and klon <= 0 and unmaterial <= 0:
		defence = defence - damage

		'<b><font color = red>Вашей защите нанесен урон <<damage>> единиц</font></b>'

		xgt'fight','sta'
	elseif klon > 0 and unmaterial <= 0:
		klon = klon - 1

		'<b><font color = red>Уничтожен ваш клон, у вас осталось еще <<Klon>> клонов</font></b>'

		xgt'fight','sta'
	elseif unmaterial > 0:
		unmaterial = unmaterial - 1

		'<b><font color = green>Удар противника пролетел прямо через ваше тело. ВЫ НЕ МАТЕРИАЛЬНЫ</font></b>'

		xgt'fight','sta'
	elseif barier > 0:
		!барьер именитета для урона
		if barier >= damage:
			'<b><font color = green>Вы легко выдержали удар противника</font></b>'

			xgt'fight','sta'
		elseif barier < damage:
			health = health - damage

			if stunnerV > 0:
				stun = RAND(3,6)

				'<b><font color = red><<$nameV>> парализовал вас на <<stun>> ходов.</font></b>'
			end

			'<b><font color = red>Вам нанесен урон <<damage>> единиц</font></b>'

			if zerkalo > 0:
				zerkalo = zerkalo - 1
				healthV = healthV - damage

				'<b><font color = green>Вы отразили урон и <<$nameV>> получили <<damage>> единиц урона</font></b>'
			end
		end
		xgt'fight','sta'
	end
end
--- atak ---------------------------------

