# Prostitute
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC
	$metkaSex = $ARGS[0]
	$locSex = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'
	gs'time'

	'<center><b><font color = maroon>Проститутка</font></b></center>'
	'<center><img src="images/pic/park2.jpg"></center>'

	if hour >= 16 and hour <= 23:
		if whoreQW = 2:
			'Проститутки смотрят на вас с любопытством.'
		elseif whoreQW = 1:
			'Проститутки смотрят на вас с интересом.'

			act 'Поговорить':
				cla
				whoreQW = 2

				'Вы подошли к проститутке и спросили у нее как тут вообще дела делаются. Она начала объяснять. "Мы все свободные, не работаем ни на кого, но из за этого много проблем. Стелла со своими подружками бывает бьют нас и обирают, иногда приезжают мелкие бандиты и отнимают у нас деньги. Если хочешь тут работать, то придется платить и Стелле и бандюкам. Ты конечно крутая, можешь попробовать осадить Стеллу и ее подружек, но с бандитами не советую связываться. И еще, на тебя не клюнут клиенты, если ты не будешь одета как шлюха, можешь купить соответствующую одежду в сексшопе."'

				act 'Отойти':gt'prostitute','start'
			end
		elseif whoreQW = 0:
			'Эй, ты не из наших, валила бы с нашей точки, а то зубов не соберешь.'

			act 'Да пошла ты!':
				cla
				minut = minut + 15
				$nameV = 'Обдолбанная проститутка'
				!Статы
				strenV = 20
				speedV = 30
				agilV = 30
				reactV = 30
				vitalV = 50
				intelV = 10
				willV = 10
				!Навыки
				magikV = 10
				boxingV = 10
				shootV = 10
				!Параметры
				healthV = vitalV*10 + strenV*5
				mannaV = intelV*10 + magikV*10
				willpowerV = willV*10
				BonusAtakV = 0
				BonusDefV = 0
				!программа действий
				program = 0
				prostitutFight = 1
				if spellavtoklon = 1:klon = 3
				if spellbefshild = 1:defence = 500
				gt'fight','start'
			end
			act 'А как стать одной из ваших?':
				cla
				'А как стать одной из ваших? Поинтересовались вы. Проститутка нагло усмехнулась, сплюнула. Для этого надо платить Стелле.'

				act 'Отойти':gt'prostitute','start'
				act 'Я согласна':
					cla
					whoreQW = 2

					'Вы согласились. Проститутка вам сказала, что вам нужно купить соответствующую одежду в сексшопе. Тогда клиенты сразу будут понимать что ты проститутка.'

					act 'Отойти':gt'prostitute','start'
				end
			end
		end

		if whoreQW > 1 and hook = 1 and son > 0:
			act 'Стоять на панели 15 мин':
				cla
				minut = minut + 10

				prosrand = RAND(0,(vnesh+hour)*2)
				if prosrand < 20:
					'Никто вами не заинтересовался.'

					act 'Уйти':gt'prostitute','start'
				elseif prosrand >= 20:
					'К вам подъехала машина.'

					proseventrand = RAND(0,100)
					if proseventrand <= 5:
						'К вам подъехал черный джип, открылось окно и оттуда высунулась здоровая наглая морда. "Эй шлюха, пора дань платить. Давай сюда штукарь и вали дальше работать."'

						if money >= 1000:
							act 'Отдать деньги':
								cla
								money = money - 1000

								'Вы отдали деньги здоровяку в джипе. Он положил их в карман и уехал.'

								act 'Отойти':gt'prostitute','start'
							end
						elseif money < 1000:
							act 'Я еще не заработала столько':
								cla
								money = 0

								'Вы начали объяснять здоровяку, что вы еще не заработали он схватил вас за руку и швырнул в джип, там он у вас обчистил карманы и заявил что он научит вас, как надо работать.'

								act 'Отрабатывать':
									$nameV = 'бандит'
									$boy = 'Бандит'
									dick = RAND(18,21)
									gt'blowPR','start'
								end
							end
						end

						act 'Да пошел ты!':
							cla
							minut = minut + 15
							$nameV = 'Бандит'
							!Статы
							strenV = 200
							speedV = 30
							agilV = 20
							reactV = 20
							vitalV = 150
							intelV = 10
							willV = 10
							!Навыки
							magikV = 10
							boxingV = 10
							shootV = 10
							!Параметры
							healthV = vitalV*10 + strenV*5
							mannaV = intelV*10 + magikV*10
							willpowerV = willV*10
							BonusAtakV = 0
							BonusDefV = 0
							!программа действий
							program = 0
							prostitutFight = 2
							if spellavtoklon = 1:klon = 3
							if spellbefshild = 1:defence = 500
							gt'fight','start'
						end
					elseif proseventrand > 5 and proseventrand <= 50:
						klient_needs = 0
						prosti = 0
						KlientMON = RAND(1,10)

						'Клиент хочет минет и спрашивает сколько это будет стоить.'
					elseif proseventrand > 50 and proseventrand <= 75:
						klient_needs = 1
						prosti = 0
						KlientMON = RAND(3,25)

						'Клиент хочет секса и спрашивает сколько это будет стоить.'
					elseif proseventrand > 75 and proseventrand <= 95:
						klient_needs = 2
						prosti = 0
						KlientMON = RAND(5,40)

						'Клиент хочет анал и спрашивает сколько это будет стоить.'
					end

					if proseventrand > 5 and proseventrand <= 95:
						klienVNPR = RAND(0,30)

						act 'Уйти':gt'prostitute','start'

						if ProsMoney > 0:
							act '<<ProsMoney*100>> рублей':
								cls
								dynamic $universalklient
							end
						end

						act 'Назначить цену':
							cls
							gs'stat'

							ProsMoney = input("Назначте цену в сотнях")
							if ProsMoney < 1:
								'Клиент посмотрел на вас удивленно и пробормотал "Ебанутая какая то." После чего тронул машину и уехал.'

								act 'Уйти':gt'prostitute','start'
							else
								dynamic $universalklient
							end
						end
					elseif proseventrand > 95:
						'К вам подошла проститутка. "Слыш, шалава, если не хочешь проблем, надо заплатить Стелле. Давай сюда пятихатник и вали дальше работать."'

						if money >= 500:
							act 'Отдать деньги':
								cla
								money = money - 500

								'Вы отдали деньги проститутке, она развернулась и ушла.'

								act 'Отойти':gt'prostitute','start'
							end
						elseif money < 500:
							act 'Я еще не заработала столько':
								cla
								money = 0

								'Вы начали жаловаться что еще не заработали столько денег. Проститутка обыскала вас забрав все ценное и ушла.'

								act 'Отойти':gt'prostitute','start'
							end
						end

						act 'Да пошла ты!':
							cla
							minut = minut + 15
							$nameV = 'Проститутка'
							!Статы
							strenV = 50
							speedV = 50
							agilV = 40
							reactV = 30
							vitalV = 60
							intelV = 10
							willV = 10
							!Навыки
							magikV = 10
							boxingV = 10
							shootV = 10
							!Параметры
							healthV = vitalV*10 + strenV*5
							mannaV = intelV*10 + magikV*10
							willpowerV = willV*10
							BonusAtakV = 0
							BonusDefV = 0
							!программа действий
							program = 0
							prostitutFight = 3
							if spellavtoklon = 1:klon = 3
							if spellbefshild = 1:defence = 500
							gt'fight','start'
						end
					end
				end
			end
		end
	end

	act 'Уйти':
		cla
		minut = minut + 5
		prosta = 0
		gt'park','start'
	end
end
--- Prostitute ---------------------------------

