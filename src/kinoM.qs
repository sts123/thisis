# kinoM
if $ARGS[0] = 'start':
	minut = minut + 30

	'Вы приехали в кинотеатр. <<$boyA>> купил два билета на задний ряд.'

	if dayA > 15 and harakBoyA = 2:gs'boylove','tits'
	if dayA > 20 and harakBoyA = 1:gs'boylove','tits'
	if dayA > 25 and harakBoyA = 0:gs'boylove','tits'
	if dayA > 20 and harakBoyA = 2:gs'boylove','figure'
	if dayA > 25 and harakBoyA = 1:gs'boylove','figure'
	if dayA > 30 and harakBoyA = 0:gs'boylove','figure'

	gs'anekdot'

	'Пока вы ждете сеанса <<$boyA>> рассказывает вам анекдот <<$anek>>'

	act 'Смеяться':
		cla
		SUB = SUB + 1
		bfa = bfa + 1
		xgt'kinoM','a'
	end
	act 'Улыбаться':
		cla
		xgt'kinoM','a'
	end
	act 'Не смешно':
		cla
		DOM = DOM + 1
		bfa = bfa - 3
		xgt'kinoM','a'
	end
end

if $ARGS[0] = 'a':
	*clr
	minut = minut + 90
	fat = fat + 2

	'<center><img src="images/pic/kino.jpg"></center>'
	'Наконец начался сеанс. Вы и <<$boyA>> зашли в зал, нашли свои места и сели на удобные кресла. <<$boyA>> поставил большую банку попкорна на колени и вы стали его есть по очереди.'

	if harakBoyA < 2:
		act 'Обнять его руку':
			cla
			bfa = bfa + 1

			'Вы обняли его руку и он вас поцеловал, после этого так и просидели весь сеанс держась за руки.'

			xgt'kinoM','b'
		end
	elseif harakBoyA = 2:
		act 'Обнять его руку':
			cla
			bfa = bfa + 1

			'Вы обняли его руку и он вас поцеловал, после этого его рука принялась общупывать вашу коленку, <<$boyA>> прошептал вам, детка, я хочу тебя.'

			act 'Убрать его руку и смотреть кино':xgt'kinoM','b'
			act 'Подрочить':gt'kinoM','hj'
			act 'Отсосать':gt'kinoM','bj'
			act 'Сесть сверху на его член':gt'kinoM','sex'
		end
	end

	act 'Смотреть кино':
		cla
		bfa = bfa - 1
		intel = intel + 1

		'Кино оказалось интересное и вы просидели весь сеанс не отрываясь от фильма.'

		xgt'kinoM','b'
	end
end

if $ARGS[0] = 'sex':
	*clr
	sex = sex + 1
	sexa += 1
	vagina = vagina + 1
	horny = horny + SUB
	bfa = bfa + 2
	gs'brosok'

	'<center><img src="images/picVA/sinema.jpg"></center>'
	'Вы достали его член из штанов и подрочили его для начала, <<$boyA>> достал презерватив и одел на член, посли этого вы сели на <<$dick>> сантиметровый член своей влажной киской и стали медленно двигаться в темноте зрительского зала.'

	if horny >= 90:
		horny = 0
		manna = manna + 15
		willpower = willpower + 15
		orgasm = orgasm + 1

		'Вы почувствовали как что то нарастает внутри вас и весь ваш низ превратился в полыхающий приятным огнем костер, буквально через минуту плавных движений на члене вам пришлось затыкать себе рот рукой, что бы не завопить на весь зал от оргазма.'
	end

	'Вскоре <<$boyA>> не выдержал и кончил в презерватив.'

	act 'Далее':gt'kinoM','b'
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

	'<center><img src="images/picVA/sinema1.jpg"></center>'
	'Вы достали его член из штанов и подрочили его для начала, потом наклонились над ним и обхватив его губами начали медленно сосать его <<$dick>> сантиметровый член в темном зрительском зале.'
	'Вскоре <<$boyA>> не выдержал и кончил вам в рот, вы постарались проглотить всю сперму, так как выплевывать все равно некуда.'

	act 'Далее':gt'kinoM','b'
end

if $ARGS[0] = 'hj':
	*clr
	hj = hj + 1
	hja += 1
	horny = horny + SUB
	bfa = bfa + 1
	gs'brosok'

	'<center><img src="images/picVA/sinema2.jpg"></center>'
	'Вы достали его член из штанов и начали ласкать его руками в темном зрительском зале.'
	'Вскоре от ваших умелых движений парень кончил вам в ладошки, вы вытерли их о носовой платок.'

	act 'Далее':gt'kinoM','b'
end

if $ARGS[0] = 'b':
	minut = minut + 30
	fat = fat + 1

	'Сеанс закончился, в кинотеатре зажегся свет и люди пошли на выход, <<$boyA>> предложил проводить вас.'

	act 'Домой':gt'sexm','start'
end
--- kinoM ---------------------------------

