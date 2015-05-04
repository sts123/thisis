# soba
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><img src="images/zoo/13584132341215798.jpg"></center>'

	if zoo >= 3 and zoodogonceday ! day:zoodogonceday = day & gt'soba','hardcoredog'
	if horny >= 50 and vagina > 0 and husband = 0:act 'Поиграть с <<$namesob>>ом':gt'soba','gamedog'
	if husband > 0 and week < 6 and hour < 17 and hour > 7:act 'Поиграть с <<$namesob>>ом':gt'soba','gamedog'

	act 'Выгулять <<$namesob>>':
		cls
		minut = minut + 30
		gs'stat'

		'<center><img src="images/zoo/129474279555.jpg"></center>'
		'<center><b>Вы выгуляли своего <<$namesob>>а</center></b>'

		act 'К дому':gt'korr'
		if horny >= 70 and zoo > 0 and streetdogday ! day:act 'Половой акт':dynamic $polactdog
	end
	act 'Уйти':gt'korr'
	act 'Отвести на усыпление':
		sobaka = 0
		zoo = 0
		minut += 60
		gt'korr'
	end
end

if $ARGS[0] = 'gamedog':
	cla
	*clr
	horny += 30
	gs'stat'

	'<center><img src="images/zoo/1.jpg"></center>'
	'Я позвала <<$namesob>>а к себе на кровать, что бы поиграть с ним. Я целовала его,играла с лапками, гладила его по шее и животу. Вдруг, у меня начинает зудеть киска. Я не могу понять почему, но мне резко захотелось секса. Вдруг я заметила член своего жеребца. Мне в голову пришла совершенно обезбашенная мысль. Я захотела поиграть с этим членом.'

	act 'Уйти':dom += 5 & gt'korr'
	act 'Дать полизать':
		cla
		*clr
		'<center><img src="images/zoo/2.jpg"></center>'
		'Я откинула спину на стенку, и раздвинула свои ножки. Я руками помогла своей собаке найти мою дырочку. Мой жеребец всё понял,и начал лизать мою киску своим язычком. Это было странно и приятно. Его язык вылизывал всё сразу. Это было очень необычно. Я решила сменить позу.'

		act 'Сменить позу':
			cla
			*clr
			horny = horny + 10
			minut = minut + 10
			os = os + 10

			'<center><img src="images/zoo/4.jpg"></center>'
			'Он вылизывает мою киску своим языком с неровной поверхностью. Для полноты ощущений, я раздвигаю тонкими пальцами свои половые губки.'

			act 'Еще действия':gt'soba','gamedog'
		end
	end
	act 'Взять в рот':
		cla
		*clr
		os = os + 10
		horny = horny + 10
		minut = minut + 10

		'<center><img src="images/zoo/3.jpg"></center>'
		'Я согнала собаку на пол, и повернула ее задом к себе. Одной рукой я взяла яйца. Затем я закрыла глаза, и язычком прикоснулась к члену. Начиная облизывать необычный член собаки, я поняла что не так всё и страшно. Я сосу этот член до распухания и появления венозной сетки. Когда он достигнет нужных размеров, я подставлю ему свою писю.'

		act 'Еще действия':gt'soba','gamedog'
	end

	if os > 20:
		act 'Вставить член в киску':
			cla
			*clr
			horny = horny + 30
			minut = minut + 10
			gs'stat'

			'<center><img src="images/zoo/5.jpg"></center>'
			'Достигнув нужных размеров, возбужденный орган направляется в мою мокрую щелку. Секс с питомцем влагалищным способом очень необычный. Собака ебет меня мощными рывками. Он глубоко помещен в мою промежность. И вот это животное довело меня до оргазма. Я содрогнулась, и зажав свои ноги и член, который был внутри меня, я закричала. <<$namesob>>, от такого высунул его и он начал содрогаться. Мне стало ясно что будет дальше. Я должна очень быстро подставить лицо,что бы не упустить шанс получить эту белую жидкость моего домашнего питомца.'

			act 'Подставить лицо':
				cla
				*clr
				orgasm = orgasm + 1
				horny = 0
				minut = minut + 5
				zoo = zoo + 1
				swallow = swallow + 1
				cumface = cumface + 1
				vagina = vagina + 1
				throat = throat + 1
				os = 0
				gs'stat'

				'<center><img src="images/zoo/9.jpg"></center>'
				'Мой секс с собакой завершается мощным семяизвержением, которое обстреливает и измазывает мое лицо, несколько капель даже попали в рот. Вкус естественных соков - спермы, мне очень понравился.'

				if REXQW = 1:act 'Позвонить Соне':gt'soba','dzoof1'
				act 'Отпустить <<$namesob>> и встать':gt'korr'
			end
		end
	end
