# zoomagazine
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Зоомагазин "Питомец"</font></b></center>'
	'<center><img src="images/zoo/dsc0544.jpg" width = 650 height = 450 ></center>'
	''
	'Собака 3000'
	'Кролик 2000'
	'Попугай 3000'

	if money >= 3000 and sobaka = 0:
		act 'Купить собаку 3000 руб':
			cla
			*clr
			'<center><img src="images/zoo/dsc0544.jpg" width = 650 height = 450 ></center>'

			act 'Здравствуйте, я бы хотела приобрести собаку':
				cla
				*clr
				'<center><img src="images/zoo/dsc0544.jpg" width = 650 height = 450 ></center>'
				'<center><b>Извините, но у нас остались собаки только мужского пола.</center></b>'

				act 'Купить кобеля':
					cla
					*clr
					minut = minut + 10
					sobaka = sobaka + 1
					money = money - 3000

					'<center><img src="images/zoo/dog628.jpg" width = 600 height = 500 ></center>'
					'<center><b>Вы купили собаку-далматинца.</center></b>'
					$namesob = input ("Я назову собаку...")

					act 'Отойти от прилавка':gt'zoomagazine','start'
				end
				act 'Уйти':gt'zoomagazine','start'
			end
		end
	end

	if money >= 2000 and krolik = 0:
		act 'Купить кролика 2000 руб':
			cla
			*clr
			minut = minut + 10
			krolik = krolik + 1
			money = money - 2000

			'<center><img src="images/zoo/x_2b1d398b.jpg"></center>'
			'<center><b>Вы купили кролика.</center></b>'
			$namekrol = input ("Я назову кролика...")

			act 'Отойти от прилавка':gt'zoomagazine','start'
		end
	end

	if money >= 3000 and popugai = 0:
		act 'Купить попугая 3000 руб':
			cla
			*clr
			minut = minut + 10
			popugai = popugai + 1
			money = money - 3000

			'<center><img src="images/zoo/131998525345003210.jpg"></center>'
			'<center><b>Вы купили попугая.</center></b>'
			$namepopu = input ("Я назову попугая...")

			act 'Отойти от прилавка':gt'zoomagazine','start'
		end
	end

	act 'Уйти':gt'torgcentr'
end
--- zoomagazine ---------------------------------

