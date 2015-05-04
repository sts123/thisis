# atakM
if $ARGS[0] = 'atakVmanna':
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

			xgt'atakM','uronKritV'
		elseif popad < uvorot+uvorKoef:
			!нормальное попадание
			!атаковал противник
			'<b><font color = red>ПОПАДАНИЕ</font></b>'

			xgt'atakM','uronV'
		end
	elseif popad <= uvorot:
		'<b><font color = green>ПРОМАХ</font></b>'

		xgt'fight','sta'
	end
end

if $ARGS[0] = 'uronKritV':
	cla
	damage = RAND(1000,2000)
	damageM = RAND(1000,2000)

	if defence <= 0 and klon <= 0 and unmaterial <= 0 and barier <= 0:
		if dospeh > 0:damage = damage - dospehDef & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		health = health - damage
		manna = manna - damageM

		'<b><font color = red>Вашему здоровью нанесен урон <<damage>> единиц</font></b>'
		'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

		if zerkalo > 0:
			zerkalo = zerkalo - 1
			healthV = healthV - damage

			'<b><font color = green>Вы отразили урон и <<$nameV>> получили <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	end

	if defence > 0 and klon <= 0 and unmaterial <= 0:
		damSum = damage + damageM
		defence = defence - damSum

		'<b><font color = red>Вашей защите нанесен урон <<damSum>> единиц</font></b>'

		xgt'fight','sta'
	end

	if klon > 0 and unmaterial <= 0:
		klon = klon - 1

		'<b><font color = red>Уничтожен ваш клон, у вас осталось еще <<Klon>> клонов</font></b>'

		xgt'fight','sta'
	end

	if unmaterial > 0:
		unmaterial = unmaterial - 1

		'<b><font color = green>Удар противника пролетел прямо через ваше тело. ВЫ НЕ МАТЕРИАЛЬНЫ</font></b>'

		xgt'fight','sta'
	end

	if barier > 0:
		!барьер именитета для урона
		if barier >= damage:
			'<b><font color = green>Вы легко выдержали удар противника</font></b>'

			xgt'fight','sta'
		elseif barier < damage:
			manna = manna - damageM
			health = health - damage

			'<b><font color = red>Вам нанесен урон <<damage>> единиц</font></b>'
			'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

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
	damage = RAND(500,1000)
	damageM = RAND(500,1000)

	if defence <= 0 and klon <= 0 and unmaterial <= 0 and barier <= 0:
		if dospeh > 0:damage = damage - dospehDef & dospehEn = dospehEn - 1
		if damage < 0:damage = 0
		health = health - damage
		manna = manna - damageM

		'<b><font color = red>Вашему здоровью нанесен урон <<damage>> единиц</font></b>'
		'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

		if zerkalo > 0:
			zerkalo = zerkalo - 1
			healthV = healthV - damage

			'<b><font color = green>Вы отразили урон и <<$nameV>> получили <<damage>> единиц урона</font></b>'
		end

		xgt'fight','sta'
	end

	if defence > 0 and klon <= 0 and unmaterial <= 0:
		damSum = damage + damageM
		defence = defence - damSum

		'<b><font color = red>Вашей защите нанесен урон <<damSum>> единиц</font></b>'

		xgt'fight','sta'
	end

	if klon > 0 and unmaterial <= 0:
		klon = klon - 1

		'<b><font color = red>Уничтожен ваш клон, у вас осталось еще <<Klon>> клонов</font></b>'

		xgt'fight','sta'
	end

	if unmaterial > 0:
		unmaterial = unmaterial - 1

		'<b><font color = green>Удар противника пролетел прямо через ваше тело. ВЫ НЕ МАТЕРИАЛЬНЫ</font></b>'

		xgt'fight','sta'
	end

	if barier > 0:
		!барьер именитета для урона
		if barier >= damage:
			'<b><font color = green>Вы легко выдержали удар противника</font></b>'

			xgt'fight','sta'
		elseif barier < damage:
			manna = manna - damageM
			health = health - damage

			'<b><font color = red>Вам нанесен урон <<damage>> единиц</font></b>'
			'<b><font color = red>Вашей манне нанесен урон <<damageM>> единиц</font></b>'

			if zerkalo > 0:
				zerkalo = zerkalo - 1
				healthV = healthV - damage

				'<b><font color = green>Вы отразили урон и <<$nameV>> получили <<damage>> единиц урона</font></b>'
			end
		end

		xgt'fight','sta'
	end
end
--- atakM ---------------------------------

