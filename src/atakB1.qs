# atakB1
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
			'<b><font color = green>КРИТИЧЕСКОЕ ПОПАДАНИЕ</font></b>'

			gs'atakB1','uronKrit'
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			!атаковал противник
			'<b><font color = green>ПОПАДАНИЕ</font></b>'

			gs'atakB1','uron'
		end
	elseif popad <= uvorot:
		'<b><font color = red>ПРОМАХ</font></b>'
	end
end

if $ARGS[0] = 'uronKrit':
	cla
	damDef = defenceV/100
	damKoef = damDef*20/100
	damage = RAND(damDef+damKoef,damDef+damKoef*2)
	gs'atakB1','damage'
end

if $ARGS[0] = 'uron':
	cla
	damDef = defenceV/100
	damKoef = damDef*20/100
	damage = RAND(damDef-damKoef,damDef+damKoef)
	gs'atakB1','damage'
end

if $ARGS[0] = 'damage':
	cla
	if defence <= 0 and klon <= 0 and unmaterial <= 0 and barier <= 0:
		if dospeh > 0:damage = damage - dospehDefV & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		health = health - damage
		!manna = manna - damageM

		if eleShV > 0:
			stun = RAND(eleShV,eleShV*3)

			'<b><font color = red>Защита противника парализовала вас на <<stun>> раундов</font></b>'
		end

		'<b><font color = red>Защита противника нанесла вам урон <<damage>> единиц</font></b>'
		!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

		if zerkalo > 0:
			zerkalo = zerkalo - 1
			defenceV = defenceV - damage

			'<b><font color = green>Вы отразили урон от защиты противника и защита противника получила <<damage>> единиц урона</font></b>'
		end

		!xgt'fight','sta'
	end

	if defence > 0 and klon <= 0 and unmaterial <= 0:
		!damSum = damage + damageM
		!defence = defence - damSum
		defence = defence - damage

		'<b><font color = red>Вашей защите нанесен урон <<damage>> единиц от защиты противника</font></b>'

		!xgt'fight','sta'
	end

	if klon > 0 and unmaterial <= 0:
		klon = klon - 1

		'<b><font color = red>Уничтожен ваш клон</font></b>'

		!xgt'fight','sta'
	end

	if unmaterial > 0:
		unmaterial = unmaterial - 1

		'<b><font color = green>Удар защиты противника прошел сквозь вас. ВЫ НЕ МАТЕРИАЛЬНЫ</font></b>'

		!xgt'fight','sta'
	end

	if barier > 0:
		!барьер именитета для урона
		if barier >= damage:
			'<b><font color = green>Вы легко выдержали удар защиты противника</font></b>'

			!xgt'fight','sta'
		elseif barier < damage:
			!manna = manna - damageM
			!health = health - damage
			health = health - damage

			if eleShV > 0:
				stun = RAND(eleShV,eleShV*3)

				'<b><font color = red>Защита противника парализовала вас на <<stun>> раундов</font></b>'
			end

			'<b><font color = red>Вам нанесен урон <<damage>> единиц от защиты противника</font></b>'
			!'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

			if zerkalo > 0:
				zerkalo = zerkalo - 1
				defenceV = defenceV - damage

				'<b><font color = green>Вы отразили урон и защита противника получила <<damage>> единиц урона</font></b>'
			end
		end
		!xgt'fight','sta'
	end
end
--- atakB1 ---------------------------------

