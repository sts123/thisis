# dorm
if $ARGS[0] = 'start':
	cla
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Общежитие</font></b></center>'
	'<center><img src="images/pic/dorm.jpg"></center>'

	if student > 0:
		act 'Зайти':
			cla
			minut = minut + 5
			reccoldorm = 1
			gt'dorm','korr'
		end
	elseif reccoldorm < 1 and student = 0:
		act 'Попробовать зайти':
			cla
			minut = minut + 5
			gt'dorm','in'
		end
	end

	act 'Выйти':
		cla
		minut = minut + 5
		reccoldorm = 0
		gt'down'
	end
end

if $ARGS[0] = 'in':
	cla
	*clr
	gs'stat'

	if student = 0:
		'У вас нет студенческого и вахтерша отказывается вас пропускать.'

		act 'Уйти':gt'down'

		if afra > 0:
			act 'Я к Демаркусу':
				cla
				reccoldorm = 1

				'Вы сказали что вы к Демаркусу. Вахтерша хмыкнула, "Шлюха, подстилка для черномазых, иди прыгай на их черных болтах"'

				act 'Войти':gt'dorm','korr'
			end
		end

		if gosh > 0:
			act 'Я к Гоше':
				cla
				reccoldorm = 1

				'Вы сказали что вы к Гоше. Вахтерша хмыкнула, "Очередная Гошина подстилка? Да этот мозгляк уже всю общагу перетрахал, теперь шалавы сами к нему ходят. Хе, иди к своему ебарю, подстилка."'

				act 'Войти':gt'dorm','korr'
			end
		end
	end
end

