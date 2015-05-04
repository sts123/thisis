# амрул
clr
minut = minut + 5
кч = 0
чнч = 0
мб = 0
дю = 0
ряд = 0
чи = 100
x_rul = 100
gs'stat'

'<center><img src="images/casino/amrul.png"></center>'
'Вы склонились над столом.'

act 'Сделать ставку':
	st_1 = input 'Введите сумму'
	if money < st_1:
		msg 'У вас недостаточно денег'
		gt'рулетка'
	elseif st_1 < 0:
		msg 'Неправильно, попробуй еще раз'
		gt'амрул'
	elseif st_1 > 1000:
		msg 'Максимальная ставка 1000 рублей'
		gt'амрул'
	end

	money = money-st_1

	gt'ставка'
end
act 'Отойти от стола':
	gt'рулетка'
end
--- амрул ---------------------------------

