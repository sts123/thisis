# podrsex
if $ARGS[0] = 'start':
	cla
	*clr
	gs'stat'
	minut += 30
	sweat += 1
	girl += 1
	guy += 1
	lesbian += 1
	picrand = RAND(0,1)
	gt'podrsex','var'
end

if $ARGS[0] = 'var':
	podrsexrand = RAND(0,4)
	if podrsexrand = 0:
		cla
		*clr
		horny += 10
		sexvar += 1

		if pdsxbj = 0:
			bj += 1
			pdsxbj = 1
		end

		'<center><img src="images/img/podrsex/minet<<picrand>>.jpg"></center>'
		'Вы вдвоем сосете его член, то по очереди, то вместе облизываете его фалос, соприкасаясь языками.'

		act 'Еще':gt'podrsex','var'

		if sexvar >= 3:act 'Закончить':gt'podrsex','end'
	elseif podrsexrand = 1:
		cla
		*clr
		horny += 10
		sexvar += 1

		'<center><img src="images/img/podrsex/vag<<picrand>>.jpg"></center>'
		'Пока она наслаждается членом в своей киске, вы тоже находите себе интересное занятие.'

		act 'Еще':gt'podrsex','var'

		if sexvar >= 3:act 'Закончить':gt'podrsex','end'
	elseif podrsexrand = 2:
		cla
		*clr
		horny += 10
		sexvar += 1

		if pdsxsex = 0:
			sex += 1
			pdsxsex = 1
		end

		'<center><img src="images/img/podrsex/uvag<<picrand>>.jpg"></center>'
		'Он входит в вас, его член двигается внутри вашей киски доставляя вам удовольствие, в это время она тоже не растерялась нашла чем заняться.'

		act 'Еще':gt'podrsex','var'

		if sexvar >= 3:act 'Закончить':gt'podrsex','end'
	elseif podrsexrand = 3:
		cla
		*clr
		horny += 10
		sexvar += 1

		'<center><img src="images/img/podrsex/anal<<picrand>>.jpg"></center>'
		'Вам нравиться вид его члена в её попке и пока она сладко постанывает пытаясь вобрать в себя его целиком вы тоже не растерялись.'

		act 'Еще':gt'podrsex','var'

		if sexvar >= 3:act 'Закончить':gt'podrsex','end'
	elseif podrsexrand = 4:
		cla
		*clr
		horny += 10
		sexvar += 1

		if pdsxanal = 0:
			anal += 1
			pdsxanal = 1
		end

		'<center><img src="images/img/podrsex/uanal<<picrand>>.jpg"></center>'
		'Когда он входит вам в анус вам немного больно, но вскоре боль проходит и её место занимают приятные ощущения, пока его фалос двигается в вашей попке она тоже не сидит сложа руки.'

		act 'Еще':gt'podrsex','var'

		if sexvar >= 3:act 'Закончить':gt'podrsex','end'
	end
end

if $ARGS[0] = 'end':
	cla
	*clr
	pdsxbj = 0
	pdsxsex = 0
	pdsxanal = 0
	sexvar = 0
	cumlip = 1

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/podrsex/cum<<picrand>>.jpg"></center>'
	'Когда он кончает выплескивая вам сперму, вы слизываете её друг с друга, обмениваетесь целуясь и наконец глотаете.'

	act 'Уйти':
		if picrand = 26 or picrand = 27 or picrand = 29:gt'office','work'
		if picrand >= 30 and picrand <= 32:gt'down'

		if kazsexdva = 1:
			kazsexdva = 0
			gt'kazinosvid','3'
		end

		gt'<<$sexloc>>','start'
	end
end
--- podrsex ---------------------------------

