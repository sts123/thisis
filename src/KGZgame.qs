# KGZgame
minut += 1
gs'stat'
gs'KGZdyn'

if KGZHP <= 0:
	cla
	*clr
	'<center><b>GAME OVER</b></center>'

	act 'Выйти из игры':gt'KGZstart'

	exit
end

if KGZhour >= 6 and KGZhour <= 21:
	KGZsvet = 1
else
	KGZsvet = 0
end

'<a href="exec:GT ''KGZstart''">Выйти из игры</a>'
'Здоровье <<KGZHP>>. День <<KGZday>>, час <<KGZhour>>.'
if KGZsup <= 0:'У вас нет провизии, вы голодаете!'
'Холодное оружие: <<$KGZweapon>>'
if KGZgun > 0:'<<$KGZgun>>'
if KGZgun2 > 0:'<<$KGZgun2>>'
if KGZgun3 > 0:'<<$KGZgun3>>'

if KGZgenerator > 0:
	if KGZbenzin = 0:$KGZbenzin = 'Но генератор не работает, так как у вас нет бензина.'
	if KGZbenzin = 1:$KGZbenzin = 'У вас залит полный бак бензина.'
	'У вас есть переносной генератор работающий на бензине. <<$KGZbenzin>>'
end

if KGZbolgarka > 0:'У вас есть болгарка работающая от электричества.'
if KGZratia = 1:'У вас есть рация.'
''

if KGZplace = 0:
	'<center><b>Квартира</b></center>'
	'Ваша квартира безопасное место. В квартире хранится провизия, которой вам хватит на <<KGZsup>> дней'

	if KGZmedkit > 0:
		'Аптечек <<KGZmedkit>> штук'

		if KGZHP < 100:
			act 'Лечиться':
				cls
				KGZhour += 1
				KGZHP = 100
				KGZmedkit -= 1
				minut += 1
				gs'stat'

				'Вы излечили здоровье при помощи аптечки.'

				act 'Далее':gt $curloc
			end
		end
	end

	act 'Бездельничать':
		cls
		KGZhour += 1
		minut += 1
		gs'stat'

		'Вы бездельничали в квартире, валяясь на диване и думая, как вам выкручиваться из создавшегося положения.'

		act 'Далее':gt $curloc
	end
	act 'Выйти из квартиры':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 1
		KGZbatl = 0
		gs'stat'

		'Вы осторожно вышли из квартиры стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
elseif KGZplace = 1:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Улица</b></center>'
	'На улице разбитые машины, лежат трупы.'

	if KGZbatl = 0:
		'По улице бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':
				if KGZsvet = 1:KGZdist = RAND(5,30)
				if KGZsvet = 2:KGZdist = RAND(3,10)
				gt'KGZfight'
			end
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod
	end
elseif KGZplace = 2:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Магазин</b></center>'
	'В магазине спертый воздух от испорченных продуктов и мертвецов.'

	if KGZbatl = 0:
		'По магазину бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':
				if KGZsvet = 1:KGZdist = RAND(3,10)
				if KGZsvet = 2:KGZdist = RAND(2,8)
				gt'KGZfight'
			end
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod2
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod2
	end
elseif KGZplace = 3:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Больница</b></center>'
	'Пол больницы усеян бумагами и мертвыми телами пациентов и врачей.'

	if KGZbatl = 0:
		'По больнице бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':
				if KGZsvet = 1:KGZdist = RAND(3,10)
				if KGZsvet = 2:KGZdist = RAND(2,8)
				gt'KGZfight'
			end
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod3
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod3
	end
elseif KGZplace = 4:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Бульвар</b></center>'
	'На бульваре скопление брошенных и разбитых машин, всюду трупы.'

	if KGZbatl = 0:
		'По бульвару бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':
				if KGZsvet = 1:KGZdist = RAND(5,30)
				if KGZsvet = 2:KGZdist = RAND(3,10)
				gt'KGZfight'
			end
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod4
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod4
	end
elseif KGZplace = 5:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Охотничий магазин</b></center>'
	'В охотничьем магазине все прилавки перевернуты, по полу разбросаны вещи и кое где видны разлагающиеся трупы.'

	if KGZbatl = 0:
		'По залу бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,6) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod5
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod5
	end
