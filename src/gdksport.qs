# gdksport
$din_go_to_home_dance = {
	act 'Ехать обратно':
		cls
		minut += 15
		gs'stat'

		'Вам вызвали такси и вас привезли обратно в городишко.'

		if cumface > 0:cumface = 0 & 'По пути вы стерли сперму с лица салфетками.'

		act 'Уйти':gt'gorodok'
	end
}

$din_beg_gor_sec = {
	cls
	gs'stat'

	'Абонемент в секцию бега стоит 100 рублей, на 30 дней.'

	if money >= 100 and gsAboBeg <= 0:
		act 'Купить абонемент в секцию бега (100 руб)':
			cls
			money -= 100
			gsAboBeg += 30
			gs'stat'

			'Вы купили абонемент на 30 посещений секции бега.'

			act 'Выйти':gt'gdksport'
		end
	end

	act 'Выйти':gt'gdksport'
}

$din_dance_gor_sec = {
	cls
	gs'stat'

	'Абонемент в секцию бега стоит 100 рублей на 10 дней.'

	if money >= 100 and gsAboDance <= 0:
		act 'Купить абонемент на танцы (100 руб)':
			cls
			money -= 100
			gsAboDance += 10
			gs'stat'

			'Вы купили абонемент на 10 посещений секции танцев.'

			act 'Выйти':gt'gdksport'
		end
	end

	act 'Выйти':gt'gdksport'
}

$din_voll_gor_sec = {
	cls
	gs'stat'

	'Абонемент в секцию волейбола стоит 300 рублей на 30 дней.'

	if money >= 300 and gsAboVolley <= 0:
		act 'Купить абонемент на волейбол (300 руб)':
			cls
			money -= 300
			gsAboVolley += 30
			gs'stat'

			'Вы купили абонемент на 30 посещений секции волейбола.'

			act 'Выйти':gt'gdksport'
		end
	end

	act 'Выйти':gt'gdksport'
}

$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Дом культуры</font></b></center>'
'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
'В доме культуры работают секции, <a href="exec:dynamic $din_beg_gor_sec">бега</a>, <a href="exec:dynamic $din_dance_gor_sec">танцев</a> и <a href="exec:dynamic $din_voll_gor_sec">волейбола</a>. Абонемент на 30 посещений стоит 100 рублей.'

if kotovLoveQW > 0 and hour = 16:
	'Вы видите как в клуб входит <a href="exec:minut += 3 & GT ''kotovEv''">Витек Котов</a> с большой спортивной сумкой'
elseif grupNPC[3] >= 80 and hour = 17 and ivansportday ! day:
	'Вы видите как в клуб входит <a href="exec:minut += 3 & GT ''IvanEv''">Иван Прохоров</a> с большой спортивной сумкой'
end

if grupNPC[5] >= 80 and fedorKozlovQW = 0 and GorSlut = 0 and UNSTARTER = 1:
	!ивент не должен стартовать так как не закончен
	cls
	fedorKozlovQW = 1
	numnpc = 5
	gs'stat'

	'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
	'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
	'В клубе вам неожиданно встретился Федор Козлов из вашего класса. Он приветливо вам улыбнулся "Привет Света. Хмм... Тут такое дело... У меня есть лишний билетик в кино. Давай сходим вместо."'

	act 'Отказать':
		cls
		grupNPC[5] = 40
		gs'stat'

		'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
		'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
		'Вы отказали Федору сославшись на занятость. Федор помрачнел. "Ну ладно. Тогда как нибудь в другой раз."'

		act 'Уйти':gt'gdksport'
	end
	act 'Согласиться':
		cls
		fedorKozlovQW = 10
		grupNPC[5] = 100
		minut += 15
		gs'stat'

		'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
		'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
		'Вы согласились и обрадованный Федор повел вас в кинотеатр расположенный в сквере.'

		act 'Смотреть кино':
			cls
			minut += 100
			manna += 100
			gs'stat'

			'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
			'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
			'Федор отдал билеты на входе и вы прошли в зал. Вскоре погас свет и началось кино. Федор сидел не шевелясь и только изредка поглядывал на вас. Кино оказалось довольно интересное и вы с удовольствием его посмотрели. Когда кино кончилось, в зале зажгли свет и Федор стал провожать вас. "Света. Ты мне нравишься. Может мы могли бы встречаться?"'

			act 'Отказать':
				cls
				grupNPC[5] = 40
				fedorKozlovQW = 2
				minut += 15
				gs'stat'

				'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
				'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
				'Вы отказали Федору встречаться с ним и предложили остаться друзьями. Федор заметно расстроился и молча проводил вас до дома.'

				act 'Уйти':gt'gorodok'
			end
			act 'Согласиться':
				cls
				minut += 15
				gs'stat'

				'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
				'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
				'Вы согласились встречаться с Федором. Федор заметно обрадовался и проводил вас до дома по пути весело обсуждая просмотренное вами кино.'

				act 'Уйти':gt'gorodok'
			end
		end
	end

	exit
