# club
if $ARGS[0] = 'start':
	$sexloc = $CURLOC
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Ночной клуб</font></b></center>'
	'<center><img src="images/pic/club.jpg"></center>'
	'У входа в клуб полно молодежи, кто то вышел побухать в кустах, кого то бьют, кто то трахаеться. У входа стоят бугаи охранники и проверяют билеты. Билет стоит 500 рублей.'

	act 'Выйти из Клуба':
		cla
		minut = minut + 5
		gt'down'
	end

	if ski = 1 and money >= 500 and mop > 1 and sweat < 1 or glamur = 1 and money >= 500 and mop > 1 and sweat < 1:
		'Охрана у входа осмотрев вас разрешила вам войти в клуб, вы прошли фэйс контроль.'

		act 'Войти в клуб (500 руб)':
			cla
			minut = minut + 5
			money = money - 500
			frost = 0
			gt'club','inside'
		end
	else
		'Охрана на входе вам срезу же указала на дверь, вы не прошли фэйс контроль, и самое обидное вам даже никто не собирается объяснять, что у вас не так.'
	end
end

if $ARGS[0] = 'inside':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Ночной клуб</font></b></center>'
	'<center><img src="images/pic/club2.jpg"></center>'
	'<a href="exec:gt''club'',''vip''">Vip-зал.</a>'
	'Грохот музыки заглушает даже мысли, в полумраке разрезаемом вспышками стробоскопов и лазеров танцует толпа народу.'

	if hour <= 3 or hour >= 15:
		act 'Туалет':gt'club','toi'
		act 'Танцпол':gt'club','dance'
		act 'Бар':gt'club','bar'
	end

	act 'Уйти из Клуба':
		cla
		drunk = 0
		minut = minut + 5
		gt'down'
	end
end

if $ARGS[0] = 'toi':
	cla
	*clr
	'Черт, в женский туалет огромная очередь и эти курицы торчат там по часу.'

	act 'Стоять в очереди':
		cla
		minut = minut+RAND(10,30)
		vnesh = vnesh + 1

		'Наконец очередь дошла до вас'

		act 'Туалет':gt'club','tou'
	end
	act 'Идти в мужской':
		cla
		acta = acta + 1

		'Вы заскакиваете в мужской туалет'

		act 'В кабинку':
			randbj = RAND(1,100)
			if TQuest = 0 and horny <50:gt'club','tou'
			if TQuest = 0 and horny >= 50:gt'Клуб2','туалет'
			if TQuest = 1:gt'Клуб2','туалет1'
			if TQuest = 2:gt'Клуб2','туалет2'
			if TQuest >= 3 and randbj < 60:gt'club','tou'
			if TQuest >= 3 and randbj >= 60:gt'Клуб2','туалет1'
		end
	end

	act 'Забить':gt'club','inside'
end