elseif KGZplace = 6:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Полицейский участок</b></center>'
	'В полицейском участке трупы полицейских разбросаны по полу, столы перевернуты и кругом валяются бумажки.'

	if KGZbatl = 0:
		'По залу бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,5) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod6
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod6
	end
elseif KGZplace = 7:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Хозяйственный магазин</b></center>'
	'В магазине все вверх дном и пахнет мертвячиной.'

	if KGZbatl = 0:
		'По залу бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,5) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod7
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod7
	end
elseif KGZplace = 8:
	KGZdead = RAND(KGZday*2,KGZday*4)

	'<center><b>Шоссе</b></center>'
	'На шоссе огромная пробка из брошенных автомобилей, кое где стоят разбитые машины и видны трупы.'

	if KGZbatl = 0:
		'По шоссе бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':
				if KGZsvet = 1:KGZdist = RAND(5,30)
				if KGZsvet = 2:KGZdist = RAND(3,10)
				gt'KGZfight'
			end
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod8
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod8
	end
elseif KGZplace = 9:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Заправка</b></center>'
	'На заправке стоит пара брошенных машин. Электричества нет и колонки работают только в ручном режиме.'

	if KGZbatl = 0:
		'По залу бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,5) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod9
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod9
	end
elseif KGZplace = 10:
	KGZdead = RAND(KGZday*5,KGZday*10)
	if KGZplaceA = 20:KGZplace = 100 & gt $curloc
	if KGZplaceA = 10:KGZplace = 11 & gt $curloc
	if KGZplaceA = 0:KGZplace = 8 & gt $curloc

	'<center><b>Шоссе в форт Брагг</b></center>'
	'<center><b><<KGZplaceA>>-й километр</b></center>'
	'На шоссе стоят разбитые машины лежат трупы.'

	if KGZbatl = 0:
		'По шоссе бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':
				if KGZsvet = 1:KGZdist = RAND(5,30)
				if KGZsvet = 2:KGZdist = RAND(3,10)
				gt'KGZfight'
			end
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod10
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod10
	end
elseif KGZplace = 11:
	KGZdead = RAND(KGZday*10,KGZday*20)

	'<center><b>Форт Брагг</b></center>'
	'Форт Брагг представляет из себя небольшое здание окруженное забором.'

	if KGZbatl = 0:
		'Вокруг форта бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(3,10) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod11
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod11
	end
elseif KGZplace = 12:
	if KGZdost = 0:KGZdost = 1
	KGZdead = RAND(KGZday*10,KGZday*20)

	'<center><b>Крыша Форта Брагг</b></center>'
	'На крыше полно лежащих без движения гниющих тел, множество стреляных гильз.'
	'Провизии хватит на <<KGZsup>> дней'
	if KGZfortQW > 0:'<a href="exec:dynamic $KGZvincent">Молодой усталый парень в форме рэйнджера</a>, сидит опираясь на снайперскую винтовку.'

	if KGZmedkit > 0:
		'Аптечек <<KGZmedkit>> штук'

		if KGZHP < 100:
			act 'Лечиться':
				cls
				KGZhour += 1
				KGZHP = 100
				KGZmedkit -= 1
				minut += 1
				gs'stat'

				'Вы излечили здоровье при помощи аптечки.'

				act 'Далее':gt $curloc
			end
		end
	end

	act 'Отдыхать':
		cls
		KGZhour += 1
		minut += 1
		gs'stat'

		'Вы устроились по удобней на крыше, не спуская глаз с люка в который могут пролезть мертвецы.'

		act 'Далее':gt $curloc
	end
	act 'Выйти в форт':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 11
		KGZbatl = 0
		gs'stat'

		'Вы осторожно спустились в люк, стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
elseif KGZplace = 13:
	KGZdead = RAND(KGZday*10,KGZday*20)

	'<center><b>Форт Брагг</b></center>'
	'<center><b>Продовольственный склад</b></center>'
	'На складе темно и слышатся шорохи.'

	if KGZbatl = 0:
		'По складу бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,3) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod13
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod13
	end
elseif KGZplace = 14:
	KGZdead = RAND(KGZday*10,KGZday*20)

	'<center><b>Форт Брагг</b></center>'
	'<center><b>Лазарет</b></center>'
	'В лазарете темно и слышатся шорохи.'

	if KGZbatl = 0:
		'По лазарету бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,3) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod14
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod14
	end
