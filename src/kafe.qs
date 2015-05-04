# kafe
if $ARGS[0] = 'start':
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	cla
	*clr
	minut = minut + 1
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)
	clr
	gs'stat'

	'<center><b><font color = maroon>Кафе</font></b></center>'
	'<center><img src="images/pic/kafe.jpg"></center>'
	'Вы видите <a href="exec:GT ''kafe'',''vlad''">владельца кафе</a> занимающегося бумажной работой.'
	'Обед - 100 руб'

	if QWdogReiq = 3 and week = 7 and hour >= 12:
		act 'Сесть за столик и ждать Маргариту':dynamic $margokafedin
	end

	!act 'Согласиться':gt'Кафе3','туалет'

	if money >= 100:
		act 'Поесть 100 руб':
			cla
			*clr
			frost = 0
			minut = minut + 30
			health = health + 10
			money = money - 100
			manna = manna + 5
			willpower = willpower + 5

			'<center><img src="images/pics/food.jpg"></center>'

			if energy >= 30:
				fat = fat + 5

				'Вы больше не можете есть.'
			elseif energy >= 20 and energy < 30:
				fat = fat + 3
				energy = energy + 10

				'Вы через силу затолкали в себя еду.'
			elseif energy < 20:
				energy = energy + 20
				fat = fat + 1

				'Вы с удовольствием съели еду.'
			end

			if water >= 20:
				'Чай в вас больше не лезет.'
			elseif water < 20:
				water = water + 20

				'Вы с удовольствием выпили кружку чая.'
			end

			razvrand = RAND(1,10)
			if razvrand > 5:
				gs'boy'

				'К вашему столику подошёл <<$boybody>> <<$boybod>> <<$boyface>> представился как <<$boy>>.'

				xgt'kafe','razvod'
			end

			act 'Встать из за стола':gt'kafe','start'
		end
	end

	act 'Выйти':gt'street'
end