end

act 'Выйти':gt'gdk'

if albinaQWdance > 0 or gsAboDance > 0 or gsAboBeg > 0 or gsAboVolley > 0:
	act 'Переодеться в раздевалке':gt'loker','start'

	if sweat >= 0:
		act 'Помыться в душе':
			cls
			dynamic $showerdin
			minut += 15
			horny = horny + 1
			hapri = 1
			mop = 1
			sweat = -3
			if frost > 0:frost = 0
			gs'stat'

			'<center><img src="images/pics/dush.jpg"></center>'

			if kotovVSprohorov = 1:
				kotovVSprohorov = 2
				'Вы вошли в женскую душевую и включив воду начали намыливать свое тело мочалкой. Внезапно дверь скрипнула и вы вспомнили, что забыли ее закрыть. Вы оглянулись и увидели, что на пороге стоит Иван Прохоров и рассматривает вас. "Привет Светик. Можно присоединиться? А то в мужскую душевую очередь." Иван улыбнулся после этих слов.'

				act 'Выгнать Ивана':
					cls
					IvanShowerQW = 1
					gs'stat'

					'<center><img src="images/pics/dush.jpg"></center>'
					'Вы прикрыли груди рукой и другой рукой запустили мочалкой в Ивана. Он легко уклонился от летящей мочалки и с хохотом вышел из душевой. Вы заперли дверь и быстро домылись под душем.'

					act 'Выйти из душевой':gt $locM, $metkaM
				end
				act 'Эээ, что?':
					cls
					gs'stat'

					'<center><img src="images/pics/dush.jpg"></center>'
					'Вы удивились подобному и Иван расценил вашу неуверенность как согласие. Он вошел в душевую и закрыл за собой дверь.'

					act 'Сбежать из душевой':IvanShowerQW = 1 & gt $locM, $metkaM
					act 'Мыться вместе':
						cls
						minut += 5
						horny += 10
						gs'stat'

						'<center><img src="images/pics/dush.jpg"></center>'
						'Иван скинул с себя боксерские шорты и вошел под струю душа. Его мускулистое тело оказалось совсем рядом с вашим. Вы старались не смотреть на него но взгляд невольно опустился к его паху, где свисал толстый член. Иван подмигнул "Хочешь намылить?"'

						act 'Намылить Ивана':
							cls
							minut += 5
							horny += 20
							gs'stat'

							'<center><img src="images/qwest/alter/ev/shower.jpg"></center>'
							'Вы взяли мочалку и стали намыливать тело Ивана. Его член начал вставать и коснулся вашего бедра. Иван обнял вас и начал ласкать ваше тело своими руками.'

							act 'Сделать минет':
								cls
								minut += 5
								horny += 20
								bj += 1
								if npcSex[3] = 0:npcSex[3] = 1 & guy += 1
								gs'stat'

								'<center><img src="images/qwest/alter/ev/shover.jpg"></center>'
								'Вы медленно опустились перед Иваном на колени и его член оказался напротив вашего лица. Иван в нетерпении провел головкой вам по губам и вы открыв рот впустили его член. Ваши губы плотно обхватывали твердый стержень Ивана и вы сосали в душевой под струями воды. Внезапно Иван вынул член из вашего рта и взяв вас за руки поднял на ноги, он впился своими губами в вашу грудь и начал ее сосать. Вас охватило блаженство. Иван развернул вас спиной к себе и надавил вам на спину.'

								act 'Стоять раком':
									cls
									IvanShowerQW = 10
									minut += 5
									horny += 20
									$boy = 'Иван'
									dick = 17
									lubonus = 2
									gs'stat'

									'<center><img src="images/qwest/alter/ev/shover2.jpg"></center>'
									'Вы наклонились и почувствовали как рука Ивана гладит вашу попу и анус.'

									dynamic $analsex

									'Иван достает член из вашей попы и вы чувствуете как вам на спину и ягодицы приземляются теплые струйки спермы.'

									act 'Выйти из душевой':gt $locM, $metkaM
								end
							end
						end
					end
				end

				exit
			end

			'Вы вошли в женскую душевую и начали намыливать свое тело мочалкой. После смыли мыло и помыли волосы шампунем. Смыв шампунь вы стали совершенно чистой. После душа вы расчесали волосы и оделись.'

			act 'Выйти из душевой':gt $locM, $metkaM
		end
	end
