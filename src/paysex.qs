# paysex
if $ARGS[0] = 'start':
	minut += 30
	gang += 1
	sweat += 1
	picrand = RAND(0,1)
	gt'paysex','var'
end

if $ARGS[0] = 'var':
	colpaysex += 1

	paysexrand = RAND(0,2)
	if paysexrand = 0:
		cla
		*clr
		horny += 10
		SUB += 1

		if paysxbj = 0:
			bj += 1
			paysxbj = 1
		end

		if paysxsex = 0:
			sex += 1
			paysxsex = 1
		end

		'<center><img src="images/img/paysex/vag<<picrand>>.jpg"></center>'
		'Пока один парень трахает вашу киску, вы отсасываете у остальных.'

		act 'Еще':gt'paysex','var'

		if colpaysex > 3:
			act 'Закончить':gt'paysex','end'
		end
	elseif paysexrand = 1:
		cla
		*clr
		horny += 10
		SUB += 1

		if paysxbj = 0:
			bj += 1
			paysxbj = 1
		end

		if paysxanal = 0:
			anal += 1
			paysxanal = 1
		end

		'<center><img src="images/img/paysex/anal<<picrand>>.jpg"></center>'
		'Пока один парень трахает вас в зад, вы отсасываете у остальных.'

		act 'Еще':gt'paysex','var'

		if colpaysex > 3:
			act 'Закончить':gt'paysex','end'
		end
	elseif paysexrand = 2:
		cla
		*clr
		horny += 10

		if paysxbj = 0:
			bj += 1
			paysxbj = 1
		end

		if paysxsex = 0:
			sex += 1
			paysxsex = 1
		end

		if paysxanal = 0:
			anal += 1
			paysxanal = 1
		end

		'<center><img src="images/img/paysex/dp<<picrand>>.jpg"></center>'
		'Вас ебут во все щели.'

		act 'Еще':gt'paysex','var'

		if colpaysex > 3:
			act 'Закончить':gt'paysex','end'
		end
	end
end

if $ARGS[0] = 'end':
	cla
	*clr
	paysxbj = 0
	paysxsex = 0
	paysxanal = 0
	colpaysex = 0
	cumbelly = 1
	cumpussy = 1
	cumass = 1
	cumlip = 1
	cumface = 1

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/paysex/cum<<picrand>>.jpg"></center>'
	'Когда они насытились то залили вас всю своей спермой.'

	act 'Уйти':
		if picrand = 16 or picrand = 17:gt'office','work'
		if picrand = 18:gt'husbSex','dolgend'
		gt'<<$sexloc>>','start'
	end
end
--- paysex ---------------------------------

