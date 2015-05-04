# atakA
if $ARGS[0] = 'atak':
	cla
	!расчет попадания уворота
	poSp = speed*20/100
	uvAg = agilV*20/100
	poBox = react*20/100
	uvBox = reactV*20/100
	popad = RAND(react-poBox,react+poBox) + RAND(speed-poSp,speed+poSp) + bonusSh
	uvorot = RAND(reactV-uvBox,reactV+uvBox) + RAND(agilV-uvAg,agilV+uvAg)
	uvorKoef = uvorot*50/100
	popKoef = popad*50/100

	if popad > uvorot:
		if popad >= uvorot+uvorKoef:
			!крит, очень точное попадание
			'<b><font color = green>КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

			xgt'atakA','uronKrit'
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			!атаковал противник
			'<b><font color = green>ПОПАДАНИЕ</font></b>'

			xgt'atakA','uron'
		end
	elseif popad <= uvorot:
		'<b><font color = red>ПРОМАХ</font></b>'

		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uronKrit':
	cla
	damKoef = damTip*20/100
	damage = RAND(damTip+damKoef,damTip+damKoef*2)

	if damTipM > 0:
		damKoefM = damTipM*20/100
		damageM = RAND(damTipM+damKoefM,damTipM+damKoefM*2)
	end

	xgt'atakA','damage'
end

if $ARGS[0] = 'uron':
	cla
	damKoef = damTip*20/100
	damage = RAND(damTip-damKoef,damTip+damKoef)

	if damTipM > 0:
		damKoefM = damTipM*20/100
		damageM = RAND(damTipM-damKoefM,damTipM+damKoefM)
	end

	xgt'atakA','damage'
end

if $ARGS[0] = 'damage':
	cla
	if defenceV <= 0 and klonV <= 0 and unmaterialV <= 0 and barierV <= 0:
		if dospehV > 0:damageV = damageV - dospehDefV & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		healthV = healthV - damage

		if damTipM > 0:
			mannaV = mannaV - damageM
			manna = manna + damageM

			'<b><font color = green>Вы поглотили <<damageM>> единиц манны у противника.</font></b>'
		end

		!manna = manna - damageM

		if eleSh > 0:
			stunV = RAND(eleSh,eleSh*3)

			'<b><font color = green><<$nameV>> парализован на <<stunV>> раундов</font></b>'
		end

		'<b><font color = green>Вы нанесли урон <<damage>> единиц</font></b>'
		!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

		if zerkaloV > 0:
			zerkaloV = zerkaloV - 1
			health = health - damage

			'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	end

	if defenceV > 0 and klonV <= 0 and unmaterialV <= 0:
		!damSum = damage + damageM
		!defence = defence - damSum
		defenceV = defenceV - damage

		'<b><font color = green>Вы нанесли урон <<damage>> единиц защите противника</font></b>'

		xgt'fight','sta'
	end

	if klonV > 0 and unmaterialV <= 0:
		klonV = klonV - 1

		'<b><font color = green>Уничтожен клон противника</font></b>'

		xgt'fight','sta'
	end

	if unmaterialV > 0:
		unmaterialV = unmaterialV - 1

		'<b><font color = red>Ваш удар прошел сквозь тело противника. ПРОТИВНИК НЕ МАТЕРИАЛЕН</font></b>'

		xgt'fight','sta'
	end

	if barierV > 0:
		!барьер именитета для урона
		if barierV >= damage:
			'<b><font color = red><<$nameV>> легко выдержал ваш удар</font></b>'

			xgt'fight','sta'
		elseif barierV < damage:
			!manna = manna - damageM
			!health = health - damage
			damage = damage - barierV
			healthV = healthV - damage

			if damTipM > 0:
				mannaV = mannaV - damageM
				manna = manna + damageM
				'<b><font color = green>Вы поглотили <<damageM>> единиц манны у противника.</font></b>'
			end

			if eleSh > 0:
				stunV = RAND(eleSh,eleSh*3)
				'<b><font color = green><<$nameV>> парализован на <<stunV>> раундов</font></b>'
			end

			'<b><font color = green>Вы нанесли урон <<damage>> единиц</font></b>'
			!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

			if zerkaloV > 0:
				zerkaloV = zerkaloV - 1
				health = health - damage
				'<b><font color = red>Противник отразил урон и вы получили <<damage>> единиц урона</font></b>'
			end
		end

		xgt'fight','sta'
	end
