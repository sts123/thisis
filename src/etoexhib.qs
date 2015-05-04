# etoexhib
if $ARGS[0] = 'pos1':
	cla
	*clr
	minut += 5
	gs'stat'

	'<center><img src="images/etogame/solar1.jpg"></center>'
	'Вы заходите в комнату с солярием. В комнате приглушенный свет и тихо, похоже в солярии никого кроме администратора нет. Вы смотрите на дверь.'

	act 'Закрыть дверь':
		cla
		*clr
		'<center><img src="images/etogame/solar8.jpg"></center>'
		'Вы закрываете дверь на замок и раздевшись до гола, устраиваетесь в солярии лежа на животе.'

		act 'Далее':
			cla
			*clr
			manna += 10
			gs'stat'

			'<center><img src="images/etogame/solar9.jpg"></center>'
			'Вы загорели и расслабились. Довольная, вы выбираетесь из солярия и одевшись выходите в холл салона.'

			act 'Уйти':gt'salon','start'
		end
	end
	act 'Оставить дверь приоткрытой':
		cla
		*clr
		manna += 10
		horny += 10
		gs'stat'

		'<center><img src="images/etogame/solar1.jpg"></center>'
		'Вы решаете немного пошалить и оставляете дверь в комнату приоткрытой. Вы начинаете медленно раздеваться, когда вы снимаете лифчик и обнажаете грудь, легкие мурашки пробегают по вашей обнаженной спине. Вдруг сейчас кто-нибудь зайдет и увидит мою грудь, что он обо мне подумает?'

		act 'Раздеваться':
			cla
			*clr
			horny += 10
			gs'stat'

			'<center><img src="images/etogame/solar2.jpg"></center>'
			'Вы продолжаете раздеваться и вот уже ваша попа оказывается оголенной. Вдруг появляется чувство, что за вами кто-то наблюдает. У вас учащается дыхание, и накатывают волны возбуждения. Если за вами действительно кто-то подглядывает, вы решаете раздеваться как можно более эротично. Вы не знаете почему, просто так велит ваша женская натура.'

			act 'Раздеться до гола':
				cla
				*clr
				horny += 10
				gs'stat'

				'<center><img src="images/etogame/solar4.jpg"></center>'
				'Вы разделись до гола и легли в солярий. Лицом как раз к двери. Из любопытства вы отводите согнутые ножки в сторону и всматриваетесь в темноту приоткрытой двери. И вы действительно видите мелькнувшую тень и слышите какое-то сопение. Сомнений быть не может, за вами явно кто-то наблюдает. От одного осознания, что за вами кто-то следит, а вы лежите абсолютно голой, ваше тело начинает дрожать. Внизу живота появляется приятное чувство. И вы возбуждаетесь до такой степени, что начинаете раздвигать ножки в разные стороны. На радость таинственному незнакомцу.'

				act 'Раздвинуть ноги':
					cla
					*clr
					horny += 10
					gs'stat'

					'<center><img src="images/etogame/solar5.jpg"></center>'
					'"Я раздвинула ноги как похотливая сучка. Что он обо мне подумает. А вдруг он там не один, и весь персонал уже сбежался на меня посмотреть. Господи! а вдруг они снимают меня на камеры и завтра я буду по всему интернету." - мысли проносятся у вас в голове, но возбуждение уже велико и останавливаться уже нет сил.'

					act 'Мастурбировать':
						cla
						*clr
						horny += 20
						gs'stat'

						'<center><img src="images/etogame/solar6.jpg"></center>'
						'Вы начинаете яростно тереть свою киску, чтобы наконец закончить своё бесстыжее приключение. И постепенно возбуждаетесь до такой степени, что не можете сдержать эмоций. Вы начинаете стонать и раздвигать половые губы пальцами, показывая незнакомцу свою киску во всей красе.'

						act 'Далее':
							cla
							*clr
							orgasm += 1
							horny -= 50
							manna += 200
							if exhibi = 2:exhibi = 3
							gs'stat'

							'<center><img src="images/etogame/solar7.jpg"></center>'
							'Наконец, вас охватывает мощный оргазм и вы обессилив затихаете. Сопения больше тоже не слышно, похоже тайный наблюдатель кончил вместе с вами.'
							''
							'Постепенно вы приходите в себя и одевшись, выходите из кабинки.'

							act 'Уйти':gt'salon','start'
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'pos2':
	cla
	*clr
	minut += 5
	gs'stat'

	'<center><img src="images/etogame/1dachi.jpg"></center>'
	'Вы прошлись по аллеям. В основном кооператив очень не многолюден. Изредка встречаются дачники ковыряющиеся на грядках. Где-то слышен лязг пилы. На окраине виден лес. В конце аллеи находится искусственный водоём. Некоторые участки с домиками продаются.'
	if etoexhib = 0:'Вас никто здесь не знает и у дачников не сложилось никакого мнения о вас.'
	if etoexhib = 10:'Идти на <a href="exec:GT ''etoexhib'',''pos9''">лязг пилы</a>.'

	act 'Идти в лес':gt'etoexhib','pos3'
	act 'Спуститься к озеру':gt'etoexhib','pos16'

	act 'Уйти':gt'dachi'
end

if $ARGS[0] = 'pos3':
	cla
	*clr
	minut += 5
	gs'stat'
	foresrand = RAND(1,100)

	'<center><img src="images/etogame/1fores.jpg"></center>'
	'Ливственный лес.'

	if foresrand < 30:
		cla
		*clr
		'<center><img src="images/etogame/1fores.jpg"></center>'
		'Ливственный лес.'
		'В далеке вы видите грибника.'

		act 'Привлечь его внимание':gt'etoexhib','pos4'
	elseif foresrand > 90 and exhibi > 2:
		cla
		*clr
		'<center><img src="images/etogame/1fores.jpg"></center>'
		'Ливственный лес.'

		act 'Раздеться':gt'etoexhib','pos5'
	end

	act 'Уйти':gt'dachi'
end

if $ARGS[0] = 'pos4':
	cla
	*clr
	minut += 5
	gs'stat'

	'Вы машете грибнику ручкой и он остановившись смотрит на вас.'

	act 'Показать киску':
		cla
		*clr
		minut += 5
		horny += sub
		if exhibi = 2:exhibi = 3
		gs'stat'

		'<center><img src="images/etogame/2fores.jpg"></center>'
		'Улыбнувшись, вы показываете грибнику свою писю. Он стоит как вкопанный и пристально смотрит на вас, не понимая что происходит.'

		act 'Убежать':gt'dachi'
	end
end

if $ARGS[0] = 'pos5':
	cla
	*clr
	minut += 5
	horny += sub
	if exhibi = 3:exhibi = 4
	gs'stat'

	'<center><img src="images/etogame/3fores.jpg"></center>'
	'Я разделась до гола и пошла гулять по лесу. Сердце бешено билось в груди. Свежий воздух, ласковый теплый ветер ласкает меня. Лето... Солнце согревает меня. Когда шла, думала что замерзну быстро, но припекающее летнее солнышко подсказало, что я не права. Задумалась совсем. Не заблудилась ли я. Одежда осталась на земле, а если я её не найду! Сюда забираются только грибники. Но, если я повстречаю их? Какой будет стыд! Наткнулась на хорошую полянку. Ветер стих.'

	act 'Далее':
		cla
		*clr
		'<center><img src="images/etogame/4fores.jpg"></center>'
		'Полежу, позагораю на полянке голышом. Так никого и не встретила. Хорошо это или плохо - это было приятно, хоть и немного экстремально. Ну все, план я выполнила. Нужно вернуться, найти одежду.'

		act 'Уйти':gt'dachi'
	end
end

if $ARGS[0] = 'pos6':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><img src="images/etogame/rodnik.jpg"></center>'
	'Родник с ключевой водой.'

	act 'Попить':
		if water >= 20:
			'Вода в вас больше не лезет.'
		elseif water < 20:
			water += 20

			'Вы с удовольствием попили родниковой воды.'
		end

		act 'Уйти':gt'dachi'
	end
end

