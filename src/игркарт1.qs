# игркарт1
!by Master (blakarchont@gmail.com)
!НАЧАЛО ИГРЫ
clr
minut = minut + 5
gs'stat'

if turn = 0:
	cla
	'<right><img src="images/casino/stavkabd.jpg"></right>'
	'Прошу делать ставки, господа.'

	act 'Сделать ставку':
		money = money - deal
		turn = 1

		deal = input 'Введите сумму'
		if money < deal:
			msg 'У вас недостаточно денег'
			gt'игркарт1'
		elseif deal < 0:
			msg 'Неправильно, попробуй еще раз.'
			gt'игркарт1'
		elseif deal > 1000:
			msg 'Максимальная ставка 1000 рублей.'
			gt'игркарт1'
		end

		gt'игркарт1'
	end
	act 'Отойти от стола':
		gt'блдж'
	end
end

!РАЗДАЧА КАРТ
if turn = 1:
	cla
	'<right><img src="images/casino/cartbd.jpg"></right>'
	'Крупье сдает карты:'
	'...'

	suit = RAND(1,4)
	number = RAND(1,13)
	$d_card[1] = $number[number] + $suit[suit]
	d_points = points[number]
	suit = RAND(1,4)
	number = RAND(1,13)
	$p_card[1] = $number[number] + $suit[suit]
	p_points = points[number]
	suit = RAND(1,4)
	number = RAND(1,13)
	$p_card[2] = $number[number] + $suit[suit]
	p_points = p_points + points[number]

	if p_points = 22:
		p_points = 21
	elseif p_points < 21:
		'Карта крупье:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'

		act 'Хватит':
			turn = 3
			gt'игркарт1'
		end
		act 'Еще карту':
			turn = 2
			gt'игркарт1'
		end
	elseif p_points = 21:
		prise = deal*3

		'Карта крупье:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'
		'БЛЭК ДЖЕК!!!'

		act 'Забрать выигрыш <<prise>> руб':
			money = money + prise
			turn = 0
			gt'игркарт1'
		end
	end
end

!ДОПОЛНИТЕЛЬНАЯ КАРТА
if turn = 2:
	cla
	'<right><img src="images/casino/cartbde.jpg"></right>'
	'Крупье сдает еще одну карту:'
	'...'

	suit = RAND(1,4)
	number = RAND(1,13)
	$p_card[3] = $number[number] + $suit[suit]
	p_points = p_points + points[number]

	if p_points <= 21:
		'Карта крупье:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'
		' <<$p_card[3]>>'

		act 'Хватит':
			turn = 3
			gt'игркарт1'
		end
		act 'Еще карту':
			turn = 22
			gt'игркарт1'
		end
	elseif p_points > 21:
		'Карта крупье:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'
		' <<$p_card[3]>>'
		'ПЕРЕБОР! Вы проиграли.'

		act '...':
			turn = 0
			gt'игркарт1'
		end
	end
end

if turn = 22:
	cla
	'<right><img src="images/casino/cartbde.jpg"></right>'
	'Крупье сдает еще одну карту:'
	'...'

	suit = RAND(1,4)
	number = RAND(1,13)
	$p_card[4] = $number[number] + $suit[suit]
	p_points = p_points + points[number]

	if p_points <= 21:
		'Карта крупье:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'
		' <<$p_card[3]>>'
		' <<$p_card[4]>>'

		act 'Хватит':
			turn = 3
			gt'игркарт1'
		end
		act 'Еще карту':
			turn = 222
			gt'игркарт1'
		end
	elseif p_points > 21:
		'Карта крупье:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'
		' <<$p_card[3]>>'
		' <<$p_card[4]>>'
		'ПЕРЕБОР! Вы проиграли.'

		act '...':
			turn = 0
			gt'игркарт1'
		end
	end
end

if turn = 222:
	cla
	'<right><img src="images/casino/cartbde.jpg"></right>'
	'Крупье сдает еще одну карту:'
	'...'

	suit = RAND(1,4)
	number = RAND(1,13)
	$p_card[5] = $number[number] + $suit[suit]
	p_points = p_points + points[number]

	if p_points <= 21:
		'Карта банкующего:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'
		' <<$p_card[3]>>'
		' <<$p_card[4]>>'
		' <<$p_card[5]>>'

		act 'Хватит':
			turn = 3
			gt'игркарт1'
		end
	elseif p_points > 21:
		'Карта крупье:'
		' <<$d_card[1]>>'
		'__________________________'
		'Карты игрока:'
		' <<$p_card[1]>>'
		' <<$p_card[2]>>'
		' <<$p_card[3]>>'
		' <<$p_card[4]>>'
		' <<$p_card[5]>>'
		'ПЕРЕБОР! Вы проиграли.'

		act '...':
			turn = 0
			gt'игркарт1'
		end
	end
end

!ДОБОР КАРТ БАНКУЮЩИМ
if turn = 3:
	cla
	'<right><img src="images/casino/cartbde.jpg"></right>'
	'Крупье добирает карты:'
	'...'

	suit = RAND(1,4)
	number = RAND(1,13)
	$d_card[2] = $number[number] + $suit[suit]
	d_points = d_points + points[number]

	if p_points = 22:
		p_points = 21
	elseif d_points >= 17:
		'Карты банкующего:'
		' <<$d_card[1]>>'
		' <<$d_card[2]>>'
		'Очки крупье: <<d_points>>'
		'__________________________'
		'Очки игрока: <<p_points>>'
		'__________________________'

		if d_points > p_points:
			'Казино выиграло'

			act '...':
				turn = 0
				gt'игркарт1'
			end
		elseif d_points = p_points:
			'Ничья'

			act 'Забрать ставку':
				money = money + deal
				turn = 0
				gt'игркарт1'
			end
		elseif d_points < p_points:
			prise = deal*2

			'Игрок выиграл'

			act 'Забрать выигрыш <<prise>> руб':
				money = money + prise
				turn = 0
				gt'игркарт1'
			end
		end
	elseif d_points < 17:
		suit = RAND(1,4)
		number = RAND(1,13)
		$d_card[3] = $number[number] + $suit[suit]
		d_points = d_points + points[number]

		if d_points <= 21:
			'Карты крупье:'
			' <<$d_card[1]>>'
			' <<$d_card[2]>>'
			' <<$d_card[3]>>'
			'Очки крупье: <<d_points>>'
			'__________________________'
			'Очки игрока: <<p_points>>'
			'__________________________'

			if d_points > p_points:
				'Казино выиграло'

				act '...':
					turn = 0
					gt'игркарт1'
				end
			elseif d_points = p_points:
				'Ничья'
				act 'Забрать ставку':
					money = money + deal
					turn = 0
					gt'игркарт1'
				end
			elseif d_points < p_points:
				prise = deal*2

				'Игрок выиграл'

				act 'Забрать выигрыш <<prise>> руб':
					money = money + prise
					turn = 0
					gt'игркарт1'
				end
			end
		elseif d_points > 21:
			prise = deal*2

			'Карты крупье:'
			' <<$d_card[1]>>'
			' <<$d_card[2]>>'
			' <<$d_card[3]>>'
			'__________________________'
			'ПЕРЕБОР!!!'
			'__________________________'
			'Игрок выиграл'

			act 'Забрать выигрыш <<prise>> руб':
				money = money + prise
				turn = 0
				gt'игркарт1'
			end
		end
	end
end
--- игркарт1 ---------------------------------

