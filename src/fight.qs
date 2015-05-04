# fight
if $ARGS[0] = 'start':
	cla
	inFight = 1
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)
	gs'defence'
	gs'statBat'

	if SasoriBody > 2 and healthV <= 0 or SasoriBody > 2 and mannaV <= 0 or SasoriBody > 2 and willpowerV <= 0:
		SasoriBody = SasoriBody - 1
		gs'priziv','sasori'

		'<b><font color = red>Кукла рассыпалось на запчасти и тут же в бой вступила другая кукла Сасори.</font></b>'
		'<b><font color = red>Вы услышали звонкий голос Сасори "У меня много кукол, ты не победишь."</font></b>'
	elseif SasoriBody = 2 and healthV <= 0 or SasoriBody = 2 and mannaV <= 0 or SasoriBody = 2 and willpowerV <= 0:
		SasoriBody = SasoriBody - 1
		gs'priziv','sasori1'

		'<b><font color = red>Последняя кукла рассыпалась на части и в бой вступил сам Сасори.</font></b>'
	end

	if stunV > 0 and SasoriBody > 1:
		stunV = 0

		'<b><font color = red>Кукла начала двигаться снова.</font></b>'
	end

	if stunV > 0 and SasoriBody = 1:
		stunV = 0

		'<b><font color = red>Сасори двигается снова.</font></b>'
	end

	if GedoMazo = 1 and healthV <= 0 or GedoMazo = 1 and mannaV <= 0 or GedoMazo = 1 and willpowerV <= 0:
		GedoMazo = 2
		barierV = 0

		'<b><font color = green><<$nameV>> рухнул на землю превращаясь в прах</font></b>'

		gs'priziv','tobi'

		'<b><font color = green><<$nameV>> атаковал вас</font></b>'
	end

	if health <= 0 and heart = 0 and izanagi = 0:
		'<b><font color = red>Вы проиграли</font></b>'

		xgt'ender','loss'
		exit
	elseif healthV <= 0 and heartV = 0 and izanagiV = 0:
		'<b><font color = green><<$nameV>> проиграл</font></b>'

		xgt'ender','win'
		exit
	elseif manna <= 0 and heart = 0 and izanagi = 0:
		'<b><font color = red>Вы проиграли</font></b>'

		xgt'ender','loss'
		exit
	elseif mannaV <= 0 and heartV = 0 and izanagiV = 0:
		'<b><font color = green><<$nameV>> проиграл</font></b>'

		xgt'ender','win'
		exit
	elseif willpower <= 0 and heart = 0 and izanagi = 0:
		'<b><font color = red>Вы проиграли</font></b>'

		xgt'ender','loss'
		exit
	elseif willpowerV <= 0 and heartV = 0 and izanagiV = 0:
		'<b><font color = green><<$nameV>> проиграл</font></b>'

		xgt'ender','win'
		exit
	end

	if izanagiV > 0 and healthV <= 0 or izanagiV > 0 and mannaV <= 0 or izanagiV > 0 and willpowerV <= 0:
		izanagiV = izanagiV - 1

		'<b><font color = red><<$nameV>> просто исчез</font></b>'

		healthV = vitalV*10 + strenV*5
		mannaV = intelV*magikV + magikV*100 + vitalV*10
		willpowerV = willV*10
		stunV = 0
		if program = 6 and izanagiOnce = 0:izanagiOnce = 1 & unmaterialV = 40 & tobizanagi = 0

		'<b><font color = red><<$nameV>> оказался перед вами полностью здоровый. Он сложил магический знак руками и сказал Изанаги - совершенная иллюзия.</font></b>'
		'<b><font color = red>Один его глаз закрылся навсегда, заплатив за это заклинание.</font></b>'
	elseif heartV > 0 and healthV <= 0 or heartV > 0 and mannaV <= 0 or heartV > 0 and willpowerV <= 0:
		heartV = heartV - 1

		'<b><font color = red><<$nameV>> пошатнулся и его сердце лопнуло</font></b>'

		healthV = vitalV*10 + strenV*5
		mannaV = intelV*magikV + magikV*100 + vitalV*10
		willpowerV = willV*10
		stunV = 0

		'<b><font color = red><<$nameV>> выпрямился и ринулся в бой. У него запустилось другое сердце.</font></b>'
	elseif izanagi > 0 and health <= 0 or izanagi > 0 and manna <= 0 or izanagi > 0 and willpower <= 0:
		izanagi = izanagi - 1

		'<b><font color = green>Вы исчезли</font></b>'

		health = vital*10 + stren*5
		willpower = intel*5 + will*5
		manna = (intel*magik) + magik*100 + vital*10 + rikudo
		stun = 0
		zerkaloV = 0
		poisonV = 0
		bloodV = 0

		'<b><font color = green>И тут же появились перед противником полностью здоровым.</font></b>'
	elseif heart > 0 and health <= 0 or heart > 0 and manna <= 0 or heart > 0 and willpower <= 0:
		heart = heart - 1
		zerkaloV = 0
		poisonV = 0
		bloodV = 0

		'<b><font color = green>Ваше сердце не выдержало и лопнуло.</font></b>'

		health = vital*10 + stren*5
		willpower = intel*5 + will*5
		manna = (intel*magik) + magik*100 + vital*10 + rikudo
		stun = 0

		'<b><font color = green>Вы не умерли, у вас запустилось другое сердце.</font></b>'
	end

	gs'before'
	'<b>= = = = = = = = = = = = = (РАУНД <<round>>) = = = = = = = = = = = = =</b>'
	'<b><<$nameV>></b> жизнь <b><font color = red><<healthV>></font></b>, манна <b><font color = blue><<mannaV>></font></b>, сила воли <b><font color = green><<willpowerV>></font></b>'
	if defenceV > 0:'<b><font color = red>Защита <<defenceV>> единиц</font></b>'
	if defenceMV > 0:'<b><font color = red>Защита манны <<defenceMV>> единиц</font></b>'
	if defenceWV > 0:'<b><font color = red>Защита воли <<defenceWV>> единиц</font></b>'
	'Ваша жизнь <b><font color = red><<health>></font></b>, манна <b><font color = blue><<manna>></font></b>, сила воли <b><font color = green><<willpower>></font></b>'
	if defence > 0:'<b><font color = green>Защита <<defence>> единиц</font></b>'
	if defenceM > 0:'<b><font color = green>Защита от воздействий на манну <<defenceM>> единиц</font></b>'
	if defenceW > 0:'<b><font color = green>Защита от воздействий на волю <<defenceW>> единиц</font></b>'
	if defenceAct > 0:'<b><font color = green><<defenceAct>> ходов регенерации защиты</font></b>'
	if defenceActM > 0:'<b><font color = green><<defenceActM>> ходов регенерации защиты от воздействий на манну</font></b>'
	if unmaterial > 0:'<b><font color = green>Осталось <<unmaterial>> ходов не материальности.</font></b>'
	'<b>= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =</b>'
	gs'init'

	if hod = 0:
		!игрок атакует
		'<font color = green>Вы можете атаковать</font>'

		if gun > 0:
			!огнестрел
			if bulletIn > 0:
				'<<bulletIn>> заряженных патронов в пистолете'

				act 'Выстрелить из пистолета':
					cla
					bulletIn -= 1
					gunpower = 150
					buu = 1
					gunpricel = 1
					Gcrime += 1
					gt'strelba'
				end
			elseif bulletIn <= 0:
				if bullet = 0:
					'Патроны для пистолета кончились.'
				elseif bullet>0:
					'<<bullet>> патронов для пистолета'

					act 'Зарядить':
						cla
						if bullet < 7:
							bulletIn = bullet
							bullet = 0

							'Вы зарядили все оставшиеся патроны в пистолет.'
						end
						if bullet >= 7:
							bullet -= 7
							bulletIn = 7

							'Вы зарядили 7 патронов в пистолет.'
						end

						act 'Далее':gt'fight','sta'
					end
				end
			end
		end

		if Mgun > 0:
			!огнестрел
			if mbulletIn > 0:
				'<<mbulletIn>> заряженных патронов в автомате'

				act 'Одиночный из автомата':
					cla
					mbulletIn -= 1
					buu = 1
					gunpower = 300
					gunpricel = 2
					Gcrime += 1
					gt'strelba'
				end

				if mbulletIn >= 3:
					act 'Короткая очередь из автомата':
						cla
						mbulletIn -= 3
						buu = 3
						gunpower = 300
						gunpricel = 1
						Gcrime += buu
						gt'strelba'
					end
					act 'Длинная очередь из автомата':
						cla
						buu = mbulletIn
						mbulletIn = 0
						gunpower = 300
						gunpricel = 0
						Gcrime += buu
						gt'strelba'
					end
				end
			elseif mbulletIn <= 0:
				if mbullet = 0:
					'Патроны для автомата кончились.'
				elseif mbullet > 0:
					'<<mbullet>> патронов для автомата'

					act 'Зарядить':
						cla
						if mbullet < 7:
							mbulletIn = mbullet
							mbullet = 0

							'Вы зарядили все оставшиеся патроны в автомат.'
						end
						if mbullet >= 30:
							mbullet -= 30
							mbulletIn = 30

							'Вы зарядили 30 патронов в автомат.'
						end

						act 'Далее':gt'fight','sta'
					end
				end
			end
		end

		if tragun > 0:
			!травматик
			if tbulletIn > 0:
				'Травматик заряжен'

				act 'Выстрелить из пистолета':
					cla
					tbulletIn -= 1
					gunpower = 50
					buu = 1
					gunpricel = 0
					gt'strelba'
				end
			elseif tbulletIn <= 0:
				if tbullet = 0:
					'Патроны для травматика кончились.'
				elseif tbullet > 0:
					'<<tbullet>> патронов для травматика'

					act 'Зарядить':
						cla
						if tbullet >= 1:
							tbullet -= 1
							tbulletIn = 1

							'Вы зарядили патрон в травматик.'
						end

						act 'Далее':gt'fight','sta'
					end
				end
			end
		end

		act 'Физическая атака':xgt'boxing'
		if magik > 0:
			act 'Магическая атака':gt'magik'
		end
	elseif hod = 1:
		!противник атакует
		'<font color = red><<$nameV>> атакует</font>'

		act 'Дальше':xgt'enemy','start'
	end