if $ARGS[0] = 'tou':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Туалет</font></b></center>'
	'<center><img src="images/pic/club3.jpg"></center>'
	''

	act 'Выйти из туалета':gt'club','inside'

	if tanga = 1:
		act 'Снять нижнее белье':
			cla
			tanga = 0
			gt'club','toi'
		end
	end

	if hapri = 0:
		act 'Причесаться':
			cla
			minut = minut + 3
			hapri = 1

			act 'Посмотреть результат':gt'club','toi'
		end
	end

	if mop = 1 and kosmetica > 0:
		act 'Нанести макияж':
			cla
			*clr
			'<center><img src="images/pic/mop.jpg"></center>'

			act 'Легкий макияж':
				cla
				minut = minut + 3
				kosmetica = kosmetica - 1
				mop = 2

				'Вы легонечко подвели глаза и немного подкрасили губы.'

				act 'Выйти':gt'club','tou'
			end

			if kosmetica >= 2:
				act 'Нормальный макияж':
					cla
					minut = minut + 5
					kosmetica = kosmetica - 2
					mop = 3

					'Вы накрасили губы, подвели глаза и наложили тени.'

					act 'Выйти':gt'club','tou'
				end
			end

			if kosmetica >= 3:
				act 'Вызывающий макияж':
					cla
					minut = minut + 10
					kosmetica = kosmetica - 3
					vidageday = vidageday - 1
					mop = 4

					'Вы густо накрасили глаза, наложили тени и тушь для ресниц, накрасили контур губ карандашом и губы помадой.'

					act 'Выйти':gt'club','tou'
				end
			end
		end
	end

	if cumpussy > 0 or cumbelly > 0 or cumass > 0 and cumanus > 0:
		act 'Подмыться 15 мин':
			cla
			*clr
			cumpussy = 0
			cumbelly = 0
			cumass = 0
			cumanus = 0
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pics/wash5.jpg"></center>'
			'Вы тщательно смыли сперму с себя.'

			act 'Выйти':gt'club','tou'
		end
	end

	if cumlip > 0 or cumface > 0:
		act 'Смыть сперму с лица 15 мин':
			cla
			*clr
			mop = 1
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы тщательно смыли сперму с лица.'

			act 'Выйти':gt'club','tou'
		end
	end

	if cumfrot > 0:
		act 'Стереть сперму с одежды 15 мин':
			cla
			*clr
			cumfrot = 0
			sweat = sweat - 1
			minut = minut + 15

			!'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы стерли следы спермы с одежды.'

			act 'Выйти':gt'club','toi'
		end
	end

	if tampon > 0 and mesec > 0 and isprok = 0:
		act 'Поменять тампон':
			cla
			*clr
			tampon = tampon - 1
			isprok = 1
			minut = minut + 5
			manna = manna - 5

			'<center><img src="images/pics/wash3.jpg"></center>'
			'Вы поменяли тампон.'

			act 'Закончить':gt'club','tou'
		end
	end
end