if $ARGS[0] = 'pos7':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><img src="images/etogame/stolbik.jpg"></center>'
	'Кроме смешной надписи на столбике есть и полезная информация.'
	'Тетя Нина на 3 аллее продает козье молоко 300р/литр'

	if money >= 300:
		act 'Купить молока':
			cla
			*clr
			money -= 300
			minut += 30
			frost = 0
			edahot = 0
			health = health + 10
			manna = manna + 20
			gs'stat'

			if energy >= 30:
				fat = fat + 2

				'Вы больше не хотите пить.'
			elseif energy >= 20 and energy < 30:
				fat = fat + 1
				energy = energy + 10

				'Вы через силу выпили козьего молока.'
			elseif energy < 20:
				energy = energy +20

				'Вы с удовольствием выпили козьего молока.'
			end

			act 'Уйти':gt'dachi'
		end
	end

	act 'Уйти':gt'dachi'
end

if $ARGS[0] = 'pos8':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><img src="images/etogame/dachakuz.jpg"></center>'
	'Соседская дача.'

	if etoexhib < 10:
		act 'Окликнуть соседей':
			cla
			*clr
			minut += 15
			etoexhib = 10
			gs'stat'

			'<center><img src="images/etogame/kuzmich.jpg"></center>'
			'Вы: -Здравствуйте! Света, я ваша новая соседка, будем знакомы.'
			'Сосед: - Здравствуйте. Меня все Кузмичом зовут. Значит будем соседями.'
			'Вы: - Может вы мне поможете, понимаете у меня весь огород зарос бурьяном. А так хотелось бы привести его в порядок.'
			'Кузьмич: - Ну, наймите мужиков местных. Они вам все перепахают. Все равно бестолку по аллеям шатаются.'

			act 'Уйти':gt'dachi'
		end
		act 'Уйти':gt'dachi'
	end

	act 'Уйти':gt'dachi'
end

if $ARGS[0] = 'pos9':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><img src="images/etogame/dachastroy.jpg"></center>'
	'Строящаяся дача. По стройке ходят рабочие и таскают доски.'

	act 'Спросить рабочих о земляных работах':
		cla
		*clr
		minut += 15
		gs'stat'

		'<center><img src="images/etogame/dachastroy.jpg"></center>'
		'Вы: -Здравствуйте! Мне необходимо перекопать огород. Вы возьметесь? И сколько это будет стоить?'
		'Рабочий: - Перекопаем. За 3000 согласны.'

		act 'Согласиться':
			cls
			etoexhib = 11
			gs'stat'

			'<center><img src="images/etogame/dachastroy.jpg"></center>'
			'Вы договорились с рабочими, о том, что они приведут в порядок ваш огород.'

			act 'Уйти':gt'dachi'
		end
		act 'Уйти':gt'dachi'
	end
	act 'Уйти':gt'dachi'
end

if $ARGS[0] = 'pos10':
	cla
	*clr
	minut += 30
	horny += 10
	temp = day
	etoexhib = 12
	gs'stat'

	'<center><img src="images/etogame/dachabust.jpg"></center>'
	'Вы вышли в огород и подойдя к рабочим, спросили:'
	'- Ну что, мальчики? Как продвигается?'
	'- Нормально, хозяйка. Сделаем в лучшем виде.'

	act 'Уйти':gt'dachamy'
end

if $ARGS[0] = 'pos11':
	cla
	*clr
	minut += 15
	etoexhib = 13
	horny += 10
	temp = day
	gs'stat'

	'<center><img src="images/etogame/dachaex.jpg"></center>'
	'Вы делаете вид, что развешиваете белье сушиться. Вы видите, что через аллею на своем участке копошиться ваш сосед Кузьмич и украдкой поглядывает на вас. Легонько завязанный халатик не способен скрыть ваши аппетитные формы. Но, вы их и не скрываете, а даете насладиться соседу вашей красотой.'

	act 'Уйти в дом':gt'dachamy'
end

if $ARGS[0] = 'pos12':
	cla
	*clr
	minut += 15
	horny += 10
	gs'stat'

	'<center><img src="images/etogame/dachabust2.jpg"></center>'
	'Выйдя в огород, вы услышали разговор рабочих и решили его подслушать.'
	'- А хозяйка-то, горячая штучка. Видел, как она в халатике по огороду расхаживала - просто огонь!'
	'- Я бы вдул!'
	'- Да, ладно. Размечтался. Это городская сучка тебе не по зубам!'
	'- Говорю вам, ей хороший трах нужен, а то чего она у нас в глухомани забыла!'
	'- Ладно, хорош трындеть.'

	act 'Подойти к рабочим':
		cla
		*clr
		minut += 15
		gs'stat'

		'<center><img src="images/etogame/dachabust3.jpg"></center>'
		'Вы: - Общий привет! Я вижу работа продвигается, но как-то медленно. Шустрее надо ребята!'
		'Рабочий: - Так ведь мы без аванса работаем. Мотивация нужна хозяйка.'

		act 'Не согласиться':
			cls
			etoexhib = 15
			temp = day
			gs'stat'

			'<center><img src="images/etogame/dachabust3.jpg"></center>'
			'Вы: - Пока все не сделаете, ничего не получите.'

			act 'Уйти':gt'dachi'
		end
		act 'Согласиться и дать половину суммы':
			cls
			money -= 1500
			etoexhib = 14
			temp = day
			gs'stat'

			'<center><img src="images/etogame/dachabust3.jpg"></center>'
			'Хорошо, вот вам половина. Но, чтобы к завтрашнему утру уже все закончили.'

			act 'Уйти':gt'dachi'
		end
	end
	act 'Уйти':gt'dachi'
end

if $ARGS[0] = 'pos13':
	cla
	*clr
	gs'stat'

	'<center><img src="images/etogame/dachagang.jpg"></center>'
	'Вы встаете посреди огорода и начинаете раздеваться.'
	'У парней глаза на лоб лезут от такого зрелища.'
	'- Мальчики, вы хорошо поработали и заслужили награду!'

	act 'Раздеться полностью':
		cla
		*clr
		gs'stat'

		'<center><img src="images/etogame/dachagang1.jpg"></center>'
		'Вы разделись и стоите голая подманивая к себе парней.'
		'- Ну как, сделаете мне 100% процентную скидку?'

		act 'Отдаться':
			cla
			*clr
			minut += 120
			etoexhib = 16
			horny += 50
			gang += 1
			cumass += 1
			cumlip += 1
			vagina += 1
			gs'stat'

			'<center><img src="images/etogame/dachagang4.jpg"></center>'
			'Парни набросились на вас и после непродолжительных ласк стали жадно иметь во все дыры.'

			horand = RAND(1,100)
			if horand > horny:horny = horny + 10 & 'Вы остались не удовлетворены'
			if horand <= horny:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'

			'Когда все закончилось, вы подняли одежду, надели трусики и забежали в дом.'

			act 'Далее':gt'dachain'
		end
	end
end

if $ARGS[0] = 'pos14':
	cla
	*clr
	gs'stat'

	'<center><img src="images/etogame/dachagang2.jpg"></center>'
	'Пьяные парни обступили вас со всех сторон.'
	'- Глядите, а вот и наша принцесса! Ты как раз вовремя красотка, а ну давай парни, подарим нашей хозяйке любви!'
	'Вы: - Что вы делаете?'

	act 'Далее':
		cla
		*clr
		gs'stat'

		'<center><img src="images/etogame/dachagang3.jpg"></center>'
		'Парни схватили вас и начали раздевать и лапать.'

		act 'Отдаться':
			cla
			*clr
			minut += 120
			etoexhib = 16
			horny += 50
			gang += 1
			cumass += 1
			cumlip += 1
			vagina += 1
			gs'stat'

			'<center><img src="images/etogame/dachagang4.jpg"></center>'
			'Парни набросились на вас и после непродолжительных ласк стали жадно иметь во все дыры.'

			horand = RAND(1,100)
			if horand > horny:horny = horny + 10 & 'Вы остались не удовлетворены'
			if horand <= horny:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'

			'Когда все закончилось, вы подняли одежду, надели трусики и забежали в дом.'

			act 'Далее':gt'dachain'
		end
	end
end