end

if $ARGS[0] = 'hardcoredog':
	cla
	*clr
	'<center><img src="images/zoo/zoof.jpg"></center>'
	'Вы подошли к <<$namesob>> у песика было игривое настроение, он начал вилять хвостиком и тыкаться носиком вам между ног.'

	act 'Поцеловать <<$namesob>>':
		cla
		*clr
		'<center><img src="images/zoo/zoof1.jpg"></center>'
		'Вы подставили лицо к морде <<$namesob>>, и высунули язычок'

		act 'Пойти с <<$namesob>> в спальню':
			cla
			*clr
			horny = horny + 10
			minut = minut + 5
			gs'stat'

			'<center><img src="images/zoo/spa.jpg"></center>'
			'Вы раздеваетесь ложитесь на кровать и подставляете свою вагину <<$namesob>>,он начинает старательно вылизывать ее вылизывать вашу киску'
			'Вы намокаете'

			act 'Дрочить член пса':
				cla
				*clr
				horny = horny + 10
				minut = minut + 5
				gs'stat'

				'<center><img src="images/zoo/sog.jpg"></center>'
				'Вы надрачиваете член <<$namesob>>'
				'С вас начинают литься соки'

				act 'Взять в рот у <<$namesob>>':
					cla
					*clr
					horny = horny + 10
					minut = minut + 5
					gs'stat'

					'<center><img src="images/zoo/spa1.jpg"></center>'
					'Вы облизываете член <<$namesob>> захлебываясь слюной'
					'Вы начинаете сходить с ума от возбуждения'

					act 'Встать раком перед <<$namesob>>':
						cla
						*clr
						horny = horny + 10
						minut = minut + 5
						gs'stat'

						'<center><img src="images/zoo/spa2.jpg"></center>'
						'Кобелек запрыгивает на вас и начинает тереться членом о вашу вагину'
						'Вы ни чего не соображаете от сексуального желания'

						act 'Лечь на спину и помочь ему войти <<$namesob>>':
							cla
							*clr
							minut = minut + 5
							gs'stat'

							'<center><img src="images/zoo/spa3.jpg"></center>'
							'Вы ложитесь на спину раздвигаете ножки и всовываете его член в свою истекающую дырку'

							act 'Обнять ножками <<$namesob>>':
								cla
								*clr
								minut = minut + 5
								gs'stat'

								'<center><img src="images/zoo/spa4.jpg"></center>'
								'Вы прижимаете ножками к себе пса и трахаетесь с ним'
								'Вас охватывает оргазм но вы не можете на этом остановиться'

								act 'Завалить <<$namesob>> на спину и прыгать на его члене':
									cla
									*clr
									minut = minut + 5
									gs'stat'

									'<center><img src="images/zoo/spa5.jpg"></center>'
									'Вы прыгаете на члене кобеля'
									'Вы просто обезумели от секса'

									act 'Встать рачком перед песиком':
										cla
										*clr
										minut = minut + 5
										gs'stat'

										'<center><img src="images/zoo/spa6.jpg"></center>'
										'Вы спрыгнули с члена и загнулись раком'
										'<<$namesob>> напрыгнул на вас и засадил вам член в вашу раздолбанную киску.'
										'Вы почувствовли что он готов разрядиться'

										act 'Слиться с псом в оргазме':
											cla
											*clr
											zoo = zoo + 1
											swallow = swallow + 1
											vagina = vagina + 1
											throat = throat + 1
											orgasm = orgasm + 1
											minut = minut + 5
											horny = 0
											cumpussy = cumpussy + 1
											gs'stat'

											'<center><img src="images/zoo/spa7.jpg "></center>'
											'Вы прижались к псу и он разряжается в вас'
											'Член <<$namesob>> сцепился с вашой вагиной в крепкий замок'

											act 'Встать с кровати':gt'korr'
											if REXQW = 1:act 'Позвонить Соне':gt'soba','dzoof1'
										end
									end
								end
							end
						end
					end
				end
			end
		end
		act 'Пойти с <<$namesob>> в зал':
			cla
			*clr
			'<center><img src="images/zoo/zoof3.jpg"></center>'
			'Вы зашли в зал разделись и присели на диван, <<$namesob>> сильно возбудился и начал запрыгивать на вас'

			act 'Попытаться оттолкнуть <<$namesob>>':
				cla
				*clr
				'<center><img src="images/zoo/zoof4.jpg"></center>'
				'Вы попытались скинуть пса с себя, Но <<$namesob>> не обращал внимание на ваши попытки'

				act 'Продолжать сопротивляться <<$namesob>>':
					cla
					*clr
					'<center><img src="images/zoo/zoof5.jpg"></center>'
					'Ваши борьба с <<$namesob>> не увенчалась успехом,'
					'<center><img src="images/zoo/zoof6.jpg"></center>'
					'<<$namesob>> завалил вас на диван и зашел в вашу киску'

					act 'Обнять ногами и трахаться с <<$namesob>>':
						cla
						*clr
						gs'stat'

						'<center><img src="images/zoo/zoof7.jpg"></center>'
						'Вы отдались страсти со своим песиком'
						'Вас охватил оргазм'

						act 'Принять заряд спермы в рот':gt'soba','cumshot1'
						act 'Пускай кончает в киску':gt'soba','cumshot2'
					end
				end
			end
			act 'Подставить попку <<$namesob>>':
				cla
				*clr
				gs'stat'

				'<center><img src="images/zoo/zoof10.jpg"></center>'
				'Вы поворачиваетесь спиной и встаете раком'
				'<center><img src="images/zoo/zoof9.jpg"></center>'
				'берете член <<$namesob>> и направляете в свою дырочку <<$namesob>> со всей силы добит вас'

				act 'Принять заряд спермы в рот':gt'soba','cumshot1'
				act 'Пускай кончает в киску':gt'soba','cumshot2'
			end
		end
		act 'Уйти':gt'korr'
	end
	act 'Выгулять <<$namesob>>':
		cla
		*clr
		minut = minut + 10
		minut = minut + 10
		gs'stat'

		'<center><img src="images/zoo/2bc0b6557a7c86b52e8f02a4bdb587dc_1878859489_129474279555_800px.jpg"></center>'
		'<center><b>Вы выгуляли своего <<$namesob>> и видите что он сильно возбужден</center></b>'

		act 'К дому':gt'korr'
		act 'Идти в укромное место':
			cla
			*clr
			'<center><img src="images/zoo/yl1.jpg"></center>'
			'Вы отводите <<$namesob>> в лесок за домом, берете в руки его член и начинаете надрачивать'

			act 'Снять с себя белье и нагнуться':
				cla
				*clr
				horny = horny + 10
				minut = minut + 5
				gs'stat'

				'<center><img src="images/zoo/yl2.jpg"></center>'
				'Вы нагибаетесь перед <<$namesob>>, он начинает вылизывать вашу киску'
				'Вы чувствуете что между ног начинает намокать'

				act 'Отсасывать член у <<$namesob>>':
					cla
					*clr
					horny = horny + 10
					minut = minut + 10
					gs'stat'

					'<center><img src="images/zoo/yl3.jpg"></center>'
					'Вы жадно сосете член <<$namesob>>'
					'От этого еще сильнее возбуждаетесь и вам хочется секса'

					act 'Засунуть член в киску':gt'soba','zoof14'
					act 'Встать раком перед <<$namesob>>':gt'soba','zoof15'
				end
			end
		end
	end
