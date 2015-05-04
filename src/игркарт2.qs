# игркарт2
clr
minut = minut + 5
gs'stat'

if turn1 = 0:
	cla
	'<right><img src="images/casino/stavkacw.jpg"></right>'
	'Прошу делать ставки, господа.'

	act 'Сделать ставку':
		money = money - deal
		turn1 = 1

		deal = input 'Введите сумму'
		if money < deal:
			msg 'У вас недостаточно денег'
			gt'игркарт2'
		elseif deal < 0:
			msg 'Неправильно, попробуй еще раз.'
			gt'игркарт1'
		elseif deal > 1000:
			msg 'Максимальная ставка 1000 рублей.'
			gt'игркарт1'
		end

		gt'игркарт2'
	end
	act 'Отойти от стола':
		gt'казвар'
	end
end

if turn1 = 1:
	cla
	nich = 0

	'<right><img src="images/casino/stavkacw.jpg"></right>'

	act 'Поставить еще на ничью':
		turn1 = 2
		nich = 1

		if money < deal:
			msg 'У вас недостаточно денег'
			turn1 = 2
			nich = 0
			gt'игркарт2'
		else
			money = money-deal
		end

		gt'игркарт2'
	end
	act 'Продолжить без дополнительной ставки':
		turn1 = 2
		nich = 0
		gt'игркарт2'
	end
end
if turn1 = 2:
	cla
	'<right><img src="images/casino/cartcw.jpg"></right>'
	'Крупье сдает карты:'
	'...'

	suit = RAND(1,4)
	number = RAND(1,13)
	$di_card[1] = $number[number] + $suit[suit]
	di_points = points[number]
	di_poi = number
	suit = RAND(1,4)
	number = RAND(2,14)
	$pl_card[1] = $number[number] + $suit[suit]
	pl_points = points[number]
	pl_poi = number
	wait 1000
	'Карта крупье:'
	' <<$di_card[1]>>'
	'__________________________'
	'Карты игрока:'
	' <<$pl_card[1]>>'

	if di_poi > pl_poi:
		' '
		'Казино выиграло'

		act 'Вы проиграли':
			turn1 = 0
			gt'игркарт2'
		end
	elseif di_poi < pl_poi:
		' '
		'Вы выиграли'

		act 'Вы выиграли <<2*deal>> руб':
			money = money+2*deal
			turn1 = 0
			gt'игркарт2'
		end
	elseif di_poi = pl_poi:
		if nich = 1:
			' '
			'Вы выиграли'

			act 'Вы выиграли <<11*deal>> руб':
				money = money+11*deal
				turn1 = 0
				gt'игркарт2'
			end
		else
			turn1 = 3
			gt'игркарт2'
		end
	end
end

if turn1 = 3:
	act 'Продолжить играть':
		cla

		if money < deal:
			msg 'У вас недостаточно денег'
			gt'игркарт2'
		else
			money = money-deal
		end

		'<right><img src="images/casino/cartcw.jpg"></right>'
		'Крупье сдает карты:'
		'...'

		suit = RAND(1,4)
		number = RAND(1,13)
		$di_card[2] = $number[number] + $suit[suit]
		di_points = points[number]
		di_poi = number
		suit = RAND(1,4)
		number = RAND(2,14)
		$pl_card[2] = $number[number] + $suit[suit]
		pl_points = points[number]
		pl_poi = number

		'Карта крупье:'
		' <<$di_card[1]>>'
		' <<$di_card[2]>>'
		'__________________________'
		'Карты игрока:'
		' <<$pl_card[1]>>'
		' <<$pl_card[2]>>'

		if di_poi > pl_poi:
			' '
			'Казино выиграло'

			act 'Вы проиграли':
				turn1 = 0
				gt'игркарт2'
			end
		elseif di_poi < pl_poi:
			' '
			'Вы выиграли'
			act 'Вы выиграли <<4*deal>> руб':
				money = money+4*deal
				turn1 = 0
				gt'игркарт2'
			end
		elseif di_poi = pl_poi:
			' '
			'Снова ничья'

			act 'Забрать <<3*deal>> руб':
				money = money+3*deal
				turn1 = 0
				gt'игркарт2'
			end
		end
	end
	act 'Забрать половину вашей ставки':
		if deal mod 2 = 1:
			deal = deal+1
		end

		money = money+deal/2
		gt'игркарт2'
	end
end
--- игркарт2 ---------------------------------

