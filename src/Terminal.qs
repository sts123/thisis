# Terminal
minut = minut + 5
clr
gs'stat'

!'
FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)
'

'<center><b><font color = maroon>Складской терминал</font></b></center>'
'<center><img src="images/pic/terminal.jpg"></center>'
'Множество складских зданий к которым подъезжают фуры для загрузки и разгрузки.'

act 'Уйти':
	cla
	minut = minut + 5
	gt'nord'
end

if TerminalPapper = 1 and DayTerminalPapper = day:
	act 'Отнести документы':
		cls
		minut = minut + 15
		TerminalPapper = 2
		gs'stat'

		FColor = RGB(0,0,0)
		BColor = RGB(255,255,255)
		LColor = RGB(106,90,205)

		'Вы зашли в офис и отдали документы менеджеру.'

		act 'Уйти':minut += 5 & gt'nord'
	end
end

if money >= 100:
	act 'Купить мелкий товар по 100 рублей':
		cls
		minut = minut + 15
		gs'stat'

		'Вы зашли в офис и заговорили с менеджером о покупки мелочевки.'

		if tovarskladlevel = 0:
			if tovarL >= 30:
				'Подумав немного вы поняли, что вам просто негде хранить товар и решили отказаться от покупки.'
			elseif tovarL < 30:
				maxtov = 30-tovarL

				'У вас есть место для хранения на <<maxtov>> единиц товара.'

				act 'Покупать':
					cls
					gs'stat'

					'У вас есть место для хранения на <<maxtov>> единиц товара.'

					tovarpokup = input("Сколько товара вы хотите купить по цене 100 рублей за штуку?")
					if tovarpokup > maxtov or tovarpokup*100 > money:
						'Менеджер качает головой "Нет, так дело не пойдет"'
					else
						tovarL += tovarpokup
						money -= tovarpokup*100
						gs'stat'

						'Вы купили <<tovarpokup>> единиц мелкого товара и теперь у вас хранится <<tovarL>> единиц товара.'
					end

					act 'Уйти':minut += 5 & gt $curloc
				end
			end
		end

		act 'Уйти':minut += 5 & gt'nord'
	end

	if YouCanGar > 0:
		act 'Купить мелкий товар по 100 рублей ля хранения в гараже':
			cls
			minut = minut + 15
			gs'stat'

			'Вы зашли в офис и заговорили с менеджером о покупки мелочевки.'

			if tovarskladlevel = 0:
				if GarTorgItem >= 100:
					'Подумав немного вы поняли, что вам просто негде хранить товар и решили отказаться от покупки.'
				elseif GarTorgItem < 100:
					maxtov = 100-GarTorgItem

					'У вас есть место для хранения на <<maxtov>> единиц товара.'

					act 'Покупать':
						cls
						gs'stat'

						'У вас есть место для хранения на <<maxtov>> единиц товара.'

						tovarpokup = input("Сколько товара вы хотите купить по цене 100 рублей за штуку?")
						if tovarpokup > maxtov or tovarpokup*100 > money:
							'Менеджер качает головой "Нет, так дело не пойдет"'
						else
							GarTorgItem += tovarpokup
							money -= tovarpokup*100
							gs'stat'

							'Вы купили <<tovarpokup>> единиц мелкого товара и теперь в гараже у вас хранится <<GarTorgItem>> единиц товара.'
						end

						act 'Уйти':minut += 5 & gt $curloc
					end
				end
			end

			act 'Уйти':minut += 5 & gt'nord'
		end
	end
end
--- Terminal ---------------------------------

