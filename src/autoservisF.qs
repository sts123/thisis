# autoservisF
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 5
	gs'stat'
	gs'avtonorm'

	'<center><b>Автосервис</b></center>'
	'<center><img src="images/pic/autoservis1.jpg"></center>'

	if cardrive = 7:
		if wrek = 0:
			if teh >= tehcar*75/100:'Мастер осмотрел вашу машину и сказал, что она не нуждается ни в ремонте, ни в тех обслуживании.'
			if teh < tehcar*75/100:
				'Мастер осмотрел вашу машину и сказал, что стоимость работ <<normrem>>.'

				if money >= normrem:
					act 'Оплатить и отремонтировать':
						cla
						*clr
						money = money - normrem
						minut = minut + 60
						teh = tehcar
						wrek = 0

						'<center><img src="images/pic/autoservis2.jpg"></center>'
						'Вы просидели целый час в комнате отдыха делая вид что смотрите телевизор, наконец машину починили и вы заплатили в кассу <<normrem>> рублей'

						act 'Уйти':gt'Nord'
					end
				end
			end
		elseif wrek = 1:
			'Мастер присвистнул глядя на ваш аппарат и сказал, что стоимость работ <<normrem>>.'

			if money >= normrem:
				act 'Оплатить и отремонтировать':
					cla
					*clr
					money = money - normrem
					minut = minut + 60
					tehcar = tehcar/2
					teh = tehcar
					wrek = 0

					'<center><img src="images/pic/autoservis2.jpg"></center>'
					'Вы просидели целый час в комнате отдыха делая вид что смотрите телевизор, наконец машину починили и вы заплатили в кассу <<normrem>> рублей'
					'Мастер перед тем как отдать ключи вам сказал, что бы вы постарались не доводить машину до такого состояния.'

					act 'Уйти':gt'Nord'
				end
			end
		end
	end

	if cardrive ! 7:'Мастер усмехнулся и сказал "Девушка, мне нужно машину посмотреть, что бы хоть, что то вам сказать. Пригоняйте ее к автосервису, поглядим."'

	if wrek = 1 and cardrive ! 7 and car > 0:
		'В автосервисе действует услуга эвакуации поврежденных автомобилей до автосервиса, стоимость 2500'

		if money >= 2500:
			act 'Оплатить доставку авто (2500 руб 1 час)':
				cla
				*clr
				money = money - 2500
				cardrive = 7
				minut = minut + 60

				'<center><img src="images/pic/autoservis2.jpg"></center>'
				'Вы просидели целый час в автосервисе, ожидая когда же привезут ваш автомобиль. Наконец время прошло и ваш автомобиль был доставлен к воротам автосервиса.'

				act 'К мастеру':gt'autoservisF','start'
			end
		end
	end

	act 'Уйти':gt'Nord'
end
--- autoservisF ---------------------------------

