# zaprF
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>АЗС</b></center>'
	'<center><img src="images/pic/zapr.jpg"></center>'
	'Объявление, в связи с особенностями устройства бензоколонок, все автомобили заправляются до полного бака.'
	'Стоимость 1 литра бензина 30 рублей.'

	if car > 0:
		if cardrive = 6 or cardrive = 21:'На заправке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
	end

	zprbenz = 40 - benz

	if benz < 40 and car > 0 and cardrive = 6 or benz < 40 and car > 0 and cardrive = 21:
		zprbenz = 40 - benz

		if zprbenz*30 <= money:
			act 'Заправить бензин':
				cla
				*clr
				benz = 40
				zprpay = zprbenz*30
				money = money - zprpay

				if pol > 0:'<center><img src="images/pic/zapr1.jpg"></center>'
				'Вы залили полный бак и оплатили <<zprpay>> рублей.'

				act 'Убрать пистолет':gt'zaprF','start'
			end
		else
			'У вас не хватает денег на заправку.'
		end
	end

	if car > 0:
		act 'Купить канистру с 5ю литрами бензина 150 руб':
			cla
			kanistra = kanistra + 1
			money = money - 150

			'Вы купили канистру бензина. (она автоматически добавится в багажник)'

			act 'Убрать пистолет':gt'zaprF','start'
		end
	end

	act 'Уйти':
		if cardrive = 6:
			gt'nord'
		elseif cardrive = 21:
			gt'gorodok'
		elseif litltown = 0:
			gt'nord'
		elseif litltown = 1:
			gt'gorodok'
		end
	end
end
--- zaprF ---------------------------------