if $ARGS[0] = 'pos15':
	cla
	*clr
	gs'stat'

	'<center><img src="images/etogame/rinokplug.jpg"></center>'
	'Вы почувствовала приятный, даже пьянящий запах дорогой мужской туалетной воды. Внизу живота моментально "зазудело", по телу прошёл жар возбуждения.'
	'Сзади стоял парень с определённой целью - он был любитель пощупать дам, и сейчас намеревался пощупать вашу попку.'
	'А рука тем временем развернулась и легла ладонью на одну из половинок вашей попки.'

	act 'Отойти':gt'rinok','start'
	act 'Стоять':
		cla
		*clr
		minut += 10
		orgasm += 1
		horny = 0
		gs'stat'

		'<center><img src="images/etogame/butplag.jpg"></center>'
		'Парню фартило: "жертва" не выказывала неудовольствия, а его действия были закрыты от окружающих, народу было плевать на него, все изнывали от жары.'
		'Он передвинул руку на другую "булочку", остановил посередине, спустил чуть ниже. Начал понемногу сжимать попку в ладони. "Жертва" не реагировала. Тогда он начал продвигать пальцы через ткань юбки вглубь, к бугорочку между ножек.'
		'Он почувствовал, что "жертва" вздрогнула, но не от неожиданности. Он тоже был опытен, он понял, что дама возбудилась и уже "плывёт".'
		'Вы действительно плыли. Вы были уже неподвластны себе. Вы хотели, чтобы парень забрался под юбку и вставил член... Ощущения захватывали вас, возбуждение переполняло. Вы сдерживалась, чтобы не начать охать и стонать...'
		'А парень, тем временем, потянул подол юбки вверх, добрался рукой до разреза и умелым движением залез под юбку. Его рука легла на низ влажной от испарины попки и пальцы коснулись анальной пробки между ног.'
		'Вы даже чуть пошатнулась; никто этого в давке не заметил, кроме этого искусителя. Он немного замер, похоже в шоке от того, что девушка вот так вот может разгуливать по рынку без трусов и с пробкой в попе.'
		'В голове у вас всё кружилось, вы были на пике возбуждения; ещё немного - и вы кончите.'
		'Парню конечно было мало. Он проник во влагалище пальцами, и начал их вводить и выводить. И тут же Вы задрожали, сделали несколько шумных, глубоких вздохов, а на пальцы парню выделилась влага.'
		'- Ничего себе!... - парень не ожидал такой реакции от дамы, и даже струхнул, что его могут "запалить".'
		'И действительно, одна женщина предпенсионного возраста спросила у Вас:'
		'- Девонька, тебе плохо?'
		'- Нет, спасибо, всё уже прошло - собравшись с силами ответили Вы.'
		'Видимо женщина спугнула извращенца. Так как за вами уже никто не стоял.'

		act 'Далее':gt'rinok','start'
	end
end

if $ARGS[0] = 'pos16':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Озеро</font></b></center>'
	'<center><img src="images/etogame/lake.jpg"></center>'

	if temper >= 20 and bikini > 0 and hour >= 6 and hour <= 20:
		act 'Купаться в купальнике':
			cla
			*clr
			cumpussy = 0
			cumbelly = 0
			cumass = 0
			cumlip = 0
			cumface = 0
			cumfrot = 0
			minut = minut + 60
			sweat = -3
			manna = manna + 5
			willpower = willpower + 5
			if stren < 30:stren = stren + 1

			'<center><img src="images/pics/swim.jpg"></center>'
			'Вы искупались в озере, вода освежает и бодрит.'

			act 'Выйти из воды':gt'etoexhib','pos16'
		end
	end

	if temper >= 20 and hour >= 6 and hour <= 20:
		act 'Купаться голышом':
			cla
			*clr
			cumpussy = 0
			cumbelly = 0
			cumass = 0
			cumlip = 0
			cumface = 0
			cumfrot = 0
			minut = minut + 60
			sweat = -3
			manna = manna + 5
			willpower = willpower + 5
			horny += 10
			if stren < 30:stren = stren + 1

			'<center><img src="images/etogame/lakenude.jpg"></center>'
			'Вы искупались в озере совершенно голая, вода освежает и бодрит.'

			act 'Выйти из воды':gt'etoexhib','pos16'
		end
	end

	act 'Вернуться на аллею':gt'etoexhib','pos2'
end

if $ARGS[0] = 'pos17':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Дом культуры</font></b></center>'

	if hour >= 9 and hour < 20:
		'<center><img src="images/etogame/dk.jpg"></center>'
		'По пятницам, субботам и воскресеньям с 20.00 до 23.00 танцы. Вход 25 рублей.'
	elseif hour >= 20 and hour <= 23:
		'<center><img src="images/etogame/dk_night.jpg"></center>'
		'У входа в ДК полно молодежи, парни просто стоят и курят, шутят и кого-то высматривают. Девочки группками по 2-3 человека, что-то обсуждают, кто-то просто бухает в кустах.'

		act 'Войти в клуб':money -= 25 & minut += 15 & gt'etoexhib','pos18'
	end

	act 'Вернуться к вокзалу':gt'gorodok'
end

if $ARGS[0] = 'pos18':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Дискотека</font></b></center>'

	if hour < 23:
		temp = RAND(1,100)
		if temp >= 1 and temp < 35:
			minut += 30

			'<center><img src="images/etogame/club_yaho.jpg"></center>'
			'На танцполе полно народа. Все танцуют и веселятся.'

			act 'Танцевать':
				cla
				*clr
				minut += 30
				fat -= 1
				if dance < 50 and agil >= dance:dance += 1
				manna += 10
				willpower += 10
				frost = 0

				'<center><img src="images/etogame/club_dance.jpg"></center>'
				'Музыка довольно устаревшая, но зажигательная. И вы весело кружитесь в танце, не обращая ни на кого внимания.'

				act 'Далее':gt'etoexhib','pos18'
			end
			act 'Далее':gt'etoexhib','pos18'
		elseif temp >= 35 and temp < 65:
			minut += 30

			'<center><img src="images/etogame/club_pusto.jpg"></center>'
			'На танцполе никого нет. Холодно и грустно. Вы усаживаетесь на свободное место.'

			if temp >= 35 and temp < 65:
				'Туда сюда бегает какой-то пацан с фотоаппаратом и фоткает девчонок.'

				act 'Позировать для фотографа':
					cla
					*clr
					gs'stat'

					if alko < 3 and vnesh >= 5 and vnesh < 30:
						'<center><img src="images/etogame/club_foto.jpg"></center>'
						'Вы позируете для "начинающего" фотографа, стараясь выглядеть как можно более привлекательно.'

						act 'Далее':gt'etoexhib','pos18'
					elseif alko < 3 and vnesh >= 30:
						temp = RAND(1,2)
						if temp = 1:'<center><img src="images/etogame/club_foto1.jpg"></center>'
						if temp = 2:'<center><img src="images/etogame/club_foto2.jpg"></center>'

						'Вы позируете для начинающего фотографа, стараясь выглядеть как можно более привлекательно.'

						act 'Далее':gt'etoexhib','pos18'
					end

					if horny > 10 and alko > 1:
						'<center><img src="images/etogame/club_glam.jpg"></center>'
						'Вы задираете ногу на стол. Вам показалось, что так фото получиться эротичнее.'
					end
				end
				act 'Далее':gt'etoexhib','pos18'
			end
		elseif temp >= 65 and temp <= 100:
			minut += 30

			'<center><img src="images/etogame/club_yaho1.jpg"></center>'
			'На танцполе полно народа. Все танцуют и веселятся.'

			act 'Танцевать':
				cla
				*clr
				minut += 30
				fat -= 1
				if dance < 50 and agil >= dance:dance += 1
				manna += 10
				willpower += 10
				frost = 0

				'<center><img src="images/etogame/club_dance.jpg"></center>'
				'Музыка довольно устаревшая, но зажигательная. И вы весело кружитесь в танце, не обращая ни на кого внимания.'

				act 'Далее':gt'etoexhib','pos18'
			end
			act 'Далее':gt'etoexhib','pos18'
		end
	else
		'Клуб закрывается. Включается свет, затухает музыка и все начинают расходиться.'
	end

	act 'Выйти наружу':gt'etoexhib','pos17'
end

