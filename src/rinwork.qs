# rinwork
if $ARGS[0] = 'start':
	$answerrin = {
		if tipred = pokti:
			if pokvnirand = 0:
				pokpay = RAND(1000,1200)
			elseif pokvnirand = 1:
				pokpay = RAND(1200,1500)
			elseif pokvnirand = 2:
				pokpay = RAND(1500,2000)
			end
		else
			$rinitog = '<<$poktip>> кладет вещь на место и уходит'
			pokupatel = 0
		end
	}

	$answerrin2 = {
		act 'Назвать цену':
			cla

			prodpay = input ("Введите цену вещи")
			if prodpay < 1000:prodpay = prodpayum

			'Вы назначили цену в <<prodpay>> рублей'

			if prodpay <= pokpay:
				poknorand = RAND(1,100+vnesh)
				if poknorand >= 10:
					rinmon += prodpay
					rinvesh += 1

					'Покупатель забрал вещь и заплатил <<prodpay>> рублей'

					act 'Торговать дальше':gt'rinwork','start'
				else
					'Покупатель вертит вещь в руках, <<prodpay>> рублей это слишком дорого'

					dynamic $answerrin3

					act 'Меньше не могу, (забрать вещь)':gt'rinwork','start'
				end
			elseif prodpay > pokpay and prodpay <= pokpay+100:
				poknorand = RAND(1,100+vnesh)
				if poknorand >= 10:
					'Покупатель вертит вещь в руках, <<prodpay>> рублей это слишком дорого'

					dynamic $answerrin3

					act 'Меньше не могу, (забрать вещь)':gt'rinwork','start'
				else
					'Покупатель кладет вещь на место и уходит'

					act 'Торговать дальше':gt'rinwork','start'
				end
			elseif prodpay > pokpay+100:
				'Покупатель кладет вещь на место и уходит'

				act 'Торговать дальше':gt'rinwork','start'
			end
		end
	}

	$answerrin3 = {
		if prodpay >= 1100:
			act 'Снизить цену на 100 руб':
				cla
				'Вы снизили цену на 100 рублей.'

				poknorand = RAND(1,100+vnesh)
				if poknorand >= 10:
					rinmon += prodpay-100
					rinvesh += 1

					'Покупатель забрал вещь и заплатил <<prodpay-100>> рублей'

					act 'Торговать дальше':gt'rinwork','start'
				else
					'Покупатель кладет вещь на место и уходит'

					act 'Торговать дальше':gt'rinwork','start'
				end
			end
		elseif prodpay >= 1050:
			act 'Снизить цену на 50 руб':
				cla
				'Вы снизили цену на 50 рублей.'

				poknorand = RAND(1,100+vnesh)
				if poknorand >= 30:
					rinmon += prodpay-50
					rinvesh += 1

					'Покупатель забрал вещь и заплатил <<prodpay-50>> рублей'

					act 'Торговать дальше':gt'rinwork','start'
				else
					'Покупатель кладет вещь на место и уходит'

					act 'Торговать дальше':gt'rinwork','start'
				end
			end
		end
	}

	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Рынок</font></b></center>'
	'<center><img src="images/pic/rinok.jpg"></center>'
	'Вы стоите за лотком с одеждой в ожидании покупателей.'
	'В кассе <<rinmon>> рублей, продано <<rinvesh>> вещей.'
	'Средняя цена на рынке <<prodpayum>>'

	if hour = 14:
		'К вам подошел Артур и вы начали подсчитывать сколько вы должны отдать Артуру.'

		act 'Отдать Артуру деньги':
			cla
			*clr
			rinart = rinvesh*1000
			rinmon = rinmon-rinart
			money += rinmon
			gs'stat'

			'Вы отдали Артуру <<rinart>> рублей за проданные <<rinvesh>> вещей.'
			'Сегодня вы заработали <<rinmon>> рублей'

			if rinart < arturplan:
				arturnoo += 1

				'Эээ, Свэтка, плохо работаешь, денег мало. Ты так разоришь меня совсем.'
			else
				arturyes += 1

				'Маладэц Свэтик, хорошо поработала.'
			end

			if arturnoo > arturyes:arturnoo = arturnoo-arturyes & arturyes = 0
			if arturyes > arturnoo:arturyes = arturyes-arturnoo & arturnoo = 0
			if arturnoo = arturyes:arturnoo = 0 & arturyes = 0
			rinmon = 0
			rinvesh = 0

			if arturnoo > 10:
				arturnoo = 0
				work = 0
				workrin = 0

				'Ээ, заебала ты уже савсэм. Вот твоя трудовая. Проваливай, чтоб я тебя больше не видел!'

				act 'Уйти':gt'street'
				exit
			end

			rinrand = RAND(1,100)
			if rinrand < vnesh and palevorin = 0 and rinhoz = 0:
				'(Артур) - Вай, Свэтик, мы с тобой еще даже не познакомились хорошенько. Пойдем в контейнер, покушаем шашлыка, выпьем, познакомимся.'

				act 'Отказаться':
					cla
					'Вы стали отнекиваться, Артур вам сказал. Вай, зачем оскорбляешь, у тебя вот лоток не убран, пыль, грязь, я ведь и штраф могу с тебя взять.'

					act 'Ладно, пойдем выпьем':gt'РынокХоз','начало'
					act 'Нет':
						cla
						arturplan += 1000

						if money >= 1000:
							money -= 1000

							'Вай, у тебя вещи грязные, отдавай тысячу рублей, это штраф. Вы отдали Артуру деньги.'
						else
							'Ладно, иди уже.'
						end

						act 'Уйти':gt'street'
					end
				end

				act 'Пойдем':gt'РынокХоз','начало'
				exit
			elseif rinrand < vnesh and palevorin = 0 and rinhoz = 1:
				'(Артур) - Вай, Свэтик. Пойдем в контейнер, покушаем шашлыка, выпьем, отдохнем. Он подошел к вам вплотную и хлопнул по попе ладонью.'

				act 'Отказаться':
					cla
					'Вы стали отнекиваться, Артур вам сказал. Вай, зачем оскорбляешь, у тебя вот лоток не убран, пыль, грязь, я ведь и штраф могу с тебя взять.'

					act 'Ладно, пойдем выпьем':gt'РынокХоз','начало'
					act 'Нет':
						cla
						arturplan += 1000

						if money >= 1000:
							money -= 1000

							'Вай, у тебя вещи грязные, отдавай тысячу рублей, это штраф. Вы отдали Артуру деньги.'
						else
							'Ладно, иди уже.'
						end

						act 'Уйти':gt'street'
					end
				end

				act 'Пойдем':gt'РынокХоз','начало'
				exit
			end

			act 'Уйти с работы':gt'street'
		end
		exit
	elseif hour < 14:
		pokrand = RAND(0,1)
		if pokrand = 0:
			$pokup = 'Покупателей не видно.'
			pokupatel = 0
			''
			'По рынку идет тетя Катя с тележкой в которой она везет пирожки и кофе.'
		elseif pokrand = 1:
			pokupatel = 1

			poktiprand = RAND(0,7)
			if poktiprand = 0:$pokup = 'К лотку подошел мужчина средних лет.' & $poktip = 'Мужчина' & pokti = 1
			if poktiprand = 1:$pokup = 'К лотку подошел молодой мужчина.' & $poktip = 'Парень' & pokti = 2
			if poktiprand = 2:$pokup = 'К лотку подошел парень подросток.' & $poktip = 'Пацан' & pokti = 3
			if poktiprand = 3:$pokup = 'К лотку подошла женщина.' & $poktip = 'Женщина' & pokti = 1
			if poktiprand = 4:$pokup = 'К лотку подошла девушка.' & $poktip = 'Девушка' & pokti = 2
			if poktiprand = 5:$pokup = 'К лотку подошла девушка подросток.' & $poktip = 'Девченка' & pokti = 3
			if poktiprand = 6:$pokup = 'К лотку подошел старик.' & $poktip = 'Старик' & pokti = 0
			if poktiprand = 7:$pokup = 'К лотку подошла бабуля.' & $poktip = 'Бабуля' & pokti = 0
		end

		'<b><<$pokup>></b>'

		if pokupatel = 1:
			act 'Что желаете?':
				cla
				minut += 15

				pokvnirand = RAND(0,2)
				if pokvnirand = 0:
					'<<$poktip>> без интереса осматривает продаваемые вещи.'
				elseif pokvnirand = 1:
					'<<$poktip>> с интересом осматривает продаваемые вещи.'
				elseif pokvnirand = 2:
					'<<$poktip>> берет в руки вещь.'
				end

				!dynamic $answerrin

				act 'Сейчас это очень модно':
					cla
					tipred = 3

					dynamic $answerrin

					'<<$rinitog>>'

					if pokupatel = 0:act 'Дальше':gt'rinwork','start'
					if pokupatel = 1:
						'<<$poktip>> спрашивает у вас цену'

						dynamic $answerrin2
					end
				end
				act 'Вещь очень качественная и надежная':
					cla
					tipred = 1

					dynamic $answerrin

					'<<$rinitog>>'

					if pokupatel = 0:act 'Дальше':gt'rinwork','start'
					if pokupatel = 1:
						'<<$poktip>> спрашивает у вас цену'

						dynamic $answerrin2
					end
				end
				act 'Отдам не дорого':
					cla
					tipred = 0

					dynamic $answerrin

					'<<$rinitog>>'

					if pokupatel = 0:act 'Дальше':gt'rinwork','start'
					if pokupatel = 1:
						'<<$poktip>> спрашивает у вас цену'

						dynamic $answerrin2
					end
				end
				act 'Вам очень идет':
					cla
					tipred = 2

					dynamic $answerrin

					'<<$rinitog>>'

					if pokupatel = 0:act 'Дальше':gt'rinwork','start'
					if pokupatel = 1:
						'<<$poktip>> спрашивает у вас цену'

						dynamic $answerrin2
					end
				end
			end
		end

		act 'Бездельничать 15 минут':
			minut += 15
			gt'rinwork','start'
		end

		if hour = 9:
			rintakrand = RAND(0,5)
			if rintakrand = 0:
				$rintak = 'В лотке напротив Хасан выгружает шмотки продавщице Наде.'

				act 'Смотреть на Хасана и Надю':
					cla
					minut += 15

					talkrand = RAND(0,2)
					if talkrand = 0:'Хасан выговаривает Наде. "Сегодня продашь больше, а то штраф дам, мне деньги нужны."'
					if talkrand = 1:'Хасан открывает баулы и выкладывает шмотки на прилавок.'
					if talkrand = 2:'Хасан перетаскивает баулы к своему лотку.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 1:
				$rintak = 'В соседнем лотке Абдула громко разговаривая отдает шмотки продавщице Анне.'

				act 'Смотреть на Абдулу и Анну':
					cla
					minut += 15

					talkrand = RAND(0,2)
					if talkrand = 0:'Абдула ругается. "Ты уже заебала, ничего продать не можешь!" Анна парирует, "так ты мне трухлявое дерьмо на продажу даешь, его брать никто не хочет."'
					if talkrand = 1:'Абдула хлопнул по жопе Анне, та сделала вид что ничего не произошло.'
					if talkrand = 2:'Абдула перетаскивает баулы к своему лотку.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 2:
				$rintak = 'Абдула и Хасан стоят около вашего лотка и о чем то гортанно разговаривает.'

				act 'Смотреть на кавказцев':
					cla
					minut += 15

					talkrand = RAND(0,2)
					if talkrand = 0:'Абдула и Хасан продолжают о чем то разговаривать, языка вы не знаете и о чем они говорят понять не можете.'
					if talkrand = 1:'Абдула и Хасан пялятся на вас и гогочут что то обсуждая.'
					if talkrand = 2:'Абдула глядит на вас и говорит Хасану, "гляди какая девочка, губки пэрсик, вах."'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 3:
				$rintak = 'Анна развешивает шмотки в лотке и перекрикивается с Надей.'

				act 'Болтать с девчонками':
					cla
					annaQW += 1
					NadiaQW += 1
					minut += 15

					talkrand = RAND(0,2)
					if talkrand = 0:
						'Аня рассказывает, что ей юбку надо было перешить, так вот один еврей отличный портной, он в офисном здании работает.'

						if clener = 0:clener = 1
					elseif talkrand = 1:
						'Надя рассказывает как к ней в метро приставал какой то извращенец, терся об зад членом.'
					end

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 4:
				$rintak = 'Артур о чем то разговаривает с Абдулой.'

				act 'Смотреть на кавказцев':
					cla
					minut += 15

					talkrand = RAND(0,2)
					if talkrand = 0:'Абдула и Артур продолжают о чем то разговаривать, языка вы не знаете и о чем они говорят понять не можете.'
					if talkrand = 1:'Абдула и Артур пялятся на вас и гогочут что то обсуждая.'
					if talkrand = 2:'Абдула глядит на вас и говорит Артуру, "гляди какая девочка, губки пэрсик, вах."'

					act 'Далее':gt'rinwork','start'
				end
			end
			if rintakrand = 5:
				$rintak = 'Артур, Абдула и Хасан громко ржут и о чем то разговаривают на не понятном языке.'

				act 'Смотреть на кавказцев':
					cla
					minut += 15

					talkrand = RAND(0,2)
					if talkrand = 0:'Кавказцы продолжают о чем то разговаривать, языка вы не знаете и о чем они говорят понять не можете.'
					if talkrand = 1:'Кавказцы пялятся на вас и гогочут что то обсуждая.'
					if talkrand = 2:'Абдула глядит на вас и говорит другим кавказцам, "гляди какая девочка, губки пэрсик, вах."'

					act 'Далее':gt'rinwork','start'
				end
			end

			'<<$rintak>>'
		elseif hour = 10:
			rintakrand = RAND(0,5)
			if rintakrand = 0:
				$rintak = 'Хасан сидя на стуле уныло жует чебурек и разговаривает с набитым ртом с продавщицей Надей.'

				act 'Смотреть на Хасана':
					cla
					minut += 15

					'Хасан говорит Наде "Наденька, зачэм ти отказываешься? Покушаем шашлыков, выпьем вина".'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 1:
				$rintak = 'В лотке напротив сидит Надя и разгадывает кроссворды.'

				act 'Болтать с Надей':
					cla
					!annaQW += 1
					NadiaQW += 1
					minut += 15

					'Надя отрывается от кроссворда и охотно поддерживает беседу о всякой ерунде.'

					if clener = 0:
						clener = 1

						'Надя рассказывает о портном еврее работающем в офисном здании.'
					end

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 2:
				$rintak = 'В лотке напротив к Наде подошли покупатели и она суетится выкладывая перед ними товар.'

				act 'Болтать с Надей':
					cla
					!annaQW += 1
					NadiaQW -= 1
					minut += 15

					'Надя не довольна, Свет, не отвлекай, у меня покупатели.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 3:
				$rintak = 'В соседнем лотке Анна пьет кофе.'

				act 'Болтать с Аней':
					cla
					annaQW += 1
					!NadiaQW -= 1
					minut += 15

					'Аня поддерживает беседу с вами и рассказывает какие то пустяки.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 4:
				$rintak = 'В соседнем лотке Анна пытается втюхать покупателям залежалый товар.'

				act 'Болтать с Аней':
					cla
					annaQW -= 1
					!NadiaQW -= 1
					minut += 15

					'Аня не довольна, Свет, не отвлекай, у меня покупатели.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 5:
				$rintak = 'Анна болтает о пустяках с тетей Катей.'

				act 'Болтать с Аней и тетей Катей':
					cla
					annaQW += 1
					!NadiaQW += 1
					tetaKataQW += 1
					minut += 15

					'Тетя Катя нахваливает пирожки, а Аня жалуется, что она себе уже на этих пирожках задницу наела в два раза больше чем была..'

					act 'Далее':gt'rinwork','start'
				end
			end

			'<<$rintak>>'
		elseif hour = 11:
			rintakrand = RAND(0,5)
			if rintakrand = 0:
				$rintak = 'К Наде подошли три кавказца, Аслан, Камиля и Мухтар и начали к ней приставать, а она ругалась на них и пыталась увернутся.'

				act 'Смотреть на Надю и кавказцев':
					cla
					!annaQW += 1
					!NadiaQW += 1
					!tetaKataQW += 1
					minut += 15

					'Кавказцы явно склоняют Надю к сексу.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 1:
				$rintak = 'В лотке напротив сидит Надя и ест пирожок.'

				act 'Болтать с Надей':
					cla
					!annaQW += 1
					NadiaQW += 1
					minut += 15

					'Надя отрывается от кроссворда и охотно поддерживает беседу о всякой ерунде.'

					if clener = 0:
						clener = 1

						'Надя рассказывает о портном еврее работающем в офисном здании.'
					end

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 2:
				$rintak = 'В лотке напротив к Наде подошли покупатели и она суетится выкладывая перед ними товар.'

				act 'Болтать с Надей':
					cla
					!annaQW += 1
					NadiaQW -= 1
					minut += 15

					'Надя не довольна, Свет, не отвлекай, у меня покупатели.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 3:
				$rintak = 'В соседнем лотке Анна читает газету.'

				act 'Болтать с Аней':
					cla
					annaQW += 1
					!NadiaQW -= 1
					minut += 15

					'Аня поддерживает беседу с вами и рассказывает какие то пустяки.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 4:
				$rintak = 'К Ане из соседнего лотка подошли покупатели.'

				act 'Болтать с Аней':
					cla
					annaQW -= 1
					!NadiaQW -= 1
					minut += 15

					'Аня не довольна, Свет, не отвлекай, у меня покупатели.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 5:
				$rintak = 'К Ане подошли три кавказца, Аслан, Камиля и Мухтар и начали к ней приставать, она отнекивается и большей частью испуганно молчит.'

				act 'Смотреть на Аню и кавказцев':
					cla
					!annaQW += 1
					!NadiaQW += 1
					!tetaKataQW += 1
					minut += 15

					'Кавказцы явно склоняют Аню к сексу.'

					act 'Далее':gt'rinwork','start'
				end
			end

			'<<$rintak>>'
		elseif hour = 12:
			rintakrand = RAND(0,5)
			if rintakrand = 0:
				$rintak = 'Хасан купил чебурек и ест его сидя за спиной Нади в лотке.'

				act 'Болтать с Надей':
					cla
					!annaQW += 1
					NadiaQW -= 1
					minut += 15

					'Надя стесняется разговаривать при Хасане.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 1:
				$rintak = 'Надя торгуется с покупателями.'

				act 'Болтать с Надей':
					cla
					!annaQW += 1
					NadiaQW -= 1
					minut += 15

					'Надя не довольна, Свет, не отвлекай, у меня покупатели.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 2:
				$rintak = 'Надя болтает с Анной.'

				act 'Болтать с девчонками':
					cla
					annaQW += 1
					NadiaQW += 1
					minut += 15

					talkrand = RAND(0,2)
					if talkrand = 0:
						'Аня рассказывает, что ей юбку надо было перешить, так вот один еврей отличный портной, он в офисном здании работает.'

						if clener = 0:clener = 1
					end
					if talkrand = 1:'Надя рассказывает как к ней в метро приставал какой то извращенец, терся об зад членом.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 3:
				$rintak = 'Аня продает покупателям одежду.'

				act 'Болтать с Аней':
					cla
					annaQW -= 1
					!NadiaQW -= 1
					minut += 15

					'Аня не довольна, Свет, не отвлекай, у меня покупатели.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 4:
				$rintak = 'Аня пьет кофе сидя за своим лотком.'

				act 'Болтать с Аней':
					cla
					annaQW += 1
					!NadiaQW -= 1
					minut += 15

					'Аня поддерживает беседу с вами и рассказывает какие то пустяки.'

					act 'Далее':gt'rinwork','start'
				end
			elseif rintakrand = 5:
				$rintak = 'Надя от безделья ловит мух.'

				act 'Болтать с Надей':
					cla
					!annaQW += 1
					NadiaQW += 2
					minut += 15

					'Надя обрадовалась хоть какому то развлечению и с удовольствием болтает с вами.'

					act 'Далее':gt'rinwork','start'
				end
			end

			'<<$rintak>>'
		elseif hour = 13:
			rintakrand = RAND(0,5)
			if rintakrand = 0:
				$rintak = 'Хасан начал потихоньку собирать товар у Нади.'
			elseif rintakrand = 1:
				$rintak = 'Аня сидит и подсчитывает прибыль за день.'
			elseif rintakrand = 2:
				$rintak = 'Надя подсчитывает прибыль за день.'
			elseif rintakrand = 3:
				$rintak = 'Абдула начал собирать товар у Ани.'
			elseif rintakrand = 4:
				$rintak = 'Мимо вашего лотка прошел Артур.'
			elseif rintakrand = 5:
				$rintak = 'Тетя катя заканчивает торговать пирожками и кажется собирается уходить.'
			end

			'<<$rintak>>'
		end

		if money >= 200:
			act 'Перекусить 15 минут (200 руб)':
				cla
				*clr
				gs'stat'
				tetaKataQW += 1
				minut = minut + 15
				health = health + 10
				manna = manna + 20
				money -= 200

				'<center><img src="images/pics/food.jpg"></center>'

				if energy >= 30:
					fat = fat + 5

					'Вы больше не можете есть.'
				elseif energy >= 20 and energy < 30:
					fat = fat + 3
					energy = energy + 10

					'Вы через силу затолкали в себя еду.'
				elseif energy < 20:
					energy = energy +20
					!fat = fat + 1

					'Вы с удовольствием съели приготовленную еду.'
				end

				if water >= 20:
					'Кофе в вас больше не лезет.'
				elseif water < 20:
					water = water +20

					'Вы с удовольствием выпили кружку кофе.'
				end

				act 'Выкинуть остатки':gt'rinwork','start'
			end
		end
	end
end
--- rinwork ---------------------------------