if $ARGS[0] = 'dance':
	cla
	clr
	*clr
	gs'stat'

	'<center><b><font color = maroon>Танцпол</font></b></center>'
	'<center><img src="images/pic/club2.jpg"></center>'
	'Клуб до отказа заполнен веселящейся молодежью танцующей под ритмы современной музыки.'

	act 'Выйти':gt'club','inside'

	if hour <= 3 or hour >= 16:
		act 'Танцевать 30 мин':
			cla
			*clr
			minut = minut + 30
			fat = fat - 1
			dance = dance + 1
			manna = manna + 10
			willpower = willpower + 10
			clrand = RAND(0,100)
			frost = 0

			'<center><img src="images/pic/club4.jpg"></center>'
			'На танцплощадке очень тесно, можно положить руку на плечо одному парню, сделать пару шагов и прижаться грудью уже к другому, а в танце, сколько всего можно вытворить в танце.'

			if vnesh >= clrand:
				horny = horny + 1
				gs'boy'

				'Вы почувствовали как во время танца кто то дотрагивается до вашей попки и это уже не случайные прикосновения, вы обернулись и увидели что вас трогает <<$boybody>> <<$boybod>> <<$boyface>>. Он <<$boyClo>>'

				act 'Танцевать с ним':
					cla
					*clr
					minut = minut + 30
					dance = dance + 1
					horny = horny + 1 + SUB

					'<center><img src="images/pic/club8.jpg"></center>'
					'Вы зажигаете на танцполе с парнем, он лапает вас за задницу и прижимается к вам грудью. Вас возбуждают его прикосновения.'

					if horny < 90:
						act 'Уйти с танцпола':gt'club','dance'
					end

					act 'Поцеловать':
						cla
						minut = minut + 15
						horny = horny + 1 + SUB

						dansexclub = RAND(0,1)
						if dansexclub = 1:
							picrand = 38

							'Вы начали страстно целовать парня, он лапал вас за грудь и попу, он прошептал вам на ушко "Пойдем в Vip-зал, развлечемся."'

							if horny < 70:
								act 'Уйти с танцпола':gt'club','dance'
							end

							act 'Идти в Vip-зал с парнем':xgt'sex','var'
						elseif dansexclub = 0:
							'Вы начали страстно целовать парня, он лапал вас за грудь и попу, он прошептал вам на ушко "Пойдем в туалет."'

							if horny < 70:
								act 'Уйти с танцпола':gt'club','dance'
							end

							act 'Идти в туалет с парнем':gt'club','sex'
						end
					end
				end

				if clrand > 85:
					cla
					*clr
					'<center><img src="images/img/centr/dancelezb.jpg"></center>'
					'Вы почувствовали как во время танца кто то дотрагивается до вашей попки и это уже не случайные прикосновения, оборачиваясь вы видите девушку которая предлагает вам:'

					dansexclub = RAND(0,1)
					if dansexclub = 0:
						act 'Пойдем в туалет, развлечемся':gt'club','lezbsort'
					elseif dansexclub = 1:
						picrand = RAND(13,17)

						act 'Пойдем в Vip-зал, развлечемся':xgt'lezbsex','var'
					end

					act 'Послать её':gt'club'
				end
			end

			act 'Передохнуть':gt'club','dance'
		end
		act 'Подойти к диджею 30 мин':
			cla
			*clr
			minut = minut + 30

			'<center><img src="images/pic/club7.jpg"></center>'

			if alexeyQW = 0:
				'Диджей не обращает на вас никакого внимания.'
			elseif alexeyQW > 0 and alexeySex = 0:
				'За диджейским пультом ваш учитель вокала Алексей, он увидел вас и узнал кивнув вам.'
			elseif alexeyQW > 0 and alexeySex > 0:
				'За диджейским пультом стоит ваш учитель вокала Леха. Он увидел вас и пригласил в диджейскую кабинку.'

				act 'Зайти в кабинку':
					cls
					minut = minut + 30
					gs'stat'

					'<center><img src="images/pic/club7.jpg"></center>'
					'Алексей занят музыкой поэтому с вами он почти не разговаривает.'

					if alexeyClubSex = 3 and sashaClubQW = 0:
						sashaClubQW = 1

						'В кабинку вошел мужчина за сорок лет, с большим животом, лысиной и в очках. Леха поздоровался с ним и представил вас друг другу. Мужчина оказался хозяин клуба Александр Евгеньевич.'
						'Он немного пообщался с вами и пошел по своим делам.'

						act 'Отойти':gt'club','dance'

						exit
					end
					if alexeyClubSex ! 3 or sashaClubQW > 0:
						act 'Отойти':gt'club','dance'
						act 'Встать на колени и взять в рот':
							cls
							alexeySex += 1
							alexeyClubSex += 1
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

								act 'Отойти':gt'club','dance'
							end
						end
					end
				end
			end

			act 'Отойти':gt'club','dance'
		end
	end
end

