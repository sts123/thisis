# atakB
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

			gs'atakB','uronKrit'
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			!атаковал противник
			'<b><font color = green>ПОПАДАНИЕ</font></b>'

			gs'atakB','uron'
		end
	elseif popad <= uvorot:
		'<b><font color = red>ПРОМАХ</font></b>'
	end
end

if $ARGS[0] = 'uronKrit':
	cla
	damDef = defence/100
	damKoef = damDef*20/100
	damage = RAND(damDef+damKoef,damDef+damKoef*2)
	gs'atakB','damage'
end

if $ARGS[0] = 'uron':
	cla
	damDef = defence/100
	damKoef = damDef*20/100
	damage = RAND(damDef-damKoef,damDef+damKoef)
	gs'atakB','damage'
end

if $ARGS[0] = 'damage':
	cla
	if defenceV <= 0 and klonV <= 0 and unmaterialV <= 0 and barierV <= 0:
		if dospehV > 0:damageV = damageV - dospehDefV & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		healthV = healthV - damage
		!manna = manna - damageM

		if eleSh > 0:
			stunV = RAND(eleSh,eleSh*3)

			'<b><font color = green><<$nameV>> парализован на <<stunV>> раундов</font></b>'
		end

		'<b><font color = green>Вы нанесли урон <<damage>> единиц</font></b>'
		!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

		if zerkaloV > 0:
			zerkaloV = zerkaloV - 1
			defence = defence - damage

			'<b><font color = red><<$nameV>> отразил урон и ваша защита получила <<damage>> единиц урона</font></b>'
		end

		!xgt'fight','sta'
	end

	if defenceV > 0 and klonV <= 0 and unmaterialV <= 0:
		!damSum = damage + damageM
		!defence = defence - damSum
		defenceV = defenceV - damage

		'<b><font color = green>Ваша защита нанесла урон <<damage>> единиц защите противника</font></b>'

		!xgt'fight','sta'
	end

	if klonV > 0 and unmaterialV <= 0:
		klonV = klonV - 1

		'<b><font color = green>Уничтожен клон противника</font></b>'

		!xgt'fight','sta'
	end

	if unmaterialV > 0:
		unmaterialV = unmaterialV - 1

		'<b><font color = red>Удар вашей защиты прошел сквозь тело противника. ПРОТИВНИК НЕ МАТЕРИАЛЕН</font></b>'

		!xgt'fight','sta'
	end

	if barierV > 0:
		!барьер именитета для урона
		if barierV >= damage:
			'<b><font color = red><<$nameV>> легко выдержал удар вашей защиты</font></b>'

			!xgt'fight','sta'
		elseif barierV < damage:
			!manna = manna - damageM
			!health = health - damage
			healthV = healthV - damage

			if eleSh > 0:
				stunV = RAND(eleSh,eleSh*3)

				'<b><font color = green><<$nameV>> парализован на <<stunV>> раундов</font></b>'
			end

			'<b><font color = green>Ваша защита нанесла урон <<damage>> единиц</font></b>'
			!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

			if zerkaloV > 0:
				zerkaloV = zerkaloV - 1
				defence = defence - damage

				'<b><font color = red>Противник отразил урон и ваша защита получила <<damage>> единиц урона</font></b>'
			end
		end

		!xgt'fight','sta'
	end
end
--- atakB ---------------------------------

