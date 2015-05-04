# strelba
!gunpricel = 0 не прицельно
!gunpricel = 1 прицельно
!gunpricel = 2 очень точно

!gunpower урон от оружия
!buu количество выстрелов
!shoot навык стрельбы
:markstrelba
!рейты попадания

buurand = RAND(0,100)
if buu = 0:xgt'fight','sta'

if shoot = 0:
	if gunpricel = 0:
		if buurand = 100:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 100:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 95:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 95:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 90:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 90:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot > 0 and shoot < 20:
	if gunpricel = 0:
		if buurand >= 95:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 95:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 90:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 90:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 85:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 85:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
end
if shoot >= 20 and shoot < 40:
	if gunpricel = 0:
		if buurand >= 90:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 90:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 85:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 85:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 80:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 80:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 40 and shoot<60:
	if gunpricel = 0:
		if buurand >= 85:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 85:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 80:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 80:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 75:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 75:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 60 and shoot < 80:
	if gunpricel = 0:
		if buurand >= 80:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 80:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 75:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 75:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 70:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 70:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 80 and shoot < 100:
	if gunpricel = 0:
		if buurand >= 75:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 75:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 70:
			damage = gunpower
			jump'markstelokpopal'
		end
		if buurand < 70:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 65:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 65:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 100 and shoot < 150:
	if gunpricel = 0:
		if buurand >= 70:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 70:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 65:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 65:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 60:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 60:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 150 and shoot < 200:
	if gunpricel = 0:
		if buurand >= 65:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 65:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 60:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 60:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 55:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 55:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 200 and shoot < 300:
	if gunpricel = 0:
		if buurand >= 60:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 60:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 55:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 55:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 45:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 45:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 300 and shoot < 400:
	if gunpricel = 0:
		if buurand >= 55:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 55:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 50:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 50:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 45:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 45:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 400 and shoot < 500:
	if gunpricel = 0:
		if buurand >= 50:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 50:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 45:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 45:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 40:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 40:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
elseif shoot >= 500:
	if gunpricel = 0:
		if buurand >= 45:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 45:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 1:
		if buurand >= 40:
			damage = gunpower
			jump'markstelokpopal'
		elseif buurand < 40:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	elseif gunpricel = 2:
		if buurand >= 35:
			damage = gunpower
			jump'markstelokpopal'
		end
		if buurand < 35:
			buu -= 1
			'Промах'
			jump'markstrelba'
		end
	end
end

:markstelokpopal
!если попал
!расчет урона

if defenceV <= 0 and klonV <= 0 and unmaterialV <= 0 and barierV <= 0:
	if dospehV > 0:damage = damage - dospehDefV & dospehEnV = dospehEnV - 1
	if damage < 0:damage = 0
	healthV = healthV - damage
	Gcrimein += 1

	'<b><font color = green>Нанесен урон <<damage>> единиц</font></b>'

	if zerkaloV > 0:
		zerkaloV = zerkaloV - 1
		health = health - damage

		'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
	end

	if buu = 0:xgt'fight','sta'
	if buu > 0:buu -= 1 & jump'markstrelba'
end

if defenceV > 0 and klonV <= 0 and unmaterialV <= 0:
	defenceV = defenceV - damage

	'<b><font color = green>Защите противника нанесен урон <<damage>> единиц</font></b>'

	if buu = 0:xgt'fight','sta'
	if buu > 0:buu -= 1 & jump'markstrelba'
end

if klonV > 0 and unmaterialV <= 0:
	klonV = klonV - 1

	'<b><font color = green>Уничтожен клон противника, у него осталось еще <<KlonV>> клонов</font></b>'

	if buu = 0:xgt'fight','sta'
	if buu > 0:buu -= 1 & jump'markstrelba'
end

if unmaterialV > 0:
	unmaterialV = unmaterialV - 1

	'<b><font color = red>Ваша пуля пролетела прямо через тело противника. <<$nameV>> НЕ МАТЕРИАЛЕН</font></b>'

	if buu = 0:xgt'fight','sta'
	if buu > 0:buu -= 1 & jump'markstrelba'
end

if barierV > 0:
	!барьер именитета для урона
	if barierV >= damage:
		'<b><font color = red><<$nameV>> легко выдержал попадание</font></b>'

		if buu = 0:xgt'fight','sta'
		if buu > 0:buu -= 1 & jump'markstrelba'
	elseif barierV < damage:
		healthV = healthV - damage
		Gcrimein += 1

		'<b><font color = green>Нанесен урон <<damage>> единиц</font></b>'

		if zerkaloV > 0:
			zerkaloV = zerkaloV - 1
			health = health - damage

			'<b><font color = red><<$nameV>> отразил урон и вы получили <<damage>> единиц урона</font></b>'
		end
	end

	if buu = 0:xgt'fight','sta'
	if buu > 0:buu -= 1 & jump'markstrelba'
end
--- strelba ---------------------------------