elseif KGZplace = 15:
	KGZdead = RAND(KGZday*10,KGZday*20)

	'<center><b>Форт Брагг</b></center>'
	'<center><b>Оружейная</b></center>'
	'В оружейной темно и слышатся шорохи.'

	if KGZbatl = 0:
		'По оружейной бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,3) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod15
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod15
	end
elseif KGZplace = 16:
	KGZdead = RAND(KGZday*10,KGZday*20)

	'<center><b>Форт Брагг</b></center>'
	'<center><b>Гараж</b></center>'
	'В гараже темно и слышатся шорохи.'

	if KGZbatl = 0:
		'По гаражу бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(2,3) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod16
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod16
	end
elseif KGZplace = 100:
	KGZdead = RAND(KGZday*20,KGZday*30)

	'<center><b>Город Колдкрик</b></center>'
	'Город разрушен и виднеются пожары.'

	if KGZbatl = 0:
		'По улицам бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(10,30) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod100
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod100
	end
elseif KGZplace = 101:
	'<center><b>Дом</b></center>'
	'Этот дом безопасное место. В доме хранится провизия, которой вам хватит на <<KGZsup>> дней'

	if KGZmedkit > 0:
		'Аптечек <<KGZmedkit>> штук'

		if KGZHP < 100:
			act 'Лечиться':
				cls
				KGZhour += 1
				KGZHP = 100
				KGZmedkit -= 1
				minut += 1
				gs'stat'

				'Вы излечили здоровье при помощи аптечки.'

				act 'Далее':gt $curloc
			end
		end
	end

	act 'Бездельничать':
		cls
		KGZhour += 1
		minut += 1
		gs'stat'

		'Вы бездельничали в квартире, валяясь на диване и думая, как вам выкручиваться из создавшегося положения.'

		act 'Далее':gt $curloc
	end
	act 'Выйти из дома':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 100
		KGZbatl = 0
		gs'stat'

		'Вы осторожно вышли из квартиры стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
elseif KGZplace = 102:
	KGZdead = RAND(KGZday*5,KGZday*10)

	'<center><b>Супермаркет</b></center>'
	'В супермаркете темно и слышатся шорохи.'

	if KGZbatl = 0:
		'По торговым залам бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(5,10) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod102
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod102
	end
elseif KGZplace = 200:
	KGZdead = RAND(KGZday,KGZday*2)

	'<center><b>Лес</b></center>'
	'В лесу темно и слышатся шорохи.'

	if KGZbatl = 0:
		'По лесу бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(10,30) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod200
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod200
	end
elseif KGZplace = 201:
	KGZdead = RAND(KGZday,KGZday*3)

	'<center><b>Ферма</b></center>'
	'Большая ферма огороженная заборчиком.'

	if KGZbatl = 0:
		'По окрестностям бродят <<KGZdead>> мертвецов'

		KGZagr = RAND(0,10)
		if KGZagr <= 8:
			'Почуяв вас, мертвецы тут же бросаются в атаку.'

			act 'Сражаться':KGZdist = RAND(10,30) & gt'KGZfight'
		else
			'На счастье, мертвецы вас не заметили.'

			dynamic $KGZvihod201
		end
	else
		'Ходячих мертвецов не видно.'

		dynamic $KGZvihod201
	end
elseif KGZplace = 202:
	'<center><b>Дом</b></center>'
	'Этот дом безопасное место. В доме хранится провизия, которой вам хватит на <<KGZsup>> дней'

	if KGZmedkit > 0:
		'Аптечек <<KGZmedkit>> штук'

		if KGZHP < 100:
			act 'Лечиться':
				cls
				KGZhour += 1
				KGZHP = 100
				KGZmedkit -= 1
				minut += 1
				gs'stat'

				'Вы излечили здоровье при помощи аптечки.'

				act 'Далее':gt $curloc
			end
		end
	end

	act 'Бездельничать':
		cls
		KGZhour += 1
		minut += 1
		gs'stat'

		'Вы бездельничали в квартире, валяясь на диване и думая, как вам выкручиваться из создавшегося положения.'

		act 'Далее':gt $curloc
	end
	act 'Выйти из дома':
		cls
		KGZhour += 1
		minut += 1
		KGZplace = 201
		KGZbatl = 0
		gs'stat'

		'Вы осторожно вышли из квартиры стараясь не наткнутся на мертвецов.'

		act 'Далее':gt $curloc
	end
end
--- KGZgame ---------------------------------

