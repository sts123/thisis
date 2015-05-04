# parkM
if $ARGS[0] = 'start':
	minut = minut + 30

	'Вы не спеша прогуливаетесь по парку.'

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
		xgt'parkM','a'
	end
	act 'Улыбаться':
		cla
		xgt'parkM','a'
	end
	act 'Не смешно':
		cla
		DOM = DOM + 1
		bfa = bfa - 1
		xgt'parkM','a'
	end
end

if $ARGS[0] = 'a':
	if harakBoyA = 0:
		gs'stihi'

		'<<$boyA>> читает вам стихи <<$stihi>>'

		act 'Далее':gt'parkM','aa'
	elseif harakBoyA = 1:
		'<<$boyA>> взял вас под руку и вы мерно шагаете по пустынным дорожкам парка.'

		act 'Далее':gt'parkM','aa'
	elseif harakBoyA = 2:
		'<<$boyA>> остановился и взяв вас за талию прижал к себе. "Ты классная девчонка." сказал он и поцеловал вас в губы.'

		act 'Целовать':gt'parkM','kiss'
		act 'Отстраниться':
			cla
			DOM = DOM + 1
			bfa = bfa - 1

			'Вы убрали лицо от поцелуя, <<$boyA>> выглядит не довольным "Ладно, Светик, пошли дальше гулять как пионеры."'

			act 'Далее':gt'parkM','aa'
		end
	end
end

if $ARGS[0] = 'kiss':
	minut = minut + 15
	bfa = bfa + 1
	horny = horny + 5

	'<<$boyA>> целует вас и вы чувствуете, как его рука хватает вас за попу и начинает мять ее. Вас немного возбуждают его касания, <<$boyA>> берет вас за руку и тащит в кусты.'

	act 'Прекрати':
		cla
		DOM = DOM + 1
		bfa = bfa - 1

		'Вы вырвали руку из его руки, <<$boyA>> выглядит не довольным "Ладно, Светик, пошли дальше гулять как пионеры."'

		act 'Далее':gt'parkM','aa'
	end
	act 'Идти с парнем':gt'parkM','sexrand'
end

if $ARGS[0] = 'sexrand':
	cla
	clr
	*clr
	minut = minut + 15
	bfa = bfa + 1
	horny = horny + 15
	gs'stat'

	'<center><img src="images/picVA/park.jpg"></center>'
	'<<$boyA>> затащил вас в кусты и обнажив вашу грудь начал лизать ее. Это очень приятно и вы закрыв глаза погружаетесь в какую то негу. <<$boyA>> встает перед вами на колено и тянется к вашей киске.'

	act 'Прекрати':
		cla
		DOM = DOM + 1
		bfa = bfa - 1

		'Вы отпрыгнули в сторону и прикрыли грудь, <<$boyA>> выглядит не довольным "Ладно, Светик, пошли дальше гулять как пионеры."'

		act 'Далее':gt'parkM','aa'
	end
	act 'Позволить':gt'parkM','sexrand1'
end

if $ARGS[0] = 'sexrand1':
	cla
	clr
	*clr
	minut = minut + 15
	bfa = bfa + 1
	horny = horny + 20
	gs'stat'

	'<center><img src="images/picVA/park1.jpg"></center>'
	'<<$boyA>> обнажил вашу киску и стал ласкать ее рукой, то нежно, то наращивая темп, вы очень сильно возбуждаетесь, ваша киска намокла и ноет требуя наполнить себя. <<$boyA>> шепчет вам "Пососи у меня!"'

	act 'Мы не можем тут этим заниматься':
		cla
		DOM = DOM + 1
		bfa = bfa - 1

		'Вы отпрянули от парня и стали одеваться, <<$boyA>> выглядит не довольным "Ладно, Светик, пошли дальше гулять как пионеры."'

		act 'Далее':gt'parkM','aa'
	end
	act 'Встать на колени':gt'parkM','sexrand2'
end

if $ARGS[0] = 'sexrand2':
	cla
	clr
	*clr
	minut = minut + 15
	bfa = bfa + 1
	horny = horny + 5
	bj = bj + 1
	bja += 1
	gs'brosok'
	gs'stat'

	'<center><img src="images/picVA/park2.jpg"></center>'
	'Вы встали на колени перед парнем и <<$boyA>> уткнул вам в лицо свой торчащий <<dickA>> сантиметровый член. Вы обхватили его губами и начали сосать.'
	'Через пару минут <<$boyA>> сказал вам, "Детка, если ты так будешь продолжать, я кончу. Давай потрахаемся!"'

	act 'Продолжить сосать':gt'parkM','sexrand3'
	act 'Секс':gt'parkM','sexrand4'
end

if $ARGS[0] = 'sexrand3':
	cla
	clr
	*clr
	minut = minut + 15
	bfa = bfa + 1
	horny = horny + 5
	cumlip = cumlip + 1
	swallow = swallow + 1
	gs'stat'

	'<center><img src="images/picVA/park3.jpg"></center>'
	'Вы продолжили увлеченно сосать член и <<$boyA>> издав сдавленный стон спустил вам в рот целый поток ядреной и жгучей спермы.'
	'Вы давясь глотали ее, но она никак не хотела умещаться в вашем ротике и выливалась из него растекаясь по подбородку.'
	'<<$boyA>> достал член из вашего набитого кончей рта и заправил его в брюки, помог вам подняться потом попрощался и ушел обещая вам позвонить.'
	act 'Уйти':gt'park','start'
end

if $ARGS[0] = 'sexrand4':
	cla
	clr
	*clr
	minut = minut + 15
	sex = sex + 1
	sexa += 1
	pose = 1
	$nameV = $boyA
	dick = dickA
	silavag = silavagA
	gs'stat'

	'<center><img src="images/picVA/park4.jpg"></center>'
	'<<$boyA>> поставил вас на ноги и наклонил вас уперев руками в землю.'

	gs'orgazm','start'

	act 'Уйти':gt'park','start'
end

if $ARGS[0] = 'aa':
	minut = minut + 30

	'Погуляв часик <<$boyA>> предложил проводить вас.'

	act 'Домой':gt'sexm','start'
end
--- parkM ---------------------------------