if $ARGS[0] = 'korr':
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	cla
	clr
	*clr
	gs'stat'

	'<center><img src="images/img/centr/obkorr.jpg"></center>'
	'Перед вами обычный общажный коридор с обшарпанными стенами, одинаковыми дверями, из некоторых комнат доносится музыка или пьяные вопли студентов.'

	act 'Уйти':
		cla
		minut = minut + 5
		reccoldorm = 0
		gt'down'
	end

	if student > 0:
		act 'Ваша комната':gt'obroom','start'
		act 'На общую кухню':
			minut += 5
			gt'obkitchen'
		end
		act 'В общую ванную':
			minut += 5
			obdysh = 1
			gt'vann','start'
		end
	end

	if student > 0 and week = 5 and hour > 18 and hour < 23:
		'В коридоре грохочет музыка, похоже пятничная вечеринка в разгаре.'
		act 'На вечеринку':gt'vecher','start'
	end

	if afra > 0 and hour < 22 and hour >= 7:
		act 'Комната Демаркуса':
			cla

			afrand = RAND(1,2)
			if afrand = 1:
				minut = minut + 5
				gs'stat'

				'Вы постучались в комнату Демаркуса, но его нет у себя'

				act 'Уйти':gt'dorm','korr'
			elseif afrand = 2:
				*clr
				'Вы постучались в комнату Демаркуса. Через пару секунд вам открыл здоровенный накаченный африканец. Он заулыбался белоснежной улыбкой увидев вас и пригласил в свою комнату. Там он быстренько накрыл довольно роскошный стол для студента и пригласил вас к столу.'

				act 'Выпить с Демаркусом':
					cls
					minut += 120
					gs'stat'

					'Вы выпили вина с Демаркусом и он начал вас лапать за грудь. Потом поднял вашу майку и стал сосать ваши соски и играть с грудями, вам стало очень хорошо.'

					afrand = RAND(1,afra)
					if afrand = 1:
						if demarkus = 0:guy = guy + 1 & demarkus = 1
						sex = sex + 1
						cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						vagina += 1

						'<center><img src="images/pics2/afra.jpg"></center>'
						'Демаркус раздел вас и положил на кровать, он достал свой огромный черный член и раздвинув ваши ноги вошел в вас.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился на ваш живот.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 2:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						!cumbutt = cumbutt + 1
						cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						vagina += 1

						'<center><img src="images/pics2/afra1.jpg"></center>'
						'Демаркус раздел вас и положил спиной на пол, он достал свой огромный черный член и раздвинув ваши ноги вошел в вас.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился на ваш живот.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 3:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						!cumbutt = cumbutt + 1
						cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						vagina += 1

						'<center><img src="images/pics2/afra2.jpg"></center>'
						'Демаркус раздел вас и поставил раком на кровати, он достал свой огромный черный член и раздвинув ваши булки вошел в вас.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился на вашу попу.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 4:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						anus += 1

						'<center><img src="images/pics2/afra4.jpg"></center>'
						'Демаркус раздел вас и поставил раком на кровати, он достал свой огромный черный член и раздвинув ваши булки вошел в ваш анус.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился в вашу попу.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 5:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						!cumbutt = cumbutt + 1
						cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						vagina += 1

						'<center><img src="images/pics2/afra24.jpg"></center>'
						'Демаркус раздел вас и поставил раком на кровати, он достал свой огромный черный член и вошел в вашу киску растягивая ее до предела.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился на вашу попу.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 6:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						anus += 1

						'<center><img src="images/pics2/afra16.jpg"></center>'
						'Демаркус раздел вас и поставил на кровать, он достал свой огромный черный член и раздвинув ваши ноги вошел в ваш анус.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 7:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						anus += 1

						'<center><img src="images/pics2/afra13.jpg"></center>'
						'Демаркус раздел вас и лег на кровать, он легко поднял вас и усадил анусом на свой огромный член.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 8:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						anus += 1

						'<center><img src="images/pics2/afra20.jpg"></center>'
						'Демаркус раздел вас и лег на кровать, он легко поднял вас и усадил анусом на свой огромный член.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 9:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						!cumbutt = cumbutt + 1
						cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						vagina += 1

						'<center><img src="images/pics2/afra11.jpg"></center>'
						'Демаркус раздел вас и лег на кровать, он легко поднял вас и усадил на свой огромный член вашей киской.'
						'Пока Демаркус буравил вас своим огромным инструментов вы успели несколько раз кончить и только тогда он разрядился.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 10:
						throat = throat + 1
						sex = sex + 1
						oral = oral + 1
						cumface = cumface + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra3.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 11:
						throat = throat + 1
						sex = sex + 1
						oral = oral + 1
						cumface = cumface + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra10.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 12:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						cumface = cumface + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra14.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 13:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra18.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 14:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra23.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 15:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra31.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 16:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra32.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 17:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra33.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 18:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra34.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 19:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'<center><img src="images/pics2/afra35.jpg"></center>'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 20:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra36.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 21:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra37.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 22:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra38.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 23:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra39.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 24:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra40.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand = 25:
						throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						cumface = cumface + 1
						!cumbutt = cumbutt + 1
						!cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						VAF += 1

						'<center><img src="images/pics2/afra41.jpg"></center>'
						'Демаркус поставил вас на колени и засунул вам в рот свой огромный черный член'
						'Пока Демаркус долбил вас в рот своим черным членом, а вы старательно его отсасывали и ласкали письку, когда Демаркус вынул член и стал кончать вам на лицо, вас охватил оргазм.'

						act 'Уйти':gt'dorm','korr'
					elseif afrand >= 26:
						!throat = throat + 1
						!guy = guy + 1
						sex = sex + 1
						!oral = oral + 1
						!anal = anal + 1
						!cumlip = cumlip + 1
						!cumface = cumface + 1
						!cumbutt = cumbutt + 1
						cumass = cumass + 1
						horny = 0
						afra = afra + 1
						orgasm += 1
						vagina += 1

						'<center><img src="images/pics2/afra42.jpg"></center>'
						'Демаркус положил вас на кровать и раздвинул ноги, достав свой огромный черный член он вошел в вашу киску.'
						'Пока Демаркус долбил вас своим членом вы успели несколько раз кончить на его хую, потом он достал свой член и кончил вам на натруженное влагалище.'

						act 'Уйти':gt'dorm','korr'
					end
				end
			end
		end
	end

	if afra > 10 and hour >= 8 and hour < 22:
		act 'Комната африканских студентов':
			cls
			minut += 5
			gs'stat'

			afrand = RAND(1,2)
			if afrand = 1:
				'Вы постучались в комнату африканцев, но там никого нет'

				act 'Уйти':minut = minut+5 & gt'dorm','korr'
			elseif afrand = 2:
				minut += 120
				if afragang = 0:afragang = 1 & guy = guy + 6
				hour = hour+2
				gs'stat'

				'Вы постучались в комнату африканцев, вам открыл чернокожий исполин, он схватил вас за руку и затащил в комнату в которой вы увидели еще пять африканцев. Африканцы окружили вас и стали хватать вас за груди и зад. Самыми понятными словами были Cumdump, whore, white trash, bimbo slut.'

				afrand = RAND(1,afra)
				if afrand = 1:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					afra = afra + 1
					vagina += 1
					orgasm += 1

					'<center><img src="images/pics2/afra5.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 2:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					afra = afra + 1
					vagina += 1
					orgasm += 1

					'<center><img src="images/pics2/afra6.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 3:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					afra = afra + 1
					vagina += 1
					orgasm += 1

					'<center><img src="images/pics2/afra7.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 4:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra8.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 5:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra9.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 6:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra12.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 7:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra17.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 8:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra19.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 9:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra21.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 10:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra22.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 11:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra25.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand = 12:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra26.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				elseif afrand >= 13:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					gang = gang+1
					anal = anal + 1
					cumlip = cumlip + 2
					cumface = cumface + 2
					cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					vagina += 1
					afra = afra + 1
					orgasm += 1

					'<center><img src="images/pics2/afra27.jpg"></center>'
					'Африканцы раздели вас и начали играть с вашим телом как с игрушкой, придавая вам всякие позы и трахать вшестером во все дыры.'
					'Пока вас трахали во все дыры вы кончили несколько раз и африканцы обструхали вам почти все тело.'

					act 'Уйти':gt'dorm','korr'
				end
			end
		end
	end

	if afra > 20 and afragang = 1 and hour >= 8 and hour < 22:
		act 'Комната Кендры':
			cls
			minut += 15
			gs'stat'

			if kendra = 5:
				'Из комнаты вышла Кендра и пригласила к себе, она не долго думая разделась и подставила вам свою киску для обслуживания.'

				act 'Раздеться':
					cla
					sex = sex + 1
					lesb = lesb + 1
					horny = 0
					orgasm += 1
					vagina += 1
					gs'stat'

					'Кендра одевает страпон и жестко трахает вас'

					picrand = RAND(1,5)
					if picrand = 1:'<center><img src="images/pics2/kendraStrap.jpg"></center>'
					if picrand = 2:'<center><img src="images/pics2/kendraStrap2.jpg"></center>'
					if picrand = 3:'<center><img src="images/pics2/kendraStrap3.jpg"></center>'
					if picrand = 4:'<center><img src="images/pics2/kendraStrap4.jpg"></center>'
					if picrand = 5:'<center><img src="images/pics2/kendraStrap5.jpg"></center>'

					act 'Уйти':gt'dorm','korr'
				end
			elseif kendra = 4:
				'Из комнаты вышла симпатичная африканка Кендра, она предложила вам сделать еще одну татуировку, после которой она разрешит вам вылизать у нее.'

				act 'Уйти':gt'dorm','korr'
				act 'Сделать татуировку':
					cla
					minut += 60
					kendra = 5
					tat = 5
					vnesh = vnesh + 20
					gs'stat'

					if tatlip = 0:
						tatrand = RAND(1,2)
						if tatrand = 1:
							tatlip = 1

							'<center><img src="images/picBody/tatlip1.jpg"></center>'
						elseif tatrand = 2:
							tatlip = 3

							'<center><img src="images/picBody/tatlip3.jpg"></center>'
						end

						'Кендра набивает вам на губе клеймо хуесоски'
					elseif tatlip = 1 or tatlip = 3:
						'"Агаа. Так у тебя уже есть такое? Молодец, хорошая сучка. А теперь за работу!"'
					elseif tatlip > 1 and tatlip ! 3:
						'Кендра видит, что у вас уже есть татуировка на губе. "Ничего, эо мы быстренько исправим" - говорит она и набивает вам в на губе клеймо хуесоски. Так мастерски, что старой тату и не заметно.'
					end

					act 'Вылизать у Кендры':
						cla
						sex = sex + 1
						lesb = lesb + 1
						horny = 0
						orgasm += 1
						vagina += 1

						'<center><img src="images/pics2/kendraStrap.jpg"></center>'
						'Кендра раздевается и ставит вас раком, она одевает страпон и вставляет вам его в киску.'

						act 'Уйти':gt'dorm','korr'
					end
				end
			elseif kendra = 3:
				'Из комнаты вышла симпатичная африканка Кендра, она предложила вам сделать еще одну татуировку, после которой она разрешит вам вылизать у нее.'

				act 'Уйти':gt'dorm','korr'
				act 'Сделать татуировку':
					cla
					minut += 60
					kendra = 4
					tat = 4
					vnesh = vnesh + 20
					gs'stat'

					if tatvag = 3:
						'<center><img src="images/picBody/tatvag3.jpg"></center>'
						'Кендра замечает, что у вас уже есть такое клеймо, хищно улыбается и отвешивает вам смачный шлепок по влагалищу'
					elseif tatvag = 0:
						'<center><img src="images/picBody/tatvag3.jpg"></center>'
						'Кендра набивает вам в паху клеймо шлюхи для негров'
					end

					if tatvag > 0 and tatvag ! 3:
						tatvag = 3

						'<center><img src="images/picBody/tatvag3.jpg"></center>'
						'Кендра видит, что у вас уже есть татуировка в паху. "Ничего, это мы быстро исправим" - говорит она и набивает вам в паху клеймо шлюхи для негров поверх старой татуировки. Так мастерски, что старой тату и не заметно.'
					end

					act 'Вылизать у Кендры':
						cla
						*clr
						lesb = lesb + 1
						horny += 20

						'<center><img src="images/pics2/kendra3.jpg"></center>'
						'Кендра раздевается и подставляет вам свою киску для вылизывания, вы умело работаете язычком в ее сочной киске и Кендра бурно кончает'

						act 'Уйти':gt'dorm','korr'
					end
				end
			elseif kendra = 2:
				'Из комнаты вышла симпатичная африканка Кендра, она предложила вам сделать еще одну татуировку, после которой она разрешит вам вылизать у нее.'

				act 'Уйти':gt'dorm','korr'
				act 'Сделать татуировку':
					cla
					minut += 60
					kendra = 3
					tat = 3
					vnesh = vnesh + 20
					gs'stat'

					if tatplech = 4:
						'<center><img src="images/picBody/tatplech4.jpg"></center>'
						'Кендра видит у вас на плече татуировку шлюхи для негров, ухмыляется и идёт к кровати'
					elseif tatplech = 0:
						tatplech = 4

						'<center><img src="images/picBody/tatplech4.jpg"></center>'
						'Кендра набивает вам на плече клеймо шлюхи для негров'
					elseif tatplech > 0 and tatplech ! 4:
						tatplech = 4

						'<center><img src="images/picBody/tatplech4.jpg"></center>'
						'Кендра видит, что у вас уже есть татуировка на плече. "Ничего, это мы быстро исправим" - говорит она и набивает вам на плече клеймо шлюхи для негров поверх старой татуировки. Так мастерски, что старой тату и не заметно.'
					end

					act 'Вылизать у Кендры':
						cla
						*clr
						lesb = lesb + 1
						horny += 20

						'<center><img src="images/pics2/kendra2.jpg"></center>'
						'Кендра раздевается и подставляет вам свою киску для вылизывания, вы умело работаете язычком в ее сочной киске и Кендра бурно кончает'

						act 'Уйти':gt'dorm','korr'
					end
				end
			elseif kendra = 1:
				'Из комнаты вышла симпатичная африканка Кендра, она предложила вам сделать еще одну татуировку, после которой она разрешит вам вылизать у нее.'

				act 'Уйти':gt'dorm','korr'
				act 'Сделать татуировку':
					cla
					*clr
					minut += 60
					kendra = 2
					tat = 2
					vnesh = vnesh + 20
					gs'stat'

					if tatleg = 1 or tatleg = 2:
						'<center><img src="images/picBody/tatleg2.jpg"></center>'
						'Ой, какая самостоятельная девочка, уже сама сделала. Теперь можешь сделать то, за чем пришла.'
					elseif tatleg = 0:
						tatleg = 2

						'<center><img src="images/picBody/tatleg2.jpg"></center>'
						'Кендра набивает вам на ноге клеймо шлюхи для негров'
					elseif tatleg > 2:
						tatleg = 2

						'<center><img src="images/picBody/tatleg2.jpg"></center>'
						'Кендра видит, что у вас уже есть татуировка в паху. "Ничего, это мы быстро исправим" - говорит она и набивает вам на ноге клеймо шлюхи для негров поверх старой татуировки. Так мастерски, что старой тату и не заметно.'
					end

					act 'Вылизать у Кендры':
						cla
						*clr
						repa = 9
						lesb = lesb + 1
						if kendrasex = 0:kendrasex = 1 & girl = girl + 1
						horny += 20

						'<center><img src="images/pics2/kendra.jpg"></center>'
						'Кендра раздевается и подставляет вам свою киску для вылизывания, вы умело работаете язычком в ее сочной киске и Кендра бурно кончает'

						act 'Уйти':gt'dorm','korr'
					end
				end
			elseif kendra = 0:
				'Из комнаты вышла симпатичная африканка, она представилась как Кендара и сказала что знает о том что вы подстилка для африканцев. Она предложила вам сделать соответствующую татуировку, после которой она разрешит вам вылизать у нее.'

				act 'Уйти':gt'dorm','korr'
				act 'Сделать татуировку':
					cla
					minut += 60
					kendra = 1
					tat = 1
					vnesh = vnesh + 20
					gs'stat'

					if tatupb = 4:
						'<center><img src="images/picBody/tatupb4.jpg"></center>'
						'О, так у тебя уже есть клеймо шлюхи? И что мы тут время тратим! Давай, делай своё мокрое дело, шлюха.'
					elseif tatupb = 0:
						tatupb = 4

						'<center><img src="images/picBody/tatupb4.jpg"></center>'
						'Кендра набивает вам на пояснице клеймо шлюхи'
					elseif tatupb > 0 and tatupb ! 4:
						tatupb = 4

						'<center><img src="images/picBody/tatupb4.jpg"></center>'
						'Кендра видит, что у вас уже есть татуировка на пояснице. "Ничего, это мы быстро исправим" - говорит она и набивает вам на клеймо шлюхи поверх старой татуировки. Так мастерски, что старой тату и не заметно.'
					end

					act 'Вылизать у Кендры':
						cla
						*clr
						if kendrasex = 0:kendrasex = 1 & girl += 1
						lesb = lesb + 1
						horny += 20

						'<center><img src="images/pics2/afra30.jpg"></center>'
						'Кендра раздевается и подставляет вам свою киску для вылизывания, вы умело работаете язычком в ее сочной киске и Кендра бурно кончает'

						act 'Уйти':gt'dorm','korr'
					end
				end
			end
		end
	end

	if gosh > 0 and hour >= 8 and hour < 22:
		act 'Комната Гоши':
			cla
			minut += 15
			gs'stat'

			'Вам открывает дверь Гоша и приглашает войти'

			act 'Идти в комнату Гоши':
				cla
				minut += 60
				if goshsex = 0:goshsex = 1 & guy = guy + 1
				gs'stat'

				'Гоша начинает клеиться к вам, ласкать вашу грудь и медленно раздевать вас'

				srand = RAND(1,3)
				if srand = 1:
					!throat = throat + 1
					sex = sex + 1
					!oral = oral + 1
					!anal = anal + 1
					!cumlip = cumlip + 2
					!cumface = cumface + 2
					!cumbutt = cumbutt + 1
					cumass = cumass + 1
					horny = 0
					orgasm += 1
					vagina += 1

					picrand = RAND(1,5)
					if picrand = 1:'<center><img src="images/pics2/gosh2.jpg"></center>'
					if picrand = 2:'<center><img src="images/pics2/gosh11.jpg"></center>'
					if picrand = 3:'<center><img src="images/pics2/gosh13.jpg"></center>'
					if picrand = 4:'<center><img src="images/pics2/gosh14.jpg"></center>'
					if picrand = 5:'<center><img src="images/pics2/gosh15.jpg"></center>'

					'Гоша входит своим членом в вашу киску, пока он вас трахал вы кончили и тогда он кончил на вас.'

					act 'Уйти':gt'dorm','korr'
				elseif srand = 2:
					throat = throat + 1
					sex = sex + 1
					oral = oral + 1
					cumlip = cumlip+1
					cumface = cumface + 2

					picrand = RAND(1,5)
					if picrand = 1:'<center><img src="images/pics2/gosh.jpg"></center>'
					if picrand = 2:'<center><img src="images/pics2/gosh3.jpg"></center>'
					if picrand = 3:'<center><img src="images/pics2/gosh4.jpg"></center>'
					if picrand = 4:'<center><img src="images/pics2/gosh5.jpg"></center>'
					if picrand = 5:'<center><img src="images/pics2/gosh7.jpg"></center>'

					'Гоша ставит вас на колени и трахает вас в рот, Потом он достает член и кончает вам на лицо.'

					gs'oral','0'

					act 'Уйти':gt'dorm','korr'
				elseif srand = 3:
					sex = sex + 1
					anal = anal + 1
					cumbutt = cumbutt + 1
					orgasm += 1
					anus += 1

					picrand = RAND(1,5)
					if picrand = 1:'<center><img src="images/pics2/gosh6.jpg"></center>'
					if picrand = 2:'<center><img src="images/pics2/gosh8.jpg"></center>'
					if picrand = 3:'<center><img src="images/pics2/gosh9.jpg"></center>'
					if picrand = 4:'<center><img src="images/pics2/gosh10.jpg"></center>'
					if picrand = 5:'<center><img src="images/pics2/gosh12.jpg"></center>'

					'Гоша смазывает вам анус и разминает его пальцами, потом он вставляет вам член в попу.'

					act 'Уйти':gt'dorm','korr'
				end
			end
			act 'Пойти погулять с Гошей':
				cla
				gosh = gosh + 1
				minut += 120
				gs'stat'

				'Вы гуляете с Гошей, он очень интересный собеседник и галантный кавалер.'

				act 'Уйти':gt'dorm','korr'
			end
		end
	end
end
--- dorm ---------------------------------

