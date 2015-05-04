# autotraidF
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Авторынок</b></center>'
	'<center><img src="images/pic/autotraid.jpg"></center>'
	'Машину можно купить только при наличии прав. И две машины иметь нельзя.'

	if hour <= 17:
		if car > 0:act 'Подойти к скупщику':gt'autotraidF','manager1'
		act 'Посмотреть машины выставленные на продажу':gt'autotraidF','car'
	end

	act 'Уйти':gt'Nord'
end

if $ARGS[0] = 'manager1':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Авторынок</b></center>'
	'<center><img src="images/pic/autotraid.jpg"></center>'

	gs'avb'

	if cardrive = 9 and car > 0:
		'Скупщик походил вокруг машины и предложил вам за нее <<bupay>> рублей'

		act 'Продать за <<bupay>> (1 час)':
			cla
			minut = minut + 60
			money = money+bupay
			car = 0

			'Вы продали свою машину.'

			act 'Уйти':gt'Nord'
		end
	elseif cardrive ! 9:
		'Скупщик говорит, что ему нужно посмотреть на машину, прежде чем назначить цену, и если вы хотите, он вызовет эвакуатор за 2500, что бы доставить вашу машину к рынку.'

		if money >= 2500:
			act 'Эвакуатор до рынка (2500 руб 1 час)':
				cla
				minut = minut + 60
				cardrive = 9
				money = money - 2500

				'Вы отдали деньги и целый час ждали когда же вам привезут машину, наконец вы увидели как ее выгрузил эвакуатор около рынка.'

				act 'К скупщику':gt'autotraidF','manager1'
			end
		end
	end

	act 'Уйти':gt'Nord'
end

if $ARGS[0] = 'car':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 5
	carT = 0
	gs'stat'

	'<center><b>Авторынок</b></center>'
	'<center><img src="images/pic/autotraid.jpg"></center>'
	'Машин так много на стоянке, что можно потратить всю жизнь и никогда не осмотришь все машины, если еще с машинами на ходу можно понять их техническое состояние, то машины не на ходы это кот в мешке, может быть выгодной покупкой, а может быть пустой тратой денег, и не забывайте, вам ее еще доставить в сервис нужно будет.'

	if hour <= 17:
		act 'Осмотреть ВАЗ 2107 (на ходу)':
			cla
			*clr
			tehNT = 200
			tehT = RAND(10,tehNT)
			carT = 1

			'<center><b>ВАЗ 2107 (на ходу)</b></center>'
			'<center><img src="images/picar/car.jpg"></center>'

			gs'avt'

			'<<$tehT>> Торговец хочет <<bupay>> рублей'

			act 'Уйти':gt'autotraidF','car'

			if car = 0 and prava = 1 and money >= bupay:
				act 'Купить за <<bupay>> рублей':
					cla
					money = money - bupay
					$car = 'ВАЗ 2107'
					car = 1
					benz = 3
					cardrive = 9
					teh = tehT
					tehcar = 200
					wrek = 0

					'Вы заплатили <<bupay>> рублей и купили машину. Торговец ее поставил около рынка и предупредил, что там мало бензина.'

					act 'Уйти':gt'Nord'
				end
			end
		end
		act 'Осмотреть ВАЗ 2107 (не на ходу)':
			cla
			*clr
			tehNT = 200
			tehT = RAND(10,tehNT)
			bupay = RAND(10000,50000)

			'Машина не на ходу. Торговец хочет <<bupay>> рублей'

			gs'avt'

			act 'Уйти':gt'autotraidf','car'

			if car = 0 and prava = 1 and money >= bupay:
				act 'Купить за <<bupay>> рублей':
					cla
					money = money - bupay
					$car = 'ВАЗ 2107'
					car = 1
					benz = 3
					cardrive = 9
					teh = tehT
					tehcar = 200
					wrek = 1

					'Вы заплатили <<bupay>> рублей и купили машину. Торговец ее поставил около рынка.'

					act 'Уйти':gt'Nord'
				end
			end
		end
		act 'Осмотреть ГАЗ 3102 (на ходу)':
			cla
			*clr
			tehNT = 1000
			tehT = RAND(10,tehNT)
			carT = 2

			'<center><b>ГАЗ 3102 (на ходу)</b></center>'
			'<center><img src="images/picar/car11.jpg"></center>'

			gs'avt'

			'<<$tehT>> Торговец хочет <<bupay>> рублей'

			act 'Уйти':gt'autotraidf','car'

			if car = 0 and prava = 1 and money >= bupay:
				act 'Купить за <<bupay>> рублей':
					cla
					money = money - bupay
					$car = 'ГАЗ 3102'
					car = 11
					benz = 5
					cardrive = 9
					teh = tehT
					tehcar = 1000
					wrek = 0

					'Вы заплатили <<bupay>> рублей и купили машину. Торговец ее поставил около рынка и предупредил, что там мало бензина.'

					act 'Уйти':gt'Nord'
				end
			end
		end
		act 'Осмотреть ГАЗ 3110 (на ходу)':
			cla
			*clr
			tehNT = 800
			tehT = RAND(10,tehNT)
			carT = 2

			'<center><b>ГАЗ 3110 (на ходу)</b></center>'
			'<center><img src="images/picar/car12.jpg"></center>'

			gs'avt'

			'<<$tehT>> Торговец хочет <<bupay>> рублей'

			act 'Уйти':gt'autotraidF','car'

			if car = 0 and prava = 1 and money >= bupay:
				act 'Купить за <<bupay>> рублей':
					cla
					money = money - bupay
					$car = 'ГАЗ 3110'
					car = 12
					benz = 5
					cardrive = 9
					teh = tehT
					tehcar = 800
					wrek = 0

					'Вы заплатили <<bupay>> рублей и купили машину. Торговец ее поставил около рынка и предупредил, что там мало бензина.'

					act 'Уйти':gt'Nord'
				end
			end
		end
	end

	act 'Уйти':gt'Nord'
end
--- autotraidF ---------------------------------