if $ARGS[0] = 'pos19':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Холл</font></b></center>'
	'<center><img src="images/etogame/ptu_holl.jpg"></center>'
	'Холл лицея. Здесь довольно чисто и тихо. За столом сидит техничка. На стене висит расписание занятий.'

	if workPTU = 2:
		cls
		manna -= 100
		workPTU = 1
		teachlevel = 0
		gs'stat'

		'<center><b><font color = maroon>Дирекция</font></b></center>'
		'<center><img src="images/etogame/ptu_angdir.jpg"></center>'
		'Какой позор, Светлана Михайловна! Вы посрамили, возложенную на вас почетную миссию педагога! Таким как вы не место в наших рядах! Забирайте свои документы. Вы уволены!'

		act 'Далее':gt'etoexhib','pos20'

		exit
	end

	if teachlevel = 0:'Вы не смогли объяснить техничке к кому вы пришли и дальше отдела кадров она вас не впустила.'
	if teachlevel >= 1 and teachlevel < 10:'Вы не достойны быть педагогом.'
	if teachlevel >= 10 and teachlevel < 20:'К вам относятся как к молодой, неопытной практикантке.'
	if teachlevel >= 20 and teachlevel < 30:'У вас уже есть определенная репутация.'
	if teachlevel >= 30 and teachlevel < 50:'Вы заслуживающий уважения педагог.'
	if teachlevel >= 50 and teachlevel < 70:'К вам обращаются за советом.'
	if teachlevel >= 70 and teachlevel < 90:'Ваш опыт и знания известны за пределами лицея.'
	if teachlevel >= 90:'Вы олицетворяете образование.'

	if workPTU > 2:
		act 'Коридор на этаже':gt'etoexhib','pos22'
		act 'На второй этаж':gt'etoexhib','pos23'
		act 'На третий этаж':gt'etoexhib','pos24'
	elseif workPTU = 1 and wine > 0 and money >= 30000:
		cls
		manna -= 100
		workPTU = 3
		teachlevel = 1
		money -=30000
		wine -= 1
		gs'stat'
		
		'<center><b><font color = maroon>Дирекция</font></b></center>'
		'<center><img src="images/etogame/ptu_angdir.jpg"></center>'
		'Думаю, мы сможем договориться.'

		act 'Далее':gt'etoexhib','pos19'
	elseif workPTU ! 1:
		act 'Обратиться в кадровую службу':
			if workPTU > 2:
				cla
				*clr
				minut += 5
				gs'stat'

				'<center><b><font color = maroon>Отдел кадров</font></b></center>'
				'<center><img src="images/etogame/ptu_cadr.jpg"></center>'

				act 'Уволиться':
					cla
					workPTU = 0

					'Теперь вы здесь больше не работаете.'

					act 'Выйти в холл':gt'etoexhib','pos19'
				end
				act 'Выйти в холл':gt'etoexhib','pos19'
			elseif workPTU = 0:
				cla
				*clr
				minut += 15
				gs'stat'

				'<center><b><font color = maroon>Отдел кадров</font></b></center>'
				'<center><img src="images/etogame/ptu_cadr.jpg"></center>'
				'Добрый день! Поприветствовала вас девушка кадровик. И рассказала, что им требуются дипломированный преподаватель для ведения факультативных предметов. Рабочие дни с Понедельника по Субботу, с 14.00 до 16.00. Оплата 300 рублей за один день занятий. Для иногородних предоставляется комната в общежитии. Условия сдельные, т.к. для полного оклада, в данный момент, нет свободной ставки. Форма одежды строгая, деловая. Также не рекомендуются яркий макияж, сильные духи.'

				if diplom = 0 and fakediplom = 0:
					'Вам сообщили, что не могут взять вас на работу без диплома о высшем педагогическом образовании.'
				elseif diplom = 1 or fakediplom = 1:
					act 'Пройти собеседование о приеме на работу':
						cla
						*clr
						minut = minut + 60
						gs'stat'

						'<center><b><font color = maroon>Отдел кадров</font></b></center>'
						'<center><img src="images/etogame/ptu_cadr.jpg"></center>'
						'Вы прошли устное собеседование, оставили копию диплома и других документов в отделе кадров, где вам сообщили, что могут взять вас на работу.'

						act 'Устроиться на работу преподавателем':
							cla
							workPTU = 3
							teachlevel = 16

							'Вам завели трудовую книжку и сказали, что можете выходить на работу в следующий рабочий день.'

							act 'Выйти в холл':gt'etoexhib','pos19'
						end
					end
				end

				act 'Выйти в холл':gt'etoexhib','pos19'
			end
		end
	end

	act 'На улицу':gt'etoexhib','pos20'
end

if $ARGS[0] = 'pos20':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><b><font color = maroon>Лицей</font></b></center>'
	'<center><img src="images/etogame/lizey.jpg"></center>'
	'На дверях висит объявление: "Профессиональный лицей ведет набор студентов на базе 11 классов школы по специальностям: (обширный список). Кроме того, проводится повышение квалификации работников предприятий. В колледже созданы оптимальные условия для профессионального и личностного становления студентов, имеется современная материально-техническая база."'
	if workPTU > 2:'Спортивная <a href="exec:GT ''etoexhib'',''pos21''">площадка.</a>'

	if teachlevel > 0 and teachlevel < 10:workPTU = 2

	act 'Войти в лицей':gt'etoexhib','pos19'
	act 'Уйти к вокзалу':gt'gorodok'
end

if $ARGS[0] = 'pos21':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Спортивная площадка</font></b></center>'
	'<center><img src="images/etogame/stadion.jpg"></center>'
	'Вы видите всё, что осталось от футбольного поля. Жалкое зрелище. Тем не менее, ребята до сих пор, с удовольствием играют здесь в футбол.'

	temp = RAND(1,100)
	if temp >= 90:
		cls
		gs'stat'

		'<center><img src="images/etogame/ptu_fight.jpg"></center>'
		'Вы видите как группа девушек, издеваются над лежачим парнем.'

		act 'Заступиться за парня':
			cls
			teachlevel += 1

			'- Что вы делаете?! Немедленно прекратите, я сейчас милицию вызову! Накидываетесь вы на девушек. И они, фыркнув: "Придурок, сам виноват!" оставляют парня в покое.'
			'Вы подали хороший пример, помогая беззащитному человеку. Это положительно скажется на вашей репутации.'

			act 'Далее':gt'etoexhib','pos21'
		end
		act 'Не обращать внимания':gt'etoexhib','pos21'
	end

	act 'Вернуться':gt'etoexhib','pos20'
end

if $ARGS[0] = 'pos22':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Коридор (1 этаж)</font></b></center>'
	'<center><img src="images/etogame/ptu_1korr.jpg"></center>'
	'На первом этаже расположены мед. кабинет, спортзал, столовая и классы.'

	temp = RAND(1,100)
	if temp >= 90:
		cls
		horny += 5
		gs'stat'

		'<center><img src="images/etogame/PTU_rand.jpg"></center>'
		'Вам повстречалась Ольга Леонидовна, учитель иностранных языков. Хмм, одета она довольно эротично, а ведь это запрещено правилами.'

		act 'Далее':gt'etoexhib','pos22'
	end

	act 'В спортзал':gt'etoexhib','pos33'
	act 'В мед кабинет':gt'etoexhib','pos36'
	act 'В столовую':gt'etoexhib','pos37'
	act 'В холл':gt'etoexhib','pos19'
end

if $ARGS[0] = 'pos23':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Корридор (2 этаж)</font></b></center>'
	'<center><img src="images/etogame/ptu_2korr.jpg"></center>'
	'На данном этаже расположены классы, кабинет директора, библиотека и учительский туалет.'

	temp = RAND(1,100)
	if temp >= 90:
		cls
		horny += 10
		gs'stat'

		'<center><img src="images/etogame/ptu_korr1.jpg"></center>'
		'Одна из учениц, сидит на подоконнике. Вам бросились в глаза её откровенный наряд и развязное поведение.'

		act 'Далее':gt'etoexhib','pos23'
	end

	act 'Кабинет директора':gt'etoexhib','pos28'
	act 'В библиотеку':gt'etoexhib','pos38'
	act 'В туалет':gt'etoexhib','pos39'
	act 'В холл':gt'etoexhib','pos19'
end

