# авт2
clr
minut = minut + 10
gs'stat'

'<center><img src="images/casino/avt.jpg"></center>'
'Правила игры очень простые: кидаешь монетку 100 рублей и дергаешь рычаг. Джекпот миллион рублей.'

act 'Дернуть рычаг':
	if money >= 100:
		clr
		money = money-100

		x_10 = RAND(1,1000)
		if x_10 = 1000:
			money = money+1000000
			msg 'Вы выиграли Джекпот! Поздравляем!'
		elseif x_10 < 1000 and x_10 > 850:
			money = money+200
			msg 'Поздравляем, вы выиграли 200 рублей'
		elseif x_10 > 500 and x_10 <= 850:
			money = money+100
			msg 'поздравляем, вы выиграли 100 рублей'
		elseif x_10 <= 500:
			msg 'Увы вы проиграли, попробуйте еще раз'
		end

		gt'авт2'
	else
		msg 'И как ты собираешься играть без денег? Возвращайся когда найдешь необходимую сумму'
		gt'авт2'
	end
end
act 'Вернуться в зал':
	gt'игравт'
end
--- авт2 ---------------------------------

