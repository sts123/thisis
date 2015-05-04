# pf
if $ARGS[0] = 'boss':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	film += 1
	gs'stat'

	if pfilm = 1:pfcash = 2000 & $filmtext = ' в котором вы снималились как отдрачивали парню и он спускал на ваши сиськи.'
	if pfilm = 2:pfcash = 3000 & $filmtext = ' в котором вы снималились как отсасывали член у парня и он спускал вам в рот и на лицо.'
	if pfilm = 3:pfcash = 5000 & $filmtext = ' в котором вы снималились как отсасывали член у парня, потом он трахал вас и кончил вам в рот.'
	if pfilm = 4:pfcash = 6000 & $filmtext = ' в котором вы снималились как отсасывали член у парня, потом он трахал вас в киску и жопу и спустил вам в рот.'
	if pfilm = 5:pfcash = 7000 & $filmtext = ' в котором вы снималились как вас во все дыры дуплят двое мужиков.'
	if pfilm = 6:pfcash = 9000 & $filmtext = ' в котором вы снималились как вас долбят во все дыры двое мужиков и даже с двойным проникновением.'
	$pfilmhistory += ' '+'Ваш '+film+'й порнофильм'+' был снят '+day+''+$mons+$filmtext

	if pfilmNOPAY = 0:
		money += pfcash

		'Петр отсчитал вам <<pfcash>> рублей за съемку в фильме и пожелал удачи'
	elseif pfilmNOPAY = 1:
		pfilmNOPAY = 0

		'Вы отработали свое наказание и фильм сняли за бесплатно.'
	end

	pfilm = 0
	if film < 10:filmkoef = 2
	if film >= 10 and film < 20:filmkoef = 5
	if film >= 20:filmkoef = 10
	pffilmday = daystart+(film+filmkoef)
	pfilmday = 0

	'Я думаю у нас появится для тебя работа не раньше чем через <<pffilmday-daystart>> дней.'

	act 'Уйти':gt'pornstudio','start'
end

if $ARGS[0] = 'doc':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 5
	gs'stat'

	'Вы зашли в кабинет в котором уже ожидал врач в белом халате. Он быстро натянул резиновые перчатки и коротко сказал вам, раздевайтесь.'
	'Вы сняли одежду и расположились в высоком гинекологическом кресле раздвинув ноги. Врач подошел к вам и начал осмотр. После осмотра он взял шприц и взял у вас из вены кровь на анализ.'
	'Сейчас через пол часика будут готовы анализы, если у тебя хоть что то есть, они покажут.'

	act 'Ждать':gt'pf','lab'
end

if $ARGS[0] = 'lab':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	gs'stat'

	if venera > 0:
		pfilmNO = 1
		pfilmNoVenera = 1

		'Ваши анализ показали венерическое заболевание. сказал вам врач и позвал Петра. Петр осмотрел бумажку с анализами.'
		'Ну чтож, <<$pfname>>, я думаю твоя карьера окончена. Прощай.'

		act 'Уйти':gt'pornstudio','start'
	else
		'Ну чтож, ты чистая. Иди в гримерную'

		act 'Идти в гримерку':gt'pf','grim'
	end
end

if $ARGS[0] = 'grim':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	hapri = 1
	mop = 4
	gs'stat'

	'В гримерке вас уже ждала тощая и высохшая как вобла женщина.'

	if pfilm > 3:
		'Первым делам вам поставили мощную клизму.'
	end

	'Вас посадили перед зеркалом, причесали и наложили макияж.'
	!если сцены с аналом, то клизма.

	act 'Идти на съемочную площадку':
		if pfilm = 1:gt'pf','1'
		if pfilm = 2:gt'pf','2'
		if pfilm = 3:gt'pf','3'
		if pfilm = 4:gt'pf','4'
		if pfilm = 5:gt'pf','5'
		if pfilm = 6:gt'pf','6'
	end
end

