# sexdvoe
if $ARGS[0] = 'start':
	minut += 30
	sweat += 1
	guy += 2
	picrand = RAND(0,1)
	xgt'sexdvoe','var'
end

if $ARGS[0] = 'var':
	sexrand = RAND(0,3)
	if picrand = 12:sexrand = RAND(0,2)
	if picrand = 40:sexrand = RAND(1,2)
	if sexrand = 0:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvsxbj = 0:
			bj += 1
			dvsxbj = 1
		end

		'<center><img src="images/img/sexdvoe/minet<<picrand>>.jpg"></center>'
		'Вы сосете оба члена, пытаясь доставить удовольствие обоим, но сразу два вам в рот не помещаются.'

		if sexvar < 3:act 'Еще':xgt'sexdvoe','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvoe','end'
	elseif sexrand = 1:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvsxbj = 0:
			bj += 1
			dvsxbj = 1
		end

		if dvsxsex = 0:
			sex += 1
			dvsxsex = 1
		end

		'<center><img src="images/img/sexdvoe/vag<<picrand>>.jpg"></center>'
		'Пока один парень трахает вашу киску, вы старательно отсасываете у второго.'

		if sexvar < 3:act 'Еще':xgt'sexdvoe','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvoe','end'
	elseif sexrand = 2:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvsxbj = 0:
			bj += 1
			dvsxbj = 1
		end
		if dvsxanal = 0:
			anal += 1
			dvsxanal = 1
		end

		'<center><img src="images/img/sexdvoe/anal<<picrand>>.jpg"></center>'
		'Пока один парень трахает вас в зад, вы превозмогая собственные стоны пытаетесь обслужить второго ртом.'

		if sexvar < 3:act 'Еще':xgt'sexdvoe','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvoe','end'
	elseif sexrand = 3:
		cla
		*clr
		horny += 10
		minut += 10
		sexvar += 1

		if dvsxsex = 0:
			sex += 1
			dvsxsex = 1
		end

		if dvsxanal = 0:
			anal += 1
			dvsxanal = 1
		end

		'<center><img src="images/img/sexdvoe/dp<<picrand>>.jpg"></center>'
		'Они вдвоем входят в вас, вам это доставляет огромное удовольствие, когда оба члена двигаются внутри по переменно как поршни.'

		if sexvar < 3:act 'Еще':xgt'sexdvoe','var'
		if sexvar >= 3:act 'Закончить':gt'sexdvoe','end'
	end
end

if $ARGS[0] = 'end':
	cla
	*clr
	minut += 10
	dvsxbj = 0
	dvsxsex = 0
	dvsxanal = 0
	sexvar = 0
	cumbelly = 1
	cumlip = 1
	cumface = 1

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/sexdvoe/cum<<picrand>>.jpg"></center>'
	'Когда они насытились то залили вас всю своей спермой.'

	if picrand = 29:'Когда все заканчивается шеф говорит, что вы хорошо справились и на сегодня вы свободны и можете идти.'
	if picrand = 39:'Затем <<$boyA>> выкидывает вас из квартиры.'

	act 'Уйти':
		if picrand >= 24 and picrand <= 26:gt'office','work'
		if picrand >= 30 and picrand <= 34:gt'office','work'
		if picrand >= 35 and picrand <= 37:gt'house'
		if picrand >= 40 and picrand <= 43:gt'korr'
		if picrand = 38:gt'bed','vorend'
		if picrand = 29 or picrand = 39:gt'nord'

		if kafesexrand = 1:
			kafesexrand = 0
			gt'kafe','workPred'
		end

		gt'<<$sexloc>>','start'
	end
end
--- sexdvoe ---------------------------------

