# worksalon
if $ARGS[0] = 'start':
	$sexloc = $CURLOC

	gs'stat'

	'<center><b><font color = maroon>Салон красоты</font></b></center>'
	'<center><img src="images/img/centr/salon.jpg"></center>'
	'В салоне кипит работа.'

	salonjobrand = RAND(0,10)
	if salonjobrand = 2 and vnesh > 20 and alla = 0:
		gt'worksalon','2'
	elseif salonjobrand = 3 and salonslut = 1:
		cla
		'К вам подходит администратор "Ну что шлюшка пошли в подсобку, постоишь рачком"'

		if DOM >= 10:
			act 'Пошел вон утырок':salonslut = 0 & gt'worksalon','start'
			act 'Идти с ним':gt'worksalon','3'
		elseif DOM < 10:
			act 'Идти с ним':gt'worksalon','3'
		end
	end

	act 'Делать массаж':
		minut += 120
		if salonjobrand = 0:gt'worksalon','0'
		if salonjobrand = 1:gt'worksalon','1'

		'Вы сделали массаж клиенту.'

		gt'worksalon','start'
	end
	act 'Перекусить':
		minut = minut + 30
		health = health + 10
		manna = manna + 5
		willpower = willpower + 5

		if energy >= 30:
			fat = fat + 5

			'Вы больше не можете есть.'
		elseif energy >= 20 and energy < 30:
			fat = fat + 3
			energy = energy + 10

			'Вы через силу затолкали в себя еду.'
		elseif energy < 20:
			energy = energy +20
			fat = fat + 1

			'Вы с удовольствием съели еду.'
		end

		if water >= 20:
			'Чай в вас больше не лезет.'
		elseif water < 20:
			water = water +20

			'Вы с удовольствием выпили кружку чая.'
		end

		gs'stat'
	end

	if masha > 0:
		act 'Болтать с Машей':
			cla
			minut += 30
			masha += 1

			'Вы поболтали с Машей.'

			act 'Отойти':gt'worksalon','start'
		end

		if masharab = 1:
			act 'Приказать Маше сделать массаж':
				cla
				*clr
				DOM += 1
				minut += 30
				manna += 10
				horny += 10
				willpower += 10

				'<center><img src="images/img/masha/s7.jpg"></center>'
				'Вы подходите к Маше и приказным тоном говорите что-бы она шла за вами, войдя в кабинку вы раздеваетесь и ложитесь на стол, "Ну и чего ждешь давай работай, сучка не торопливая" командуете вы. Маша тут же подскакивает к вам и начинает массировать.'

				act 'Приказать массировать телом':
					cla
					*clr
					minut += 30
					manna += 10
					horny += 10
					willpower += 10

					picrand = RAND(8,9)
					'<center><img src="images/img/masha/s<<picrand>>.jpg"></center>'
					if picrand = 8:
						'Маша скидывает с себя одежду и ловко запрыгнув на стол нагинает скользить по вам массируя вас своей грудью.'
					elseif picrand = 9:
						'Маша скидывает с себя одежду и ловко запрыгнув на стол садиться на вас сверху начинает массировать вас своими ягодицами.'
					end

					act 'Приказать лизать киску':
						cla
						*clr
						DOM += 1
						lesbian += 1
						orgasm += 1
						horny = 0

						'<center><img src="images/img/masha/s10.jpg"></center>'
						'Вы раздвигаете ноги, и приказываете её лизать вашу киску. Маша тут же подбегает к вам и с радостной улыбкой припадает к вашей киске, её ловкий язычок быстро доводит вас до оргазма. Когда Маша слизала последние капли с вашей киски, она отходит в сторону склонив голову.'

						act 'Закончить':gt'worksalon','start'
					end
					act 'Приказать лизать попку':
						cla
						*clr
						DOM += 1
						lesbian += 1
						orgasm += 1
						horny = 0

						'<center><img src="images/img/masha/s11.jpg"></center>'
						'Вы встаете раком на столе, и приказываете её лизать вашу попку. Маша тут же подбегает к вам и с радостной улыбкой припадает к вашему анусу, её ловкий язычок то лишит его то заскакивает внутрь когда вы начинаете постанывать от удовольствия она впивается языком вам в анус и начинает буквально трахать его языком стараясь вонзить его как можно глубже, спустя пару минут вы кончаете, и Маша начинает умолять вас разрешить ей облизать ваши бедра, получив разрешение она тут же быстро слизывает с них струи вашего сока и закончив отходит в сторону склонив голову.'

						act 'Закончить':gt'worksalon','start'
					end
					act 'Закончить':gt'worksalon','start'
				end
				act 'Приказать лизать киску':
					cla
					*clr
					DOM += 1
					lesbian += 1
					orgasm += 1
					horny = 0

					'<center><img src="images/img/masha/s10.jpg"></center>'
					'Вы раздвигаете ноги, и приказываете её лизать вашу киску. Маша тут же подбегает к вам и с радостной улыбкой припадает к вашей киске, её ловкий язычок быстро доводит вас до оргазма. Когда Маша слизала последние капли с вашей киски, она отходит в сторону склонив голову.'

					act 'Закончить':gt'worksalon','start'
				end
				act 'Приказать лизать попку':
					cla
					*clr
					DOM += 1
					lesbian += 1
					orgasm += 1
					horny = 0

					'<center><img src="images/img/masha/s11.jpg"></center>'
					'Вы встаете раком на столе, и приказываете её лизать вашу попку. Маша тут же подбегает к вам и с радостной улыбкой припадает к вашему анусу, её ловкий язычок то лишит его то заскакивает внутрь когда вы начинаете постанывать от удовольствия она впивается языком вам в анус и начинает буквально трахать его языком стараясь вонзить его как можно глубже, спустя пару минут вы кончаете, и Маша начинает умолять вас разрешить ей облизать ваши бедра, получив разрешение она тут же быстро слизывает с них струи вашего сока и закончив отходит в сторону склонив голову.'

					act 'Закончить':gt'worksalon','start'
				end

				act 'Закончить':gt'worksalon','start'
			end
		elseif masha > 5 and masharab = 0:
			act 'Попросить Машу сделать массаж':
				cla
				'Вы подходите к Маше и спрашиваете её "Маша, я так устала может сделаешь мне небольшой массаж, пожалуйста"'
				'"Да конечно, все что пожелаете" отвечает она'
				'"Я, сейчас не поняла это был сарказм?" спрашиваете вы не поняв почему Маша разговаривает с вами как будто вы клиент.'
				'"Простите если я не так сказала, пожалуйста проходите в кабинку я сделаю все что вы желаете" отвечает она, отведя глаза и склонив голову как нашкодивший ребенок'

				act 'Ну нафиг эту больную':gt'worksalon','start'
				act 'Идти в кабинку':
					cla
					*clr
					masharab = 1
					minut += 30
					manna += 10
					horny += 10
					willpower += 10

					'<center><img src="images/img/masha/s1.jpg"></center>'
					'Вы раздеваетесь и ложитесь на стол, Маша начинает делать вам массаж, её нежные руки скользят по вашему телу, вы чувствуете как все ваше тело расслабляется, вам становиться очень хорошо. Спустя несколько минут Маша начинает говорить "Простите пожалуйста, извините что потревожила, разрешите помочь вам перевернуться на спину.", вы поняли что она хочет что-бы вы перевернулись на спину, но почему она так говорит еще и склонив голову так что её подбородок чуть не касается груди.'

					act 'Перевернуться':
						cla
						*clr
						manna += 10
						horny += 10
						willpower += 10

						'<center><img src="images/img/masha/s2.jpg"></center>'
						'Вы молча переворачиваетесь и закрыв глаза, продолжаете наслаждаться, спустя пару минут вы чувствуете как Маша сильно сжимает вам грудь и начинает облизывать соски. Вы открываете глаза, заметив это Маша тут же отпускает вашу грудь и упав на пол на колени, начинает просить прощение за то что увлеклась и не сдержалась, потихоньку пятясь назад. Ту вы начинаете понимать что ей просто нравиться подчиняться, поэтому она сидя так и ведет, видя в вас свою госпожу, что после условий вашего знакомства не удивительно.'

						act 'Поговорить с ней':
							cla
							*clr
							'<center><img src="images/img/masha/s5.jpg"></center>'
							'"Маша я поняла ты любишь подчиняться, но не надо это делать всегда, на людях это выглядит довольно странно." начали вы.'
							'"Простите я больше не буду" ответила Маша чуть не плача.'
							'"Я не говорю чтобы ты вообще этого не делала просто давай договоримся когда я захочу чтобы ты была рабой я начну командовать, а пока я не командую мы подруги. А для таких игр нужно другое место, представляешь что будет если нас застукают" попытались вы успокоить её.'
							'"Можно у меня, я по ночам работаю в секс-шопе, и хозяин сдал мне там комнату в подвале, я там и живу." обрадовалась Маша'
							'"Ну вот и хорошо, ладно пошли пока нас не хватились" закончили вы'

							act 'Уйти':gt'worksalon','start'
						end
						act 'Приказать лизать киску':
							cla
							*clr
							DOM += 1
							lesbian += 1
							orgasm += 1
							horny = 0

							'<center><img src="images/img/masha/s6.jpg"></center>'
							'Вы закидываете ноги себе за голову и приказываете её лизать вашу киску. Маша тут же подбегает к вам и с радостной улыбкой припадает к вашей киске, её ловкий язычок быстро доводит вас до оргазма. Когда Маша слизала последние капли с вашей киски, она отходит в сторону склонив голову.'

							act 'Поговорить с ней':
								cla
								*clr
								'<center><img src="images/img/masha/s5.jpg"></center>'
								'"Маша я поняла ты любишь подчиняться, но не надо это делать всегда, на людях это выглядит довольно странно." начали вы.'
								'"Простите я больше не буду" ответила Маша чуть не плача.'
								'"Я не говорю чтобы ты вообще этого не делала просто давай договоримся когда я захочу чтобы ты была рабой я начну командовать, а пока я не командую мы подруги. А для таких игр нужно другое место, представляешь что будет если нас застукают" попытались вы успокоить её.'
								'"Можно у меня, я по ночам работаю в секс-шопе, и хозяин сдал мне там комнату в подвале, я там и живу." обрадовалась Маша'
								'"Ну вот и хорошо, ладно пошли пока нас не хватились" закончили вы'

								act 'Уйти':gt'worksalon','start'
							end
						end
					end
					act 'Спросить почему она так говорит':
						cla
						'"Почему ты так со мной разговариваешь?" спрашиваете вы.'
						'Маша немного отступает назад и начинает лепетать "Простите пожалуйста, я ужасно говорю, скажите как мне говорить, я сразу исправлюсь"'
						'"Да прекрати ты разговаривать как..." вы обрываетесь на полу слове, "Ну конечно, она разговаривает как рабыня" осенило вас ведь когда вы впервые её встретили то заставили трахнуться с администраторам и она покорно делала всё что вы ей говорили.'

						act 'Поговорить с ней':
							cla
							'<center><img src="images/img/masha/s5.jpg"></center>'
							'"Маша я поняла ты любишь подчиняться, но не надо это делать всегда, на людях это выглядит довольно странно." начали вы.'
							'"Простите я больше не буду" ответила Маша чуть не плача.'
							'"Я не говорю чтобы ты вообще этого не делала просто давай договоримся когда я захочу чтобы ты была рабой я начну командовать, а пока я не командую мы подруги. А для таких игр нужно другое место, представляешь что будет если нас застукают" попытались вы успокоить её.'
							'"Можно у меня, я по ночам работаю в секс-шопе, и хозяин сдал мне там комнату в подвале, я там и живу." обрадовалась Маша'
							'"Ну вот и хорошо, ладно пошли пока нас не хватились" закончили вы'

							act 'Уйти':gt'worksalon','start'
						end
						act 'Приказать лизать киску':
							cla
							*clr
							DOM += 1
							lesbian += 1
							orgasm += 1
							horny = 0

							'<center><img src="images/img/masha/s3.jpg"></center>'
							'Вы встаете раком на столе, и приказываете её лизать вашу киску. Маша тут же подбегает к вам и с радостной улыбкой припадает к вашей киске, её ловкий язычок быстро доводит вас до оргазма. Когда Маша слизала последние капли с вашей киски, она отходит в сторону склонив голову.'

							act 'Поговорить с ней':
								cla
								*clr
								'<center><img src="images/img/masha/s5.jpg"></center>'
								'"Маша я поняла ты любишь подчиняться, но не надо это делать всегда, на людях это выглядит довольно странно." начали вы.'
								'"Простите я больше не буду" ответила Маша чуть не плача.'
								'"Я не говорю чтобы ты вообще этого не делала просто давай договоримся когда я захочу чтобы ты была рабой я начну командовать, а пока я не командую мы подруги. А для таких игр нужно другое место, представляешь что будет если нас застукают" попытались вы успокоить её.'
								'"Можно у меня, я по ночам работаю в секс-шопе, и хозяин сдал мне там комнату в подвале, я там и живу." обрадовалась Маша'
								'"Ну вот и хорошо, ладно пошли пока нас не хватились" закончили вы'

								act 'Уйти':gt'worksalon','start'
							end
						end
						act 'Приказать лизать попку':
							cla
							*clr
							DOM += 1
							lesbian += 1
							orgasm += 1
							horny = 0

							'<center><img src="images/img/masha/s4.jpg"></center>'
							'Вы встаете раком на столе, и приказываете её лизать вашу попку. Маша тут же подбегает к вам и с радостной улыбкой припадает к вашему анусу, её ловкий язычок то лишит его то заскакивает внутрь когда вы начинаете постанывать от удовольствия она впивается языком вам в анус и начинает буквально трахать его языком стараясь вонзить его как можно глубже, спустя пару минут вы кончаете, и Маша начинает умолять вас разрешить ей облизать ваши бедра, получив разрешение она тут же быстро слизывает с них струи вашего сока и закончив отходит в сторону склонив голову.'

							act 'Поговорить с ней':
								cla
								*clr
								'<center><img src="images/img/masha/s5.jpg"></center>'
								'"Маша я поняла ты любишь подчиняться, но не надо это делать всегда, на людях это выглядит довольно странно." начали вы.'
								'"Простите я больше не буду" ответила Маша чуть не плача.'
								'"Я не говорю чтобы ты вообще этого не делала просто давай договоримся когда я захочу чтобы ты была рабой я начну командовать, а пока я не командую мы подруги. А для таких игр нужно другое место, представляешь что будет если нас застукают" попытались вы успокоить её.'
								'"Можно у меня, я по ночам работаю в секс-шопе, и хозяин сдал мне там комнату в подвале, я там и живу." обрадовалась Маша'
								'"Ну вот и хорошо, ладно пошли пока нас не хватились" закончили вы'

								act 'Уйти':gt'worksalon','start'
							end
						end
					end
				end
			end
		end
	end

	if hour >= 19:
		cls
		'<center><b><font color = maroon>Салон</font></b></center>'
		'<center><img src="images/img/centr/salon.jpg"></center>'
		'Ваша смена закончилась.'

		act 'Идти домой':gt'down'
	end