if $ARGS[0] = 'pos24':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Корридор (3 этаж)</font></b></center>'
	'<center><img src="images/etogame/ptu_3korr.jpg"></center>'
	'На данном этаже расположен класс факультативных предметов.'

	if hour >= 9 and hour <= 13:act 'В класс':gt'etoexhib','pos25'
	if hour >= 14 and hour < 15:act 'На урок':gt'etoexhib','pos26'
	if hour >= 15 and hour <= 18:act 'В класс':gt'etoexhib','pos25'

	act 'В холл':gt'etoexhib','pos19'
end

if $ARGS[0] = 'pos25':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Кабинет</font></b></center>'
	'<center><img src="images/etogame/ptu_klass.jpg"></center>'
	'Ваш класс.'

	if workPTU = 3:
		cls
		hour = 14
		workPTU = 4
		gs'stat'

		'<center><img src="images/etogame/PTU_starosta.jpg"></center>'
		'Инна: - Здравствуйте, Светлана Михайловна! (Встречает вас Инна Робски - староста 657 группы и круглая отличница)'
		'Инна: - Вы сегодня так шикарно выглядите!'
		'Вы: - Спасибо, Инна.'

		act 'Далее':gt'etoexhib','pos25'
	elseif workPTU = 4 and gor_dorm = 4:
		cls
		hour = 14
		gor_dorm = 5
		gs'stat'

		'<center><img src="images/etogame/cera_nerd2.jpg"></center>'
		'Вы видите, что у Жени Айзенберга (ботаника и заучки) на носу что-то написано.'
		'Вы: - Здравствуй, Женя! '
		'Женя: - Здравствуйте, Светлана Михайловна! (он немного покраснел и смотрит в пол)'
		'Вы: - Женя, кажется ты где-то испачкал нос, на держи зеркало.'
		'(Женя смотрит в потянутое вами зеркальце и стал красный как рак)'
		'Женя: - Это мы с мальчишками играли, извините, спасибо... (он принялся усиленно тереть свою переносицу)'
		'(Похоже одноклассники подшучивают над этим парнем, надо бы его как-нибудь подбодрить.)'
		'Вы: - Не переживай ты так, расскажи лучше как у тебя дела? Девушка у тебя есть? У каждого молодого человека в твоем возрасте есть девушка.'
		'Женя: - Нет, я не знакомлюсь с девушками, они всегда бросают меня... ранят мои чувства.'
		'Вы: - Ну, а что тебе нравится, может быть хобби? Фильмы, игры?'
		'Женя: - (Тут он заметно оживился и начал рассказывать вам про свои любимые боевики и стрелялки.)'
		'Вы: - Ладно, мне пора. Приятно было поболтать.'
		'(Женя смотрит на вас горящими глазами.)'

		act 'Далее':gt'etoexhib','pos25'
	end

	if teachlevel > 10: act 'Почитать школьный журнал':gt'etoexhib','pos90'

	act 'Выйти в коридор':gt'etoexhib','pos24'
end

if $ARGS[0] = 'pos26':
	cla
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Кабинет</font></b></center>'
	'<center><img src="images/etogame/PTU_lesson0.jpg"></center>'
	'Вы зашли в класс и готовы начать занятие. Ученики, разделившись на группы, болтают друг с другом, кто-то смеётся, кто-то болтает по телефону, кто-то уткнулся в планшет. Вообщем обычная молодежь.'

	act 'Начать занятие':
		cla
		minut = 0
		hour = 14
		gt'etoexhib','pos27'
	end
end

if $ARGS[0] = 'pos27':
	cla
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Кабинет</font></b></center>'
	'<center><img src="images/etogame/lesson1.jpg"></center>'
	'Ученики расселись по своим местам и слушают вас.'

	if horny > 30:
		temp = RAND(1,100)
		if temp >= 95:
			act 'Сексуально поднять карандаш!':
				cls
				horny += 40
				minut += 60
				teachlevel -= 5
				gs'stat'

				'<center><b><font color = maroon>Кабинет</font></b></center>'
				'<center><img src="images/etogame/ptu_karandash.jpg"></center>'
				'Расхаживая между рядами, вы опускаетесь на корточки, делая вид, что поднимаете упавший карандаш. Тем не менее, сидящим на задней парте открывается вид на ваши ножки под юбкой. По тому как округлились глаза у одного из парней, вы понимаете, что дело сделано.'

				act 'Далее':gt'etoexhib','pos27'
			end
		elseif temp >= 85 and temp < 90:
			act 'Забраться на стол':
				cls
				horny += 40
				minut += 60
				teachlevel -= 2
				gs'stat'

				'<center><b><font color = maroon>Кабинет</font></b></center>'
				'<center><img src="images/etogame/ptu_urok1.jpg"></center>'
				'Объясняя материал, вы, будто устав, садитесь на край стола. При этом, всему классу открывается вид на ваши ножки.'

				act 'Далее':gt'etoexhib','pos27'
			end
		elseif temp >= 75 and temp < 80:
			act '"Уронить" мел':
				cls
				horny += 40
				minut += 60
				teachlevel -= 5
				gs'stat'

				'<center><b><font color = maroon>Кабинет</font></b></center>'
				'<center><img src="images/etogame/ptu_rak.jpg"></center>'
				'Объясняя материал, вы, нечаянно, роняете мел. При этом, поднимаете вы его так, что любая порнозвезда обзавидуется. Сначала вы наклоняетесь, но поняв что мел не достать, становитесь на четвереньки, задрав попу как будто подманивая кого-то. Те, кто сидел рядом, были свидетелями незабываемого шоу.'

				act 'Далее':gt'etoexhib','pos27'
			end
		elseif temp >= 65 and temp < 70:
			act 'Секси сесть на стол':
				cls
				horny += 40
				minut += 60
				teachlevel -= 2
				gs'stat'

				'<center><b><font color = maroon>Кабинет</font></b></center>'
				'<center><img src="images/etogame/ptu_nastol.jpg"></center>'
				'Объясняя материал, вы, будто устав, садитесь на край стола. При этом, всему классу открывается вид на ваши ножки.'

				act 'Далее':gt'etoexhib','pos27'
			end
		elseif temp >= 55 and temp < 60:
			act 'Показать чулок':
				cls
				horny += 40
				minut += 60
				teachlevel -= 2
				gs'stat'

				'<center><b><font color = maroon>Кабинет</font></b></center>'
				'<center><img src="images/etogame/ptu_urok2.jpg"></center>'
				'Когда, к вам подошел учащийся, чтобы показать презентацию, вы, как-бы невзначай закинули ногу на ногу, показывая студенту, резинку чулок. Сразу после ответа бедняга отпросился в туалет. Дрочит небось.'

				act 'Далее':gt'etoexhib','pos27'
			end
		end
	end

	if hour < 16:
		act 'Преподавать':
			cls
			minut = minut + 60
			manna = manna - 5
			if intel < 80:intel += 1
			if ofclo = 1 and mop = 1 or ofclo = 1 and mop = 2 and teachlevel < 70:teachlevel += 1
			if mop = 4:teachlevel -= 1
			money += 150
			gs'stat'

			'<center><img src="images/etogame/lesson.jpg"></center>'
			'Вы проводите урок. Ученики вас внимательно слушают.'

			act 'Далее':gt'etoexhib','pos27'
		end
	elseif hour >= 16:
		act 'Закончить урок':
			cla
			'Урок заканчивается и учащиеся спешат покинуть класс.'

			act 'Уйти':
				cla
				minut = minut + 5
				gt'etoexhib','pos24'
			end
		end
	end

	act 'Выйти из класса':gt'etoexhib','pos24'
end

if $ARGS[0] = 'pos28':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Дирекция</font></b></center>'
	'<center><img src="images/etogame/PTU_dir.jpg"></center>'
	'- Приветствую Вас, Светлана! Надеюсь, вам нравиться у нас работать. Если у вас есть какие-либо вопросы ко мне, я вас слушаю.'

	act 'Выйти из кабинета':gt'etoexhib','pos23'
end

if $ARGS[0] = 'pos33':
	cla
	*clr
	gs'stat'

	'<center><b><font color = maroon>Спортзал</font></b></center>'
	'<center><img src="images/etogame/sportzal.jpg"></center>'
	'Спортзал для игровых видов спорта.'

	act 'Женская душевая':gt'etoexhib','pos34'
	act 'Мужская душевая':gt'etoexhib','pos35'
	act 'В холл':gt'etoexhib','pos19'
