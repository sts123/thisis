# bordel
$sexloc = $CURLOC

gs'stat'

'<center><b>Бордель</b></center>'
'<center><img src="images/img/centr/bordel.jpg"></center>'

if vnesh < 0:
	'"Слушай, у тебя зараза какая то, иди полечись."'

	act 'Уйти':gt'down'
elseif vnesh >= 0 and vnesh < 25:
	'"Ты посмотри на себя, за такой товар никто не заплатит приведи себя в порядок и возвращайся."'

	act 'Уйти':gt'down'
elseif vnesh >= 25:
	act 'В комнату':gt'bordel','start'
end

if $ARGS[0] = 'start':
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	cla
	*clr
	gs'stat'

	'<center><b>Ваша комната в борделе</b></center>'
	'<center><img src="images/img/centr/borroom.jpg"></center>'
	'В борделе большая конкуренция и во избежании мордобоя введено правило, не более двух клиентов в сутки'
	'По середине стоит огромная кровать, а сбоку дверь в небольшую <a href="exec:GT ''bordel'',''dysh''">ванну</a>.'

	act 'Уйти':
		if odetero = 0:
			gt'down'
		elseif odetero > 0:
			cla
			'Вам надо переодеться в свою одежду.'

			act 'В ванную':gt'bordel','dysh'
		end
	end
	act 'Идти в зал, ждать клиентов':
		if odetero = 0:
			cla
			'Вам надо переодеться во что-то более подходящее, в шкафчике в ванной все есть.'

			act 'В ванную':gt'bordel','dysh'
		end

		if cumbelly > 0 or cumpussy > 0 or cumass > 0 or cumlip > 0 or cumface > 0 or cumfrot > 0 or cumanus > 0 or mop < 2 or leghair > 0 or lobok > 0 or sweat > 0 or hapri = 0:
			cla
			'Вам надо привести себя в порядок.'

			act 'В ванную':gt'bordel','dysh'
		elseif cumbelly = 0 and cumpussy = 0 and cumass = 0 and cumlip = 0 and cumface = 0 and cumfrot = 0 and cumanus = 0 and odetero > 0 and mop > 1 and leghair < 1 and lobok < 1 and sweat < 1 and hapri > 0:
			gt'bordel','var'
		end
	end
end

if $ARGS[0] = 'dysh':
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	cla
	*clr
	gs'stat'

	'<center><img src="images/img/centr/bordysh.jpg"></center>'

	act 'В комнату':gt'bordel','start'
	act 'Ванная':
		bordysh = 1
		gt'vann','start'
	end
	act 'Зеркало':
		borMir = 1
		gt'mirror','start'
	end
	act 'Шкафчик для одежды':
		borLoker = 1
		gt'loker','start'
	end
end

if $ARGS[0] = 'var':
	if borsexkol >= 2:gt'bordel','start'
	minut += 30

	borrand = RAND(0,10)
	if borrand = 0:
		'Клиент заказал одну девушку, цена 1000 руб.'

		act 'Отказаться':gt'bordel','start'
		act 'Согласиться':
			borsexkol += 1
			money += 1000
			slutty += 1
			bordelslutty += 1
			minut += 120
			zpprand = RAND(0,100)
			if zpprand >= 70:dynamic $venerasiak
			gt'sex','start'
		end
	elseif borrand = 1:
		'Клиент заказал двух девушек, цена 1000 руб.'

		act 'Отказаться':gt'bordel','start'
		act 'Согласиться':
			borsexkol += 1
			money += 1000
			slutty += 1
			bordelslutty += 1
			minut += 120
			zpprand = RAND(0,100)
			if zpprand >= 70:dynamic $venerasiak
			gt'podrsex','start'
		end
	elseif borrand = 2:
		'Два клиента заказали одну девушку, цена 1500 руб.'

		act 'Отказаться':gt'bordel','start'
		act 'Согласиться':
			borsexkol += 1
			money += 1500
			slutty += 1
			bordelslutty += 1
			minut += 120
			zpprand = RAND(0,100)
			if zpprand >= 70:dynamic $venerasiak
			gt'sexdvoe','start'
		end
	elseif borrand = 3:
		'Два клиента заказали двух девушек, цена 1500 руб.'

		act 'Отказаться':gt'bordel','start'
		act 'Согласиться':
			borsexkol += 1
			money += 1500
			slutty += 1
			bordelslutty += 1
			minut += 120
			zpprand = RAND(0,100)
			if zpprand >= 70:dynamic $venerasiak
			gt'sexdvanadva','start'
		end
	elseif borrand = 4:
		'Группа клиентов заказала одну девушку, цена 2000 руб.'

		act 'Отказаться':gt'bordel','start'
		act 'Согласиться':
			borsexkol += 1
			money += 2000
			slutty += 1
			bordelslutty += 1
			minut += 120
			zpprand = RAND(0,100)
			if zpprand >= 70:dynamic $venerasiak
			gt'paysex','start'
		end
	elseif borrand > 4:
		'Вас никто не выбрал.'

		act 'Уйти в комнату':gt'bordel','start'
		act 'Ждать еще':gt'bordel','var'
	end
end
--- bordel ---------------------------------