end

if $ARGS[0] = 'cumshot2':
	cla
	*clr
	zoo = zoo + 1
	swallow = swallow + 1
	vagina = vagina + 1
	throat = throat + 1
	cumlip = cumlip + 1
	orgasm = orgasm + 1
	horny = 0
	minut = minut + 25
	gs'stat'

	'<center><img src="images/zoo/zoof8.jpg"></center>'
	'<<$namesob>> разряжается в вашу вагину, вы сливаетесь с псом в страсти'
	'Вас охватил оргазм'

	if REXQW = 1:act 'Позвонить Соне':gt'soba','dzoof1'
	act 'Уйти':gt'korr'
end

if $ARGS[0] = 'cumshot1':
	cla
	*clr
	zoo = zoo + 1
	swallow = swallow + 1
	vagina = vagina + 1
	throat = throat + 1
	cumpussy = cumpussy + 1
	orgasm = orgasm + 1
	horny = 0
	minut = minut +25
	gs'stat'

	'<center><img src="images/zoo/zoof11.jpg"></center>'
	'<<$namesob>> разряжается в рот'
	'Вас охватил оргазм'

	if REXQW = 1:act 'Позвонить Соне':gt'soba','dzoof1'
	act 'Уйти':gt'korr'
end

if $ARGS[0] = 'zoof14':
	cla
	*clr
	orgasm = orgasm + 1
	horny = 0
	minut = minut + 5
	zoo = zoo + 1
	swallow = swallow + 1
	vagina = vagina + 1
	throat = throat + 1
	cumpussy = cumpussy + 1
	gs'stat'

	'<center><img src="images/zoo/yl4.jpg"></center>'
	'Вы берете член <<$namesob>> и начинаете трахать им себя'
	'Пес разряжается в вас, вы содрогаетесь в оргазме'

	if REXQW = 0:act 'Оглядеться вокруг':gt'soba','zoof16'
	act 'Идти домой':gt'korr'
