# ресторан
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Банк</font></b></center>'
	'<center><img src="images/pic/bank.jpg"></center>'
	'Рабочее время с 9 до 21.'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'холл'
	end

	if hour >= 9 and hour <= 21:act 'Идти в банк':gt'bank','1'
end

if $ARGS[0] = '1':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Банк</font></b></center>'
	'<center><img src="images/pic/bank1.jpg"></center>'

	if bankfond > 0:'Личный счет <<bankfond>> руб'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'ресторан','start'
	end

	if bankfond >= 0:
		act 'Положить деньги на личный счет':
			cla
			minut = minut + 5

			kartaIN = input ("Сколько денег вы хотите положить на счет?")
			if kartaIN <= 0 or kartaIN > money:
				'Некорректная операция.'
			else
				bankfond = bankfond + kartaIN
				money = money - kartaIN

				'Вы положили на счет <<kartaIN>> рублей, теперь на вашем счету <<bankfond>> рублей.'
			end

			act 'Отойти':gt'ресторан','1'
		end
		act 'Снять деньги с личного счета':
			cla
			minut = minut + 5

			kartaOUT = input ("Сколько денег вы хотите снять со счета?")
			if kartaOUT <= 0 or kartaOUT > bankfond:
				'Не корректная операция.'
			else
				bankfond = bankfond - kartaOUT
				money = money + kartaOUT

				'Вы сняли со счета <<kartaOUT>> рублей, теперь на вашем счету <<bankfond>> рублей.'
			end

			act 'Отойти':gt'ресторан','1'
		end
	end
end
--- ресторан ---------------------------------