end

if $ARGS[0] = 'pos34':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><b><font color = maroon>Женская душевая</font></b></center>'
	'<center><img src="images/etogame/ptu_jen.jpg"></center>'
	'Душевая.'

	temp = RAND(1,100)
	if temp >= 90:
		cls
		minut += 15
		horny += 20
		gs'stat'

		'<center><b><font color = maroon>Женская душевая</font></b></center>'
		'<center><img src="images/etogame/ptu_dush.jpg"></center>'
		'- Ой! Светлана Михайловна, выйдите, пожалуйста, мы не одеты! - завопили две девчонки, принимающие душ.'

		act 'Далее':gt'etoexhib','pos33'
	end

	act 'Принять душ':gt'ptu_dush','pos1'
	act 'В зал':gt'etoexhib','pos33'
end

if $ARGS[0] = 'pos35':
	cla
	*clr
	minut += 15
	teachlevel -= 1
	gs'stat'

	'<center><b><font color = maroon>Мужская душевая</font></b></center>'
	'<center><img src="images/etogame/ptu_muz.jpg"></center>'
	'Душевая для мальчиков. Вам не следует здесь находиться. Это скажется на вашей репутации.'

	act 'В зал':gt'etoexhib','pos33'
end

if $ARGS[0] = 'pos36':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><b><font color = maroon>Медицинский кабинет</font></b></center>'
	'<center><img src="images/etogame/ptu_medkab.jpg"></center>'
	'Здесь оказывается первая помощь, проводятся медосмотры и вакцинация.'

	temp = RAND(1,100)
	if temp >= 90:
		cls
		minut += 15
		horny += 10
		gs'stat'

		'<center><b><font color = maroon>Медицинский кабинет</font></b></center>'
		'<center><img src="images/etogame/ptu_med1.jpg"></center>'
		'Когда вы заходили в медкабинет, медсестрички развлекались тем, что фоткали себя в халатике и соблазнительных позах. А ведь потом выложат эти фотки в соц сеть.'

		act 'Далее':gt'etoexhib','pos36'
	end

	act 'В коридор (1 Этаж)':gt'etoexhib','pos22'
end

if $ARGS[0] = 'pos37':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><b><font color = maroon>Столовая</font></b></center>'
	'<center><img src="images/etogame/ptu_stolovaya.jpg"></center>'
	'Можно отобедать или перекусить.'

	temp = RAND(1,100)
	if temp >= 90:
		act 'Поздороваться с директором':
			cls
			minut += 15
			teachlevel += 1
			gs'stat'

			'<center><b><font color = maroon>Столовая</font></b></center>'
			'<center><img src="images/etogame/ptu_stoldir.jpg"></center>'
			'Вам повстречалась директор заведения. Вы вежливо поздоровались с ней, незабывая отвесить комплимент.'

			act 'Далее':gt'etoexhib','pos37'
		end
	end

	act 'Купить обед (100 рублей)':
		cla
		*clr
		money -= 100
		minut += 30
		gs'stat'
		frost = 0
		edahot = 0
		health = health + 10
		manna = manna + 20

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

		act 'Закончить':gt'etoexhib','pos37'
	end
	act 'В коридор (1 Этаж)':gt'etoexhib','pos22'
end

if $ARGS[0] = 'pos38':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><b><font color = maroon>Библиотека</font></b></center>'
	'<center><img src="images/etogame/ptu_lib.jpg"></center>'
	'Здесь учащиеся получают учебники и книги. Также есть компьютерный класс с выходом в интернет.'

	temp = RAND(1,100)
	if temp >= 90:
		cls
		minut += 15
		horny += 10
		gs'stat'

		'<center><b><font color = maroon>Библиотека</font></b></center>'
		'<center><img src="images/etogame/ptu_ups.jpg"></center>'
		'Вы стали случайным свидетелем того, как библиотекарша засветила свою соблазнительную промежность. А ведь в зале были люди, интересно она специально или случайно?!'

		act 'Далее':gt'etoexhib','pos38'
	end

	if gor_dorm = 5:
		act 'Искать в интернете "Tetrodotoxin"':
			cls
			minut += 120
			gor_dorm = 6
			gs'stat'

			'<center><img src="images/etogame/ptu_comp.jpg"></center>'
			'Всё, что вы смогли найти про это вещество, это то что оно является экспериментальным и применяется в фармакологии.'

			act 'Далее':gt'etoexhib','pos38'
		end
	end

	act 'В коридор':gt'etoexhib','pos23'
end

if $ARGS[0] = 'pos39':
	cla
	*clr
	minut += 15
	gs'stat'

	'<center><b><font color = maroon>Женский туалет</font></b></center>'
	'<center><img src="images/etogame/ptu_toilet_w.jpg"></center>'
	'Туалет, которым по идее, могут пользоваться только учителя.'

	temp = RAND(1,100)
	if temp >= 90:
		cls
		minut += 15
		horny += 10
		gs'stat'

		'<center><b><font color = maroon>Женский туалет</font></b></center>'
		'<center><img src="images/etogame/ptu_zanato.jpg"></center>'
		'Упс! Извините, закрываться надо.'

		act 'Далее':gt'etoexhib','pos39'
	end

	act 'В коридор':gt'etoexhib','pos23'
end

if $ARGS[0] = 'pos40':
	cla
	*clr
	minut += 60
	gs'stat'

	'<center><b><font color=maroon>Городок</font></b></center>'
	'<center><img src="images/etogame/dom_gor.jpg"></center>'
	'Комната в общаге, выделенная вам училищем, в плачевном состоянии, но все же лучше чем ничего. Во дворе есть бельевые веревки и сарайчик для хранения всякого хлама. Странно только, что почти не видно жильцов, обычно общежития забиты под завязку.'

	if gor_dorm > 0:act 'В комнату':gt'dom_gor'
	if gor_dorm = 0:act 'К коменданту':gt'comendant','pos1'
	if gor_dorm = 2:act 'Искать коменданта':gt'comendant','pos3'
	if gor_dorm >= 3:act 'Осмотреть сарай':gt'etoexhib','pos43'

	act 'Уйти':gt'gorodok'
end

if $ARGS[0] = 'pos41':
	cla
	*clr
	minut += 10
	gs'stat'

	'<center><b><font color=maroon>Общая ванная комната</font></b></center>'
	'<center><img src="images/etogame/comm_vann.jpg"></center>'
	'Ванная комната просто в ужасном состоянии, стены грязные, на полу беспорядок, сантехника старая, а вода практически не течет. Из труб исходит странный запах, но их здесь так много, если бы только я была поумнее.'

	if shampoo = 0:'Проклятье, как мыться если у вас нет шампуня?'

	if dirtbelo > 0 and poroshok > 0:
		act 'Стирать белье':
			cla
			*clr
			minut = minut + dirtbelo*5
			clrbelo += dirtbelo
			poroshok -= 1
			dirtbelo = 0
			manna = manna - 10

			'<center><img src="images/pic/stir.jpg"></center>'
			'Вы замочили белье в тазике и насыпали туда порошка, после чего вы стали стирать белье, пока оно наконец не стало чистым.'

			act 'Закончить':gt'etoexhib','pos41'
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

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if cumpussy > 0 and clrbelo > 0 or cumbelly > 0 and clrbelo > 0 or cumass > 0 and clrbelo > 0 or cumanus > 0 and clrbelo > 0:
		act 'Подмыться 5 мин':
			cla
			*clr
			cumpussy = 0
			cumbelly = 0
			cumass = 0
			cumlip = 0
			cumface = 0
			cumanus = 0
			cumfrot = 0
			sweat = sweat - 1
			minut = minut + 5
			clrbelo = clrbelo - 1
			dirtbelo = dirtbelo + 1

			'<center><img src="images/pics/wash5.jpg"></center>'
			'Вы тщательно смыли сперму в ванной.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if cumlip > 0 or cumface > 0:
		act 'Смыть сперму с лица 5 мин':
			cla
			*clr
			mop = 1
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 5

			'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы тщательно смыли сперму с лица.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if mop ! 1:
		act 'Смыть косметику':
			cla
			mop = 1
			minut = minut + 15

			'Вы смыли косметику.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if shampoo > 0:
		act 'Принять душ 15 мин':
			cla
			*clr
			shampoo -= 1
			minut = minut + 15
			horny = horny + 1
			hapri = 0
			mop = 1
			sweat = -3

			if tanga = 1:
				clrbelo = clrbelo - 1
				dirtbelo = dirtbelo + 1
			end

			dynamic $showerdin

			if frost > 0:frost = 0

			'<center><img src="images/pics/dush.jpg"></center>'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if leghair > 0 and stanok > 0 or lobok > 0 and stanok > 0:
		act 'Брить ноги и лобок':
			cla
			*clr
			minut = minut + 30
			leghair = -5
			lobok = -5
			horny = horny + 10
			stanok = stanok - 2