if $ARGS[0] = '1':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	gs'stat'

	akrand = RAND(1,5)
	if akrand = 1:$pakter = 'Алексей'
	if akrand = 2:$pakter = 'Сергей'
	if akrand = 3:$pakter = 'Джордж'
	if akrand = 4:$pakter = 'Игнат'
	if akrand = 5:$pakter = 'Семен'

	'На площадке уже суетятся ассистенты устанавливая осветительные приборы, так, что бы не было теней.'
	'В стороне стоит актер <<$pakter>> и разглядывая порножурнал дрочит член.'

	act 'Сниматься':
		cla
		*clr
		minut += 30
		hj += 1
		gs'stat'

		if akrand = 1 and aksex1 = 0:aksex1 = 1 & guy += 1
		if akrand = 2 and aksex2 = 0:aksex2 = 1 & guy += 1
		if akrand = 3 and aksex3 = 0:aksex3 = 1 & guy += 1
		if akrand = 4 and aksex4 = 0:aksex4 = 1 & guy += 1
		if akrand = 5 and aksex5 = 0:aksex5 = 1 & guy += 1

		'<center><img src="images/studia/hj.gif"></center>'
		'<<$pakter>> лег на кровать и выставил свой член. Вы легли рядом и взяли его член в руку. Намазав свою грудь и член актера, вы начали надрачивать его елду.'

		act 'Дрочить на груди':
			cla
			*clr
			minut += 5

			'<center><img src="images/studia/hjcumontits.gif"></center>'
			'<<$pakter>> начал кончать вам на груди, а вы продолжали дрочить ему член выдавливая его горячую сперму на себя.'

			act 'Идти в душ':
				cla
				*clr
				minut += 5
				sweat = -3
				horny = horny + 1
				mop = 1
				cumpussy = 0
				cumbelly = 0
				cumass = 0
				cumanus = 0
				cumlip = 0
				cumface = 0

				'<center><img src="images/pics/dush.jpg"></center>'
				'Вы вошли в душевую кабину и включили душ. Намылили тело и смыли под душем убирая все остатки спермы со своего тела.'

				act 'Идти к Петру':gt'pf','boss'
			end
		end
	end
end

