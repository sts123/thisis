# dk
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Дом культуры имени Ленина</b></center>'
	'<center><img src="images/pic/dk.jpg"></center>'
	'Часы работы с 9 до 17, выходные суббота, воскресенье.'

	if hour >= 9 and hour <= 17 and week < 6:
		act 'Идти в дом культуры':gt'dk','holl'
	end

	if avtoskul >= 1 and avtoskul < 11 and skulday ! day and week >= 6 and money >= 1000 and age >= 18:
		act 'Учиться на права за отдельную плату (1000 руб 2 часа)':
			cla
			*clr
			money -= 1000
			skulday = day
			avtoskul = avtoskul + 1
			minut = minut + 120

			'<center><img src="images/pic/dk2.jpg"></center>'
			'Вы обучались по современной методике вождению.'

			act 'Уйти':gt'dk','holl'
		end
	end

	act 'Уйти':gt'nord'
end

if $ARGS[0] = 'holl':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Дом культуры</b></center>'
	'<center><img src="images/pic/dk1.jpg"></center>'
	'Предоставляемые услуги, автошкола, 30 тыс.руб за 10 занятий, в любое удобное для вас время в течении рабочего дня дома культуры.'
	'Обучение офисным программам, с выдачей диплома секретаря. 15 тыс.руб, срок обучения 10 дней.'
	!'Медиум для получения новых возможностей - только у нас, только халява.'
	'На стене висит объявление. Уроки вокала. 500 руб за занятие.'
	'Обучение массажу, одно занятие 5000 руб.'
	'Курсы личностного роста 1000 руб одно занятие.'

!'
	act 'Зайти к медиуму':
		cla
		*clr
		minut = minut +30
		killobj
		addobj 'Обратно'

		'Вы так и не поняли, произошло ли что-нибудь, и в смешанных чувствах вышли от шарлатана.'

		act 'Уйти':gt'dk','holl'
	end