if $ARGS[0] = 'vlad':
	cla
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Кафе</font></b></center>'
	'<center><img src="images/pic/kafe.jpg"></center>'

	if Givi = 0:'У стойки стоит не большой, но очень толстый кавказец, он что то пишет.'
	if Givi > 0:'У стойки стоит Гиви Карапетович, хозяин кафе, он что то пишет.'

	if workKafe = 0:
		if GiviSex >= 2 and Givisexday < 1 and Venera < 4:
			act 'Спровоцировать Гиви':
				cla
				*clr
				Givisexday = 1
				GiviSex = GiviSex +1

				'<center><img src="images/pic/kafe.jpg"></center>'
				'Вы зашли за стойку к Гиви и спросили о подработке.'
				'"Вах, Свэтик, он так скучал!" сказал Гиви Карапетович расстёгивая ширинку'

				act 'Встать на колени':
					cla
					*clr
					bj = bj + 1
					dick = 20
					harakBoy = 2
					minut = minut + 30
					$nameV = 'Гиви Карапетович'
					$boy = 'Гиви Карапетович'
					SUB = SUB + 1

					'<center><img src="images/picVA/barbj.jpg"></center>'
					'Вы нагнулись и спрятались от посетителей за высокой барной стойкой, встали на колени перед Гиви, он достал член.'

					gs'oral','start'

					'Гиви крепко схватил вас за волосы и натянул ваш рот на свой член поглубже.'

					act 'Продолжать сосать':
						cla
						*clr
						swallow = swallow + 1
						cumlip = cumlip + 1
						money = money+500

						'<center><img src="images/picV/swallow1.jpg"></center>'
						'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$nameV>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'
						'-Захады ещё! - говорит Гиви даёт вам 500 рублей.'

						act 'Уйти':gt'kafe','start'
					end
				end
			end
		end
	elseif workKafe > 0:
		if GiviSex >= 2 and Givisexday < 1 and Venera < 4:
			act 'Спровоцировать Гиви':
				cla
				*clr
				Givisexday = 1
				GiviSex = GiviSex +1

				'<center><img src="images/pic/kafe.jpg"></center>'
				'Вы зашли за стойку к Гиви и спросили о подработке.'
				'"Свэрхурочные хочешь?" спросил Гиви Карапетович и не интересуясь ответом взял вас за руку'

				act 'Встать на колени':
					cla
					*clr
					smenaKafe = smenaKafe + 1
					bj = bj + 1
					dick = 20
					harakBoy = 2
					minut = minut + 30
					$nameV = 'Гиви Карапетович'
					$boy = 'Гиви Карапетович'
					SUB = SUB + 1

					'<center><img src="images/picVA/barbj.jpg"></center>'
					'Вы нагнулись и спрятались от посетителей за высокой барной стойкой, встали на колени перед Гиви, он достал член.'

					gs'oral','start'

					'Гиви крепко схватил вас за волосы и натянул ваш рот на свой член поглубже.'

					act 'Продолжать сосать':
						cla
						*clr
						swallow = swallow + 1
						cumlip = cumlip + 1

						'<center><img src="images/picV/swallow1.jpg"></center>'
						'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$nameV>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

						act 'Уйти':gt'kafe','start'
					end
				end
			end
		end

		act 'Уволиться':
			cla
			work = 0
			workKafe = 0
			pay = smenaKafe*600
			money = money + pay
			smenaKafe = 0

			'Гиви Карапетович покачал грустно головой, "Ладно, вот твои <<pay>> рублей и трудовая книжка. Иди."'

			act 'Уйти':gt'kafe','start'
		end
	end

	if workKafe > 0 and week > 1 and week < 5:'Вах, Светик. Зачэм прогуливаешь?'
	if workKafe > 0 and week > 4:'Вах, прывэт Светик!'
	if Givi = 1 and workKafe < 1:'Слушаю вас.'

	if Givi = 0:
		Givi = 1
		'Прывэт! Я Гиви Карапетович. Хозаин кафэ. Что вам угодно?'
	end

	if (work = 0 and workKafe = 0 and cheatWork = 0) or (workKafe = 0 and cheatWork = 1):
		act 'Спросить возьмет ли он вас на работу':
			cla
			'Вы поинтересовались возьмет ли вас Гиви на работу.'

			if vnesh < 5:'Вай, вай, вай, ты мне всех клиентов распугаешь. Сходи, что ли приоденься, косметику используй, причешись. А ты выглядишь просто страшно.'
			if vnesh >= 5:
				'Гиви Карапетович пристально вас осматривает с головы до ног. "Хорошо, слушай условия работы"'
				'"Кафе работает с 12 до 22 каждый день кроме понедельника. Твои смены вторник, среда, четверг. Приходи в кафе с 11 до 12, до его открытия и выходи на смену. Не придешь, тебе этот день не зачтется в зарплату. Зарплата перечисляется 25го числа, за каждую отработанную смену 600 рублей. Плюс каждый рабочий день ты можешь получать чаевые, это от тебя зависит. И еще бесплатное питание."'
				'"Да, и еще, я заберу у тебя трудовую книжку, ты не сможешь устроится на другую работу пока не уволишься у меня. Ну как? Устраивает."'

				act 'Устроиться на работу':
					cla
					work = 1
					workKafe = 1
					smenaKafe = 0

					'Вы отдали Гиви Карапетовичу трудовую книжку. Он ее забрал и напомнил вам. "Приходи в любой день кроме понедельника с 11 до 12 и работай."'

					act 'Отойти':gt'kafe','start'
				end
			end

			act 'Отойти':gt'kafe','start'
		end
	end

	act 'Отойти':gt'kafe','start'
end

if $ARGS[0] = 'work':
	cla
	*clr
	minut = minut + 5
	gs'stat'
	smenaKafe = smenaKafe + 1

	'<center><b><font color = maroon>Кафе</font></b></center>'
	'<center><img src="images/pic/kafe.jpg"></center>'
	'Вы пришли на смену в кафе, Гиви Карапетович, записал в книгу, что вы пришли без опозданий и встал за барную стойку. На кухне работает поваром молодой крепкий, кавказец Ашот. Еще одна официантка Ирина готовится к работе. Посудомойка Тамара чистит раковину.'

	act 'Начать работу':
		cla
		minut = 0
		hour = 12
		Givi = Givi + RAND(5,10)
		gt'kafe','workPred'
	end
	act 'Уволиться':
		cla
		work = 0
		workKafe = 0
		pay = smenaKafe*600
		money = money + pay
		smenaKafe = 0

		'Гиви Карапетович покачал грустно головой, "Ладно, вот твои <<pay>> рублей и трудовая книжка. Иди."'

		act 'Уйти':gt'kafe','start'
	end