end

if $ARGS[0] = '0':
	cla
	*clr

	salonpicrand = RAND(0,4)
	picrand = salonpicrand+30
	'<center><img src="images/img/centr/wmass<<salonpicrand>>.jpg"></center>'
	'В процессе массажа парень переворачивается на спину и из под полотенца торчит большой стоящий член. Он смотрит на вас в ожидании ваших действий'

	act 'Закончить массаж':gt'worksalon','start'
	act 'Взять в рот':guy += 1 & gt'sex','minet'
end

if $ARGS[0] = '1':
	'Пока вы делаете массаж, клиент спрашивает возможен ли эротический массаж грудью двумя девушками, за дополнительную плату 1000руб. каждой.'

	act 'Отказаться':gt'worksalon','start'
	act 'Сходить за второй девушкой':
		cla
		*clr
		money += 1000

		'<center><img src="images/img/centr/wmass5.jpg"></center>'
		'Вы привели одну из девушек и раздевшись начали вдвоем елозить по мужчине гладя его своими грудями. Вам досталась нижняя часть, так что ваша грудь постоянно терлась о его возбужденный член. Вы и сами не заметили как расположили его член меж своих грудей и уже не просто массировали его грудью, а практически дрочили его член грудью. Подняв глаза вы увидели что мужчина уже вовсю обсасывал грудь девушки, а та довольная гладила его грудь.'

		act 'Перестать дрочить и спокойно закончить массаж':
			cla
			'Вы прекратили ласкать его фалос, спокойно помассировав еще немного его бедра и живот, встали и вышли из комнаты оставив его наедине с девушкой'

			act 'Выйти':gt'worksalon','start'
		end
		act 'Взять в рот':
			girl += 1
			guy += 1
			lesbian += 1
			picrand = 14
			gt'podrsex','var'
		end
	end