!'
			if obdysh = 1 and obbritinvent = 0:
				britrand = RAND(0,5)
				if britrand = 5:gt'vann','brit1'
			end
'
			'<center><img src="images/pics/shave.jpg"></center>'
			'Вы сполоснули бритву, лезвия которой хватит еще на <<stanok>> раз.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if intel > 50 and gor_dorm = 1:act 'Осмотреть трубы':gt'etoexhib','pos42'
	act 'Вернуться в комнату':gt'dom_gor'
end

if $ARGS[0] = 'pos42':
	cla
	*clr
	minut += 10
	gor_dorm = 2
	gs'stat'

	'<center><b><font color=maroon>Проржавевшие трубы</font></b></center>'
	'<center><img src="images/etogame/comm_tru.jpg"></center>'
	'Все трубы насквозь проржавели, это явное нарушение со стороны коменданта. Кроме того, из трубы пахнет какой-то химией.'

	act 'Вернуться в комнату':gt'dom_gor'
end

if $ARGS[0] = 'pos43':
	cla
	*clr
	minut += 10
	if gor_dorm = 3:gor_dorm = 4
	gs'stat'

	'<center><b><font color=maroon>Сарай общежития</font></b></center>'
	'<center><img src="images/etogame/gor_saray.jpg"></center>'
	'Кроме невероятного количества всякого мусора. На полу много емкостей с какой-то химией, на одной из банок вы видите знак химической опасности и надпись "Tetrodotoxin". Лучше её не трогать.'
	'Хмм.. разве здесь место опасной химии. Надо разузнать побольше про это вещество.'

	act 'Вернуться в комнату':gt'dom_gor'
end

if $ARGS[0] = 'pos49':
	cla
	*clr
	gs'stat'

	'<center><b><font color=maroon>Общая ванная комната</font></b></center>'
	'<center><img src="images/etogame/vann_gor.jpg"></center>'
	'Ванная комната в общежитии.'

	if shampoo = 0:'Проклятье, как мыться если у вас нет шампуня?'

	if dirtbelo > 0 and poroshok > 0:
		act 'Стирать белье':
			cla
			*clr
			minut = minut + dirtbelo*5
			clrbelo += dirtbelo
			poroshok -= 1
			dirtbelo = 0
			manna = manna - 10

			'<center><img src="images/pic/stir.jpg"></center>'
			'Вы замочили белье в тазике и насыпали туда порошка, после чего вы стали стирать белье, пока оно наконец не стало чистым.'

			act 'Закончить':gt'etoexhib','pos41'
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

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if cumpussy > 0 and clrbelo > 0 or cumbelly > 0 and clrbelo > 0 or cumass > 0 and clrbelo > 0 or cumanus > 0 and clrbelo > 0:
		act 'Подмыться 5 мин':
			cla
			*clr
			cumpussy = 0
			cumbelly = 0
			cumass = 0
			cumlip = 0
			cumface = 0
			cumanus = 0
			cumfrot = 0
			sweat = sweat - 1
			minut = minut + 5
			clrbelo = clrbelo - 1
			dirtbelo = dirtbelo + 1

			'<center><img src="images/pics/wash5.jpg"></center>'
			'Вы тщательно смыли сперму в ванной.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if cumlip > 0 or cumface > 0:
		act 'Смыть сперму с лица 5 мин':
			cla
			*clr
			mop = 1
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 5

			'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы тщательно смыли сперму с лица.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if mop ! 1:
		act 'Смыть косметику':
			cla
			mop = 1
			minut = minut + 15

			'Вы смыли косметику.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if shampoo > 0:
		act 'Принять душ 15 мин':
			cla
			*clr
			shampoo-=1
			minut = minut + 15
			horny = horny + 1
			hapri = 0
			mop = 1
			sweat = -3

			if tanga = 1:
				clrbelo = clrbelo - 1
				dirtbelo = dirtbelo + 1
			end

			dynamic $showerdin

			if frost > 0:frost = 0

			'<center><img src="images/pics/dush.jpg"></center>'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	if leghair > 0 and stanok > 0 or lobok > 0 and stanok > 0:
		act 'Брить ноги и лобок':
			cla
			*clr
			minut = minut + 30
			leghair = -5
			lobok = -5
			horny = horny + 10
			stanok = stanok - 2
!'
			if obdysh = 1 and obbritinvent = 0:
				britrand = RAND(0,5)
				if britrand = 5:gt'vann','brit1'
			end
'
			'<center><img src="images/pics/shave.jpg"></center>'
			'Вы сполоснули бритву, лезвия которой хватит еще на <<stanok>> раз.'

			act 'Закончить':gt'etoexhib','pos41'
		end
	end

	act 'В комнату':gt'dom_gor'
end

if $ARGS[0] = 'pos50':
	cla
	*clr
	minut += 5
	gs'stat'

	'По доносившемся голосам, вы вышли прямо к группе подростков, которые собрались здесь, чтобы покурить, поболтать, попить пивка. Их было 7 человек разного возраста, от 18 до 20 лет. Они с интересом смотрели на вас, появившуюся неизвестно от куда и ждали, что вы скажете.'
	'Вы явно не ожидали, что их окажется так много, стушевались и вместо того, чтобы строго их отчитать за то, что могут устроить пожар, проблеяли, чтобы они больше сюда не приходили и, чтоб они немедленно от сюда ушли. Подростки сначала переглянулись, а потом дружно рассмеялись.'
	'Вы стали пятиться назад, но не тут - то было. Вас окружили со всех сторон и стали разглядывать сальными взглядами. Вам стало не по себе. Подростки стали говорить пошлости в ваш адрес, трогать одежду, и один из них, стоящий сзади, дернул вверх вашу блузку. Блузка взмыла вверх, показывая вашу грудь в бюстгальтере. Смех усилился и оскорбления посыпались со всех сторон.'
	'Вы пытались поправить одежду, но, окружившие вас подростки. Постоянно толкали и тянули вас в разные стороны. Вы стали умолять отпустить, говорить, что больше сюда никогда не придёте и всё такое прочее. Но подростки только смеялись и уже откровенно лапали вас. Вы вдруг почувствовала, что сзади чьи-то руки взялись за трусы и резко с силой стянули их вместе с одеждой. А другой негодяй сдернул лифчик и остатки блузки.'
	'Теперь вы уже стояли перед ними полностью голая. Вас стали толкать куда-то в глубь чердака, и только теперь вы увидели огромный с обломленными ножками старый диван. Подойдя к дивану вы остановилась и вновь попытались разжалобить подростков, но они даже не обращали на это внимание. Вас резко толкнули и вы плюхнулись на диван. Подростки начали расстегивать свои джинсы. Первый к вам подошёл крепкого сложения парень, грубо толкнул за плечи и вы упали на спину, он бесцеремонно, также грубо раздвинул вам ноги, лёг сверху и, направив свой член в нужную дырочку, и резко вошёл в неё.'

	act 'Далее':
		cla
		*clr
		'<center><img src="images/etogame/cherdak1.jpg"></center>'
		'Он трахал вас в быстром и интенсивном темпе. После того, как он кончил его место занял 2-ой здоровяк и всё повторилось как с 1-ым. После него вас трахнули все по очереди. А потом и одновременно те, кому нехватило одного раза.'

		act 'Далее':
			cla
			*clr
			minut += 120
			horny += 50
			gang += 1
			cumass += 1
			cumlip += 1
			vagina += 1
			gs'stat'

			'<center><img src="images/etogame/cherdak0.jpg"></center>'
			'После того как последний кончил в рот, подростки застегнули свои ширинки и ушли, громко смеясь и обсуждая только что произошедшее. А вы, подняв с пола одежду, одели её, и медленно направились в свою квартиру.'

			horand = RAND(1,100)
			if horand > horny:horny = horny + 10 & 'Вы остались не удовлетворены'
			if horand <= horny:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'

			act 'В квартиру':gt'korr'
		end
	end