end

if $ARGS[0] = 'zoof15':
	cla
	*clr
	orgasm = orgasm + 1
	horny = 0
	minut = minut + 5
	zoo = zoo + 1
	swallow = swallow + 1
	vagina = vagina + 1
	throat = throat + 1
	cumpussy = cumpussy + 1
	gs'stat'

	'<center><img src="images/zoo/yl5.jpg"></center>'
	'Вы поворачиваетесь спиной к <<$namesob>> он запрыгивает на вас и начинает трахать'
	'Пес разряжается в вас, вы содрогаетесь в оргазме'

	if REXQW = 0:act 'Оглядеться вокруг':gt'soba','zoof16'
	act 'Идти домой':gt'korr'
end

if $ARGS[0] = 'zoof16':
	cla
	*clr
	'<center><img src="images/zoo/yl6.jpg"></center>'
	'Вы замечаете в кустах девушку со спущенными штанами'

	act 'Поговорить':
		cla
		*clr
		minut = minut + 5
		REXQW = 1
		gs'stat'

		'<center><img src="images/zoo/yl6.jpg"></center>'
		'Вы подходите к ней, думая как начать разговор'
		'"Ты я вижу увлекаешься песиками?" - неожиданно начинает разговор она'
		'ДА! - радостно воскликнули вы'
		'"Приходи ко мне поговорим о твоем увлечении" - сказала девушка, бросила вам визитку и ушла'

		act 'Идти домой':gt'korr'
	end
end

