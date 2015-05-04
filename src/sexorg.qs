# sexorg
if $ARGS[0] = 'start':
	cla
	*clr
	minut += 30
	sweat += 1
	picrand = RAND(0,1)
	gs'stat'
	gt'sexorg','var'
end

if $ARGS[0] = 'var':
	sexorgrand = RAND(0,6)
	if sexorgrand = 0:
		cla
		*clr
		horny += 10
		sexvar += 1

		if orsxbj = 0:
			bj += 1
			orsxbj = 1
		end

		'<center><img src="images/img/sexorg/minet11.jpg"></center>'
		'Вы вдвоем сосете его член, то по очереди, то вместе облизываете его фалос, соприкасаясь языками.'

		act 'Еще':gt'sexorg','var'

		if sexvar >= 3:act 'Закончить':gt'sexorg','end'
	elseif sexorgrand = 1:
		cla
		*clr
		horny += 10
		sexvar += 1

		'<center><img src="images/img/sexorg/vag11.jpg"></center>'
		'Пока она наслаждается членом в своей киске, вы тоже находите себе интересное занятие.'

		act 'Еще':gt'sexorg','var'
		if sexvar >= 3:act 'Закончить':gt'sexorg','end'
	elseif sexorgrand = 2:
		cla
		*clr
		horny += 10
		sexvar += 1

		if orsxsex = 0:
			sex += 1
			orsxsex = 1
		end

		'<center><img src="images/img/sexorg/uvag11.jpg"></center>'
		'Он входит в вас, его член двигается внутри вашей киски доставляя вам удовольствие, в это время она тоже не растерялась нашла чем заняться.'

		act 'Еще':gt'sexorg','var'
		if sexvar >= 3:act 'Закончить':gt'sexorg','end'
	elseif sexorgrand = 3:
		cla
		*clr
		horny += 10
		sexvar += 1

		'<center><img src="images/img/sexorg/anal11.jpg"></center>'
		'Вам нравиться вид его члена в её попке и пока она сладко постанывает пытаясь вобрать в себя его целиком вы тоже не растерялись.'

		act 'Еще':gt'sexorg','var'
		if sexvar >= 3:act 'Закончить':gt'sexorg','end'
	elseif sexorgrand = 4:
		cla
		*clr
		horny += 10

		if orsxanal = 0:
			anal += 1
			pdsxanal = 1
		end

		'<center><img src="images/img/sexorg/uanal11.jpg"></center>'
		'Когда он входит вам в анус вам немного больно, но вскоре боль проходит и её место занимают приятные ощущения, пока его фалос двигается в вашей попке она тоже не сидит сложа руки.'

		act 'Еще':gt'sexorg','var'
		if sexvar >= 3:act 'Закончить':gt'sexorg','end'
	elseif sexorgrand = 5:
		cla
		*clr
		horny += 10

		if orsxbj = 0:
			bj += 1
			orsxbj = 1
		end

		if orsxsex = 0:
			sex += 1
			orsxsex = 1
		end

		if orsxanal = 0:
			anal += 1
			orsxanal = 1
		end

		'<center><img src="images/img/sexorg/udp11.jpg"></center>'
		'Двое мужчин входят в вас и вы стоните от наслаждения чувствуя как оба фалоса двигаются внутри.'

		act 'Еще':gt'sexorg','var'
		if sexvar >= 3:act 'Закончить':gt'sexorg','end'
	elseif sexorgrand = 6:
		cla
		*clr
		horny += 10
		sexvar += 1

		'<center><img src="images/img/sexorg/dp11.jpg"></center>'
		'Когда они входят в неё вдвоем вам становиться немного завидно видя как она наслаждается.'

		act 'Еще':gt'sexorg','var'
		if sexvar >= 3:act 'Закончить':gt'sexorg','end'
	end
end

if $ARGS[0] = 'end':
	cla
	*clr
	orsxbj = 0
	orsxsex = 0
	orsxanal = 0
	sexvar = 0
	cumlip = 1

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/sexorg/cum11.jpg"></center>'
	'Они кончил, и вы слизываете друг с друга сперму.'

	act 'Уйти':gt'<<$sexloc>>','start'
end
--- sexorg ---------------------------------