if $ARGS[0] = 'bar':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Бар</font></b></center>'
	'<center><img src="images/pic/club5.jpg"></center>'
	'Пока вы идёте к бару через толпу, каждый считает своим долгом провести рукой по волосам, приобнять за талию, положить руку на попку, словно случайно прижаться грудью к вашей груди, погладить по животику. Кое как протиснувшись через толпу вы подходите к барной стойке.'

	if vnesh > 14:barsexrand = RAND(0,10)
	if barsexrand = 1:gt'club','bar0'
	if barsexrand = 2:gt'club','bar1'
	act 'Выйти':gt'club','inside'

	if alko >= 7:
		cls

		temp = RAND(0,100)
		if temp = 5:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club1.jpg"></center>'
			'Вы настолько пьяны, что не помните как вернулись домой.'

			act 'Далее':gt'street'

			exit
		elseif temp = 6:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club2.jpg"></center>'
			'Последнее что вы помните, это как вы сосете член стриптизера.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 7:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand4.jpg"></center>'
			'Последнее что вы помните, это как вы сев на корточки стали сосать член.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 8:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club5.jpg"></center>'
			'Последнее что вы помните, это как вы сняли с себя всё лишнее и изображали из себя секси официантку.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 9:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand6.jpg"></center>'
			'Последнее что вы помните, это как в компании молодежи одну из девчонок трахают раком прямо перед столом.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 10:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand7.jpg"></center>'
			'На танцполе весело зажигают девчонки.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 11:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand8.jpg"></center>'
			'Вы видите как две пьяные девицы лижутся в засос не стесняясь никого.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 12:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand9.jpg"></center>'
			'Последнее что вы помните, это как пьяная девица полезла под стол потеряв там что то, у нее задралась юбка и трусов на заднице нет, так что практически весь клуб может рассмотреть все содержание подюбочного пространства в деталях.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 13:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand10.jpg"></center>'
			'Вы видите как пьяная парочка резвится, девица лижет член парня, а парень льет ей шампанское в рот.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 14:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand11.jpg"></center>'
			'Вы случайно замечаете как парочка весело болтающих девиц не только весело болтают, одна из девушек запустила руку в трусики подружке и ласкает ее там.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 15:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand12.jpg"></center>'
			'Последнее что вы помните, это как на танцполе негр танцует с вами лапая за все что только можно, но вы были совсем не против.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 16:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club13.jpg"></center>'
			'Последнее что вы помните, это как вы пытаетесь танцевать с каким-то парнем.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 17:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club14.jpg"></center>'
			'Последнее что вы помните, это как вы разделись перед всеми.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 18:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club18.jpg"></center>'
			'Вы видите как на танцполе целуются парень с девушкой и он запустил ей руку под юбку практически трахает ее пальцами через трусы.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 19:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand16.jpg"></center>'
			'Вы видите как у стойки одна пьяная девица раздвинула ляжки и не менее бухой и веселый молодой человек сношает ее в киску своими пальцами.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 20:
			horny += 5
			gs'stat'

			'<center><img src="images/picKav/ivrand17.jpg"></center>'
			'Вы видите как парень обнимает пьяную в дрова девушку и набрав полный рот пива вливает его ей при поцелуе пока второй парень мацает ее сиськи.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 21:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club21.jpg"></center>'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 22:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club22.jpg"></center>'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 23:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club23.jpg"></center>'
			'Вы настолько пьяны, что грохнулись на пол клуба, и не в силах подняться уснули. Вас разбудила охрана и вывела на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp = 24:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club24.jpg"></center>'
			'Последнее что вы помните, это как вы решили отлить в мужском туалете.'
			'Вы настолько пьяны, что охрана выпроваживает вас на улицу.'

			act 'Уйти':gt'down'

			exit
		elseif temp > 24:
			horny += 5
			gs'stat'

			'<center><img src="images/etogame/club25.jpg"></center>'
			'Вы настолько пьяны, что грохнулись на пол и не в силах подняться уснули. Вас разбудила охрана и вывела на улицу.'

			act 'Уйти':gt'down'

			exit
		end
	end

	if money >= 300:
		act 'Купить выпивку (300 руб)':
			cla
			*clr
			minut = minut + 30
			fat = fat + 1
			manna = manna + 10
			willpower = willpower + 10
			alko += 2
			water = water + 5
			energy = energy + 5
			son = son + 5
			horny = horny+RAND(10,50)
			money = money - 300
			frost = 0

			'<center><img src="images/pic/club6.jpg"></center>'
			'Вы нашли свободное место возле бара и сели на него, заказали коктейль и бармен быстро его смешав подала вам.'

			act 'Встать':gt'club','bar'
		end
	end
end