if $ARGS[0] = 'zoof27':
	cla
	*clr
	minut = minut + 5
	gs'stat'

	'<center><img src="images/zoo/kuh2.jpg "></center>'
	'Вы позвали <<$namesob>>'
	'Он прибежал на кухню виляя хвостом'

	act 'Раздеться и дать полизать псу':
		cla
		*clr
		zoo = zoo + 1
		minut = minut + 10
		swallow = swallow + 1
		throat = throat + 1
		orgasm = orgasm + 1
		gs'stat'

		'<center><img src="images/zoo/kuh1.jpg"></center>'
		'Вы снимаете с себя вещи и подставляете киску кобельку, он тщательно ее вылизывает'
		'Вас охватывает оргазм'

		if REXQW = 1:act 'Позвонить Соне':gt'soba','dzoof1'
		act 'Одеться и выйти':gt'korr'
	end
	act 'Раздеться и встать раком перед псом':
		cla
		*clr
		zoo = zoo + 1
		minut = minut + 10
		swallow = swallow + 1
		vagina = vagina + 1
		throat = throat + 1
		orgasm = orgasm + 1
		gs'stat'

		'<center><img src="images/zoo/kuh.jpg"></center>'
		'Вы встаете раком кобель запрыгивает на вас и начинает трахать'
		'Вас охватывает оргазм'

		if REXQW = 1:act 'Позвонить Соне':gt'soba','dzoof1'
		act 'Одеться и выйти':gt'korr'
	end
end

if $ARGS[0] = 'zoof30':
	cla
	*clr
	minut = minut + 5
	gs'stat'

	'<center><img src="images/zoo/kuh2.jpg "></center>'
	'Вы разделись и позвали <<$namesob>>'
	'Он прибежал в зал радуясь как ребенок'

	act 'Лечь на диван и раздвинуть ноги':
		cla
		*clr
		horny = horny + 10
		minut = minut + 10
		gs'stat'

		'<center><img src="images/zoo/zal1.jpg"></center>'
		'Кобелек подбежал к вам и начал лизать вас между ног'
		'Вас охватило возбуждение'

		act 'Лечь на пол и раздвинуть ноги':
			cla
			*clr
			horny = horny + 10
			minut = minut + 10
			gs'stat'

			'<center><img src="images/zoo/zal4.jpg"></center>'
			'Пес навис над вами и начал тереться членом'
			'Между ног стало мокро'

			act 'Встать раком и дать псу':gt'soba','doganalstile'
			act 'Обхватить ногами и принять член':gt'soba','dogpussystile'
		end
	end
	act 'Загнуться раком и подставить киску':
		cla
		*clr
		horny = horny + 10
		minut = minut + 10
		gs'stat'

		'<center><img src="images/zoo/zal.jpg"></center>'
		'Кобелек подбежал к вам и начал лизать вас между ног'
		'Вас охватило возбуждение'

		act 'Лечь на пол и раздвинуть ноги':
			cla
			*clr
			horny = horny + 10
			minut = minut + 10
			gs'stat'

			'<center><img src="images/zoo/zal4.jpg"></center>'
			'Пес навис над вами и начал тереться членом'
			'Между ног стало мокро'

			act 'Встать раком и дать псу':gt'soba','doganalstile'
			act 'Обхватить ногами и принять член':gt'soba','dogpussystile'
		end
	end
end

if $ARGS[0] = 'doganalstile':
	cla
	*clr
	zoo = zoo + 1
	minut = minut + 10
	swallow = swallow + 1
	vagina = vagina + 1
	throat = throat + 1
	orgasm = orgasm + 1
	gs'stat'

	'<center><img src="images/zoo/zal3.jpg"></center>'
	'Вы встаете раком кобель запрыгивает на вас и начинает трахать'
	'Вас охватывает оргазм'

	if REXQW = 1:act 'Позвонить Соне':gt'soba','dzoof1'
	act 'Одеться и выйти':gt'korr'
