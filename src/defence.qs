# defence
if defence <= 0:
	defence = 0
	defenceM = 0
	defenceW = 0
	defenceActPar = 0
	defenceActParM = 0
	defenceAct = 0
	defenceActM = 0
	defAtk = 0
	defAtkM = 0
end

if defenceV <= 0:
	defenceV = 0
	defenceMV = 0
	defenceWV = 0
	defenceActParV = 0
	defenceActParMV = 0
	defenceActV = 0
	defenceActMV = 0
	defAtkV = 0
	defAtkMV = 0
end

if defenceAct > 0:
	defence = defence + defenceActPar
	defenceAct = defenceAct - 1
	defActParK = defenceActPar/100
	manna = manna - defActParK

	'<b><font color = green>Регенерация защиты потребляет <<defActParK>> единиц манны.</font></b>'
end

if defenceActM > 0:
	defenceM = defenceM + defenceActParM
	defenceActM = defenceActM - 1
	defActParKM = defenceActParM/100
	manna = manna - defActParKM

	'<b><font color = green>Регенерация магической защиты потребляет <<defActParKM>> единиц манны.</font></b>'
end

if defenceActV > 0:
	defenceV = defenceV + defenceActParV
	defenceActV = defenceActV - 1
	mannaV = mannaV - (defenceActParV/100)
end

if defenceActMV > 0:
	defenceMV = defenceMV + defenceActParMV
	defenceActMV = defenceActMV - 1
	mannaV = mannaV - (defenceActParMV/100)
end

if defAtk > 0:
	defAtk = defAtk - 1

	'<b><font color = green>Ваша защита атакует противника.</font></b>'

	gs'atakB','atak'
end

if defAtkV > 0:
	defAtkV = defAtkV - 1

	'<b><font color = red>Защита противника атакует вас.</font></b>'

	gs'atakB1','atak'
end

if defAtkM > 0:
	defAtkM = defAtkM - 1
	if defenceMV <= 0 and unmaterialV = 0:
		defDamM = RAND(defenceActParM/2,defenceActParM)
		mannaV = mannaV - defDamM
		defence = defence + defDamM

		'<b><font color = green>Ваша защита поглотила <<defDamM>> манны у противника и эта манна пошла на укрепление вашей защиты.</font></b>'
	end

	if defenceMV > 0:
		defenceMV = defenceMV + defenceActParM

		'<b><font color = green>Ваша защита нанесла <<defenceActParM>> единиц урона защите от повреждений манны противника.</font></b>'
	end

	if unmaterialV > 0:
		'<b><font color = green>Ваша защита пытается поглотить манну но у ней ничего не выходит, противник не материален.</font></b>'
	end
end

if defAtkMV > 0:
	defAtkMV = defAtkMV - 1

	if defenceM <= 0 and unmaterial = 0:
		defDamMV = RAND(defenceActParMV/2,defenceActParMV)
		manna = manna - defDamMV
		defenceV = defenceV + defDamMV

		'<b><font color = red>Защита противника поглотила <<defDamMV>> манны у вас и эта манна пошла на укрепление защиты противника.</font></b>'
	end

	if defenceM > 0:
		defenceM = defenceM + defenceActParMV

		'<b><font color = red>Вашей защите от урона магии нанесен урон <<defenceActParMV>> единиц.</font></b>'
	end

	if unmaterial > 0:
		'<b><font color = red>Защита противника пытается поглощать вашу манну но у нее ничего не выходит.</font></b>'
	end
end
--- defence ---------------------------------