end

if $ARGS[0] = 'workPred':
	cla
	clr
	*clr
	gs'kafedinamic'
	gs'stat'

	'<center><b><font color = maroon>Кафе</font></b></center>'
	'<center><img src="images/pic/kafe.jpg"></center>'
	'В кафе кипит работа, повар <a href="exec:dynamic $ashotdin">Ашот занят на кухне</a>, ваша напарница <a href="exec:dynamic $iradin">Ира</a> обслуживает столики с посетителями. Хозяин <a href="exec:dynamic $gividin">Гиви Карапетович</a> стоит за барной стойкой.'
	'<a href="exec:dynamic $kafetualet">Туалет</a>'

	if Givi > 100:Givi = 100
	if Givi > 90 and GiviSex = 0:Givi = 90

	if IrinaSlut = 1 and hour = 22:
		cls
		IrinaSlut = 2
		gs'stat'

		'<center><b><font color = maroon>Кафе</font></b></center>'
		'<center><img src="images/pic/kafe.jpg"></center>'
		'Работа закончилась и Ира куда то пропали. Осмотревшись вы увидели что и Гиви нет нигде. Тамара выскользнула за дверь, а Ашот расставляет посуду по местам.'

		act 'Искать куда пропала Ира':
			cls
			horny += 10
			gs'stat'

			'<center><img src="images/picKav/irinaslut.jpg"></center>'
			'Вы подошли к подсобке откуда вышел довольный Гиви застегивающий ремень на брюках. Он улыбнулся вам и сказал "Вай, хорошую шлюху ты мне нашла, помоги ей, а то она после настоящего джигита никак в чувство не придет."'
			'Вы зашли в подсобку и удивили там Ирину стоящую раком кверху обнаженным задом, на котором была лужица спермы. Ира блаженно стонала "Такой кайф, у меня такого никогда не было."'

			act 'Помочь Ире и проводить до дома':
				cla
				minut += 15
				gs'stat'

				'Взяв салфетку вы стерли сперму с ее зада и помогли ей подняться и привести себя в порядок. Ира с блаженной улыбкой признавалась "Может Гиви и пузатый уродливый чурка, но выебал он меня так, как никто не ебал, я даже сознание потеряла от оргазма."'
				'Вы проводили Иру до дома которая никак не могла отойти от оргазма. Перед подъездом она поцеловала вас в губы и ушла.'

				act 'Идти домой':gt'street'
			end

			if horny >= 50:
				act 'Слизать сперму с ее зада':
					cls
					horny += 10
					minut += 15
					cumlip += 1
					gs'stat'

					'<center><img src="images/picKav/irinaslut2.jpg"></center>'
					'Вы встали на колени перед только что выебанной во все дыры задницей Иры и стали лизать ее покрасневшие отверстия слизывая сперму.'
					'Ира застонала "О, это так приятно, и почему я раньше боялась этого?"'

					act 'Проглотить сперму и проводить Иру до дома':
						cla
						minut += 15
						sub += 1
						swallow += 1
						gs'stat'

						'Вы проглотили сперму и помогли ей подняться и привести себя в порядок. Ира с блаженной улыбкой признавалась "Может Гиви и пузатый уродливый чурка, но выебал он меня так, как никто не ебал, я даже сознание потеряла от оргазма."'
						'Вы проводили Иру до дома которая никак не могла отойти от оргазма. Перед подъездом она поцеловала вас в губы и ушла.'

						act 'Идти домой':gt'street'
					end
					act 'Сплюнуть сперму Ире в рот':
						cls
						minut += 5
						dom += 1
						gs'stat'

						'<center><img src="images/picKav/irinaslut3.jpg"></center>'
						'Вы взяли руками Иру за лицо и подняли его, она с готовностью открыла рот куда вы плюнули, передав всю слизанную сперму Ире.'

						act 'Целоваться':
							cls
							sub += 1
							gs'stat'

							'<center><img src="images/picKav/irinaslut4.jpg"></center>'
							'Вы впились губами в губы Иры и начали с ней целоваться обмениваясь спермой в ваших ртах, наконец вы обе проглотили свою часть спермы'

							act 'Проводить Иру до дома':
								cla
								minut += 15
								gs'stat'

								'Вы вытерли лицо от остатков спермы и помогли ей подняться и привести себя в порядок. Ира с блаженной улыбкой признавалась "Может Гиви и пузатый уродливый чурка, но выебал он меня так, как никто не ебал, я даже сознание потеряла от оргазма."'
								'Вы проводили Иру до дома которая никак не могла отойти от оргазма. Перед подъездом она поцеловала вас в губы и ушла.'

								act 'Идти домой':gt'street'
							end
						end
						act 'Проводить Иру до дома':
							cla
							minut += 15
							dom += 1
							swallow += 1
							gs'stat'

							'Вы вытерли лицо от остатков спермы и помогли ей подняться и привести себя в порядок. Ира с блаженной улыбкой признавалась "Может Гиви и пузатый уродливый чурка, но выебал он меня так, как никто не ебал, я даже сознание потеряла от оргазма."'
							'Вы проводили Иру до дома которая никак не могла отойти от оргазма. Перед подъездом она поцеловала вас в губы и ушла.'

							act 'Идти домой':gt'street'
						end
					end
				end
			end
		end

		exit
	end

	if hour < 22:
		act 'Обслуживать столик':
			cls
			minut = minut + 30
			manna = manna - 5
			znarand = RAND(0,300)
			chai = RAND(0,vnesh + oficiant/2)
			if oficiant < 100:oficiant = oficiant + 1
			if vital < 30:vital = vital + 1
			money = money + chai
			if chai = 0:willpower = willpower - 5 & manna = manna - 15
			manna = manna - 5
			gs'stat'

			'<center><img src="images/picKav/waitress_client.jpg"></center>'
			'Вы обслужили столик за которым сидели посетители, и получили <<chai>> рублей чаевых.'

			act 'Отойти':gt'kafe','workPred'

			if znarand > vnesh or bfA > 0:
				kaferand = RAND(0,100)
				if kaferand = 0:
					cls
					gs'stat'

					'<center><img src="images/img/spaln/kafe1.jpg"></center>'
					'Обслуживая столик в одной из отдельных кабинок вы наблюдаете как двое мужчин соблазняют изрядно пьяную девушку, вскоре она уже стоит на коленях отсасывая обоим, один из мужчин смотрит на вас с явным намеком присоединиться.'

					act 'Уйти':gt'kafe','workPred'

					if daystart > 10 and sex > 0:
						act 'Присоединиться к девушке':
							kafesexrand = 1
							picrand = 13
							guy += 2
							girl += 1
							gang += 1
							xgt'sexdvanadva','var'
						end
					end
				elseif kaferand = 1:
					cls
					gs'stat'

					'<center><img src="images/img/spaln/kafe2.jpg"></center>'
					'Вы обслуживаете столик на мансарде, с двумя мужчинами, каждый раз как вы подходите они так и норовят шлепнуть вас ущипнуть или запустить руки под юбку.'

					act 'Уйти':gt'kafe','workPred'

					if daystart > 10 and sex > 0:
						act 'Поддаться':
							kafesexrand = 1
							picrand = 17
							guy += 2
							xgt'sexdvoe','var'
						end
					end
				elseif kaferand = 2 and vnesh > 15:
					cls
					'<center><img src="images/picKav/waitress_client.jpg"></center>'
					'За столом в отдельном номере сидел мужчина. Он оценивающе посмотрел на вас и сказал "Девушка, не составите мне компанию?" при этом вы заметили как топорщится ширинка на его брюках, у него явно встал член.'

					act 'Уйти':gt'kafe','workPred'
					act 'Присесть рядом с ним':
						cls
						'Вы сели рядом с клиентом. И посмотрели на него ожидая что он предпримет. Клиент взял вашу ладошку и положил себе на ширинку.'

						act 'Уйти':gt'kafe','workPred'

						if horny >= 50 or bj > 0:
							act 'Расстегнуть ему ширинку':
								cls
								dick = RAND(12,21)
								gs'stat'

								'<center><img src="images/picKav/waitress_work_2.jpg"></center>'
								'Вы расстегнули ширинку и достали теплый и твердый член <<dick>> сантиметров длинной, покрытый венами и маленькой капелькой на багровой головке.'

								act 'Дрочить член':
									cls
									boy += 1
									hj += 1
									money += 500
									gs'stat'

									'<center><img src="images/picKav/waitress_work_hj.jpg"></center>'
									'Обхватив своими пальчиками член вы начали его дрочить, мужчина довольно быстро застонал и разрядился вам в ладошку. После этого вы вытерли его член салфеткой и он дал вам 500 рублей за вашу работу.'

									act 'Уйти':gt'kafe','workPred'
								end
								act 'Сосать член':
									cls
									boy += 1
									bj += 1
									gs'stat'

									'<center><img src="images/picKav/waitress_work_bj.jpg"></center>'

									dynamic $dinrandbj

									act 'Принять сперму в рот':
										cls
										cumlip += 1
										money += 700
										gs'stat'

										'<center><img src="images/picKav/waitress_work_bj2.jpg"></center>'

										dynamic $dinrandswallow
										act 'Уйти':gt'kafe','workPred'
									end
								end
							end
						end
					end
				elseif kaferand = 3 and vnesh > 15:
					cls
					'<center><img src="images/picKav/waitress_client.jpg"></center>'
					'За столом в отдельном номере сидел мужчина. Он оценивающе посмотрел на вас и сказал "- Девушка, не поможете? Я приготовил для вас отличные чаевые, но случайно уронил их под стол. А сам я так объелся, что уже не согнусь..." при этом вы заметили как топорщится ширинка на его брюках, у него явно встал член.'

					act 'Уйти':gt'kafe','workPred'
					act 'Лезть под стол':
						cls
						gs'stat'

						'<center><img src="images/picKav/waitress_work_3_1.jpg"></center>'
						'- Хорошо, сейчас, - отвечаю я.'
						'В конце концов, за чаевыми не грех и под стол слазить. Встав на четвереньки и забравшись под стол, я действительно обнаруживаю там пятисотрублевую бумажку. Но когда я протягиваю руку, что бы ее взять, мужчина наступает на край банкноты ботинком. Затем расстегивает ширинку и достает из штанов член.'

						act 'Уйти':gt'kafe','workPred'

						if horny >= 50 or bj > 0:
							act 'Отсосать':
								cls
								bj += 1
								guy += 1
								gs'stat'

								'<center><img src="images/picKav/waitress_work_3_2.jpg"></center>'
								'Так и знала, что бесплатный сыр... просто так под столом не валяется.'
								'Но мне нужны эти пятьсот рублей, так что я беру его член рукой и направляю прямо себе в рот. Следующие пять минут я старательно облизываю и обсасываю его. Наконец, посетитель, совершив несколько коротких судорожных движений бедрами, начинает выплескивать горячую сперму прямо мне в рот.'

								act '...':
									cls
									cumlip += 1
									cumface += 1
									money += 500
									gs'stat'

									'<center><img src="images/picKav/waitress_work_3_3.jpg"></center>'
									'Заполнив мой рот до краев, он убрал ногу с банкноты и я смогла, наконец, забрать ее.'

									act 'Уйти':gt'kafe','workPred'
								end
							end
						end
					end
				elseif kaferand = 4:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand.jpg"></center>'
					'Зайдя в одну из кабинок вы увидели что девушка склонившись над парнем отсасывает у него.'

					act 'Тактично уйти':
						cls
						money += 300
						gs'stat'

						'Вы тактично вышли из кабинки, и после того как парочка ушла обнаружили чаевые на 300 рублей'

						act 'Уйти':gt'kafe','workPred'
					end
					act 'Возмутиться':
						cls
						gs'stat'

						'Вы возмущенно заявили, что кафе не публичный дом, тут люди едят.'

						iverand = RAND(0,2)
						if iverand = 0:'Парень обозвал вас сукой и оторвав свою девушку от минета удалился из кафе не оставив ни копейки чаевых.'
						if iverand = 1:'Парень послал вас нахуй и обозвал фригидной шлюхой, после чего кончил в рот своей подруге и ушел не оставив ни копейки чаевых.'
						if iverand = 2:
							'Парень залез в кошелек и достал пятисотенную купюру, "на и оставь нас"'

							act 'Выгнать их':gt'kafe','workPred'
							act 'Уйти':
								cls
								money += 500
								gs'stat'

								'Вы взяли деньги и ушли позволив парочке развлекаться дальше.'

								act 'Уйти':gt'kafe','workPred'
							end
						end

						act 'Уйти':gt'kafe','workPred'
					end

					if bj > 10 and swallow > 5 and horny >= 50:
						act 'Хихикать':
							cls
							gs'stat'

							'Девушка отвлеклась от члена и махнула вам рукой приглашая присоединится.'

							act 'Тактично уйти':
								cls
								money += 300
								gs'stat'

								'Вы тактично вышли из кабинки, и после того как парочка ушла обнаружили чаевые на 300 рублей'

								act 'Уйти':gt'kafe','workPred'
							end
							act 'Встать на колени перед парнем':
								cls
								bj += 1
								if SergeaAndKatjaSex = 0:SergeaAndKatjaSex = 1 & guy += 1
								gs'stat'

								'<center><img src="images/picKav/ivrandBJ.jpg"></center>'
								'Вы встали на колени и начали сосать член вместе с девушкой целуясь в процессе.'

								act '...':
									cls
									cumlip += 1
									cumface += 1
									gs'stat'

									'<center><img src="images/picKav/ivrandCUM.jpg"></center>'
									'Наконец парень не выдержал и начал кончать. Горячая сперма попала вам в рот и немного на лицо. Вы вдвоем с девушкой вылизали член до суха.'

									if SergeaAndKatjaQW = 0:
										SergeaAndKatjaQW = 1

										'После минета парень представился "Я Сергей, а это Катя. Не знал что тут такие горячие официантки работают."'
									end

									act 'Уйти':gt'kafe','workPred'
								end
							end
						end
					end
				elseif kaferand = 5:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand.jpg"></center>'
					'Обслуживая столики вы случайно заметили как какая то девушка украдкой дрочит член своему парню.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 6:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand3.jpg"></center>'
					'Зайдя в одну из кабинок вы увидели что там сидит несколько девушек и одна из них стоя на коленях вылизывает вагину у другой.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 7:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand4.jpg"></center>'
					'Проходя мимо танцпола на котором тусовалась пьяная молодеж вы увидели как одна пьяная девица сев на корточки стала сосать член.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 8:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand5.jpg"></center>'
					'Проходя мимо барной стойки вы увидели как какая то девица сидя на корточках сосет член у парня пьющего пиво..'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 9:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand6.jpg"></center>'
					'Зайдя в одну из кабинок вы увидели что там веселится компания молодежи и одну из девчонок трахают раком прямо перед столом.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 10:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand7.jpg"></center>'
					'На танцполе весело зажигают девчонки.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 11:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand8.jpg"></center>'
					'Вы видите как две пьяные девицы лижутся в засос не стесняясь никого.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 12:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand9.jpg"></center>'
					'Вы видите как пьяная девица полезла под стол потеряв там что то, у нее задралась юбка и трусов на заднице нет, так что практически все кафе может рассмотреть все содержание подюбочного пространства в деталях.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 13:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand10.jpg"></center>'
					'Вы видите как пьяная парочка резвится, девица лижет член парня, а парень льет ей шампанское в рот.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 14:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand11.jpg"></center>'
					'Вы случайно замечаете что парочка весело болтающих девиц не только весело болтает, одна из девушек запустила руку в трусики подружке и ласкает ее там.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 15:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand12.jpg"></center>'
					'Вы видите как на танцполе негр танцует с девушкой лапая ее за все что только можно, но девица по видимому совсем не против.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 16:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand13.jpg"></center>'
					'Зайдя в одну из кабинок вы увидели что парни играют с девушками в карты на раздевание и девушки явно проигрывают сидя в одном нижнем белье.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 17:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand14.jpg"></center>'
					'Вы видите как двое парней танцуют с девушкой всячески ее лапая и задирая ей юбку, на что девушка реагирует смехом даже не пытаясь как то прикрыть свой филей от взоров окружающей их публики.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 18:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand15.jpg"></center>'
					'Вы видите как на танцполе целуются парень с девушкой и он запустил ей руку под юбку практически трахает ее пальцами через трусы.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 19:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand16.jpg"></center>'
					'Вы видите как у стойки одна пьяная девица раздвинула ляшки и не менее бухой и веселый молодой человек сношает ее в киску своими пальцами.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 20:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand17.jpg"></center>'
					'Вы видите как парень обнимает пьяную в дрова девушку и набрав полный рот пива вливает его ей при поцелуе пока второй парень мацает ее сиськи.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 21:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand18.jpg"></center>'
					'Зайдя на мансарду вы видите как двое парней пялят с обоих концов девушку, которая чавкает отсасывая член и подмахивает задницей стараясь насадиться на член второго парня как можно глубже.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 22:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand19.jpg"></center>'
					'Вы видите как на танцполе одна уже не молодая мадам в откровенном наряде танцует с молодым парнем лапающим ее.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 23:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand20.jpg"></center>'
					'Вы видите как двое молодых парней нагнули девушку и изображают с ней половой акт под веселый и заливистый смех девицы.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand = 24:
					cls
					horny += 5
					gs'stat'

					'<center><img src="images/picKav/ivrand21.jpg"></center>'
					'Зайдя в одну из кабинок вы видите как мужчина лижет письку какой то развязной особе, которая положила свои ляшки ему на спину и ловя кайф покуривает сигарету.'

					act 'Уйти':gt'kafe','workPred'
				elseif kaferand >= 90 and opusk > 0 and pirsA = 0:
					cls
					pirsA = 1
					pirsday = day

					'<center><img src="images/picBody/pirs.jpg"></center>'
					'Вас подзывает один из клиентов, вы подходите к столику и замечаете что перед вами самые настоящие бандиты.'
					'Когда вы подошли к столику, главарь подозвал вас поближе к себе, а когда вы подошли, он очень крепко и больно схватил вас за шею.'
					'Главарь вам сказал - Вафлерша, открой рот. Вы послушно открыли рот, он вам заглянул туда и отвесил вам пощечину. Не вижу пирсинга на языке. Вафлерши должны носить пирсинг, что бы порядочный человек мог сразу понять что перед ним членососка.'
					'Главарь обернулся к своим браткам и сказал. Надо оформить членососку. Займитесь. В тот же момент вас схватили сильные руки и вынесли из кафе, там швырнули на заднее сиденье джипа. И джип сорвался с места.'
					'Ехали вы не очень долго, подъехав к каким то воротам, джип посигналил и ворота беззвучно открылись. Джип заехал на территорию коттеджа. Крепкие братки вытащили вас из машины и поволокли в подвал.'
					'В подвале уже все инструменты были готовы. Вас усадили на стул и здоровенный татуированный бандюган подошел к вам с зажимом и ножницами, он вытащил у вас язык изо рта и молниеносно проткнул его иглой. В кровоточащую рану на языке он засунул небольшую штангу.'
					'Черт, это очень больно. Вы стоните с высунутым языком, бандюки смеются над вашей болью. Наконец ваш язык вытаскивают из зажима. Как же вам больно. Бандиты выпроводили вас из коттеджа.'

					act 'Идти домой':gt'street'
				elseif kaferand > 25 and opusk > 0 and pirsA = 1 and hour >= 12 and hour <= 19:
					cls
					'Вас подзывает главарь бандитов к своему столику. Вы подошли к нему с дрожью в коленках. Он смотрит на вас как удав на кролика и говорит, вафлерша, открой	рот. Вы послушно открываете рот и высовываете меченный пирсингом язык.'
					'Главарь взял вас за лицо и пристально разглядел пирсинг. Все таки хорошо ребята поработали. Ладно вафлерша, залезай под стол и развлеки меня.'

					act 'Залезть под стол':
						cla
						if glavar = 0:glavar = 1 & guy += 1
						bj += 1
						cumface = cumface + 1

						'<center><img src="images/pics/glavarBJ.jpg"></center>'
						'Вы послушно залезаете под стол и достаете член главаря из штанов, послушно ласкаете его языком и начинаете сосать. Главарь как будто весь сделан из камня, у него не дрогнул ни один мускул когда он разрядил запас своей спермы вам в рот.'

						horand = RAND(1,100)
						if horand > horny:horny = horny + 10 & 'Вы остались не удовлетворены'
						if horand <= horny:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'

						'Вы глотаете всю его сперму и вылизываете его член до суха.'

						act 'Вернуться к работе':gt'kafe','workPred'
					end
				end
			elseif znarand <= vnesh and bfA <= 0:
				cls
				gs'boy'

				'<center><img src="images/picKav/waitress_client.jpg"></center>'
				'За столиком сидит <<$boybody>> <<$boybod>> <<$boyface>>. Он <<$boyClo>>'
				'Вы приняли у него заказ, он взял счет и спросил можете ли он с вами познакомится.'

				act 'Нет':
					cla
					money = money + 10

					'Парень огорчился, оставил вам 10 рублей чаевых и ушел.'

					act 'Отойти':gt'kafe','workPred'
				end

				if bfA <= 0 or bfB = 0 or bfC = 0:
					act 'Да':
						cla
						money = money + 100
						gs'boyfrend','start'
						stopboy = 0

						'Парень обрадовался тому, что вы не против познакомится с ним. Он представился как <<$boy>> и спросил у вас номер телефона, обещая завтра вам перезвонить.'
						'После чего оставил вам сто рублей чаевых и ушел.'

						act 'Отойти':gt'kafe','workPred'
					end
				end
			end
		end
	end

	if hour >= 22:
		act 'Собираться домой':
			cla
			if GiviSex = 0 and Givi < 90 or Vnesh < 0:
				'Гиви кивает вам головой, "До свидания, Свэтик."'

				act 'Уйти':
					cla
					minut = minut + 5
					gt'kafeend'
				end
			else
				dynamic $givipredlogdin
			end
		end
	end