if $ARGS[0] = '2':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	gs'stat'

	akrand = RAND(1,5)
	if akrand = 1:$pakter = 'Алексей'
	if akrand = 2:$pakter = 'Сергей'
	if akrand = 3:$pakter = 'Джордж'
	if akrand = 4:$pakter = 'Игнат'
	if akrand = 5:$pakter = 'Семен'

	'На площадке уже суетятся ассистенты устанавливая осветительные приборы, так, что бы не было теней.'
	'В стороне стоит актер <<$pakter>> и разглядывая порножурнал дрочит член.'

	act 'Сниматься':
		cla
		*clr
		minut += 30
		hj += 1
		gs'stat'

		if akrand = 1 and aksex1 = 0:aksex1 = 1 & guy += 1
		if akrand = 2 and aksex2 = 0:aksex2 = 1 & guy += 1
		if akrand = 3 and aksex3 = 0:aksex3 = 1 & guy += 1
		if akrand = 4 and aksex4 = 0:aksex4 = 1 & guy += 1
		if akrand = 5 and aksex5 = 0:aksex5 = 1 & guy += 1

		'<center><img src="images/studia/hj.gif"></center>'
		'<<$pakter>> лег на кровать и выставил свой член. Вы легли рядом и взяли его член в руку. Намазав свою грудь и член актера, вы начали надрачивать его елду.'

		act 'Взять в рот':
			cla
			*clr
			bj += 1
			minut += 5

			'<center><img src="images/studia/bj.gif"></center>'
			'<<$pakter>> сел на кровати и вы расположились между его ног взяв его член в свой рот и начав обсасывать головку.'

			act 'Сосать':
				cla
				*clr
				minut += 5

				'<center><img src="images/studia/deep.gif"></center>'
				'<<$pakter>> начал трахать вас в рот вбивая свой член вам в горло каждым движением.'
				'Наконец он вынул член из вас. Пришла пора снять семяизвержение.'

				act 'Сесть на колени и открыть рот':
					cla
					*clr
					minut += 5
					cumlip += 1
					facial += 1
					gs'stat'

					'<center><img src="images/studia/cum.gif"></center>'
					'<<$pakter>> кончил вам в рот, хлестнув горячей струей спермы вам по языку и попав в горло.'

					act 'Чистить ртом его член от спермы':
						cla
						*clr
						minut += 5
						cumface += 1
						swallow += 1
						gs'stat'

						'<center><img src="images/studia/bj2.gif"></center>'
						'Вы начали нежно очищать его член от спермы сглатывая ее и преданно глядя в глаза.'

						act 'Идти в душ':
							cla
							*clr
							minut += 5
							sweat = -3
							horny = horny + 1
							mop = 1
							cumpussy = 0
							cumbelly = 0
							cumass = 0
							cumanus = 0
							cumlip = 0
							cumface = 0

							'<center><img src="images/pics/dush.jpg"></center>'
							'Вы вошли в душевую кабину и включили душ. Намылили тело и смыли под душем убирая все остатки спермы со своего тела.'

							act 'Идти к Петру':gt'pf','boss'
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = '3':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	gs'stat'

	akrand = RAND(1,5)
	if akrand = 1:$pakter = 'Алексей'
	if akrand = 2:$pakter = 'Сергей'
	if akrand = 3:$pakter = 'Джордж'
	if akrand = 4:$pakter = 'Игнат'
	if akrand = 5:$pakter = 'Семен'

	'На площадке уже суетятся ассистенты устанавливая осветительные приборы, так, что бы не было теней.'
	'В стороне стоит актер <<$pakter>> и разглядывая порножурнал дрочит член.'

	act 'Сниматься':
		cla
		*clr
		minut += 30
		hj += 1
		gs'stat'

		if akrand = 1 and aksex1 = 0:aksex1 = 1 & guy += 1
		if akrand = 2 and aksex2 = 0:aksex2 = 1 & guy += 1
		if akrand = 3 and aksex3 = 0:aksex3 = 1 & guy += 1
		if akrand = 4 and aksex4 = 0:aksex4 = 1 & guy += 1
		if akrand = 5 and aksex5 = 0:aksex5 = 1 & guy += 1

		'<center><img src="images/studia/hj.gif"></center>'
		'<<$pakter>> лег на кровать и выставил свой член. Вы легли рядом и взяли его член в руку. Намазав свою грудь и член актера, вы начали надрачивать его елду.'

		act 'Взять в рот':
			cla
			*clr
			bj += 1
			minut += 5

			'<center><img src="images/studia/bj.gif"></center>'
			'<<$pakter>> сел на кровати и вы расположились между его ног взяв его член в свой рот и начав обсасывать головку.'

			act 'Сосать':
				cla
				*clr
				minut += 5

				'<center><img src="images/studia/deep.gif"></center>'
				'<<$pakter>> начал трахать вас в рот вбивая свой член вам в горло каждым движением.'

				act 'Встать раком':
					cla
					*clr
					sex += 1
					vagina += 1
					minut += 15

					'<center><img src="images/studia/sex.gif"></center>'
					'Вы встали на четвереньки и <<$pakter>> вогнал вам в киску свой член по самые яйца. Он начал жестко трахать вас, ударяя всем корпусом вам по заду и если бы его руки цепко не держали ваши ягодицы, то вы бы точно упали, после первого же удара.'

					act 'Сесть на колени и открыть рот':
						cla
						*clr
						minut += 5
						cumlip += 1
						facial += 1
						gs'stat'

						'<center><img src="images/studia/cum.gif"></center>'
						'<<$pakter>> кончил вам в рот, хлестнув горячей струей спермы вам по языку и попав в горло.'

						act 'Чистить ртом его член от спермы':
							cla
							*clr
							minut += 5
							cumface += 1
							swallow += 1
							gs'stat'

							'<center><img src="images/studia/bj2.gif"></center>'
							'Вы начали нежно очищать его член от спермы сглатывая ее и преданно глядя в глаза.'

							act 'Идти в душ':
								cla
								*clr
								minut += 5
								sweat = -3
								horny = horny + 1
								mop = 1
								cumpussy = 0
								cumbelly = 0
								cumass = 0
								cumanus = 0
								cumlip = 0
								cumface = 0

								'<center><img src="images/pics/dush.jpg"></center>'
								'Вы вошли в душевую кабину и включили душ. Намылили тело и смыли под душем убирая все остатки спермы со своего тела.'

								act 'Идти к Петру':gt'pf','boss'
							end
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = '4':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	gs'stat'

	akrand = RAND(1,5)
	if akrand = 1:$pakter = 'Алексей'
	if akrand = 2:$pakter = 'Сергей'
	if akrand = 3:$pakter = 'Джордж'
	if akrand = 4:$pakter = 'Игнат'
	if akrand = 5:$pakter = 'Семен'

	'На площадке уже суетятся ассистенты устанавливая осветительные приборы, так, что бы не было теней.'
	'В стороне стоит актер <<$pakter>> и разглядывая порножурнал дрочит член.'

	act 'Сниматься':
		cla
		*clr
		minut += 30
		hj += 1
		gs'stat'

		if akrand = 1 and aksex1 = 0:aksex1 = 1 & guy += 1
		if akrand = 2 and aksex2 = 0:aksex2 = 1 & guy += 1
		if akrand = 3 and aksex3 = 0:aksex3 = 1 & guy += 1
		if akrand = 4 and aksex4 = 0:aksex4 = 1 & guy += 1
		if akrand = 5 and aksex5 = 0:aksex5 = 1 & guy += 1

		'<center><img src="images/studia/hj.gif"></center>'
		'<<$pakter>> лег на кровать и выставил свой член. Вы легли рядом и взяли его член в руку. Намазав свою грудь и член актера, вы начали надрачивать его елду.'

		act 'Взять в рот':
			cla
			*clr
			bj += 1
			minut += 5

			'<center><img src="images/studia/bj.gif"></center>'
			'<<$pakter>> сел на кровати и вы расположились между его ног взяв его член в свой рот и начав обсасывать головку.'

			act 'Сосать':
				cla
				*clr
				minut += 5

				'<center><img src="images/studia/deep.gif"></center>'
				'<<$pakter>> начал трахать вас в рот вбивая свой член вам в горло каждым движением.'

				act 'Встать раком':
					cla
					*clr
					sex += 1
					vagina += 1
					minut += 5

					'<center><img src="images/studia/sex.gif"></center>'
					'Вы встали на четвереньки и <<$pakter>> вогнал вам в киску свой член по самые яйца. Он начал жестко трахать вас, ударяя всем корпусом вам по заду и если бы его руки цепко не держали ваши ягодицы, то вы бы точно упали, после первого же удара.'
					'Наконец актер вынул из вас член и вы почувствовали как он уперся вам в анус.'

					act 'Расслабить анус':
						cla
						*clr
						anal += 1
						anus += 1
						minut += 5

						'<center><img src="images/studia/sex.gif"></center>'
						'Вы постарались как могли расслабить анус что бы безболезненно пустить внутрь член. <<$pakter>> плавно вошел в ваш зад и начал долбить вашу попку как паровым молотом.'

						act 'Сесть на колени и открыть рот':
							cla
							*clr
							minut += 5
							cumlip += 1
							facial += 1
							gs'stat'

							'<center><img src="images/studia/cum.gif"></center>'
							'<<$pakter>> кончил вам в рот, хлестнув горячей струей спермы вам по языку и попав в горло.'

							act 'Чистить ртом его член от спермы':
								cla
								*clr
								minut += 5
								cumface += 1
								swallow += 1
								gs'stat'

								'<center><img src="images/studia/bj2.gif"></center>'
								'Вы начали нежно очищать его член от спермы сглатывая ее и преданно глядя в глаза.'

								act 'Идти в душ':
									cla
									*clr
									minut += 5
									sweat = -3
									horny = horny + 1
									mop = 1
									cumpussy = 0
									cumbelly = 0
									cumass = 0
									cumanus = 0
									cumlip = 0
									cumface = 0

									'<center><img src="images/pics/dush.jpg"></center>'
									'Вы вошли в душевую кабину и включили душ. Намылили тело и смыли под душем убирая все остатки спермы со своего тела.'

									act 'Идти к Петру':gt'pf','boss'
								end
							end
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = '5':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	gang += 1
	gs'stat'

	akrand = RAND(1,5)
	if akrand = 1:
		$pakter = 'Алексей'
		if aksex1 = 0:aksex1 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 2:
		$pakter = 'Сергей'
		if aksex2 = 0:aksex2 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 3:
		$pakter = 'Джордж'
		if aksex3 = 0:aksex3 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 4:
		$pakter = 'Игнат'
		if aksex4 = 0:aksex4 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 5:
		$pakter = 'Семен'
		if aksex5 = 0:aksex5 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		end
	end

	'На площадке уже суетятся ассистенты устанавливая осветительные приборы, так, что бы не было теней.'
	'Актеры <<$pakter>> и <<$pakter2>> наяривают перцы перед порножурналом, что бы привести их в состояние боевой готовности.'

	act 'Сниматься':
		cla
		*clr
		minut += 10
		bj += 2
		gs'stat'

		'<center><img src="images/studia/tbj.gif"></center>'
		'Актеры достали члены и начали вас ими колотить по физиономии.'

		act 'Сосать':
			cla
			*clr
			minut += 15
			gs'stat'

			'<center><img src="images/studia/tbj2.gif"></center>'
			'Вы начали отсасывать оба члена стараясь никого не обделить вниманием, ласкали их языком, губами и сосали.'

			act 'Трахаться':
				cla
				*clr
				minut += 15
				sex += 1
				vagina += 1
				gs'stat'

				'<center><img src="images/studia/three.gif"></center>'
				'Вы встали на четвереньки и <<$pakter>> всадил вам свой член в киску, пока вы отсасывали у <<$pakter22>>.'

				act 'Анал':
					cla
					*clr
					minut += 15
					anal += 1
					anus += 1
					gs'stat'

					'<center><img src="images/studia/threea.gif"></center>'
					'<<$pakter>> вогнал вам свой болт в попу, пока вы отсасывали у <<$pakter22>>.'

					act 'Окончание на лицо':
						cla
						*clr
						minut += 5
						cumface += 1
						facial += 1
						gs'stat'

						'<center><img src="images/studia/tcum.gif"></center>'
						'<<$pakter22>> кончил вам в рот, хлестнув горячей струей спермы вам по языку и попав в горло.'

						act 'Идти в душ':
							cla
							*clr
							minut += 5
							sweat = -3
							horny = horny + 1
							mop = 1
							cumpussy = 0
							cumbelly = 0
							cumass = 0
							cumanus = 0
							cumlip = 0
							cumface = 0

							'<center><img src="images/pics/dush.jpg"></center>'
							'Вы вошли в душевую кабину и включили душ. Намылили тело и смыли под душем убирая все остатки спермы со своего тела.'

							act 'Идти к Петру':gt'pf','boss'
						end
					end
				end
			end
		end
	end
