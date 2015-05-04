# stol
if $ARGS[0] = 'start':
	cla
	clr
	gs'stat'

	'Ящик для мелких вещей.'

	if prezik > 0:'Упаковка презервативов, в ней <<prezik>> шт.'
	if tabletki > 0:'Противозачаточные таблетки <<tabletki>> шт.'
	if lubri > 0:'Лубрикант, хватит на <<lubri>> раз.'
	if krem > 0:'Крем для загара <<krem>>'
	if abonement > 0:'Абонемент действителен на <<abonement>> занятий'
	if dildo > 0:'Фалоимитатор реалистик'

	act 'Закрыть ящик стола':
		cla
		gt'stol','fin'
	end

	if money > 0:
		act 'Положить деньги в стол':
			cla
			stolIN = input ("Сколько денег вы хотите положить в стол?")
			if stolIN <= 0 or stolIN > money:
				!'Не корректная операция.'
			else
				stolmoney = stolmoney + stolIN
				money = money - stolIN
			end

			gt'stol','fin'
		end
	end

	if stolmoney > 0:
		act 'Взять деньги из стола у вас <<stolmoney>> рублей в столе':
			cla
			stolOUT = input ("Сколько денег вы хотите взять из стола?")
			if stolOUT <= 0 or stolOUT > stolmoney:
				!'Не корректная операция.'
			else
				stolmoney = stolmoney - stolOUT
				money = money + stolOUT
				!'Вы сняли со счета <<kartaOUT>> рублей, теперь на вашем счету <<karta>> рублей.'
			end

			gt'stol','fin'
		end
	end
end

if $ARGS[0] = 'fin':
	cla
	gt $locM, $metkaM
!'
	if housr = 1 and housrA = 1:
		housrA = 0
		gt'sitr'
	end
'
end
--- stol ---------------------------------