'

	if money >= 1000:
		act 'Курсы личностного роста (1 тыс.руб)':
			cls
			money -= 1000
			dom += 5
			minut += 60
			gs'stat'

			'Вы в течении часа с другими посетителями и ведущим обыгрывали разные жизненные ситуации и учились быть победителем в жизненных ситуациях, отстаивать свои интересы. После курсов вы чувствуете, что ваша доминантность выросла.'

			act 'Уйти':gt'dk','holl'
		end
	end

	if secrDiplom = 0 and sekrObu > 0:sekrObuA = sekrObu - 1 & 'Обучались на секретаря <<sekrObuA>> дней из 10'

	if hour >= 9 and hour <= 17 and week < 6:
		if vokalday ! day and alexeySex > 0 and alexeyVopros = 2:
			act 'Идти на уроки вокала':
				cls
				alexeyQW += 1
				vokal += 1
				vokalday = day
				horny += 30
				gs'stat'

				'Вы в течении часа занимались с Алексеем вокалом, который изредка то ласкал вашу ногу, то трогал попу, то поглаживал грудь.'

				deystrand = RAND(0,10)
				if deystrand >= 8:
					'После отработанного времени Алексей обратился к вам "Сегодня я не могу Светик, работы много, отсоси у меня по быстрому.'

					act 'Встать на колени и взять в рот':
						cls
						alexeySex += 1
						horny += 10
						bj += 1
						minut += 10
						gs'stat'

						picrand = RAND(0,13)
						if picrand = 0:'<center><img src="images/qwest/alexey/bj.jpg"></center>'
						if picrand = 1:'<center><img src="images/qwest/alexey/bj1.jpg"></center>'
						if picrand = 2:'<center><img src="images/qwest/alexey/bj2.jpg"></center>'
						if picrand = 3:'<center><img src="images/qwest/alexey/bj3.jpg"></center>'
						if picrand = 4:'<center><img src="images/qwest/alexey/bj4.jpg"></center>'
						if picrand = 5:'<center><img src="images/qwest/alexey/bj5.jpg"></center>'
						if picrand = 6:'<center><img src="images/qwest/alexey/bj6.jpg"></center>'
						if picrand = 7:'<center><img src="images/qwest/alexey/bj7.jpg"></center>'
						if picrand = 8:'<center><img src="images/qwest/alexey/bj8.jpg"></center>'
						if picrand = 9:'<center><img src="images/qwest/alexey/bj9.jpg"></center>'
						if picrand = 10:'<center><img src="images/qwest/alexey/bj10.jpg"></center>'
						if picrand = 11:'<center><img src="images/qwest/alexey/bj11.jpg"></center>'
						if picrand = 12:'<center><img src="images/qwest/alexey/bj12.jpg"></center>'
						if picrand = 13:'<center><img src="images/qwest/alexey/bj13.jpg"></center>'

						'Вы встали на колени перед ним и обхватив член своими <<$liptalk>> начали сосать. Алексей помогал бедрами практически долбя вас в рот. Наконец он застонал "Лови хуесоска свой паек, если что на полу будет, слизать заставлю."'

						gs'oral','0'

						act 'Подставить рот':
							cls
							horny += 10
							minut += 10
							swallow += 1
							cumlip += 1
							gs'stat'

							picrand = RAND(0,13)
							if picrand = 0:'<center><img src="images/qwest/alexey/bjcum.jpg"></center>'
							if picrand = 1:'<center><img src="images/qwest/alexey/bjcum1.jpg"></center>'
							if picrand = 2:'<center><img src="images/qwest/alexey/bjcum2.jpg"></center>'
							if picrand = 3:'<center><img src="images/qwest/alexey/bjcum3.jpg"></center>'
							if picrand = 4:'<center><img src="images/qwest/alexey/bjcum4.jpg"></center>'
							if picrand = 5:'<center><img src="images/qwest/alexey/bjcum5.jpg"></center>'
							if picrand = 6:'<center><img src="images/qwest/alexey/bjcum6.jpg"></center>'
							if picrand = 7:'<center><img src="images/qwest/alexey/bjcum7.jpg"></center>'
							if picrand = 8:'<center><img src="images/qwest/alexey/bjcum8.jpg"></center>'
							if picrand = 9:'<center><img src="images/qwest/alexey/bjcum9.jpg"></center>'
							if picrand = 10:'<center><img src="images/qwest/alexey/bjcum10.jpg"></center>'
							if picrand = 11:'<center><img src="images/qwest/alexey/bjcum11.jpg"></center>'
							if picrand = 12:'<center><img src="images/qwest/alexey/bjcum12.jpg"></center>'
							if picrand = 13:'<center><img src="images/qwest/alexey/bjcum13.jpg"></center>'

							'Струи спермы ударили вам в рот и начали стекать по вашим <<$liptalk>>. Алексей вытер свой член о ваши <<$liptalk>> и убрал его в штаны.'
							'Вы стали старательно глотать теплую, резко пахнущую сперму и собирать остатки пролившейся спермы с подбородка. После того как вы проглотили семя, вы облизнули губы и встав с пола собрались уходить.'

							act 'Уйти':gt'dk','holl'
						end
					end
				else
					'После урока Леха взяв вас под руку повел к себе домой.'

					if sashaClubQW = 0:act 'Идти':gt'alex'
					if sashaClubQW > 0:
						ivrand = RAND(0,10)
						if ivrand < 8:act 'Идти':gt'alex'
						if ivrand >= 8:act 'Идти':gt'alexgang'
					end
				end
			end
		elseif money >= 500 and vokalday ! day and alexeySex > 0 and alexeyVopros = 1:
			act 'Идти на уроки вокала (500 рублей 1 час)':
				cls
				money -= 500
				alexeyQW += 1
				vokal += 1
				vokalday = day
				gs'stat'

				'Вы в течении часа занимались с Алексеем вокалом, который не подавал никаких признаков того, что когда то он вас отдуплил во все дыры.'

				act 'Уйти':gt'dk','holl'
			end
		elseif money >= 500 and vokalday ! day and alexeySex > 0 and alexeyVopros = 0:
			act 'Идти на уроки вокала (500 рублей 1 час)':
				cls
				alexeyQW += 1
				vokal += 1
				vokalday = day
				gs'stat'

				'Вы вошли в кабинет к Алексею. Он виновато посмотрел на вас и сказал. "Извини, музыкант это прежде всего творческая личность и уж потом, пьяное быдло."'
				'Вы невольно улыбнулись от воспоминаний как вы стаскивали спящую тушу своего педагога со своей спины, где он мирно храпел.'
				'Алексей открыто улыбнувшись подошел к вам. "Светик. Мы можем сейчас поступить двумя путями. Сейчас мы оба забудем, что между нами что то было и продолжаем учится как не в чем ни бывало, либо мы можем встречаться. Если мы будем встречаться, я как истинный джентльмен не буду брать с вас плату, но буду очень настойчиво приглашать вас к себе в гости. Выбирайте."'

				act 'Давай забудем, что между нами что то было':
					cls
					money -= 500
					alexeyVopros = 1

					'Вы предложили Алексею забыть произошедшее и дали ему 500 рублей за урок, Леха грустно кивнул и начал вас обучать вокалу.'

					act 'Уйти':gt'dk','holl'
				end
				act 'Если не будешь так напиваться, то мы могли бы попробовать еще раз':
					cls
					alexeyVopros = 2

					'Вы игриво улыбнулись и сказали ему, что вы не против с ним встречаться, если он не будет так напиваться. Алексей улыбнулся с облегчением. "Вот и отлично. А теперь заниматься." Оставшееся время вы посвятили занятиям.'

					act 'Уйти':gt'dk','holl'
				end
			end
		elseif money >= 500 and vokalday ! day and alexeySex = 0:
			act 'Идти на уроки вокала (500 рублей 1 час)':
				cls
				minut += 60
				money = money - 500
				alexeyQW += 1
				vokal += 1
				vokalday = day
				gs'stat'

				!'<center><img src="images/pic/dk2.jpg"></center>'

				if alexeyQW = 1:
					'Вы вошли в кабинет где сидел мужчина с длинными волосами убранными в хвост. Он посмотрел на вас уверенным взглядом и хорошо поставленным голосом сказал. "Проходите девушка, вы на вокал?" Вы кивнули головой и отдали ему 500 рублей. Он спрятал их в карман и встав представился "Я Алексей, а вы?" Вы ответили ему сказав что вас зовут Света. После этого мужчина начал заниматься с вами. Вы и не заметили как прошел час. Вы стали уходить и мужчина вежливо попрощался с вами.'
				elseif alexeyQW = 2:
					horny += 10
					'Алексей встретил вас и забрав деньги начал заниматься с вами, когда у вас что то не получалось, он своей рукой объясняя трогал вас за лицо. Не зная по чему, вас это немного возбуждало.'
				elseif alexeyQW >= 3 and alexeyQW < 7:
					horny += 10
					'Алексей встретил вас и забрав деньги начал заниматься с вами, когда у вас что то не получалось, он своей рукой объясняя трогал вас за лицо. Не зная по чему, вас это немного возбуждало. После занятий он вежливо с вами попрощался.'
				elseif alexeyQW >= 7:
					horny += 20
					'Алексей встретил вас и забрав деньги начал заниматься с вами, когда у вас что то не получалось, он своей рукой объясняя трогал вас за лицо. Не зная по чему, вас это возбуждало. Алексей смотрел на вас так, как будто видел вас насквозь и иногда только легко улыбался вам.'
				elseif alexeyQW = 10 and alexeyVQW = 0:
					'Еще во время занятий вы уловили от своего учителя запах алкоголя. После занятий к вам подошел Алексей и предложил вам сходить куда нибудь вместе.'

					act 'Пойти с Алексеем':
						cls
						'Алексей взял вас под локоток и куда то повел по пути рассказывая вам о себе, он профессиональный музыкант. Лабает где только может, в ДК работает звукотехником, подрабатывает диджеем в клубе. В вас он сразу увидел талант, голос у вас не поставленный, но он так стремительно развивается, что Алексей просто поражен вашими данными. За беседой вы даже не заметили как подошли к подъезду. Алексей обворожительно улыбнулся и пригласил вас к себе домой.'

						act 'Уйти':gt'nord'
						act 'Идти к Алексею домой':
							cls
							alexeyVQW += 1
							minut += 120
							gs'stat'

							'Алексей живет в однокомнатной квартире, все убранство которой говорит о том, что он холостяк, музыкант и редкий алкаш. На полу валяются бутылки, в комнате стоят огромные концертные колонки занимающие пол комнаты, стоит какая то аппаратура. Алексей посадил вас на диванчик и принес спиртного с закуской. Сам сел поодаль от вас на кресло. И вы начали пить. Леха оказался, простым, веселым парнем, с богатой биографией и интересным взглядом на жизнь, вам было очень приятно с ним общаться, но Алексей быстро захмелел и выглядел откровенно пьяным.'
							'Он посмотрел на вас умным взглядом и сказал "Ну что Света, ты же не просто так согласилась пойти ко мне в гости? Я думаю пора перейти к главному действию. Иди ко мне."'
							'Вы подумали про себя, какой же он все таки наглый, но сами неожиданно встали и на не твердых ногах пошли к креслу где сидел Леха.'
							'Когда вы подошли к креслу Алексей нагло вынул член из штанов и подмигнул вам "Ну же, не стесняйся, тут все свои."'

							act 'Встать на колени и взять в рот':
								cls
								guy += 1
								alexeySex = 1
								horny += 10
								bj += 1
								minut += 10
								gs'stat'

								'<center><img src="images/qwest/alexey/bj.jpg"></center>'
								'Вы встали на колени перед ним и с удивлением посмотрели на его член, он действительно большой, не меньше 20 сантиметров. Поласкав его руками, вы обхватили член своими <<$liptalk>> и начали сосать. Пока вы чмокали своими раскрасневшимися губами на хую, Леха взял кружку с пивом и начал ее демонстративно потягивать. После этого он отстранил вас от члена и потащил на кровать.'

								gs'oral','0'

								act 'Раздеться':
									cls
									minut += 10
									$nameV = 'Алексей'
									$boy = $nameV
									dick = 20
									silavag = 2
									pose = 1
									gs'stat'

									'<center><img src="images/qwest/alexey/sex.jpg"></center>'
									'Едва вы разделись, как Алесей практически силой затащил вас на кровать и поставил раком.'

									dynamic $sexstart

									'Алексей хлопнул вам ладонью по жопе и сказал "Я людей сразу вижу, ты настоящая шлюха, и твое место раком или на коленях с хуем во рту. Ты же сама этого хочешь."'

									dynamic $sexstart2

									'Во время секса Алексей засунул смазанный каким то кремом палец в попу и начал им там двигать. Вскоре он достал свой член из вашей натруженной киски и уперся им вам в попу.'

									act 'Стонать':
										cls
										minut += 10
										$nameV = 'Алексей'
										$boy = $nameV
										dick = 20
										silavag = 2
										pose = 1
										gs'stat'

										'<center><img src="images/qwest/alexey/anal.jpg"></center>'

										dynamic $analsex

										gs'BDsex','ancum'

										'Алексей кончив свалился вам на спину и поцеловал вас в щеку. Вы лежали под ним не зная что делать. Вскоре послышался храп Алексея. Вы пытались его растолкать но никак. С трудом вы скинули его с себя на кровать и вылезли из под его спящей туши. Леха спал крепким сном оглашая комнату своим заливистым храпом. Вы возмущенно оделись и решили уйти из квартиры.'

										act 'Уйти':gt'nord'
									end
								end
							end
						end
					end
				end

				act 'Уйти':gt'dk','holl'
			end
		end

		if avtoskul = 0 and money >= 30000 and prava = 0 and age >= 18:
			act 'Оплатить обучение на права (30 тыс.руб)':
				cla
				money = money - 30000
				avtoskul = 1

				!'<center><img src="images/pic/dk2.jpg"></center>'
				'Вы оплатили деньги в кассу и теперь можете учится раз в сутки на права в течении 2х часов.'

				act 'Уйти':gt'dk','holl'
			end
		end

		if secrDiplom = 0 and sekrObu = 0 and money >= 15000:
			act 'Оплатить обучение на секретаря (15 тыс.руб)':
				cla
				money = money - 15000
				sekrObu = 1

				!'<center><img src="images/pic/dk2.jpg"></center>'
				'Вы оплатили деньги в кассу и теперь можете учится раз в сутки на секретаршу в течении 2х часов. Всего 10ть учебных дней.'

				act 'Уйти':gt'dk','holl'
			end
		end

		if sekrObu > 0 and sekrObu < 11 and secrday ! day:
			act 'Учиться на секретаря (2 часа)':
				cla
				*clr
				secrday = day
				sekrObu = sekrObu + 1
				minut = minut + 120

				'<center><img src="images/pic/kurs.jpg"></center>'
				'Вы зашли в кабинет с компьютерами, в основном ученицы на таких курсах женщины. В класс зашел преподаватель и начал вам рассказывать тонкости работы секретаря и основы работы в офисных программах.'

				if cumfrot > 0:horny = horny + 10 & 'Вы нервно возитесь на стуле стараясь скрыть пятно спермы на своей попе, но кажется от этого только хуже. На вас начали обращать внимание другие ученицы.'

				act 'Уйти':gt'dk','holl'
			end
		elseif sekrObu >= 11 and secrday ! day:
			act 'Получить диплом секретаря':
				cla
				*clr
				secrday = day
				sekrObu = 0
				minut = minut + 15
				secrDiplom = 1

				'<center><img src="images/pic/kurs.jpg"></center>'
				'Вы зашли в кабинет с компьютерами, в основном ученицы на таких курсах женщины. В класс зашел преподаватель и начал вам рассказывать тонкости работы секретаря и основы работы в офисных программах.'

				act 'Уйти':gt'dk','holl'
			end
		end

		if avtoskul >= 1 and avtoskul < 11 and skulday ! day and age >= 18:
			act 'Учиться на права (2 часа)':
				cla
				*clr
				skulday = day
				avtoskul = avtoskul + 1
				minut = minut + 120

				'<center><img src="images/pic/dk2.jpg"></center>'
				'Вы обучались по современной методике вождению.'

				if nikpravaQW = 1:
				end

				act 'Уйти':gt'dk','holl'
			end
		elseif avtoskul >= 11 and skulday ! day and age >= 18:
			act 'Сдать на права 2 часа':
				cla
				*clr
				minut = minut + 120
				avtoskul = 0
				prava = 1
				minut = minut + 120

				'<center><img src="images/pic/dk3.jpg"></center>'
				'Вы ездили с ГАИшником в течении 2х часов по городу, он остался удовлетворен и даже не нашел к чему придраться.'
				'Вам выдали уже готовые права.'

				act 'Уйти':gt'dk','holl'
			end
		end

		if money >= 5000 and masash < 10 and masashshoolday ! day:
			act 'Учиться массажу':
				cla
				masashshoolday = day
				money -= 5000
				masash += 1
				minut += 120
				gs'stat'

				'Вы два часа учились массажу'
				if masash = 10:'Вам выдали сертификат об окончании курсов массажистов.'

				act 'Уйти':gt'dk','holl'
			end
		end
	end

	act 'Уйти':gt'nord'
end
--- dk ---------------------------------