if $ARGS[0] = 'sex':
	cla
	clr
	*clr
	dynamic $venerasiak
	minut = minut + 5
	$nameV = 'Незнакомец'
	dick = RAND(10,18)
	gs'stat'

	'<center><b><font color = maroon>Туалетная кабинка</font></b></center>'
	'<center><img src="images/pic/sex.jpg"></center>'
	'Вы прошли в мужской туалет с парнем, он начал вас ласкать и сдирать с вас одежду. Под его напором сели на унитаз.'

	act 'Сделать минет':
		cla
		*clr
		bj = bj + 1
		guy = guy + 1
		horny = horny + VAF

		'<center><img src="images/picV/clubBJ.jpg"></center>'

		gs'oral','start'

		act 'Вынуть изо рта':
			cla
			*clr

			if harakBoy = 0:
				'<center><img src="images/picV/hand.jpg"></center>'
				'Вы успели вынуть член изо рта и парень начал кончать на пол и вам на пальцы.'
			elseif harakBoy = 1:
				act 'Направить член на пол':
					cla
					'<center><img src="images/picV/hand.jpg"></center>'
					'Вы успели вынуть член изо рта и парень начал кончать на пол и вам на пальцы.'

					act 'Встать':gt'club','toi'
				end
				act 'Направить член на лицо':
					cla
					facial = facial + 1
					cumface = cumface + 1

					'<center><img src="images/picV/clubFacial1.jpg"></center>'
					'Вы взяли рукой член и направили его на свое лицо, парень застонал и горячие струи спермы стали хлестать вам по лицу.'

					act 'Встать':gt'club','toi'
				end

				exit
			elseif harakBoy = 2:
				facial = facial + 1
				cumface = cumface + 1
				SUB = SUB + 1

				'<center><img src="images/picV/clubFacial.jpg"></center>'
				'Парень грубо схватил вас за волосы и кончил вам на лицо, сперма попала вам в глаза.'
			end

			act 'Встать':gt'club','toi'
		end
		act 'Глотать сперму':
			cla
			*clr
			swallow = swallow + 1
			cumlip = cumlip + 1

			'<center><img src="images/picV/clubSwallow.jpg"></center>'
			'Парень стал спускать вам в рот свое горячее семя, вы судорожно глотаете его, что бы не подавиться и продолжаете обсасывать член до суха.'

			act 'Встать':gt'club','toi'
		end
	end
	act 'Встать раком':
		cla
		*clr
		sex = sex + 1
		guy = guy + 1
		horny = horny + SUB
		vagina = vagina + 1

		'<center><img src="images/picV/clubSex.jpg"></center>'

		gs'orgazm','start'

		act 'Встать':gt'club','toi'
	end
end