end

if $ARGS[0] = 'atakW':
	cla
	!расчет попадания уворота
	poSp = speed*20/100
	uvAg = agilV*20/100
	poBox = react*20/100
	uvBox = reactV*20/100
	popad = RAND(react-poBox,react+poBox) + RAND(speed-poSp,speed+poSp)
	uvorot = RAND(reactV-uvBox,reactV+uvBox) + RAND(agilV-uvAg,agilV+uvAg)
	uvorKoef = uvorot*50/100
	popKoef = popad*50/100

	if popad > uvorot:
		if popad >= uvorot+uvorKoef:
			!крит, очень точное попадание
			'<b><font color = red>КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

			xgt'atakA','uronKritW'
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			'<b><font color = red>ПОПАДАНИЕ</font></b>'

			xgt'atakA','uronW'
		end
	elseif popad <= uvorot:
		'<b><font color = green>ПРОМАХ</font></b>'

		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uronKritW':
	cla
	damKoef = damTip*20/100
	damage = RAND(damTip+damKoef,damTip+damKoef*2)
	damKoefM = damTipM*20/100
	damageM = RAND(damTipM+damKoefM,damTipM+damKoefM*2)
	xgt'atakA','damageW'
end

if $ARGS[0] = 'uronW':
	cla
	damKoef = damTip*20/100
	damage = RAND(damTip-damKoef,damTip+damKoef)
	damKoefM = damTipM*20/100
	damageM = RAND(damTipM-damKoefM,damTipM+damKoefM)
	xgt'atakA','damageW'
end

if $ARGS[0] = 'damageW':
	cla
	if defenceV <= 0 and klonV <= 0 and unmaterialV <= 0 and barierV <= 0:
		if dospehV > 0:damageV = damageV - dospehDefV & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		healthV = healthV - damage
		mannaV = mannaV - damageM

		'<b><font color = green>Вы нанесен урон <<damage>> единиц</font></b>'
		'<b><font color = green>Вы нанесли урон манне противника <<damageM>> единиц</font></b>'

		if zerkaloV > 0:
			zerkaloV = zerkaloV - 1
			health = health - damage

			'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	end

	if defenceV > 0 and klonV <= 0 and unmaterialV <= 0:
		damSum = damage + damageM
		defenceV = defenceV - damSum
		!defenceV = defenceV - damage

		'<b><font color = green>Вы нанесли урон <<damSum>> единиц защите противника</font></b>'

		xgt'fight','sta'
	end

	if klonV > 0 and unmaterialV <= 0:
		klonV = klonV - 1

		'<b><font color = green>Уничтожен клон противника</font></b>'

		xgt'fight','sta'
	end

	if unmaterialV > 0:
		unmaterialV = unmaterialV - 1

		'<b><font color = red>Ваш удар прошел сквозь тело противника. ПРОТИВНИК НЕ МАТЕРИАЛЕН</font></b>'

		xgt'fight','sta'
	end

	if barierV > 0:
		!барьер именитета для урона
		if barierV >= damage:
			'<b><font color = red><<$nameV>> легко выдержал ваш удар</font></b>'

			xgt'fight','sta'
		elseif barierV < damage:
			mannaV = mannaV - damageM
			healthV = healthV - damage
			!healthV = healthV - damage

			'<b><font color = green>Вы нанесли урон <<damage>> единиц</font></b>'
			'<b><font color = green>Вы нанесли урон манне противника <<damageM>> единиц</font></b>'

			if zerkaloV > 0:
				zerkaloV = zerkaloV - 1
				health = health - damage

				'<b><font color = red>Противник отразил урон и вы получили <<damage>> единиц урона</font></b>'
			end
		end

		xgt'fight','sta'
	end
end
--- atakA ---------------------------------