end

if $ARGS[0] = 'razvod':
	cla
	!*clr
	!act 'Встать из за стола':gt'kafe','start'

	deyst = RAND(0,3)
	if deyst = 0:
		'<<$boy>> пригласил вас на танец.'

		act 'Танцевать':gt'Кафе2','танец'

		if horny < 75:
			act 'Отшить':gt'street'
		end
	elseif deyst = 1:
		'<<$boy>> спросил разрешения присесть к вам за столик.'

		act 'Выпивать':gt'Кафе2','бухло'

		if horny < 75:
			act 'Отшить':gt'street'
		end
	elseif deyst = 2:
		'<<$boy>> пригласил вас присоединиться к вечеринке на которой он гуляет.'

		act 'Согласиться':gt'Кафе2','компашка'

		if horny < 75:
			act 'Отшить':gt'street'
		end
	elseif deyst = 3:
		'<<$boy>> пьян в хлам и подойдя к вам обдал вас невероятным запахом. "Эй крошка, зачем время тянуть? Пойдем развлечемся в сортире."'

		act 'Согласиться':gt'Кафе3','туалет'

		if horny < 95:
			act 'Отшить':
				cla
				derand = RAND(0,100)
				if derand < vnesh:
					'Ладно, крошка, дам две тысячи. Папочке надо развлечься.'

					act 'Согласиться':
						money += 2000
						gt'Кафе3','туалет'
					end
				else
					'Ну и ладно, вали отсюда, у тебя все равно ноги кривые и ебало как у обезьяны.'
				end

				act 'Да пошел ты':gt'street'
			end
		end
	end
end
--- kafe ---------------------------------

