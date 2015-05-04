# restoranM
if $ARGS[0] = 'start':
	minut = minut + 30

	'Вы приехали в ресторан и сели за столик. <<$boyA>> заказал у официанта еду и хорошее вино. Вы стали ждать когда вам принесут еду.'

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
		xgt'restoranM','a'
	end
	act 'Улыбаться':
		cla
		!bfa = bfa - 1
		xgt'restoranM','a'
	end
	act 'Не смешно':
		cla
		DOM = DOM + 1
		bfa = bfa - 1
		xgt'restoranM','a'
	end
end

if $ARGS[0] = 'a':
	minut = minut + 30
	fat = fat + 1

	'Наконец вам принесли еду. <<$boyA>> налил вам вина и предложил выпить за любовь.'

	act 'Есть':
		cla
		xgt'restoranM','b'
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

	'Через некоторое время с едой и вином было покончено и <<$boyA>> предложил проводить вас.'

	act 'Домой':gt'sexm','start'
end
--- restoranM ---------------------------------