end

if $ARGS[0] = 'sta':
	cla
	damTip = 0
	damTipM = 0
	damTipV = 0
	damTipMV = 0
	magweapbonus = 0
	magweapbonusV = 0
	bonusSh = 0
	bonusShV = 0
	eleSh = 0
	eleShV = 0
	poisonAV = 0
	hidanAtk = 0

	'<b>= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =</b>'
	'<b><<$nameV>></b> жизнь <b><font color = red><<healthV>></font></b>, манна <b><font color = blue><<mannaV>></font></b>, сила воли <b><font color = green><<willpowerV>></font></b>'
	if defenceV > 0:'<b><font color = red>Защита <<defenceV>> единиц</font></b>'
	if defenceMV > 0:'<b><font color = red>Защита манны <<defenceMV>> единиц</font></b>'
	if defenceWV > 0:'<b><font color = red>Защита воли <<defenceWV>> единиц</font></b>'
	'Ваша жизнь <b><font color = red><<health>></font></b>, манна <b><font color = blue><<manna>></font></b>, сила воли <b><font color = green><<willpower>></font></b>'
	if defence > 0:'<b><font color = green>Защита <<defence>> единиц</font></b>'
	if defenceM > 0:'<b><font color = green>Защита от воздействий на манну <<defenceM>> единиц</font></b>'
	if defenceW > 0:'<b><font color = green>Защита от воздействий на волю <<defenceW>> единиц</font></b>'
	if defenceAct > 0:'<b><font color = green><<defenceAct>> ходов регенерации защиты</font></b>'
	if defenceActM > 0:'<b><font color = green><<defenceActM>> ходов регенерации защиты от воздействий на манну</font></b>'
	'<b>= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =</b>'

	act 'Дальше':gt'fight','start'
end
--- fight ---------------------------------