end

if $ARGS[0] = 'dogpussystile':
	cla
	*clr
	zoo = zoo + 1
	minut = minut + 10
	swallow = swallow + 1
	vagina = vagina + 1
	throat = throat + 1
	orgasm = orgasm + 1
	gs'stat'

	'<center><img src="images/zoo/zal2.jpg"></center>'
	'Вы обхватываете его ногами, член легко находит путь в вашу киску'
	'Вас охватывает оргазм'

	if REXQW = 1:act 'Позвонить Соне':xgt'soba','dzoof1'
	act 'Одеться и выйти':gt'korr'
end

if $ARGS[0] = 'dzoof1':
	cla
	*clr
	'У вашего мальчика больше не стоит, какая жалость. Но вы знаете, что нужно сделать'

	act 'Позвонить Соне':
		cla
		'Привет это Света - говорите вы'
		'Какая Света? А! та девушка которая любит собак - спрашивает Соня'
		'Да, именно - без тени сомнения произносится из ваших уст'
		'Жду тебя в парке, в лесополосе. Через 20 минут - сказала Соня перед тем как положить трубку'

		act 'Бежать в парк':
			cla
			*clr
			gs'stat'

			'<center><img src="images/zoo/dzoof1.jpg"></center>'
			'Вы прошли в лесополосу увидев сидящую на лавочке Соню, у неё между ног орудовал языком кобель'

			act 'Поздороваться с Соней':
				cla
				*clr
				gs'stat'

				'<center><img src="images/zoo/dzoof1.jpg"></center>'
				'Привет - сказали вы'
				'Привет - сказала Соня: "Познакомься, это мой дружок, его зовут Рекс"'

				act 'Познакомиться с Рексом':
					cla
					*clr
					horny = horny + 10
					minut = minut + 3
					gs'stat'

					'<center><img src="images/zoo/dzoof2.jpg"></center>'
					'Вы подошли к псу и начали с ним играть'
					'-Покажи ему свою киску - сказала Соня'

					act 'Показать киску':
						cla
						*clr
						horny = horny + 10
						minut = minut + 3
						gs'stat'

						'<center><img src="images/zoo/dzoof2.jpg"></center>'
						'Вы подошли к псу'
						'-Разденься и поиграй с ним, он любит голеньких - улыбнулась Соня'

						act 'Поиграть с Рексом':
							cla
							*clr
							horny = horny + 10
							minut = minut + 3
							gs'stat'

							'<center><img src="images/zoo/dzoof4.jpg"></center>'
							'Вы разделись и начали играть с псом.'
							'Ваши киска увлажнилась и голове понеслись эротические мысли'
							'Вы заметили что пес возбудился тоже'
							'-Ты я смотрю раззадорила его, а теперь успокой - сказала Соня'
							'- Как? - спросили вы'
							'- Ты что, маленькая?! Губами -сказала Соня'

							act 'Успокоить Рекса':
								cla
								*clr
								minut = minut + 5
								dzoo = dzoo + 1
								lip = lip + 1
								gs'stat'

								'<center><img src="images/zoo/dzoof3.jpg"></center>'
								'Вы встали на колени и стали сосать у Рекса, он быстро разрядился вам в рот.'
								'Соня улыбнулась и сказала: "Ах ты шлюшка, соблазнила моего мальчика, пойдем ко мне будешь наказана"'

								act 'Идти к Соне':
									cla
									*clr
									minut = minut + 10
									gs'stat'

									'<center><img src="images/zoo/dzoof16.jpg"></center>'
									'Вы пришли на квартиру к Соне, она повернулась к вам и игриво сказала'
									'-Ну что ты готова к наказанию?'

									act 'Накажи меня':
										cla
										*clr
										minut = minut + 5
										gs'stat'

										'<center><img src="images/zoo/dzoof6.jpg"></center>'
										'Теперь моя очередь получать удовольствие, если ты понимаешь о чем я - сказала Соня'

										act 'Поработать язычком':
											cla
											*clr
											minut = minut + 5
											horny = horny + 10
											gs'stat'

											'<center><img src="images/zoo/dzoof7.jpg"></center>'
											'Вы припали между ног у Сони, и начали лизать ее, она начала намокать.'
											'К вам подбежал Рекс и ревниво оттолкнул вас от Сони.'
											'Ну что ты мальчик обиделся?- сказала Соня и начала играть с Рексом'

											act 'Посмотреть на Соню с Рексом':
												cla
												*clr
												minut = minut + 5
												horny = horny + 10
												gs'stat'

												'<center><img src="images/zoo/dzoof8.jpg"></center>'
												'Вы смотрели как Соня заигрывает с Рексом, в голову полезли дурные мысли вы начали возбуждаться.'
												'Успокой и поласкай его - сказала Соня.'

												act 'Поласкать Рекса':
													cla
													*clr
													minut = minut + 5
													horny = horny + 10
													gs'stat'

													'<center><img src="images/zoo/dzoof9.jpg"></center>'
													'Вы начали гладить и ласкать Рекса,вдруг заметили что он возбудился.'

													act 'Взять в руки член Рекса':
														cla
														*clr
														minut = minut + 3
														horny = horny + 10
														gs'stat'

														'<center><img src="images/zoo/dzoof17.jpg"></center>'
														'Вы взяли в руки член пса и начали ласкать его.'
														'Увидев это Соня сняла трусики присела на диван и раздвинула ножки'

														act 'Наблюдать':
															cla
															*clr
															minut = minut + 3
															horny = horny + 10
															gs'stat'

															'<center><img src="images/zoo/dzoof10.jpg"></center>'
															'Рекс подбежал к Соне и начал лизать ее грудь.'

															act 'Ласкать себя':
																cla
																*clr
																minut = minut + 2
																horny = horny + 10
																gs'stat'

																'<center><img src="images/zoo/dzoof11.jpg"></center>'
																'Вы сняли трусики и стали гладить свои киску.'
																'Это заметил Рекс виляя хвостиком он подбежал к вам и уткнулся между ног'
																'Соня с ухмылкой сказала: "Ну что ж посмотрим кто кого", и встала раком'

																act 'Смотреть':
																	cla
																	*clr
																	minut = minut + 3
																	horny = horny + 10
																	gs'stat'

																	'<center><img src="images/zoo/dzoof13.jpg"></center>'
																	'Рекс отбежал от вас запрыгнул на Соню и засадил свой член в нее.'
																	'Вы тоже встали раком возле Сони и начали призывно качать попкой'
																	'Ты хочешь его шлюшка?-сказала Соня'

																	act 'Да хочу':
																		cla
																		*clr
																		minut = minut + 3
																		horny = horny + 10
																		gs'stat'

																		'<center><img src="images/zoo/Dzoof14.jpg"></center>'
																		'Соня взяла Рекса и поставила на вас, его член шустро вошел в вас.'
																		'Полижи у меня! - сказала Соня'

																		act 'Лизать у Сони':
																			cla
																			*clr
																			tzoo = tzoo + 1
																			zoo = zoo + 1
																			minut = minut + 20
																			swallow = swallow + 1
																			vagina = vagina + 1
																			throat = throat + 1
																			orgasm = orgasm + 1
																			horny = 0
																			gs'stat'

																			'<center><img src="images/zoo/dzoof15.jpg"></center>'
																			'Вы жадно лизали вагину Сони а сзади вас долбил Рекс.'
																			'Рекс кончил в вас, а затем и Соню охватил оргазм'
																			'После чего она выпроводила вас из квартиры кинув вдогонку несколько купюр'

																			act 'Уйти':gt'park','start'
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
					act 'Послать Соню':gt'park','start'
				end
			end
			act 'Передумать':gt'park','start'
		end
	end
end
--- soba ---------------------------------