end

if $ARGS[0] = 'pos51':
	cla
	*clr
	minut += 5
	gs'stat'

	'<center><img src="images/etogame/podezd.jpg"></center>'
	'Подъезд 5ти этажного дома в котором вы живете. Замок, закрывающий дверь на технический этаж, или чердак, сломан.'

	if sosedQW = 0:
		'Неожиданно вы столкнулись в подъезде с молодым парнем, который чуть ли не бегом влетел на лестницу. Он отпрыгнул от вас и заметно смутился. "Ой извините, я вас не заметил. Вы в 69й квартире поселились?"'

		act 'Да, я живу в 69й':
			cls
			sosedQW = 1
			minut += 5
			gs'stat'

			'Вы кивнули головой подтверждая что живете в 69й квартире. Парень заметно обрадовался и сказал. "Замечательно. раньше там жил Петрович, алкаш редкий. Весь подъезд замучил. Меня кстати Тимофеем зовут, а вас?"'

			act 'Света':
				cls
				gs'stat'

				'Вы сказали парню что вас зовут Светой. Он кивнул головой и достав ключи начал открывать дверь 68й квартиры. "Очень приятно. Я как видите в соседней квартире живу." Парень открыл дверь и на пороге показалась любопытное лицо пожилой женщины. Она направила на вас свой острый нос и стала с любопытством вас осматривать. Тимофей вошел в квартиру и сказав раздраженно "Мам, ну хватит уже торчать перед дверью!" закрыл дверь.'

				act '...':gt'etoexhib','pos51'
			end
		end

		exit
	elseif sosedQW > 0 and hour >= 16 and sosedDay ! day:
		sosedrand = RAND(0,100)
		if sosedrand >= 70:
			'На площадке стоит ваш сосед, молодой парень <a href="exec:Gt ''Timofei''">Тимофей</a> и курит сигарету, стряхивая пепел в баночку.'
		end
	end

	act 'На улицу':
		cls

		if sick <= 72 and nude = 0:
			xgt'street'
		elseif nude = 0:
			'<b><font color = red>ВЫ СЛИШКОМ СИЛЬНО БОЛЕЕТЕ ЧТО БЫ ХОДИТЬ ПО УЛИЦЕ.</font></b>'

			xgt $curloc
		else
			'<b><font color = red>ВАМ НАДО ОДЕТЬСЯ.</font></b>'

			xgt $curloc
		end
	end
	act 'На чердак':gt'etoexhib','pos52'
	act 'Домой':gt'korr'
end

if $ARGS[0] = 'pos52':
	cla
	*clr
	minut += 5
	gs'stat'

	'<center><img src="images/etogame/cherdak.jpg"></center>'
	'Лестничный пролет на крышу ведет через чердак. Темно и страшно. Здесь явно не место приличной девушке.'

	temp = RAND(1,100)
	if temp > 90:'В глубине чердака Вы слышите <a href="exec:GT ''etoexhib'',''pos50''">гогочущую молодежь</a>. Кажется они вас не заметили.'

	act 'На крышу':
		cla
		*clr
		gs'stat'
		gt'etoexhib','pos53'
	end
	act 'В подъезд':gt'etoexhib','pos51'
end

if $ARGS[0] = 'pos53':
	cla
	*clr
	minut += 5
	gs'stat'

	'<center><img src="images/etogame/roof.jpg"></center>'
	'Крыша.'

	if temper >= 20 and bikini > 0 and hour >= 6 and hour <= 20:
		act 'Загорать 1 час':
			cla
			*clr
			minut = minut + 60
			sweat = sweat + 1
			manna = manna + 5

			'<center><img src="images/etogame/zagar1.jpg"></center>'

			if krem = 0:
				tan = tan + 1

				'Вы легли позагарать.'
			elseif krem > 0:
				krem = krem - 1
				tan = tan + 3

				'Вы намазали тело кремом для загара и легли загорать.'
			end

			act 'Встать':gt'etoexhib','pos53'
		end
	end

	act 'На чердак':
		cls
		gt'etoexhib','pos52'
	end
end

if $ARGS[0] = 'pos54':
	cla
	*clr
	minut+=5
	gs'stat'

	'<center><img src="images/etogame/spy.jpg"></center>'
	'Подозрительный мужчина. Видно, что он постоянно оглядывается. Время от времени, к нему подходят какие-то люди и что-то у него забирают. Внимательно присмотревшись, вы понимаете, что он продает чеки АЗС. Всё понятно, промышляет поддельными документами. Возможно и я найду у него что-нибудь полезное.'

	if diplom = 0 and fakediplom = 0 and money > 100000:
		act 'Купить поддельный диплом (100 тыс.руб)':
			cla
			*clr
			minut += 10
			money -= 100000
			fakediplom = 1

			'<center><img src="images/etogame/spy.jpg"></center>'
			'Вы купили поддельный диплом.'

			act 'Уйти':gt'vokzal'
		end
	end

	act 'Уйти':
		cls
		gt'vokzal'
	end
end

if $ARGS[0] = 'pos90':
	cla
	*clr
	minut += 5
	gs'stat'

	'<center><img src="images/etogame/memory.jpg"></center>'
	'Ваш школьный журнал.'

	if teachlevel > 40 and gor_dorm = 6:
		act 'Одинокое сердце':
			cla
			*clr
			minut += 120
			gor_dorm = 7

			'<center><img src="images/etogame/ptu_tech.jpg"></center>'
			'Как то раз, перекусывая в учительской к вам обратилась Евгения Анатольевна, учитель химии.'
			'- Света, вы всегда такая привлекательная. Должно быть у вас много знакомых мужчин.'
			'- Кажется я понимаю о чем вы? Хотите с кем-нибудь познакомлю.'
			'- Не поймите меня не правильно, понимаете мне уже скоро 30, а замуж так никто и не берет. Да и нет их, мужчин в нашем захолустье.'
			'- Понимаю, сделаем так скиньте по почте мне ваши самые красивые фотографии, немного эротики не помешает. А я подберу для вас хорошего жениха на сайте знакомств.'
			'- Эротики! Ох, вы считаете, это необходимо?'
			'- Это обязательно, мужчины при виде красивого женского тела теряют голову.'
			'- Хорошо, я постараюсь сфотографироваться как можно более эротично.'

			act 'Закончить':gt'etoexhib','pos24'
		end
	end

	act 'Уйти':
		cls
		gt'etoexhib','pos24'
	end
end

if $ARGS[0] = 'pos91':
	cla
	*clr
	minut += 5
	gor_dorm = 8
	gs'stat'

	'<center><img src="images/etogame/ptu_tech.jpg"></center>'
	'- Добрый день, Светлана! Как вы и просили, я постаралась сфотографироваться как можно эротичнее. Надеюсь я не перестаралась. А может быть наоборот, фото не достаточно эротичны. Пожалуйста, напишите мне, если что-то не так.'

	act 'Смотреть следующее фото':
		cla
		*clr
		minut += 5

		'<center><img src="images/etogame/ptu_tech1.jpg"></center>'
		'Ого, у неё потрясающая фигура.'

		act 'Смотреть следующее фото':
			cla
			*clr
			minut += 5

			'<center><img src="images/etogame/ptu_tech2.jpg"></center>'
			'Вау, Евгения Анатольевна! Хмм... а ведь она хотела прислать еще более откровенные фотографии, это для сайта знакомств! Видимо девушка совсем отчаялась.'
			'Теперь можно зайти на сайт знакомств и помочь ей найти мужчину своей мечты.'
			'или'
			'А ведь с такими фотографиями я могу потребовать от нее, все что захочу!'

			act 'Зайти на сайт знакомств':gt'Komp','znak'
		end
	end
	act 'Выйти из браузера':gt'Komp','start'
end
--- etoexhib ---------------------------------