if $ARGS[0] = 'bar0':
	cla
	*clr
	'<center><b><font color = maroon>Барная стойка</font></b></center>'
	'<center><img src="images/img/centr/bar0.jpg"></center>'
	'У стойки к вам подходит девушка и начинает флиртовать с вами, а её руки блуждают по вашему телу.'

	act 'Отойти':gt'club','bar'
	act 'Поцеловать':
		cla
		*clr
		'<center><img src="images/img/centr/bar1.jpg"></center>'
		'Вы подвигаетесь ближе к девушке и целуете её, засовывая язык ей в рот, она массирует его своим языком и обхватив губами начинает посасывать.'

		act 'Позвать в туалет':gt'club','lezbsort'
		act 'Залезть в трусы':
			cla
			*clr
			lesbian += 1
			girl += 1

			'<center><img src="images/img/centr/bar2.jpg"></center>'
			'Вы оголяете ей грудь и целуете её грудь, посасывая соски, а рукой залезаете в трусики играя с её клитором пальцами.'

			act 'Лизать':
				cla
				*clr
				'<center><img src="images/img/centr/bar3.jpg"></center>'
				'Девушка садиться на табурет, а вы оттягиваете её трусики и ласкаете языком её киску.'

				act 'Еще':
					cla
					*clr
					horny = 0

					'<center><img src="images/img/centr/bar4.jpg"></center>'
					'Вы встаете и спустив трусики задираете одну ногу на стул, девушка опускается на корточки, и впивается губами в вашу вагину, её язычок умело скользит по вашему клитору, заставляя вас содрогнуться в оргазме.'

					if dildo = 0:
						act 'Всё':gt'club','bar'
					elseif dildo > 0:
						act 'Достать дилдо':
							cla
							*clr
							'<center><img src="images/img/centr/bar5.jpg"></center>'
							'Вы усаживаете её на стул и достав дилдо вставляете ей в вагину, в ответ девушка достает из сумочки свой и протягивает вам. Вы ловко управляетесь обоими руками доставляя наслаждение и ей и себе.'

							act 'Еще':
								cla
								*clr
								horny = 0
								orgasm += 1

								'<center><img src="images/img/centr/bar6.jpg"></center>'
								'Вы обе встаете и взяв в руки игрушки долбите друг другу киски до полного исступления ни замечая никого вокруг, пока вас обеих не накрывает оргазм.'

								act 'Уйти':gt'club','inside'
							end
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'bar1':
	cla
	*clr
	'<center><b><font color = maroon>Барная стойка</font></b></center>'
	'<center><img src="images/img/centr/bar7.jpg"></center>'
	'У стойки к вам подходит пьяный парень и нагло укладывает вам руку на задницу: "Красотка, может развлечемся".'

	act 'Послать':
		if drunk < 4:gt'club','bar'
		if drunk >= 4:gt'club','rape'
	end

	if DOM > 10:
		act 'Дать полизать':
			cla
			*clr
			kuni += 1

			'<center><img src="images/img/centr/barkuni.jpg"></center>'
			'Вы приспустили трусики и повернувшись к парню задом скомандовали: "Лижи". Он опустился на колени и начал неумело лизать вашу киску, никакого удовольствия вам это не доставляло парень был пьян и с трудом попадал языком по клитору, а его перегар казалось сжигает вашу нежную кожу.'

			act 'Послать':gt'club','bar'
			act 'Минет':gt'club','bar2'
			act 'Дать':gt'club','bar3'
		end
	end

	act 'Минет':gt'club','bar2'
	act 'Дать':gt'club','bar3'
end

if $ARGS[0] = 'bar2':
	cla
	*clr
	dynamic $venerasiak
	bj += 1
	guy += 1

	'<center><b><font color = maroon>Барная стойка</font></b></center>'
	'<center><img src="images/img/centr/barminet.jpg"></center>'
	'Вы расстегиваете парню ширинку и вынув его достоинство на свет припадаете к нему губами, сося его член вы то щекочете головку языком то яростно сосете, вскоре его член напрягся готовый кончить.'

	act 'Дать':gt'club','bar3'
	act 'Сосать':
		cla
		*clr
		cumlip += 1

		'<center><img src="images/img/centr/barcum.jpg"></center>'
		'Парень кончает извергая сперму вам в рот.'

		act 'Уйти':gt'club','inside'
	end
end

if $ARGS[0] = 'bar3':
	cla
	*clr
	sex += 1
	cumpussy += 1

	'<center><b><font color = maroon>Барная стойка</font></b></center>'
	'<center><img src="images/img/centr/barsex.jpg"></center>'
	'Вы спускаете трусики и поворачиваетесь на стуле боком, что бы ваша киска была с боку, не долго думая парень входит в вас, его пьяные не умелые движения не доставляют вам никакого удовольствия, наконец он кончил в вас и застегнув штаны ушел.'

	act 'Уйти':gt'club','inside'
end