end

if $ARGS[0] = '2':
	cla
	*clr
	'<center><img src="images/img/centr/ira1.jpg"></center>'
	'Вас отправляют помыть клиентке голову, вы отводите её в отдельную кабинку и усаживаете в кресло, стоило вам отвернуться как девушка притягивает вас к себе и пока вы не опомнились начинает ласкать вашу грудь'

	act 'Оттолкнуть и уйти':gt'worksalon','start'
	act 'Позволить ей':
		cla
		*clr
		girl += 1
		lesbian += 1
		telalla = 1
		alla += 1
		orgasm += 3

		'<center><img src="images/img/centr/ira2.jpg"></center>'
		'Поняв что вы совсем не против девушка усаживает вас в кресло, а сама опускается на четвереньки и начинает так ловко орудовать языком что за десять минут вы кончаете трижды, а она все продолжает жадно лизать вашу киску стараясь выпить все соки из вашего лона.'
		'Когда она заканчивает то дает вам свою визитку с номером и именем Алла и собирается уходить.'

		act 'Позволить уйти':gt'worksalon','start'
		act 'Отблагодарить':
			cla
			*clr
			'<center><img src="images/img/centr/ira3.jpg"></center>'
			'Вы останавливаете девушку и усаживаете её в кресло, и вот вы уже на коленях старательно работаете языком пытаясь повторить для неё все что она делала вам, и спустя несколько минут вам это удается, девушка вздрагивает и вы ощущаете как теплая жидкость заполняет ваш рот. Вы хотите продолжить как вдруг слышите у себя за спиной голос администратора, заставшего вас. Девушка вскакивает и убегает, а вы остаетесь на полу голая, слизывать остатки её сока со своих губ.'
			'"Ну и как это называется" спрашивает администратор'
			'"Желание клиента для меня закон" отвечаете вы'
			'"Ты совсем охренела, трахать девок прямо на работе, а ну пошли со мной в подсобку, не понимаешь так, поймешь пиздой."'

			if DOM >= 10:
				act 'Пошел вон утырок, с кем хочу с тем и трахаюсь':gt'worksalon','start'
				act 'Идти с ним':salonslut = 1 & gt'worksalon','3'
			elseif DOM < 10:
				act 'Идти с ним':salonslut = 1 & gt'worksalon','3'
			end
		end
	end
end

if $ARGS[0] = '3':
	minut += 15
	SUB += 1
	guy += 1
	sex += 1
	cumass += 1

	'<center><img src="images/img/centr/raks.jpg"></center>'
	'Администратор заводит вас в подсобку и ставит раком на кушетку. Выебав вашу вагину он кончает вам на задницу и уходит.'

	act 'Уйти':gt'worksalon','start'
end
--- worksalon ---------------------------------

