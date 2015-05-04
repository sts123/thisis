# sexdvanadva
if $ARGS[0] = 'start':
	cla
	*clr
	guy += 2
	girl += 1
	gang += 1
	minut += 30
	sweat += 1
	gs'stat'
	picrand = RAND(0,1)
	xgt'sexdvanadva','var'
end

if $ARGS[0] = 'var':
	sexdvarand = RAND(0,6)
	if pikrand = 11:sexdvarand = RAND(0,5)
	if pikrand = 14:sexdvarand = RAND(0,4)
	if sexdvarand = 0:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvdvsxbj = 0:
			bj += 1
			dvdvsxbj = 1
		end

		'<center><img src="images/img/sexdvanadva/minet<<picrand>>.jpg"></center>'
		'Вы вдвоем сосете их члены.'

		if sexvar < 3:act 'Еще':xgt'sexdvanadva','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvanadva','end'
	elseif sexdvarand = 1:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		'<center><img src="images/img/sexdvanadva/vag<<picrand>>.jpg"></center>'
		'Пока она наслаждается членом в своей киске, вы тоже не остаетесь без мужского внимания.'

		if sexvar < 3:act 'Еще':xgt'sexdvanadva','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvanadva','end'
	elseif sexdvarand = 2:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvdvsxsex = 0:
			sex += 1
			dvdvsxsex = 1
		end

		'<center><img src="images/img/sexdvanadva/uvag<<picrand>>.jpg"></center>'
		'Он входит в вас, его член двигается внутри вашей киски доставляя вам удовольствие, в это время её тоже не одиноко.'

		if sexvar < 3:act 'Еще':xgt'sexdvanadva','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvanadva','end'
	elseif sexdvarand = 3:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		'<center><img src="images/img/sexdvanadva/anal<<picrand>>.jpg"></center>'
		'Вам нравиться вид члена в её попке и пока она сладко постанывает пытаясь вобрать в себя его целиком вы тоже заняты интересным процессом.'

		if sexvar < 3:act 'Еще':xgt'sexdvanadva','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvanadva','end'
	elseif sexdvarand = 4:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvdvsxanal = 0:
			anal += 1
			dvdvsxanal = 1
		end

		'<center><img src="images/img/sexdvanadva/uanal<<picrand>>.jpg"></center>'
		'Когда он входит вам в анус вам немного больно, но вскоре боль проходит и её место занимают приятные ощущения, пока его фалос двигается в вашей попке она тоже не сидит сложа руки.'

		if sexvar < 3:act 'Еще':xgt'sexdvanadva','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvanadva','end'
	elseif sexdvarand = 5:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvdvsxsex = 0:
			sex += 1
			dvdvsxsex = 1
		end

		if dvdvsxanal = 0:
			anal += 1
			dvdvsxanal = 1
		end

		'<center><img src="images/img/sexdvanadva/udp<<picrand>>.jpg"></center>'
		'Оба мужчины входят в вас и вы стоните от наслаждения чувствуя как оба фалоса двигаются внутри.'

		if sexvar < 3:act 'Еще':xgt'sexdvanadva','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvanadva','end'
	elseif sexdvarand = 6:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		'<center><img src="images/img/sexdvanadva/dp<<picrand>>.jpg"></center>'
		'Когда они входят в неё вдвоем вам становиться немного завидно видя как она наслаждается.'

		if sexvar < 3:act 'Еще':xgt'sexdvanadva','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvanadva','end'
	end
end

if $ARGS[0] = 'end':
	cla
	*clr
	minut += 10
	dvdvsxbj = 0
	dvdvsxsex = 0
	dvdvsxanal = 0
	cumlip = 1
	sexvar = 0

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/sexdvanadva/cum<<picrand>>.jpg"></center>'
	'Когда они кончают выплескивая вам сперму, вы слизываете её друг с друга, обмениваетесь целуясь и наконец глотаете.'

	act 'Уйти':
		if kafesexrand = 1:
			kafesexrand = 0
			gt'kafe','workPred'
		end

		if kazsexdva = 1:
			kazsexdva = 0
			gt'kazinosvid','3'
		end

		gt'<<$sexloc>>','start'
	end
end
--- sexdvanadva ---------------------------------

