# atakA1
if $ARGS[0] = 'atak':
	cla
	!расчет попадания уворота
	poSp = speedV*20/100
	uvAg = agil*20/100
	poBox = reactV*20/100
	uvBox = react*20/100
	popad = RAND(reactV-poBox,reactV+poBox) + RAND(speedV-poSp,speedV+poSp) + bonusShV
	uvorot = RAND(react-uvBox,react+uvBox) + RAND(agil-uvAg,agil+uvAg)
	uvorKoef = uvorot*50/100
	popKoef = popad*50/100

	if popad > uvorot:
		if popad >= uvorot+uvorKoef:
			!крит, очень точное попадание
			'<b><font color = red>КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

			xgt'atakA1','uronKrit'
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			!атаковал противник
			'<b><font color = red>ПОПАДАНИЕ</font></b>'

			xgt'atakA1','uron'
		end
	elseif popad <= uvorot:
		'<b><font color = green>ПРОМАХ</font></b>'

		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uronKrit':
	cla
	damKoef = damTipV*20/100
	damage = RAND(damTipV+damKoef,damTipV+damKoef*2)

	if damTipMV > 0:
		damKoefM = damTipMV*20/100
		damageM = RAND(damTipMV+damKoefM,damTipMV+damKoefM*2)
	end

	xgt'atakA1','damage'
end

if $ARGS[0] = 'uron':
	cla
	damKoef = damTipV*20/100
	damage = RAND(damTipV-damKoef,damTipV+damKoef)

	if damTipMV > 0:
		damKoefM = damTipMV*20/100
		damageM = RAND(damTipMV-damKoefM,damTipMV+damKoefM)
	end

	xgt'atakA1','damage'
end

if $ARGS[0] = 'damage':
	cla
	if defence <= 0 and klon <= 0 and unmaterial <= 0 and barier <= 0:
		if dospeh > 0:damage = damage - dospehDef & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		health = health - damage

		if hidanAtk = 1:
			hidanAtk = 0
			zerkaloV = zerkaloV + 50
			bloodV = bloodV + 50

			'<b><font color = red><<$nameV>> пьет вашу кровь.</font></b>'
		end

		if damTipMV > 0:
			manna = manna - damageM
			manna = manna + damageM

			'<b><font color = red><<$nameV>> поглотил <<damageM>> единиц манны у вас.</font></b>'
		end

		if poisonAV = 1:
			poisonV = 50

			'<b><font color = red><<$nameV>> попаданием иглы отравил вас.</font></b>'
		end

		!manna = manna - damageM

		if eleShV > 0:
			stun = RAND(eleShV,eleShV*3)

			'<b><font color = red>Вы парализованы на <<stunV>> раундов</font></b>'
		end

		'<b><font color = red><<$nameV>> нанес вам урон <<damage>> единиц</font></b>'
		!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

		if zerkalo > 0:
			zerkalo = zerkalo - 1
			healthV = healthV - damage

			'<b><font color = green>Вы отразили урон и <<$nameV>> получил <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	end

	if defence > 0 and klon <= 0 and unmaterial <= 0:
		!damSum = damage + damageM
		!defence = defence - damSum
		defence = defence - damage

		'<b><font color = red>Вашей защите нанесен урон <<damage>> единиц</font></b>'

		xgt'fight','sta'
	end

	if klon > 0 and unmaterial <= 0:
		klon = klon - 1

		'<b><font color = red>Уничтожен ваш клон</font></b>'

		xgt'fight','sta'
	end

	if unmaterial > 0:
		unmaterial = unmaterial - 1

		'<b><font color = green>Удар противника прошел сквозь вас. ВЫ НЕ МАТЕРИАЛЬНЫ</font></b>'

		xgt'fight','sta'
	end

	if barier > 0:
		!барьер именитета для урона
		if barier >= damage:
			'<b><font color = green>Вы легко выдержали удар противника</font></b>'

			xgt'fight','sta'
		elseif barier < damage:
			!manna = manna - damageM
			!health = health - damage
			health = health - damage

			if damTipM > 0:
				manna = manna - damageM
				mannaV = mannaV + damageM

				'<b><font color = green>Вы поглотили <<damageM>> единиц манны у противника.</font></b>'
			end

			if eleShV > 0:
				stun = RAND(eleShV,eleShV*3)

				'<b><font color = green><<$nameV>> парализован на <<stunV>> раундов</font></b>'
			end

			if poisonAV = 1:
				poisonV = 50

				'<b><font color = red><<$nameV>> попаданием иглы отравил вас.</font></b>'
			end

			'<b><font color = red>Вам нанесли урон <<damage>> единиц</font></b>'
			!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

			if zerkalo > 0:
				zerkalo = zerkalo - 1
				healthV = healthV - damage

				'<b><font color = green>Вы отразили урон и противник получил <<damage>> единиц урона</font></b>'
			end
		end

		xgt'fight','sta'
	end
