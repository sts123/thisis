# bank
if $ARGS[0] = 'start':
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

	if karta > 0:'На счету в банке <<karta>> рублей'

	if BankPapper = 1 and dayBankPapper = day:
		act 'Отдать документы':
			cls
			minut = minut + 15
			BankPapper = 2
			gs'stat'

			'Вы зашли в офис и отдали документы менеджеру.'

			act 'Уйти':minut += 5 & gt'down'
		end
	end

	if money > 0:
		act 'Положить деньги на счет':
			cla
			minut = minut + 5

			kartaIN = input ("Сколько денег вы хотите положить на счет?")
			if kartaIN <= 0 or kartaIN > money:
				'Не корректная операция.'
			else
				karta = karta + kartaIN
				money = money - kartaIN

				'Вы положили на счет <<kartaIN>> рублей, теперь на вашем счету <<karta>> рублей.'
			end

			act 'Отойти':gt'bank','start'
		end
	end

	if karta > 0:
		act 'Снять деньги со счета':
			cla
			minut = minut + 5

			kartaOUT = input ("Сколько денег вы хотите снять со счета?")
			if kartaOUT <= 0 or kartaOUT > karta:
				'Не корректная операция.'
			else
				karta = karta - kartaOUT
				money = money + kartaOUT

				'Вы сняли со счета <<kartaOUT>> рублей, теперь на вашем счету <<karta>> рублей.'
			end

			act 'Отойти':gt'bank','start'
		end
	end

	act 'Выйти':gt'down'
end
--- bank ---------------------------------