end

if hour >= 16 and hour <= 20:
	if albinaQWdance > 0 and AlbinaBlokDance = 0 and ZvezdEnd = 0:
		if sport > 0:
			act 'Тренироваться со Звездушками':
				cls
				minut = minut + 120
				fat = fat - 5
				if agil < 50:agil += RAND(1,3)
				if agil >= 50 and agil < 80:agil += RAND(0,2)
				if agil >= 80:agil += RAND(0,1)
				manna = manna - 5
				sweat = sweat + 3
				dancePRO += RAND(1,3)
				gs'stat'

				'<center><img src="images/pic/fit1.jpg"></center>'

				if dancePRO < 20:
					sub += 1
					'Вы тренируетесь вместе с девчонками из "Звездушек", у вас плохо получается и Альбина постоянно на вас орет обзывая кривоногой и колхозницей.'
				elseif dancePRO >= 20 and dancePRO < 40:
					sub += 1
					'Вы тренируетесь вместе с девчонками из "Звездушек", у вас иногда что то получается, но большинство движений мимо и Альбина постоянно на вас орет обзывая кривоногой и колхозницей.'
				elseif dancePRO >= 40 and dancePRO < 60:
					'Вы тренируетесь вместе с девчонками из "Звездушек", вы танцуете с девчонками попадая в общий ритм, но Альбина не довольна "Света, очень вяло, больше жизни."'
				elseif dancePRO >= 60 and dancePRO < 80:
					'Вы тренируетесь вместе с девчонками из "Звездушек", у вас нормально все получается но Альбина регулярно к вам придирается "Света, ты не на похоронах, подними голову и улыбайся!"'
				elseif dancePRO >= 80:
					stardance += 1

					'Вы великолепно танцуете и Альбина начала ставить вас в пример другим девчонкам.'

					if stardance < 10:
						if otkazDanceWhore > 0 and AlbinaLast > 0:
							AlbinaBlokDance = 1

							'После тренировки Альбина отзывает вас в сторону и начинает отчитывать. "Ты тупорылая колхозница. Я из за тебя лишаюсь клиентуры. Поэтому пошла вон! Ты больше не участвуешь в коллективе."'
						elseif otkazDanceWhore > 0 and AlbinaLast = 0:
							AlbinaLast = 1
							otkazDanceWhore = 0
							if AlbFather = 0:AlbFather = 1

							'После тренировки Альбина отзывает вас в сторону и начинает отчитывать. "Я понимаю, ты молодая и глупая, но объясняю тебе в первый и последний раз. Еще раз прокатишь меня с клиентами, вылетишь из Звездушек с треском. Развлекать мужчин это часть бизнеса."'
						end

						if DanceWhoreT > 0:
							DanceWhoreT = 0
							if AlbFather = 0:AlbFather = 1

							'Альбина после тренировки подзывает вас к себе. "Молодец Света. Общение с мужчинами часть бизнеса. Главное держать рот на замке. Ты молодец, хорошо справляешься. Держись меня и у тебя будет все, деньги, машины, квартиры."'
						end
					elseif stardance >= 10:
						stardance = 0
						albpayrand = RAND(1,5)

						'Альбина собрала девчонок. Сегодня намечается небольшая халтурка. Каждая получит по <<albpayrand*1000>> рублей за работу. Делов всего на пару часов.'

						act 'Ехать на подработку':
							cls
							minut += 120
							money += albpayrand*1000
							sweat = -3
							profiDanceTime += 1
							gs'stat'

							'Вы согласились и Альбина созвонилась по телефону. Вскоре приехала машина за вами. Вы с девчонками погрузились в машину и отправились куда то. Вскоре вы приехали к какому то дому где в большом зале сидели люди и отмечали. Вы переоделись в сценические костюмы, которые сшили по заказу Альбины, и вышли на сцену танцевать под зажигательную музыку. Вы танцевали очень хорошо и все прошло благополучно. Вы ушли со сцены и Альбина раздала деньги. Вы по очереди по быстренькому приняли душ.'

							if vnesh >= 13:
								if vnesh < 16:wealthmanrand = RAND(0,15)
								if vnesh >= 16 and vnesh < 18:wealthmanrand = RAND(0,12)
								if vnesh >= 18:wealthmanrand = RAND(0,10)

								if wealthmanrand = 0:
									kolvomanparty = 1
									danceWhorePay = RAND(3,8)

									'Вы видите как к Альбине подошел мужчина в приличном костюме и начал о чем то с ней тихо разговаривать.'
								elseif wealthmanrand = 1:
									kolvomanparty = 2
									danceWhorePay = RAND(5,10)

									'Вы видите как к Альбине подошли двое парней и начали о чем то с ней разговаривать.'
								elseif wealthmanrand = 2:
									kolvomanparty = 1
									danceWhorePay = RAND(4,9)

									'Вы видите как к Альбине подошел кавказец и стал о чем то с ней разговаривать жестикулируя.'
								elseif wealthmanrand = 3:
									kolvomanparty = 2
									danceWhorePay = RAND(6,12)

									'Вы видите как к Альбине подошли двое кавказцев и стали о чем то с ней разговаривать.'
								elseif wealthmanrand = 4:
									kolvomanparty = 3
									danceWhorePay = RAND(8,14)

									'Вы видите как к Альбине подошли трое кавказцев и стали о чем то с ней разговаривать.'
								elseif wealthmanrand = 5:
									kolvomanparty = 1
									danceWhorePay = RAND(5,10)

									'Вы видите как к Альбине подошел негр и стал о чем то с ней разговаривать.'
								elseif wealthmanrand = 6:
									kolvomanparty = 2
									danceWhorePay = RAND(7,15)

									'Вы видите как к Альбине подошли двое негров и стали о чем то с ней разговаривать.'
								elseif wealthmanrand = 7:
									kolvomanparty = 3
									danceWhorePay = RAND(10,20)

									'Вы видите как к Альбине подошли трое негров и стали о чем то с ней разговаривать.'
								end

								if wealthmanrand <= 7:
									'После разговора Альбина подошла к вам. "Света, надо поговорить."'

									act 'О чем?':
										cls
										minut += 15
										gs'stat'

										'Вы спросили у Альбины, о чем она хотела поговорить.'

										if kolvomanparty = 1:'Альбина подошла к вам ближе и тихо стала говорить "Видишь этого парня? Если останешься с ним на часик и будешь ласкова, то сможешь не плохо заработать. Получишь <<danceWhorePay*1000>> рублей."'
										if kolvomanparty > 1:'Альбина подошла к вам ближе и тихо стала говорить "Видишь этих парней? Если останешься с ними на пару часиков и будешь ласкова, то сможешь не плохо заработать. Получишь <<danceWhorePay*1000>> рублей."'

										act 'Отказаться и ехать обратно':
											cls
											minut += 15
											otkazDanceWhore += 1
											DanceWhoreT = 0
											gs'stat'

											'Вы сели в машину и вскоре вместе с девчонками вас привезли обратно в городишко.'

											act 'Уйти':gt'gorodok'
										end
										act 'Согласиться':
											cls
											money += danceWhorePay*1000
											DanceWhore += 1
											DanceWhoreT += 1
											otkazDanceWhore = 0
											slutty += 1
											gs'stat'

											'Вы согласились и Альбина отсчитала вам деньги.'

											if wealthmanrand = 0:act 'Идти с мужчиной':gt'DanceWhore1'
											if wealthmanrand = 1:act 'Идти с мужчинами':gt'DanceWhore2'
											if wealthmanrand = 2:act 'Идти с кавказцем':gt'DanceWhore3'
											if wealthmanrand = 3:act 'Идти с кавказцами':gt'DanceWhore4'
											if wealthmanrand = 4:act 'Идти с кавказцами':gt'DanceWhore5'
											if wealthmanrand = 5:act 'Идти с негром':gt'DanceWhore6'
											if wealthmanrand = 6:act 'Идти с неграми':gt'DanceWhore7'
											if wealthmanrand = 7:act 'Идти с неграми':gt'DanceWhore8'
										end
									end

									exit
								end
							elseif vnesh < 13:
								'После танцев Альбина разговаривала с какими то мужчинами и о чем то договаривалась.'
							end

							act 'Ехать обратно':
								cls
								minut += 15
								gs'stat'

								'Вы сели в машину и вскоре вместе с девчонками вас привезли обратно в городишко.'

								act 'Уйти':gt'gorodok'
							end
						end
					end
				end

				act 'Уйти':gt'gdksport'
			end
		end
	end

	if gsAboDance > 0:
		if sport > 0:
			act 'Секция танцев, абонемент действителен на <<gsAboDance>> посещений':
				cla
				*clr
				gsAboDance -= 1
				minut = minut + 120
				fat = fat - 5
				if agil < 50:agil += RAND(1,3)
				if agil >= 50 and agil < 80:agil += RAND(0,2)
				if agil >= 80:agil += RAND(0,1)
				manna = manna - 5
				sweat = sweat + 3
				if dance < agil:dance += RAND(5,15)
				gs'stat'

				'<center><img src="images/pic/fit1.jpg"></center>'

				if dance < 100:
					'Вы обучались современным клубным танцам, которые очень популярны на дискотеках.'

					if dance < agil:
						'Вам приходится поднапрячься, но ваша ловкость выручает и вы оттачиваете кое какие танцевальные движения.'
					else
						'Вам не хватает ловкости, что бы успешно повторять все движения.'
					end

					!место для ивентов
					dancegevrand = RAND(0,1)
					if dancegevrand = 0:
						'Кажется вы видите, что то <a href="exec:GT ''danceGev''">интересное</a>.'
					end
				elseif dance >= 100:
					'Вы попытались почерпнуть что то новое в современных клубных танцах, но вы все это уже прекрасно знаете.'

					if albinaQWdance > 0:
						!место для ивентов
						dancegevrand = RAND(0,1)

						if dancegevrand = 0:
							'Кажется вы видите, что то <a href="exec:GT ''danceGev''">интересное</a>.'
						end
					elseif albinaQWdance = 0 and StoryLine > 0:
						'Когда тренировка уже закончилась вы заметили как в комнату вошли несколько девушек и Альбина Барловская. Вы с Альбиной одноклассницы, но вы почти ничего о ней не знаете.'

						act 'Поздороваться с Альбиной':
							cls
							numnpc = 23
							gs'stat'

							'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
							'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
							'Вы поздоровались с Альбиной. Она надменно приподняла бровь. "А это ты. Как тебя там зовут? Ах да Света. Ты что? Танцами занимаешься?" Вы кивнули головой подтверждая очевидное. Альбина пренебрежительно усмехнулась. "Ну и как успехи?" Вы холодно ответили Альбине "Не плохо." Альбина одарила вас высокомерным взглядом "Не плохо? Ну может быть по сравнению с остальными местными кривоногими и не плохо. Но сомневаюсь, что ты можешь танцевать на более или менее профессиональном уровне."'

							act 'Да мне плевать':
								cls
								numnpc = 23
								dom += 1
								grupNPC[numnpc] -= 5
								gs'stat'

								'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
								'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
								'Вы как можно презрительней сказали, что вам плевать и отвернулись от Альбины. Та хихикнув сказала. "Девочки. Давайте тренироваться."'

								act 'Уйти':gt'gdksport'
							end
							act 'Я умею танцевать':
								cls
								numnpc = 23
								!dom += 1
								!grupNPC[numnpc] -= 5
								gs'stat'

								'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
								'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
								'Альбина вас уже начала раздражать своим высокомерием. И вы решительно сказали ей, что умеете танцевать. Альбина повернулась к девушкам пришедшим с ней и сказала. "Девочки. Давайте тренироваться." Потом повернулась к вам и с легкой усмешкой сказала. "Можешь посидеть и посмотреть как танцуют профи. Сама все поймешь"'

								act 'Уйти':gt'gdksport'
								act 'Смотреть':
									cls
									minut += 15
									gs'stat'

									'Девчонки включили музыкальный центр и начали танцевать. Вам сразу стало понятно, что они танцуют очень четко и профессионально. Вы вряд ли так сможете. Альбина тоже танцует гораздо лучше вас. Да и вообще действия девушек очень слаженные и отработанные, видимо они этот танец отрабатывают не в первый раз. Когда музыка закончилась Альбина сказала "Девчонки. Пока маленький перерыв." Она подошла к вам и немного задыхаясь сказала "Мы профи. У нас отработанный танцевальный коллектив Звездушки. Танцуем на праздниках. Даже в музыкальном клипе снимались."'

									act 'Уйти':gt'gdksport'
									act 'Попроситься к ним в коллектив':
										cls
										minut += 15
										gs'stat'

										'Вы попросились в танцевальный коллектив. Альбина усмехнулась "А ты сможешь? Мы то уже все сработавшиеся. Хотя впрочем. Покажи как ты умеешь танцевать." Альбина включила музыку и девчонки собрались смотреть на ваш танец.'

										act 'Танцевать':
											cls
											minut += 5
											gs'stat'

											'Вы стали танцевать под музыку, стараясь как можно сильнее. Когда музыка кончилась к вам подошла Альбина. "Колхоз стайл конечно. Но ничего, у тебя есть определенный потенциал."'

											act 'Ну как возьмете меня в свой коллектив?':
												cls
												albinaQWdance = 1
												minut += 5
												gs'stat'

												'Вы спросили Альбину, возьмет ли она вас в свой коллектив. Альбина подумала и ответила вам. "Ладно, возьмем. Может из тебя что путное и получиться."'

												act 'Уйти':gt'gdk'
											end
										end
									end
								end
							end
						end
					end
				end

				act 'Уйти':gt'gdksport'
			end
		else
			'Вы не одеты в спортивную одежду.'
		end
	end

	if gsAboBeg > 0:
		if sport > 0:
			act 'Секция бега, абонемент действителен на <<gsAboBeg>> посещений':
				cla
				*clr
				gsAboBeg -= 1
				minut = minut + 120
				speed = speed + RAND(1,3)
				manna = manna - 5
				if salo > 0:salo -= 1
				fat = fat - 5
				sweat = sweat + 3
				beg = beg + RAND(3,6)
				gs'stat'

				'<center><img src="images/pic/parkbeg.jpg"></center>'
				'Вы занимались бегом в течении двух часов.'

				act 'Уйти':gt'gdksport'
			end
		else
			'Вы не одеты в спортивную одежду.'
		end
	end

	if gsAboVolley > 0 and volleysostav = 0:
		if sport > 0:
			if week ! 5:
				act 'Секция волейбола, абонемент действителен на <<gsAboVolley>> посещений':
					cla
					*clr
					gsAboVolley -= 1
					minut = minut + 120

					if alko <= 0:
						volleyboll += 1
						speed = speed + RAND(1,3)
						beg = beg + RAND(1,2)

						if agil < 50:agil += RAND(1,3)
						if agil >= 50 and agil < 80:agil += RAND(0,2)
						if agil >= 80:agil += RAND(0,1)

						if stren < 10:stren += RAND(1,3)
						if stren >= 10 and stren < 20:stren += RAND(1,2)
						if stren >= 20 and stren < 30:stren += 1
						if stren >= 30 and stren < 40:stren += RAND(0,1)

						if vital < 10:vital += RAND(1,3)
						if vital >= 10 and vital < 20:vital += RAND(1,2)
						if vital >= 20 and vital < 30:vital += 1
						if vital >= 30 and vital < 40:vital += RAND(0,1)
					end

					manna = manna - 5
					fat = fat - 5
					sweat = sweat + 3
					gs'stat'

					'<center><img src="images/qwest/alter/gdksport.jpg"></center>'

					if alko <= 0:'В начале тренировки вы пробежались несколько кругов по залу. После пробежки вы отжимались и делали упражнения на пресс. После этого начали отрабатывать прием и подачу мяча.'
					if alko > 0:'Вы пытаетесь тренироваться, но ваше опьянение не дает вам сконцентрироваться и вы больше страдаете фигней, чем тренируетесь.'

					act 'Уйти':gt'gdksport'
					act 'Зайти в тренерскую':gt'Voltrener'
				end
			elseif week = 5:
				act 'Секция волейбола, абонемент действителен на <<gsAboVolley>> посещений':
					cla
					*clr
					gsAboVolley -= 1
					minut = minut + 120

					if alko <= 0:
						speed = speed + RAND(1,2)
						agil += RAND(1,2)
						if stren < 40:stren += RAND(1,2)
						if vital < 40:vital += RAND(1,2)
						beg = beg + RAND(1,2)
						volleyboll += 1
						dom += 1
					end

					manna = manna - 5
					fat = fat - 5
					sweat = sweat + 3
					gs'stat'

					'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
					'По пятницам как обычно проводятся игры в которых выявляются сильнейший и талантливые спортсмены.'

					if alko <= 0:
						if volleyboll < 25:
							'Вы совершенно паршиво играете и постоянно ошибаетесь. Наконец нервы тренера не выдерживают и он удаляет вас с поля.'
						elseif volleyboll >= 25 and volleyboll < 50:
							'Вы играете не очень. Иногда делаете грубые ошибки. Тренер злится, но терпит ваши выходки.'
						elseif volleyboll >= 50 and volleyboll < 75:
							'Вы неплохо играете на поле и редко ошибаетесь. Тренер выглядит довольным вами.'
						elseif volleyboll >= 75:
							'Вы великолепно играете на поле, легко переигрывая своих соперников. Тренер выглядит довольным вашей игрой.'

							volevrand = RAND(0,1)
							if volevrand = 0:
								if andGevknow = 0:$nameAndGev = 'какой то парень'
								if andGevknow > 0:$nameAndGev = 'Андрей'
								'Во время игры вас толкнул <a href="exec:GT ''volAndGev''"><<$nameAndGev>></a>.'
							end
						end
					elseif alko > 0:
						'Вы вышли на поле, но не сумели отбить мяч, опьянение не дает сосредоточиться. Тренер замечает ваше состояние и удаляет вас из игры.'
					end

					act 'Уйти':gt'gdksport'
					act 'Зайти в тренерскую':gt'Voltrener'
				end
			end
		else
			'Вы не одеты в спортивную одежду.'
		end
	end

	if volleysostav > 0:
		if sport > 0:
			if week ! 6 and volkomday ! day:
				act 'Заниматься с командой':
					cla
					*clr
					volkomday = day
					minut = minut + 120
					speed = speed + RAND(1,3)
					agil += RAND(1,3)
					if stren < 50:stren += RAND(1,3)
					if vital < 50:vital += RAND(1,3)
					manna = manna - 5
					fat = fat - 5
					sweat = sweat + 3
					beg = beg + RAND(1,2)
					volleyboll += 1
					trenerepa += 1
					dom += 1
					gs'stat'

					'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
					'Всего игр <<volsesongame>>, побед - <<volsesonwin>>, поражений - <<volsesonloss>>, ничьих - <<volsesondraw>>.'
					'В начале тренировки вы пробежались несколько кругов по залу. После пробежки вы отжимались и делали упражнения на пресс. После этого начали отрабатывать прием и подачу мяча. В конце тренировки вы провели игру.'

					act 'Уйти':gt'gdksport'
					act 'Зайти в тренерскую':gt'Voltrener'
				end
			elseif week = 6 and sorevday ! day:
				act 'Выехать на соревнования с командой':
					cla
					*clr
					if poverkomand = 0:poverkomand = 600
					volltime = 0
					sorevday = day
					minut = minut + 180
					speed = speed + RAND(1,3)
					agil += RAND(1,3)
					if strn < 60:stren += RAND(1,3)
					if vital < 60:vital += RAND(1,3)
					manna = manna - 5
					fat = fat - 5
					sweat = sweat + 3
					beg = beg + RAND(1,2)
					volleyboll += RAND(1,3)
					dom += 1
					trenerepa += 2
					gs'stat'

					'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
					'Вы собрали свои вещи вместе с другими девчонками из команды и сели в автобус который вас отвез к месту где будет происходить матч.'

					act 'Играть':gt'volley'
				end
			end
		else
			'Вы не одеты в спортивную одежду.'
		end
	end
else
	'Спортивные секции закрыты.'
end
--- gdksport ---------------------------------

