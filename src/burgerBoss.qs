# burgerBoss
!Подъяблонская
!Калдазар Келвин Бродус
!Андрей Криворотов
!Денис Добровольский

gs'stat'

if BistroBoss = 10:
	if week < 6 and hour >= 9 and hour < 17:'Анатолий Борисович сидит за столом и говорит с кем то по телефону.'
	if week < 6 and hour < 9 or week < 6 and hour >= 17:'Анатолия Борисовича нет на месте.'
	if week >= 6:'Сейчас выходные и Анатолия Борисовича нет на месте.'

	act 'Уйти':gt'burger','start'

	if PersSecWork = 2:
		if week < 6 and hour < 10:
			'Анатолий Борисович строго посмотрел на вас "Света, ты уволена, и я тебя не восстановлю, уходи, между нами все кончено, мне моя жена дороже, чем ты."'
		end
	elseif PersSecWork = 1:
		if week < 6 and hour < 10 and ofclo = 1:
			act 'Работать':gt'burgerWork'
			act 'Уволиться':
				PersSecWork = 0
				work = 0
				minut += 20

				gt'burger','start'
			end
		elseif week < 6 and hour < 10 and ofclo ! 1:
			'Анатолий Борисович строго посмотрел на вас "Светлана, ты во что вырядилась? Иди домой и переоденься, сегодня у тебя прогул!"'
		end
	elseif PersSecWork = 0 and week < 6:
		if secrDiplom = 1:
			act 'Показать диплом':
				cls
				minut += 1
				gs'stat'

				'Вы показали диплом Анатолию Борисовичу, "А трудовая есть?"'

				act 'Нет':
					cls
					minut += 1
					gs'stat'

					'Вы сказали, что работает в другом месте. Анатолий Борисович немного улыбнулся, "Что бы я мог взять тебя на работу, нужно что бы ты уволилась с прежнего места работы. Ты подумай хорошенько, я тебя не заставляю, но зарплату я тебе дам нормальную. Будешь получать 2500 в рабочий день, это больше полтинника в месяц."'

					act 'Уйти':gt'burger','start'
				end

				if (work = 0 and PersSecWork = 0 and cheatWork = 0) or (cheatWork = 0 and cheatWork = 1):
					act 'Вот трудовая':
						cls
						minut += 1
						gs'stat'

						'Вы положили трудовую на стол. Анатолий Борисович немного улыбнулся, "Ты подумай хорошенько, я тебя не заставляю, но зарплату я тебе дам нормальную. Будешь получать 2500 в рабочий день, это больше полтинника в месяц. От тебя мне нужна лояльность, работоспособность, четкое выполнение указаний."'

						act 'Уйти':gt'burger','start'
						act 'Устроиться на работу':
							cls
							minut += 1
							work = 1
							PersSecWork = 1
							gs'stat'

							'Вы согласились стать секретаршей Анатолия Борисовича, он забрал вашу трудовую, сделал копию паспорта и диплома, и начал рассказывать. Приходи каждый будний день в Быстроежку не позднее 9ти часов, обязательно соблюдай дресс код. Принимай звонки, записывай, печатай документы, в общем ничего сверхъестественного. Работать будешь до 17ти часов, зарплата раз в месяц.'

							act 'Уйти':gt'burger','start'
						end
					end
				end
			end
		end
	end
