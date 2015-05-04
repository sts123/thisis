# torgpred
gs'stat'

'<center><b><font color = maroon>Торговое представительство</font></b></center>'
'<center><img src="images/pic/clener.jpg"></center>'
'Не большой кабинет в котором стоят офисные столы и орг техника. В кабинете есть еще дверь на которой написано "Директор"'
'За одним из столов сидит Стас, за другим Виталий, за третьим столом сидит девушка главный бухгалтер.'

act 'Выйти':gt'clener','start'

if svQW = 2:
	if TorgPredDay ! day:
		if TorgPredZ = 0 and TorgPredZV = 0:
			act 'Взять задание':
				cls
				TorgPredZ = 3
				minut += 5
				TorgPredDay = day
				gs'stat'

				'<center><img src="images/pic/clener.jpg"></center>'
				'Вы подошли к Стасу за заданием. Он улыбнулся и протянул вам бумагу. "Не забудь. Супермаркетов три штуки. Тебе нужно расставить товар во всех супермаркетах."'

				act 'Выйти':gt'clener','start'
			end
		end
	end

	if TorgPredZ = 0 and TorgPredZV = 3:
		act 'Получить деньги':
			cls
			TorgPredZV = 0
			minut += 5
			money += 500
			TPworkTimes += 1
			gs'stat'

			'<center><img src="images/pic/clener.jpg"></center>'
			'Вы подошли к Стасу за деньгами. Он улыбнулся и протянул вам 500 рублей'

			if StasikSex = 0:
				if TPworkTimes >= 3 and TPmainQW = 0 and mesec = 0:
					if ski > 0 or glamur > 0:
						'Стас с интересом спрашивает "Ну как тебе работа?"'

						act 'Отлично!':
							cls
							TPmainQW = 1
							minut += 5
							gs'stat'

							'<center><img src="images/pic/clener.jpg"></center>'
							'Вы ответили Стасу что все отлично и он довольно улыбнулся. "Наша фирма только развивается, и для умного человека тут найдется место и получше. Кстати, давай сходим в кафе, ты еще не проставлялась за работу."'

							act 'Согласиться':
								cls
								minut += 15
								gs'stat'

								'<center><img src="images/pic/clener.jpg"></center>'
								'Вам пришлось согласится, так как вся ваша новая работа и перспективы зависят от Стаса. Стас обрадовался и повел вас в кафе, по пути рассказывая о работе. В кафе Стас галантно пододвинул для вас стульчик.'

								act 'Сесть':gt'StasQW'
							end
						end
						act 'Так себе':
							cls
							TPmainQW = 1
							minut += 5
							gs'stat'
							'<center><img src="images/pic/clener.jpg"></center>'
							'Вы ответили Стасу что так себе и он довольно ухмыльнулся. "Наша фирма только развивается, и для умного человека тут найдется место и получше. Кстати, давай сходим в кафе, ты еще не проставлялась за работу."'
							act 'Согласиться':
								cls
								minut += 15
								gs'stat'

								'<center><img src="images/pic/clener.jpg"></center>'
								'Вам пришлось согласится, так как вся ваша новая работа и перспективы зависят от Стаса. Стас обрадовался и повел вас в кафе, по пути рассказывая о работе. В кафе Стас галантно пододвинул для вас стульчик.'

								act 'Сесть':gt'StasQW'
							end
						end
					end

					exit
				end
			end

			if TPmainQW = 1:
				if StasikSex > 0 and StVaGang = 0:
					!Света дала Стасу, тот не считает ее шлюхой, и хочет продолжать отношения
					''
				end
				if StasikSex = 0:
					!Света отказала Стасу, Стас не доволен и идет ва банк
					''
				end
			end

			if StVaGang > 0:
				!И Стас и Валера считают Свету шлюхой
				''
			end

			act 'Выйти':gt'clener','start'
		end
	end

	if TPmainQW = 1 and StasikSex > 0 and StVaGang = 0:
		'Во взгляде Стаса явно мелькает радость, когда он видит вас. Негромко, чтобы не было слышно его занятым делом коллегам, он предлагает вам продолжить ваши отношения и начать встречаться.'
		if bfa >= 1:
			'Вы подумали, что ваш нынешний парень вряд ли обрадуется, прими вы это предложение. Стас, конечно, очень мил, но вам сперва надо разобраться в своих текущих отношениях.'
		elseif bfa < 1:
			act 'Согласиться':
				'Вы ответили Стасу согласием, на что тот просиял и пообещал вскоре перезвонить вам.'

				TPmainQW = 2
				$boy = 'Стас'
				boybodyrand = 1
				$boybody = 'высокий'
				boybodrand = 1
				$boybod = 'худощавый'
				boyfacerand = 3
				$boyface = 'блондин'
				dick = 15
				silavag = 1
				harakBoy = 1
				finance = 1
				vneshBoy = 1
				$boyClo = 'одет в джинсы и свитер.'
				figurBoy = RAND(0,2)
				titBoy = RAND(0,2)
				haerBoy = RAND(0,3)
				izvrat = 0
				gs'boyfrend','start'
				stopboy = 0
				bfa = 70
				boyonceA = 1
				cla
				gs'stat'

				act 'Выйти':gt'clener','start'
			end
		end
		act 'Мне нужно подумать':
			cla
			'Вы ответили Стасу, что он вам очень нравится, но вы пока не готовы дать ответ, и просите его чуть-чуть подождать. Стас хмурится, но принимает ваш ответ.'

			act 'Выйти':gt'clener','start'
		end
		act 'Оказать':
			TPmainQW = 2
			cla
			gs'stat'

			'Вы довольно резко отказали Стасу, на что он обиделся: "Ну и ладно! Я-то думал, что у нас что-то большее, чем случайный перепих."'

			act 'Выйти':gt'clener','start'
		end
	end
end
--- torgpred ---------------------------------

