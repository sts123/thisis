# KGOLgame
$KGOLstat = {
	clr
	'<<$KGOLname>> <<$KGOLrace>> <<$KGOLklass>> <<KGOLlvl>> уровня'
	'<a href="exec:dynamic $KGOLstat2 ">Закрыть статистику</a>'
	if KGOLneedExp > 0:pl'Всего опыта <<KGOLexp>>, необходимо до следующего уровня <<KGOLneedExp>> опыта'
	if KGOLneedExp <= 0:pl'<a href="exec:dynamic $KGOLrise "><font color = red>Вам необходимо повысить уровень.</font></a>'
	'Сила <<KGOLstren>>, скорость и уклонение <<KGOLspeed>>, выносливость <<KGOLvital>>, интеллект <<KGOLintel>>, защита брони <<KGOLbrona>>, бонус к урону от оружия <<KGOLwpower>>'
	''
	'<center>Шмот</center>'
	'<<$KGOLset>>'
	'<<$KGOLset2>>'
	'<<$KGOLset3>>'
	'<<$KGOLset4>>'
	'<<$KGOLset5>>'
	''
	'<center>Инвентарь</center>'
	if KGOLpotionH > 0:pl'Зелий здоровья <<KGOLpotionH>> штук. <a href="exec:KGOLpotionH -= 1 & KGHP += 100 & gs''stat'' & gt $curloc "><font color = red>Выпить.</font></a>'
	if KGOLpotionM > 0:pl'Зелий манны <<KGOLpotionM>> штук. <a href="exec:KGOLpotionM -= 1 & KGManna += 100 & gs''stat'' & gt $curloc "><font color = red>Выпить.</font></a>'
	'<center>ПВЕ</center>'
	'Побед <<KGOLWin>>, поражений <<KGOLLoss>>'
	'<center>ПВП</center>'
	'Побед <<KGOLpvpWin>>, поражений <<KGOLpvpLoss>>'
}

$KGOLstat2 = {
	gs'stat'
}

minut += 1
gs'stat'

if KGOLset = 0:$KGOLset = 'На голове ничего нет'
if KGOLset2 = 0:$KGOLset2 = 'На теле простая одежда'
if KGOLset3 = 0:$KGOLset3 = 'На ногах простые ботинки'
if KGOLset4 = 0:$KGOLset4 = 'На руках нет перчаток'
if KGOLset5 = 0:$KGOLset5 = 'Оружия нет'

KGHPMAX = KGOLvital*10
KGMannaMax = KGOLintel*10
if KGHP > KGHPMAX:KGHP = KGHPMAX
if KGManna > KGMannaMax:KGManna = KGMannaMax
KGOLbrona -= KGOLbronaMod
KGOLbronaMod = 0
KGOLstren -= KGOLstrenMod
KGOLstrenMod = 0
KGOLspeed -= KGOLspeedMod
KGOLspeedMod = 0
KGOLvital -= KGOLvitalMod
KGOLvitalMod = 0
KGOLintel -= KGOLintelMod
KGOLintelMod = 0
KGOLwpower -= KGOLwpowerMod
KGOLwpowerMod = 0
KGOLcooldown = 0

if KGHP < KGHPMAX and KGOLhirka > 0:
	kghneed = KGHPMAX-KGHP
	if KGOLhirka >= kghneed:
		KGOLhirka -= kghneed
		KGHP = KGHPMAX
	else
		KGHP = KGOLhirka
		KGOLhirka = 0
	end
end
if KGHP < 0:KGHP = 0

gs'KGOLexpa'