end

if $ARGS[0] = 'atakW':
	cla
	!расчет попадания уворота
	poSp = speedV*20/100
	uvAg = agil*20/100
	poBox = reactV*20/100
	uvBox = react*20/100
	popad = RAND(reactV-poBox,reactV+poBox) + RAND(speedV-poSp,speedV+poSp)
	uvorot = RAND(react-uvBox,react+uvBox) + RAND(agil-uvAg,agil+uvAg)
	uvorKoef = uvorot*50/100
	popKoef = popad*50/100

	if popad > uvorot:
		if popad >= uvorot+uvorKoef:
			!крит, очень точное попадание
			'<b><font color = red>КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

			xgt'atakA1','uronKritW'
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			'<b><font color = red>ПОПАДАНИЕ</font></b>'

			xgt'atakA1','uronW'
		end
	elseif popad <= uvorot:
		'<b><font color = green>ПРОМАХ</font></b>'

		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uronKritW':
	cla
	damKoef = damTipV*20/100
	damage = RAND(damTipV+damKoef,damTipV+damKoef*2)
	damKoefM = damTipMV*20/100
	damageM = RAND(damTipMV+damKoefM,damTipMV+damKoefM*2)
	xgt'atakA1','damageW'
end

if $ARGS[0] = 'uronW':
	cla
	damKoef = damTipV*20/100
	damage = RAND(damTipV-damKoef,damTipV+damKoef)
	damKoefM = damTipMV*20/100
	damageM = RAND(damTipMV-damKoefM,damTipMV+damKoefM)
	xgt'atakA1','damageW'
end

if $ARGS[0] = 'damageW':
	cla
	if defence <= 0 and klon <= 0 and unmaterial <= 0 and barier <= 0:
		if dospeh > 0:damage = damage - dospehDef & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		health = health - damage
		manna = manna - damageM

		'<b><font color = green>Вы нанесен урон <<damage>> единиц</font></b>'
		'<b><font color = green>Вы нанесли урон манне противника <<damageM>> единиц</font></b>'

		if zerkalo > 0:
			zerkalo = zerkalo - 1
			health = health - damage

			'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
		end
		xgt'fight','sta'
	end

	if defence > 0 and klon <= 0 and unmaterial <= 0:
		damSum = damage + damageM
		defence = defence - damSum
		!defenceV = defenceV - damage

		'<b><font color = green>Вы нанесли урон <<damSum>> единиц защите противника</font></b>'

		xgt'fight','sta'
	end

	if klon > 0 and unmaterial <= 0:
		klon = klon - 1

		'<b><font color = green>Уничтожен клон противника</font></b>'

		xgt'fight','sta'
	end

	if unmaterial > 0:
		unmaterial = unmaterial - 1

		'<b><font color = red>Ваш удар прошел сквозь тело противника. ПРОТИВНИК НЕ МАТЕРИАЛЕН</font></b>'

		xgt'fight','sta'
	end

	if barier > 0:
		!барьер именитета для урона
		if barier >= damage:
			'<b><font color = red><<$nameV>> легко выдержал ваш удар</font></b>'

			xgt'fight','sta'
		elseif barier < damage:
			manna = manna - damageM
			health = health - damage
			!healthV = healthV - damage

			'<b><font color = green>Вы нанесли урон <<damage>> единиц</font></b>'
			'<b><font color = green>Вы нанесли урон манне противника <<damageM>> единиц</font></b>'

			if zerkalo > 0:
				zerkalo = zerkalo - 1
				healthV = healthV - damage

				'<b><font color = red>Противник отразил урон и вы получили <<damage>> единиц урона</font></b>'
			end
		end

		xgt'fight','sta'
	end
end
--- atakA1 ---------------------------------

