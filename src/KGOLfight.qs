# KGOLfight
minut += 1
gs'stat'

if otkathirki > 0:otkathirki -= 1

if KGHP < KGHPMAX and KGOLhirka > 0 and otkathirki <= 0:
	kghneed = KGHPMAX-KGHP
	otkathirki = 3

	if KGOLhirka >= kghneed:
		KGOLhirka -= kghneed
		KGHP = KGHPMAX
	else
		KGHP = KGOLhirka
		KGOLhirka = 0
	end
end

if KGOLdist < 0:KGOLdist = 0

if KGOLtimer > 0:
	KGOLtimer -= 1

	if KGOLtimer <= 0:
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
	end
end

if unvis > 0:'Вы невидимы'
if poison > 0:poison -= 1 & KGHPV -= KGOLspell4*10 & 'Яд наносит урон противнику <<KGOLspell4*10>>'
if firecircle > 0:firecircle -= 1 & KGHPV -= KGOLspell9*50 & 'Круг огня наносит урон противнику <<KGOLspell9*50>>'
'Жизнь <<KGHP>>, манна <<KGManna>>'
'<<$KGname>> Жизнь <<KGHPV>>, манна <<KGMannaV>>'
if KGOLhirka > 0:'Хирка может восстановить автоматически <<KGOLhirka>> единиц здоровья'
if otkathirki > 0:'Хирка откатится через <<otkathirki>> ходов.'
'Дистанция <<KGOLdist>>'
if KGOLtimer > 0:'Обкаст будет действовать еще <<KGOLtimer>> раундов'
if KGOLcooldown > 0:'Откат навыков завершится через <<KGOLcooldown>> раундов'

!конец боя
if KGHP <= 0:
	KGOLloss += 1
	poison = 0
	firecircle = 0
	manna -= 100

	'Вы проиграли бой'

	act 'Уйти на респ':gt'KGOLgame'

	exit
end

if KGHPV <= 0:
	poison = 0
	firecircle = 0
	KGOLWin += 1
	KGOLmoney += KGOLPrizeM
	KGOLexp += KGOLPrizeExp
	manna += 100

	'<<$KGname>> упал. Вы выиграли бой.'
	'Вы получили <<KGOLPrizeM>> монет и <<KGOLPrizeExp>> опыта'

	if KGOLennumBoss = 1 and boss5lvl = 0:boss5lvl = 1 & KGOLhirka += 5000 & 'С босса вывалилась маленькая хирка'
	if KGOLennum = 0 and KGOLmqw = 1:KGOLqwvip += 1 & 'Еще один моб зафармлен для квеста'
	if KGOLennum = 1 and KGOLmqw = 3:KGOLqwvip += 1 & 'Еще один моб зафармлен для квеста'
	if KGOLennum = 2 and KGOLmqw = 5:KGOLqwvip += 1 & 'Еще один моб зафармлен для квеста'
	if KGOLennum = 3 and KGOLmqw = 7:KGOLqwvip += 1 & 'Еще один моб зафармлен для квеста'
	if KGOLennum = 4 and KGOLmqw = 9:KGOLqwvip += 1 & 'Еще один моб зафармлен для квеста'
	if KGOLennum = 5 and KGOLmqw = 11:KGOLqwvip += 1 & 'Еще один моб зафармлен для квеста'
	if KGOLennum = 6 and KGOLmqw = 13:KGOLqwvip += 1 & 'Еще один моб зафармлен для квеста'

	act 'Выйти из боя':gt'KGOLgame'

	exit
end

!инициатива
KGOLiniV = RAND(KGOLspeedV/2,KGOLspeedV*2)
KGOLini = RAND(KGOLspeed/2,KGOLspeed*2)

if KGOLini = KGOLiniV:
	hodrand = RAND(0,1)
	if hodrand = 0:KGOLini = 1 & KGOLiniV = 0
	if hodrand = 1:KGOLini = 0 & KGOLiniV = 1
end

if KGOLini > KGOLiniV:KGOLiniSUM += 1
if KGOLini < KGOLiniV:KGOLiniSUM -= 1
if KGOLiniSUM > 3:KGOLini = 0 & KGOLiniV = 1 & KGOLiniSUM = 0
if KGOLiniSUM < -3:KGOLini = 1 & KGOLiniV = 0 & KGOLiniSUM = 0