'<a href="exec:GT ''KGstart''">Выйти из игры</a>'
'<a href="exec:dynamic $KGOLstat ">Посмотреть статистику</a>'
'<<$KGOLname>> <<$KGOLrace>> <<$KGOLklass>> <<KGOLlvl>> уровня'
'Жизнь <<KGHP>>, манна <<KGManna>>'
if KGHP < KGHPMAX:'У вас осталось <<KGHP*100/KGHPMAX>>% от жизни'
if KGManna < KGMannaMax:'У вас осталось <<KGManna*100/KGMannaMax>>% от манны'
if KGOLhirka > 0:'Хирка может восстановить автоматически <<KGOLhirka>> единиц здоровья'
if KGOLPrizeM > 0:'У вас <<KGOLmoney>> монет'
if KGOLneedExp <= 0:'<a href="exec:dynamic $KGOLrise "><font color = red>Вам необходимо повысить уровень.</font></a>'
if KGOLpoint > 0:'<a href="exec:dynamic $KGOLrise "><font color = red>У вас есть не распределенные очки навыков.</font></a>'
if KGOLspellpoint >= 4:'<a href="exec:dynamic $KGOLrise2 "><font color = red>Вы можете выбрать умение.</font></a>'
'<<KGOLspellpoint>>'
''
'<center><b>Деревня</b></center>'
'Вы в живописной деревне где на респе стоят недвижимо персонажи. НПС стоят столбами и в отдалении виднеются монстры.'

act 'Подойти к НПС':
	cls
	minut += 1

	if KGOLmqw = 12 and KGOLlvl >= 5:
		KGOLmqw = 13

		'(НПС) - <<$KGOLname>> тебе необходимо убить 10ть королевских жуков. Награда 200 опыта.'
	elseif KGOLmqw = 13 and KGOLqwvip >= 10:
		KGOLqwvip = 0
		KGOLmqw = 14
		KGOLexp += 200

		'(НПС) - <<$KGOLname>> поздравляю, вот в награду 200 опыта.'
	elseif KGOLmqw = 10 and KGOLlvl >= 5:
		KGOLmqw = 11

		'(НПС) - <<$KGOLname>> тебе необходимо убить 10ть жаб. Награда 100 опыта.'
	elseif KGOLmqw = 11 and KGOLqwvip >= 10:
		KGOLqwvip = 0
		KGOLmqw = 12
		KGOLexp += 100

		'(НПС) - <<$KGOLname>> поздравляю, вот в награду 100 опыта.'
	elseif KGOLmqw = 8:
		KGOLmqw = 9

		'(НПС) - <<$KGOLname>> тебе необходимо убить 30ть молодых кактусов. Тогда я дам тебе шлем.'
	elseif KGOLmqw = 9 and KGOLqwvip >= 30:
		KGOLqwvip = 0
		KGOLmqw = 10
		KGOLset = 1
		KGOLbrona += 2
		$KGOLset = 'Шлем из грубой кожи'

		'(НПС) - <<$KGOLname>> поздравляю, вот твой шлем.'
	elseif KGOLmqw = 6:
		KGOLmqw = 7

		'(НПС) - <<$KGOLname>> тебе необходимо убить 25ть беззубых волков. Тогда я дам тебе руковицы.'
	elseif KGOLmqw = 7 and KGOLqwvip >= 25:
		KGOLqwvip = 0
		KGOLmqw = 8
		KGOLset4 = 1
		KGOLbrona += 2
		$KGOLset4 = 'Рукавицы из грубой кожи'

		'(НПС) - <<$KGOLname>> поздравляю, вот твои рукавицы.'
	elseif KGOLmqw = 4:
		KGOLmqw = 5

		'(НПС) - <<$KGOLname>> тебе необходимо убить 20ть росянок. Тогда я дам тебе сапоги.'
	elseif KGOLmqw = 5 and KGOLqwvip >= 20:
		KGOLqwvip = 0
		KGOLmqw = 6
		KGOLset3 = 1
		KGOLbrona += 2
		$KGOLset3 = 'Сапоги из грубой кожи'

		'(НПС) - <<$KGOLname>> поздравляю, вот твои сапоги.'
	elseif KGOLmqw = 2:
		KGOLmqw = 3

		'(НПС) - <<$KGOLname>> тебе необходимо убить 10ть радужных жуков. Тогда я дам тебе броню.'
	elseif KGOLmqw = 3 and KGOLqwvip >= 10:
		KGOLqwvip = 0
		KGOLmqw = 4
		KGOLset2 = 1
		KGOLbrona += 10
		$KGOLset2 = 'Простая броня'

		'(НПС) - <<$KGOLname>> поздравляю, вот твоя броня.'
	elseif KGOLmqw = 0:
		KGOLmqw = 1

		'(НПС) - <<$KGOLname>> тебе необходимо убить 5ть хищных цветов. Тогда я дам тебе оружие.'
	elseif KGOLmqw = 1 and KGOLqwvip >= 5:
		KGOLqwvip = 0
		KGOLmqw = 2
		KGOLset5 = 1
		KGOLwpower = 10

		if KGOLklass = 1 or KGOLklass = 6:$KGOLset5 = 'В руках простой меч'
		if KGOLklass = 2:$KGOLset5 = 'В руках простые кинжалы'
		if KGOLklass = 3 or KGOLklass = 4:$KGOLset5 = 'В руках простой посох'
		if KGOLklass = 5:$KGOLset5 = 'В руках простой лук'

		'(НПС) - <<$KGOLname>> поздравляю, вот твое оружие.'
	end

	act 'Уйти':gt $curloc
