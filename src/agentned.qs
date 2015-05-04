# agentned
gs'stat'

'<center><b><font color = maroon>Агентсво недвижимости</font></b></center>'
!'<center><img src="images/pic/bank.jpg"></center>'

act 'Выйти':gt'down'

if StoryLine > 0 and housr = 0:
	'Можно купить квартиру в спальном районе за 2 миллиона. Аренда квартиры стоит 200 рублей в день, минимальный срок аренды 30 дней.'

	if money >= 2000000:
		act 'Купить квартиру':
			cls
			money -= 2000000
			housr = 1
			BuyHous = 1
			gs'stat'

			'Вы купили квартиру в спальном районе.'

			act 'Выйти':gt'down'
		end
	end
end

if BuyHous ! 1:
	if money >= 6000:
		act 'Арендовать квартиру':
			cls
			money -= 6000
			housr = 1
			BuyHous = 2
			ArendHouseSL += 30
			gs'stat'

			'Вы арендовали квартиру в спальном районе. Теперь у вас <<ArendHouseSL>> дней аренды.'

			act 'Выйти':gt'down'
		end
	end
end

if ArendHouseSL > 0:'У вас <<ArendHouseSL>> дней аренды.'
--- agentned ---------------------------------