elseif BistroBoss = 1:
	'Вы вошли в кабинет директора. Анатолий Борисович сидел за столом и изучал документы, увидев вас он отложил их в сторону и показал вам на стул пригласив сесть.'

	act 'Сесть на стул':
		cls
		minut += 1
		BistroBoss = 10
		gs'stat'

		if bistroQW = 57:
			kosmetica += 200

			'Вы сели на стул и Анатолий Борисович улыбнулся вам. "Я так рад, что эта чертова командировка закончилась. Я уже успел соскучится по тебе. Кстати я приехал не с пустыми руками, вот тебе подарок." с этим словами Анатолий Борисович положил на стол дорогой набор косметики. "И еще, хочу тебя посвятить в некоторые детали. Я женат, у меня есть дети. Так что даже не заикайся ни о каком браке, на это я не пойду. Моя жена, дочь одного очень влиятельного депутата и мое нынешнее положение директора в этой паршивой забегаловке временное, я очень скоро получу пост заместителя министра по строительству, а пока мне просто нужно получить запись в трудовой. Так вот, ты себя проявила молодцом, мне нужны лояльные люди, и я предлагаю тебе стать моей секретаршей. У тебя есть диплом пройденных курсов секретарши?"'

			if secrDiplom = 1:
				act 'Да, у меня есть диплом':
					cls
					minut += 1
					gs'stat'

					'Вы сказали что у вас уже есть диплом секретаря. Анатолий Борисович улыбнулся. "Какая ты все таки молодец. Слушай, мне сейчас нужно сделать пару звонков, выйди пока."'

					act 'Уйти':gt'burger','start'
				end
			elseif secrDiplom = 0 and sekrObu > 0:
				act 'У меня нет диплома, но я уже учусь на секретаря':
					cls
					minut += 1
					gs'stat'

					'Вы сказали что у вас уже есть диплом секретаря. Анатолий Борисович улыбнулся. "Какая ты все таки молодец. Доучишься, приходи ко мне. Слушай, мне сейчас нужно сделать пару звонков, выйди пока."'

					act 'Уйти':gt'burger','start'
				end
			elseif secrDiplom = 0 and sekrObu = 0:
				act 'Нет':
					cls
					sekrObu = 1
					minut += 1
					gs'stat'

					'Вы отрицательно покачали головой. Анатолий Борисович улыбнулся. "Это не беда, я сейчас же заплачу за твое обучение и как только закончишь, приходи ко мне."'

					act 'Уйти':gt'burger','start'
				end
			end
		elseif bistroQW >= 65:
			'Вы сели на стул и Анатолий Борисович одарил вас мрачным взглядом. "Не думал я, что ты такая дешевка. Какая у тебя такса? Три сотки за отсос с проглотом?" Он достал из кармана купюру в 300 рублей и бросил ее на пол. "Вставай на колени и отработай, как ты умеешь, вафлерша."'

			act 'Уйти':gt'burger','start'
			act 'Встать на колени':
				cls
				minut += 5
				money += 300
				bj += 1
				swallow += 1
				cumlip += 1
				BistroBoss = 2
				BistroBossDay = day
				gs'stat'

				'<center><img src="images/qwest/sosed/bj2.jpg"></center>'
				'Вы встали на колени и взяли деньги с пола. Анатолий Борисович достал член и вы наклонили свое лицо на его твердым органом. После чего вы обхватили его своими губами и начали отсасывать чувствуя как твердый стержень заполняет ваш рот. Анатолий Борисович сжал зубы от удовольствия "Соси шлюха, а теперь глотай, и что бы все проглотила до капли!" Вы почувствовали как сперма ударила вам в рот и начали поскорее глотать сперму, что бы не подавиться. Закончив, Анатолий Борисович убрал член в брюки и сказал "А теперь выметайся."'

				act 'Уйти':gt'burger','start'
			end
		end
	end
elseif BistroBoss = 2 and BistroBossDay = day:
	'Постучав вы вошли в кабинет к Анатолию Борисовичу. Он рассерженно посмотрел на вас "Я же сказал, выметайся отсюда."'

	act 'Уйти':gt'burger','start'
elseif BistroBoss = 2 and BistroBossDay ! day:
	BistroBossDay = day

	'Постучав вы вошли в кабинет к Анатолию Борисовичу. Он мрачно посмотрел на вас и достал купюру в 300 рублей "Вставай на колени и отработай, как ты умеешь, вафлерша."'

	act 'Уйти':gt'burger','start'
	act 'Встать на колени':
		cls
		minut += 5
		money += 300
		bj += 1
		swallow += 1
		cumlip += 1
		BistroBossDay = day
		gs'stat'

		'<center><img src="images/qwest/sosed/bj2.jpg"></center>'
		'Вы встали на колени и взяли деньги с пола. Анатолий Борисович достал член и вы наклонили свое лицо на его твердым органом. После чего вы обхватили его своими губами и начали отсасывать чувствуя как твердый стержень заполняет ваш рот. Анатолий Борисович сжал зубы от удовольствия "Соси шлюха, а теперь глотай, и что бы все проглотила до капли!" Вы почувствовали как сперма ударила вам в рот и начали поскорее глотать сперму, что бы не подавиться. Закончив, Анатолий Борисович убрал член в брюки и сказал "А теперь выметайся."'

		act 'Уйти':gt'burger','start'
	end
end
--- burgerBoss ---------------------------------

