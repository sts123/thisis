# qwmeet
$qwmeetdy = {
	'Открылась дверь автомобиля и водитель подал вам руку.'

	act 'Выйти из машины оперевшись на руку водителя':
		cls
		minut += 3
		gs'stat'

		'<center><img src="images/qwest/kim/001.jpg"></center>'
		'Выйдя из машины вы только сейчас разглядели водителя. Им оказался молодой парень азиатского происхождения. Он производил впечатление уверенного в себе парня и нагловато улыбался вам.'
		'Из машины выглянул Владимир "Это мой водитель, Слава. Он будет заезжать за тобой. Пока Светуль, я тебе позвоню."'
		'Азиат еще раз улыбнулся вам и закрыл заднюю дверь. Запрыгнув на водительское сиденье он еще раз посмотрел на вас алчным, раздевающим взглядом и ухмыльнувшись захлопнул дверь. Машина тут же с юзом сорвалась с места и улетела исчезнув в дали.'

		act 'Идти домой':gt'street'
	end
}

minut += 5
vladimirQW = 25
vladimirday = day
gs'stat'

'<center><b><font color = maroon>Владимир</font></b></center>'
'<center><img src="images/qwest/vladimir/001.jpg"></center>'
'Как только вы вошли в двери ресторана к вам подошел Владимир с пышным букетом роз. Здравствуйте Света. Ну что пойдем в ресторан?'

act 'Взять букет и идти в ресторан с Владимиром':
	cla
	minut += 3
	gs'stat'

	'Вы немного смутившись взяли букет роз и рук Владимира и он взяв вас под локоток повел вас в ресторан. Он провел вас к столику на котором стола табличка "Спец заказ" и подставив вам стульчик пригласил сесть.'

	act 'Сесть на стул':
		cla
		minut += 3
		gs'stat'

		'Официант принес вам меню и Владимир попросил вас не стеснятся и заказывать все что хотите.'

		act 'Сделать заказ':
			cla
			minut += 3
			gs'stat'

			'Вы сделали заказ и официант забрав меню удалился. За столом возникла неловкая пауза. Владимир помолчал и спросил. "Вы Свет кем работаете?"'

			if workrin = 1:
				$qwvladwork = 'Работаю на рынке.'
			elseif young_shop_work = 1:
				$qwvladwork = 'Работаю в магазине.'
			elseif workKafe > 0:
				$qwvladwork = 'Работаю официанткой в кафе.'
			else
				$qwvladwork = 'По большому счету ничем.'
			end

			act '<<$qwvladwork>>':
				cla
				minut += 15
				gs'stat'

				'(Вы) - <<$qwvladwork>>'
				'(Владимир) - Понятно. Я владею не большой конторкой, свой бизнес. Купи продай, если коротко.'
				'В это время официант принес на стол заказ. После того как тарелки были расставлены. Владимир продолжил.'
				'"Мне 40 лет. Женат, есть ребенок. С женой нас уже давно ничего не связывает и я готов развестись с ней в любое время."'
				'Владимир налил вина в бокалы и предложил первый тост за знакомство.'

				act 'Выпить':
					cla
					minut += 15
					energy = 21
					water = 21
					gs'stat'

					'Вы выпили вина и начали ковырять в салате вилкой. Владимир сказал. "Давай перейдем на ты, надеюсь ты не против?" Вы покачали головой подтвердив что вам тоже этот официальный стиль общения не очень нравится.'
					'Владимир продолжил "В бизнесе законы волчьи. Нельзя стоять на месте, надо постоянно развиваться. Сейчас я открываю еще один бизнес. Поэтому мог бы взять тебя на работу."'
					'Вы прожевали салат и удивленно посмотрели на него. "Мы же только познакомились, ты же меня совсем не знаешь."'
					'Владимир кивнул "Да, но ты особенная девушка. Уникальная. Я просто чувствую это."'
					'В ресторане заиграла живая музыка и Владимир пригласил вас на танец.'

					act 'Танцевать с Владимиром':
						cla
						minut += 15
						gs'stat'

						'Владимир взял вас под руку и вывел на танцпол. Там он вас крепко, обнял и начал уверенно вести в танце. Вы чувствуете в танце как ваша грудь прижимается к груди Владимира и его горячие руки крепко держат вас за талию.'
						'Вскоре танец кончился и Владимир пододвинув вам стул помог вам сесть за стол. Вы продолжили ужинать и беседовать. На этот раз Владимир не затрагивал серьезных тем и рассказывал как он недавно ездил на горнолыжный курорт.'
						'После того как вы наелись и напились Владимир предложил вас проводить до дома. Он расплатился с официантом оставив щедрые чаевые и взяв вас за руку пошел с вами из ресторана.'

						act 'Выйти из ресторана':
							cls
							minut += 15
							gs'stat'

							'<center><img src="images/qwest/vladimir/car.jpg"></center>'
							'У ресторана уже стояла машина приготовленная для вас с Владимиром, он помог вам сесть на заднее сиденье и обойдя машину сел рядом с вами. Водитель закрыл двери и сел за баранку. Не оборачиваясь он спросил куда ехать и вы назвали ему свой адрес.'
							'Вы практически полетели по улицам города на бешеной скорости. Водитель оказался настоящим асом, он ловко вписывался в повороты и обходил еле движущиеся машины не разу не нажав на тормоз. Очень быстро вы приехали к вашему подъезду. Владимир грустно заметил "Мне к сожалению нужно еще пару дел сделать, поэтому я очень спешу. Я тебе позвоню завтра."'
							'Он наклонился к вам стремясь поцеловать вас.'

							act 'Поцеловать в щеку':
								cla
								'Вы подставили щеку и Владимир легонько поцеловал вас.'

								dynamic $qwmeetdy
							end
							act 'Поцеловать в губы':
								cla
								'Вы поцеловали Владимира в губы. Его сильные и твердые губы нежно впились в ваши мягкие и нежные губки.'

								dynamic $qwmeetdy
							end
						end
					end
				end
			end
		end
	end
end
--- qwmeet ---------------------------------
