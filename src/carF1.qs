# carF1
if $ARGS[0] = 'car':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>ВАЗ 2107</b></center>'
	'<center><img src="images/picar/car.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon.jpg"></center>'

		act 'Уйти':gt'carF1','car'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car2':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>ВАЗ 2115</b></center>'
	'<center><img src="images/picar/car2.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon2.jpg"></center>'

		act 'Уйти':gt'carF1','car2'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car3':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>ВАЗ 2113</b></center>'
	'<center><img src="images/picar/car3.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon3.jpg"></center>'

		act 'Уйти':gt'carF1','car3'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car4':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>ВАЗ 2114</b></center>'
	'<center><img src="images/picar/car4.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon4.jpg"></center>'

		act 'Уйти':gt'carF1','car4'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car5':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>ВАЗ 2119</b></center>'
	'<center><img src="images/picar/car5.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon5.jpg"></center>'

		act 'Уйти':gt'carF1','car5'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car6':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>ВАЗ КАЛИНА</b></center>'
	'<center><img src="images/picar/car6.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon6.jpg"></center>'

		act 'Уйти':gt'carF1','car6'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car7':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>ВАЗ ПРИОРА</b></center>'
	'<center><img src="images/picar/car7.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon7.jpg"></center>'

		act 'Уйти':gt'carF1','car7'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car8':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>НИВА ШЕВРОЛЕ</b></center>'
	'<center><img src="images/picar/car8.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon8.jpg"></center>'

		act 'Уйти':gt'carF1','car8'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car9':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>УАЗ ХАНТЕР</b></center>'
	'<center><img src="images/picar/car9.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon9.jpg"></center>'

		act 'Уйти':gt'carF1','car9'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car10':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>УАЗ ПАТРИОТ</b></center>'
	'<center><img src="images/picar/car10.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon10.jpg"></center>'

		act 'Уйти':gt'carF1','car10'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car95':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Mitsubishi l200</b></center>'
	'<center><img src="images/picar/car95.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon95.jpg"></center>'

		act 'Уйти':gt'carF1','car95'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car96':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Audi Q7</b></center>'
	'<center><img src="images/picar/car96.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon96.jpg"></center>'

		act 'Уйти':gt'carF1','car96'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car97':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Cadillac Escalade</b></center>'
	'<center><img src="images/picar/car97.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon97.jpg"></center>'

		act 'Уйти':gt'carF1','car97'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car98':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Porsche Cayenne</b></center>'
	'<center><img src="images/picar/car98.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon98.jpg"></center>'

		act 'Уйти':gt'carF1','car98'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car99':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>BMW X6</b></center>'
	'<center><img src="images/picar/car99.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon99.jpg"></center>'

		act 'Уйти':gt'carF1','car99'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end

if $ARGS[0] = 'car100':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Mercedes-Benz S 600</b></center>'
	'<center><img src="images/picar/car100.jpg"></center>'

	act 'Сесть в салон':
		cla
		*clr
		'<center><img src="images/picar/salon100.jpg"></center>'

		act 'Уйти':gt'carF1','car100'
	end
	act 'Уйти':
		cla
		if cartraid = 1:gt'autosalonF','start'
		if cartraid = 2:gt'autotraidF','manager'
	end
end
--- carF1 ---------------------------------