if $ARGS[0] = 'rape':
	cla
	*clr
	dynamic $venerasiak
	SUB += 5
	rape += 1

	'<center><b><font color = maroon>Барная стойка</font></b></center>'

	barraperand = RAND(0,1)
	if barraperand = 0:
		bj += 1

		'<center><img src="images/img/centr/barminet.jpg"></center>'
		'Вы пытаетесь послать его, но ваш пьяный язык заплетается и парень видя что вы не в состоянии сопротивляться, достает свой член и притянув вашу голову к нему начинает трахать вас в рот.'

		act 'Дальше':
			barraperand1 = RAND(0,1)
			if barraperand1 = 0:
				cla
				*clr
				cumlip += 1
				cumface += 1

				'<center><b><font color = maroon>Барная стойка</font></b></center>'
				'<center><img src="images/img/centr/barcum.jpg"></center>'
				'Наконец он кончает наполняя ваш рот спермой, и вытерев член о ваше лицо уходит'

				act 'Уйти':gt'club','inside'
			elseif barraperand1 = 1:
				cla
				*clr
				sex += 1
				cumpussy += 1

				'<center><b><font color = maroon>Барная стойка</font></b></center>'
				'<center><img src="images/img/centr/barsex.jpg"></center>'
				'Парень вынимает член из вашего рта и усадив вас на стул входит в вашу киску, он долбит вас с силой заталкивая свой член как можно глубже и наконец кончив уходит.'

				act 'Уйти':gt'club','inside'
			end
		end
	elseif barraperand = 1:
		sex += 1
		cumpussy += 1

		'<center><img src="images/img/centr/barsex.jpg"></center>'
		'Вы пытаетесь послать его, но ваш пьяный язык заплетается и парень видя что вы не в состоянии сопротивляться, достает свой член, поворачивает вас на стуле и смочив член слюной входи в вашу вагину, он долбит вас с силой заталкивая свой член как можно глубже и наконец кончив уходит.'

		act 'Уйти':gt'club','inside'
	end
end

if $ARGS[0] = 'lezbsort':
	cla
	*clr
	dynamic $venerasiak
	girl += 1
	lesbian += 1
	minut += 10

	'<center><b><font color = maroon>Туалет</font></b></center>'
	'<center><img src="images/img/centr/lezbsort.jpg"></center>'
	'Вы затащили её в туалет, она ждет ваших действий'

	act 'Лизать':gt'club','lezbsort1'
	act 'Дать полизать':gt'club','lezbsort2'
	act 'Уйти':gt'club','tou'
end

if $ARGS[0] = 'lezbsort1':
	cla
	*clr
	minut += 10
	horny = 0

	'<center><b><font color = maroon>Туалет</font></b></center>'
	'<center><img src="images/img/centr/sortukuni.jpg"></center>'
	'Вы усадили её на унитаз и встав на карачки зарылись в её промежность, самоотверженно вылизывая её киску, пока она не кончила.'

	if hour >= 15 or hour <= 3:act 'Дать полизать':gt'club','lezbsort2'
	act 'Уйти':gt'club','tou'
end

if $ARGS[0] = 'lezbsort2':
	cla
	*clr
	minut += 10
	horny = 0

	'<center><b><font color = maroon>Туалет</font></b></center>'
	'<center><img src="images/img/centr/sortkuni.jpg"></center>'
	'Вы сели на унитаз, задрав ноги к потолку, она опустившись на колени начала вылизывать вас своим язычком, перед тем как кончить вы поймали момент, и прижали её к своей киске так что она целиком оказалась закрыта её ротиком, вы бурно кончили и все соки до капли вытекли её в рот.'

	if hour >= 15 or hour <= 3:act 'Лизать':gt'club','lezbsort1'
	act 'Уйти':gt'club','tou'
end

if $ARGS[0] = 'vip':
	if vipcart = 0 and vipday ! day:
		'Вас останавливает администратор: "У вас нет карты, можете её приобрести за 50000 руб на 10 посещений, и сейчас пройти бесплатно."'

		if money >= 50000:
			act 'Купить карту':
				money -= 50000
				vipcart = 10
				vipday = day
				gt'vipclub','start'
			end
		end
	elseif vipcart > 0 and vipday ! day:
		act 'Пройти в клуб':
			vipcart -= 1
			vipday = 1
			vipday = day
			gt'vipclub','start'
		end
	end

	if vipday = day:act 'Пройти в клуб':gt'vipclub','start'
	act 'Отойти':gt'club','inside'
end
--- club ---------------------------------

