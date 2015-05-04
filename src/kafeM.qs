# kafeM
if $ARGS[0] = 'start':
	minut = minut + 30

	'Вы приехали в кафе и сели за столик. <<$boyA>> заказал у официанта еду и вино. Вы стали ждать когда вам принесут еду.'

	if dayA > 15 and harakBoyA = 2:gs'boylove','tits'
	if dayA > 20 and harakBoyA = 1:gs'boylove','tits'
	if dayA > 25 and harakBoyA = 0:gs'boylove','tits'
	if dayA > 20 and harakBoyA = 2:gs'boylove','figure'
	if dayA > 25 and harakBoyA = 1:gs'boylove','figure'
	if dayA > 30 and harakBoyA = 0:gs'boylove','figure'

	gs'anekdot'

	'<<$boyA>> рассказывает вам анекдот <<$anek>>'

	act 'Смеяться':
		cla
		SUB = SUB + 1
		bfa = bfa + 1
		xgt'kafeM','a'
	end
	act 'Улыбаться':
		cla
		xgt'kafeM','a'
	end
	act 'Не смешно':
		cla
		DOM = DOM + 1
		bfa = bfa - 1
		xgt'kafeM','a'
	end
end

if $ARGS[0] = 'a':
	minut = minut + 30
	fat = fat + 1

	'Наконец вам принесли еду. <<$boyA>> налил вам вина и предложил выпить за вас.'

	act 'Есть':
		cla
		xgt'kafeM','b'
	end
end

if $ARGS[0] = 'b':
	minut = minut + 30
	fat = fat + 1

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

	alko += 2
	gs'stat'

	'В кафе заиграла музыка и <<$boyA>> предложил потанцевать.'

	act 'Танцевать':
		cla
		bfa = bfa + 1
		xgt'kafeM','dance'
	end
	act 'Отказаться':
		cla
		bfa = bfa - 1
		xgt'kafeM','end'
	end
end

if $ARGS[0] = 'dance':
	minut = minut + 5

	'<center><img src="images/pic/dance.jpg"></center>'
	'Вы с парнем вышли на танцпол и <<$boyA>> обнял вас, после этого вы начали вместе танцевать.'

	if harakBoyA = 0:
		'<<$boyA>> очень корректен в танце, он обнимает вас и откровенно стесняется.'

		act 'Закончить танец':
			cla
			bfa = bfa + 1
			xgt'kafeM','end'
		end
	elseif harakBoyA = 1:
		'<<$boyA>> очень уверенно ведет вас в танце.'

		act 'Закончить танец':
			cla
			bfa = bfa + 1
			xgt'kafeM','end'
		end
	elseif harakBoyA = 2:
		'<<$boyA>> хватает вас за зад во время танцы и прижимается к вам, вы чувствуете через ткань, как его твердый член упирается вам в живот.'
		'Он шепчет вам, пойдем в туалет.'

		act 'Закончить танец':
			cla
			bfa = bfa + 1
			xgt'kafeM','end'
		end
		act 'Идти в туалет':xgt'kafeM','tualet'
	end
end

if $ARGS[0] = 'tualet':
	minut = minut + 30
	horny = horny + 10

	'<<$boyA>> затащил вас в туалет и начал уже открыто мять вашу грудь и лезть вам между ног.'

	act 'Сделать минет':gt'kafeM','bj'
	act 'Нагнуться над унитазом':gt'kafeM','sex'
end

if $ARGS[0] = 'sex':
	*clr
	sex = sex + 1
	sexa += 1
	vagina = vagina + 1
	horny = horny + SUB
	bfa = bfa + 2
	gs'brosok'

	'<center><img src="images/picVA/kafe.jpg"></center>'
	'Вы достали его член из штанов и подрочили его для начала, <<$boyA>> достал презерватив и одел на член, потом он поставил вас раком над унитазом и всадил в вашу трепещущую киску свой <<$dick>> сантиметровый член.'

	if horny >= 90:
		horny = 0
		manna = manna + 15
		willpower = willpower + 15
		orgasm = orgasm + 1

		'Вы почувствовали как что то нарастает внутри вас и весь ваш низ превратился в полыхающий приятным огнем костер, буквально через минуту плавных движений на члене вам пришлось затыкать себе рот рукой, что бы не завопить от оргазма.'
	end

	'Вскоре <<$boyA>> не выдержал и кончил в презерватив.'

	act 'Далее':gt'kafeM','end'
end

if $ARGS[0] = 'bj':
	*clr
	bj = bj + 1
	bja += 1
	swallow = swallow + 1
	cumlip = cumlip + 1
	horny = horny + SUB
	bfa = bfa + 2
	gs'brosok'

	'<center><img src="images/picVA/kafe1.jpg"></center>'
	'Вы достали его член из штанов и подрочили его для начала, потом сели на корточки перед ним и обхватив его губами начали медленно сосать его <<$dick>> сантиметровый член в туалете.'
	'Вскоре <<$boyA>> не выдержал и кончил вам в рот, набив его своей терпкой спермой, вы глотали сперму, но она все равно выливалась из вашего рта и текла по губам и подбородку.'
	'Вы преданно смотрели в глаза парню с перемазанным в его семени лицом.'

	act 'Далее':gt'kafeM','end'
end

if $ARGS[0] = 'end':
	minut = minut + 30

	'<<$boyA>> предложил проводить вас.'

	act 'Домой':gt'sexm','start'
end
--- kafeM ---------------------------------