!ходы
if KGOLini > KGOLiniV or unvis > 0:
	'Сейчас ваш ход'
	if KGOLklass = 1:
		!воин
		if KGOLdist < 3:
			act 'Атаковать':
				cla
				KGOLpower = KGOLstren+KGOLwpower
				dynamic $KGOLatk
				act 'Далее':gt $curloc
			end

			if KGOLspell > 0 and KGManna >= KGOLspell*10:
				act 'Мощный удар (<<KGOLspell*10>> манны)':
					cla
					KGManna -= KGOLspell
					KGOLpower = KGOLstren+KGOLwpower+(KGOLspell*100)
					dynamic $KGOLatk

					act 'Далее':gt $curloc
				end
			end

			if KGOLspell2 > 0 and KGManna >= KGOLspell2*10:
				act 'Множественный удар (<<KGOLspell2*10>> манны)':
					cla
					KGManna -= KGOLspell2
					KGOLpower = KGOLstren+KGOLwpower
					KGLOloop = KGOLspell2+1
					dynamic $KGOLatkKGOLspell2
					act 'Далее':gt $curloc
				end
			end

			if KGOLspell3 > 0 and KGManna >= KGOLspell3*10 and KGOLcooldown <= 0:
				act 'Увеличение брони (<<KGOLspell3*10>> манны)':
					cla
					KGManna -= KGOLspell3
					KGOLbronaMod += KGOLspell3*5
					KGOLtimer += KGOLspell3+1
					KGOLcooldown += KGOLspell3+3
					act 'Далее':gt $curloc
				end
			end
		end
	elseif KGOLklass = 2:
		!вор
		if KGOLdist < 5:
			act 'Атаковать':
				cla
				KGOLpower = KGOLstren+KGOLwpower
				dynamic $KGOLatk
				act 'Далее':gt $curloc
			end

			if KGOLspell4 > 0 and KGManna >= KGOLspell4*10:
				act 'Подлый удар (<<KGOLspell4*10>> манны)':
					cla
					KGManna -= KGOLspell4
					KGOLpower = KGOLstren+KGOLwpower+(KGOLspell5*100)
					dynamic $KGOLatk
					act 'Далее':gt $curloc
				end
			end

			if KGOLspell5 > 0 and KGManna >= KGOLspell5*10:
				act 'Отравленный клинок (<<KGOLspell5*10>> манны)':
					cla
					KGManna -= KGOLspell5
					KGOLpower = KGOLstren+KGOLwpower
					dynamic $KGOLatkPoison
					act 'Далее':gt $curloc
				end
			end

			if KGOLspell6 > 0 and KGManna >= KGOLspell6*10 and KGOLcooldown <= 0:
				act 'Невидимость (<<KGOLspell6*10>> манны)':
					cla
					KGManna -= KGOLspell6
					unvis += KGOLspell6+1
					KGOLcooldown += KGOLspell6+3
					act 'Далее':gt $curloc
				end
			end
		end
	elseif KGOLklass = 3:
		!маг
		act 'Атаковать':
			cla
			KGOLpower = KGOLintel+KGOLwpower
			dynamic $KGOLatk
			act 'Далее':gt $curloc
		end

		if KGOLspell7 > 0 and KGManna >= KGOLspell7*10:
			act 'Фаерболл (<<KGOLspell7*10>> манны)':
				cla
				KGManna -= KGOLspell7
				KGOLpower = RAND(KGOLspell7*100,KGOLspell7*200)
				dynamic $KGOLatkFB
				act 'Далее':gt $curloc
			end
		end

		if KGOLspell8 > 0 and KGManna >= KGOLspell8*10:
			act 'Отбрасывание (<<KGOLspell5*10>> манны)':
				cla
				KGManna -= KGOLspell5
				KGOLdist += RAND(KGOLspell5*10,KGOLspell5*50)
				'Вы отшвырнули противника и теперь между вами дистанция <<KGOLdist>> метров'
				act 'Далее':gt $curloc
			end
		end

		if KGOLspell9 > 0 and KGManna >= KGOLspell9*10 and KGOLcooldown <= 0:
			act 'Круг огня (<<KGOLspell9*10>> манны)':
				cla
				KGManna -= KGOLspell9
				firecircle += KGOLspell9+1
				KGOLcooldown += KGOLspell9+3
				'Все вокруг вас горит адским пламенем'
				act 'Далее':gt $curloc
			end
		end
	elseif KGOLklass = 4:
		!жрец
		act 'Атаковать':
			cla
			KGOLpower = KGOLintel+KGOLwpower
			dynamic $KGOLatk
			act 'Далее':gt $curloc
		end
	elseif KGOLklass = 5:
		!лучник
		act 'Атаковать':
			cla
			KGOLpower = KGOLspeed+KGOLwpower
			dynamic $KGOLatk
			act 'Далее':gt $curloc
			end
	else
		!варвар
		if KGOLdist < 2:
			act 'Атаковать':
				cla
				KGOLpower = KGOLstren+KGOLwpower
				dynamic $KGOLatk
				act 'Далее':gt $curloc
			end
		end
	end

	if KGOLdist > 0:
		act 'Бежать к противнику':
			KGOLdist -= RAND(KGOLspeed/20,KGOLspeed/10)
			gt $curloc
		end
	end

	act 'Убегать от противника':
		KGOLdist += RAND(KGOLspeed/20,KGOLspeed/10)
		gt $curloc
	end

	if KGOLpotionH > 0:
		act 'Выпить зелье здоровья':
			KGOLpotionH -= 1
			KGHP += 100
			gt $curloc
		end
	end

	if KGOLpotionM > 0:
		act 'Выпить зелье манны':
			KGOLpotionM -= 1
			KGManna += 100
			gt $curloc
		end
	end
else
	'Сейчас ход противника'
	if KGOLdist <= KGOLneedDist:
		'<<$KGname>> атакует вас'

		dynamic $KGOLatkV
	else
		KGOLdist -= RAND(KGOLspeedV/20,KGOLspeedV/10)
		'<<$KGname>> бежит к вам'
	end

	act 'Далее':gt $curloc
end
--- KGOLfight ---------------------------------