end
act 'Идти в магазин':
	cls
	minut += 1

	if KGOLmoney >= 300:
		act 'Купить зелье здоровья 300':
			KGOLmoney -= 300
			KGOLpotionH += 1
			gt $curloc
		end
	end

	if KGOLmoney >= 300:
		act 'Купить зелье манны 300':
			KGOLmoney -= 300
			KGOLpotionM += 1
			gt $curloc
		end
	end

	if KGOLmoney >= 1500 and KGOLhirka <= 0:
		act 'Купить хирку 1500':
			KGOLmoney -= 1500
			KGOLhirka += 10000
			gt $curloc
		end
	end

	act 'Уйти':gt $curloc
end

if KGHP < KGHPMAX or KGManna < KGMannaMax:
	act 'Регенерировать (1 час)':
		cls
		minut += 60
		KGHP = KGHPMAX
		KGManna = KGMannaMax

		'Это было очень уныло. Вы сидели целый час регенерируя своего персонажа. Но зато бесплатно.'

		act 'Уйти':gt $curloc
	end
end

if KGHP > 0:
	act 'Фармить около деревни':
		cls
		minut += 1
		KGOLdist = RAND(1,10)

		'По полю бродят разнообразные монстры'

		act 'Хищный цветок':
			gs'KGOLenemy','0'
			gt'KGOLfight'
		end
		act 'Радужный жук':
			gs'KGOLenemy','1'
			gt'KGOLfight'
		end
		act 'Росянка':
			gs'KGOLenemy','2'
			gt'KGOLfight'
		end
		act 'Беззубый пес':
			gs'KGOLenemy','3'
			gt'KGOLfight'
		end
		act 'Молодой кактус':
			gs'KGOLenemy','4'
			gt'KGOLfight'
		end
	end
end

if KGOLlvl >= 5 and KGHP > 0:
	act 'Фармить около мельницы':
		cls
		minut += 1
		KGOLdist = RAND(1,10)

		'Около мельницы бродят разнообразные монстры'

		act 'Жаба':
			gs'KGOLenemy','5'
			gt'KGOLfight'
		end
		act 'Королевский жук':
			gs'KGOLenemy','6'
			gt'KGOLfight'
		end
		act 'Пятнистый богомол':
			gs'KGOLenemy','7'
			gt'KGOLfight'
		end
		act 'Чумная крыса':
			gs'KGOLenemy','8'
			gt'KGOLfight'
		end
		act 'Колючий кактус':
			gs'KGOLenemy','9'
			gt'KGOLfight'
		end
	end
	act 'Босс 5го уровня':
		gs'KGOLboss','1'
		gt'KGOLfight'
	end
end
--- KGOLgame ---------------------------------