end

if $ARGS[0] = '6':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 30
	gang += 1
	gs'stat'

	akrand = RAND(1,5)
	if akrand = 1:
		$pakter = 'Алексей'
		if aksex1 = 0:aksex1 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 2:
		$pakter = 'Сергей'
		if aksex2 = 0:aksex2 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 3:
		$pakter = 'Джордж'
		if aksex3 = 0:aksex3 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 4:
		$pakter = 'Игнат'
		if aksex4 = 0:aksex4 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Семен'
			$pakter22 = 'Семена'
			if aksex5 = 0:aksex5 = 1 & guy += 1
		end
	elseif akrand = 5:
		$pakter = 'Семен'
		if aksex5 = 0:aksex5 = 1 & guy += 1

		akrand2 = RAND(1,4)
		if akrand2 = 1:
			$pakter2 = 'Алексей'
			$pakter22 = 'Алексея'
			if aksex1 = 0:aksex1 = 1 & guy += 1
		elseif akrand2 = 2:
			$pakter2 = 'Сергей'
			$pakter22 = 'Сергея'
			if aksex2 = 0:aksex2 = 1 & guy += 1
		elseif akrand2 = 3:
			$pakter2 = 'Джордж'
			$pakter22 = 'Джорджа'
			if aksex3 = 0:aksex3 = 1 & guy += 1
		elseif akrand2 = 4:
			$pakter2 = 'Игнат'
			$pakter22 = 'Игната'
			if aksex4 = 0:aksex4 = 1 & guy += 1
		end
	end

	'На площадке уже суетятся ассистенты устанавливая осветительные приборы, так, что бы не было теней.'
	'Актеры <<$pakter>> и <<$pakter2>> наяривают перцы перед порножурналом, что бы привести их в состояние боевой готовности.'

	act 'Сниматься':
		cla
		*clr
		minut += 10
		bj += 2
		gs'stat'

		'<center><img src="images/studia/tbj.gif"></center>'
		'Актеры достали члены и начали вас ими колотить по физиономии.'

		act 'Сосать':
			cla
			*clr
			minut += 15
			gs'stat'

			'<center><img src="images/studia/tbj2.gif"></center>'
			'Вы начали отсасывать оба члена стараясь никого не обделить вниманием, ласкали их языком, губами и сосали.'

			act 'Трахаться':
				cla
				*clr
				minut += 15
				sex += 1
				vagina += 1
				gs'stat'

				'<center><img src="images/studia/three.gif"></center>'
				'Вы встали на четвереньки и <<$pakter>> всадил вам свой член в киску, пока вы отсасывали у <<$pakter22>>.'

				act 'Анал':
					cla
					*clr
					minut += 15
					anal += 1
					anus += 1
					gs'stat'

					'<center><img src="images/studia/threea.gif"></center>'
					'<<$pakter>> вогнал вам свой болт в попу, пока вы отсасывали у <<$pakter22>>.'

					act 'Двойное проникновение':
						cla
						*clr
						minut += 15
						anus += 1
						vagina += 1
						gs'stat'

						'<center><img src="images/studia/three2.gif"></center>'
						'<<$pakter>> лег и вы сели на его член киской, <<$pakter2>> подошел сзади и вы почувствовали как его член проникает в ваш анус. Парни начали долбить вас в две дыры, твердые члены терлись друг о друга через тонкую стеночку в вашем теле.'

						act 'Окончание на лицо':
							cla
							*clr
							minut += 5
							cumface += 1
							facial += 1
							gs'stat'

							'<center><img src="images/studia/tcum.gif"></center>'
							'<<$pakter22>> кончил вам в рот, хлестнув горячей струей спермы вам по языку и попав в горло.'

							act 'Идти в душ':
								cla
								*clr
								minut += 5
								sweat = -3
								horny = horny + 1
								mop = 1
								cumpussy = 0
								cumbelly = 0
								cumass = 0
								cumanus = 0
								cumlip = 0
								cumface = 0

								'<center><img src="images/pics/dush.jpg"></center>'
								'Вы вошли в душевую кабину и включили душ. Намылили тело и смыли под душем убирая все остатки спермы со своего тела.'

								act 'Идти к Петру':gt'pf','boss'
							end
						end
					end
				end
			end
		end
	end
end
--- pf ---------------------------------

