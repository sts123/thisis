# carF
$enddrive = {
	if cardrive = 1:gt'street'
	if cardrive = 2:gt'down'
	if cardrive = 3:gt'Nord'
	if cardrive = 4:gt'lake','start'
	if cardrive = 5:gt'park','start'
	if cardrive = 6:gt'zaprF','start'
	if cardrive = 7:gt'autoservisF','start'
	if cardrive = 8:gt'autosalonF','start'
	if cardrive = 9:gt'autotraidF','start'
	if cardrive = 10:gt'park','whore'
	if cardrive = 11:gt'sauna'
	if cardrive = 12:gt'obekt'
	if cardrive = 18:gt'youplace'
	if cardrive = 19:gt'road'
	if cardrive = 20:gt'gorodok'
	if cardrive = 21:gt'zaprF','start'
}

if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 1
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><<$car>></b></center>'
	if car = 1:'<center><img src="images/picar/car.jpg"></center>'
	if car = 2:'<center><img src="images/picar/car2.jpg"></center>'
	if car = 3:'<center><img src="images/picar/car3.jpg"></center>'
	if car = 4:'<center><img src="images/picar/car4.jpg"></center>'
	if car = 5:'<center><img src="images/picar/car5.jpg"></center>'
	if car = 6:'<center><img src="images/picar/car6.jpg"></center>'
	if car = 7:'<center><img src="images/picar/car7.jpg"></center>'
	if car = 8:'<center><img src="images/picar/car8.jpg"></center>'
	if car = 9:'<center><img src="images/picar/car9.jpg"></center>'
	if car = 10:'<center><img src="images/picar/car10.jpg"></center>'
	if car = 11:'<center><img src="images/picar/car11.jpg"></center>'
	if car = 12:'<center><img src="images/picar/car12.jpg"></center>'
	if car = 13:'<center><img src="images/picar/car13.jpg"></center>'
	if car = 14:'<center><img src="images/picar/car14.jpg"></center>'
	if car = 15:'<center><img src="images/picar/car15.jpg"></center>'
	if car = 16:'<center><img src="images/picar/car16.jpg"></center>'
	if car = 17:'<center><img src="images/picar/car17.jpg"></center>'
	if car = 18:'<center><img src="images/picar/car18.jpg"></center>'
	if car = 19:'<center><img src="images/picar/car19.jpg"></center>'
	if car = 20:'<center><img src="images/picar/car20.jpg"></center>'
	if car = 21:'<center><img src="images/picar/car21.jpg"></center>'
	if car = 22:'<center><img src="images/picar/car22.jpg"></center>'
	if car = 23:'<center><img src="images/picar/car23.jpg"></center>'
	if car = 24:'<center><img src="images/picar/car24.jpg"></center>'
	if car = 25:'<center><img src="images/picar/car25.jpg"></center>'
	if car = 26:'<center><img src="images/picar/car26.jpg"></center>'
	if car = 27:'<center><img src="images/picar/car27.jpg"></center>'
	if car = 28:'<center><img src="images/picar/car28.jpg"></center>'
	if car = 29:'<center><img src="images/picar/car29.jpg"></center>'
	if car = 30:'<center><img src="images/picar/car30.jpg"></center>'
	if car = 95:'<center><img src="images/picar/car95.jpg"></center>'
	if car = 96:'<center><img src="images/picar/car96.jpg"></center>'
	if car = 97:'<center><img src="images/picar/car97.jpg"></center>'
	if car = 98:'<center><img src="images/picar/car98.jpg"></center>'
	if car = 99:'<center><img src="images/picar/car99.jpg"></center>'
	if car = 100:'<center><img src="images/picar/car100.jpg"></center>'

	act 'Отойти от машины':dynamic $enddrive

	if kanistra > 0:
		'В багажнике <<kanistra>> шт. пятилитровых канистр с бензином.'

		if benz <= 35:
			act 'Залить канистру в бак':
				cla
				benz = benz + 5
				kanistra = kanistra - 1

				'Вы залили канистру бензина в бак.'

				act 'Отойти':gt'carF','start'
			end
		end
	end

	act 'Сесть в машину':gt'carF','salon'
end

if $ARGS[0] = 'salon':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 1
	gs'stat'

	if car = 1:'<center><img src="images/picar/salon.jpg"></center>'
	if car = 2:'<center><img src="images/picar/salon2.jpg"></center>'
	if car = 3:'<center><img src="images/picar/salon3.jpg"></center>'
	if car = 4:'<center><img src="images/picar/salon4.jpg"></center>'
	if car = 5:'<center><img src="images/picar/salon5.jpg"></center>'
	if car = 6:'<center><img src="images/picar/salon6.jpg"></center>'
	if car = 7:'<center><img src="images/picar/salon7.jpg"></center>'
	if car = 8:'<center><img src="images/picar/salon8.jpg"></center>'
	if car = 9:'<center><img src="images/picar/salon9.jpg"></center>'
	if car = 10:'<center><img src="images/picar/salon10.jpg"></center>'
	if car = 11:'<center><img src="images/picar/salon11.jpg"></center>'
	if car = 12:'<center><img src="images/picar/salon12.jpg"></center>'
	if car = 13:'<center><img src="images/picar/salon13.jpg"></center>'
	if car = 14:'<center><img src="images/picar/salon14.jpg"></center>'
	if car = 15:'<center><img src="images/picar/salon15.jpg"></center>'
	if car = 16:'<center><img src="images/picar/salon16.jpg"></center>'
	if car = 17:'<center><img src="images/picar/salon17.jpg"></center>'
	if car = 18:'<center><img src="images/picar/salon18.jpg"></center>'
	if car = 19:'<center><img src="images/picar/salon19.jpg"></center>'
	if car = 20:'<center><img src="images/picar/salon20.jpg"></center>'
	if car = 21:'<center><img src="images/picar/salon21.jpg"></center>'
	if car = 22:'<center><img src="images/picar/salon22.jpg"></center>'
	if car = 23:'<center><img src="images/picar/salon23.jpg"></center>'
	if car = 24:'<center><img src="images/picar/salon24.jpg"></center>'
	if car = 25:'<center><img src="images/picar/salon25.jpg"></center>'
	if car = 26:'<center><img src="images/picar/salon26.jpg"></center>'
	if car = 27:'<center><img src="images/picar/salon27.jpg"></center>'
	if car = 28:'<center><img src="images/picar/salon28.jpg"></center>'
	if car = 29:'<center><img src="images/picar/salon29.jpg"></center>'
	if car = 30:'<center><img src="images/picar/salon30.jpg"></center>'
	if car = 95:'<center><img src="images/picar/salon95.jpg"></center>'
	if car = 96:'<center><img src="images/picar/salon96.jpg"></center>'
	if car = 97:'<center><img src="images/picar/salon97.jpg"></center>'
	if car = 98:'<center><img src="images/picar/salon98.jpg"></center>'
	if car = 99:'<center><img src="images/picar/salon99.jpg"></center>'
	if car = 100:'<center><img src="images/picar/salon100.jpg"></center>'

	'Бензин - <<benz>> литров, емкость бензобака 40 литров.'

	if teh <= 0:teh = 0 & wrek = 1
	if teh <= 0 or wrek = 1:$teh = 'Машина не заводится, ей нужен ремонт.'
	if teh >= tehcar*75/100 and wrek = 0:$teh = 'Машина в отличном состоянии.'
	if teh < tehcar*75/100 and teh >= tehcar*50/100 and wrek = 0:$teh = 'При движении машины есть какие то посторонние шумы'
	if teh < tehcar*50/100 and teh >= tehcar*25/100 and wrek = 0:$teh = 'Машина грохочет и еле едет.'
	if teh < tehcar*25/100 and wrek = 0:$teh = 'Как этот унитаз все еще может ехать, является загадкой даже для конструкторов.'

	'<<$teh>>'

	if cardrive = 1:'Через лобовое стекло вы видите Спальный район.'
	if cardrive = 2:'Через лобовое стекло вы видите центр города.'
	if cardrive = 3:'Через лобовое стекло вы видите Северный район.'
	if cardrive = 4:'Через лобовое стекло вы видите озеро.'
	if cardrive = 5:'Через лобовое стекло вы видите парк.'

	if prava = 0:'У вас нет прав.'

	act 'Выйти из машины':dynamic $enddrive

	if benz > 0 and wrek = 0 and prava > 0:
		if teh >= tehcar*75/100 and wrek = 0:
			wrekrand = RAND(0,1000)
			if wrekrand = 1000:wrek = 1
		elseif teh < tehcar*75/100 and teh >= tehcar*50/100 and wrek = 0:
			wrekrand = RAND(0,100)
			if wrekrand = 100:wrek = 1
		elseif teh < tehcar*50/100 and teh >= tehcar*25/100 and wrek = 0:
			wrekrand = RAND(0,100)
			if wrekrand >= 80:wrek = 1
		elseif teh < tehcar*25/100 and wrek = 0:
			wrekrand = RAND(0,100)
			if wrekrand >= 40:wrek = 1
		elseif wrek = 1:
			'Что то гулко застучало и движок заглох.'

			act 'Твою мать':gt'carF','salon'
		end

		if alko > 0:
			dpsrand = RAND(0,100)
			if dpsrand <= alko:
				'Вас останавливает милиционер, он глядит на ваше состояние и просит дыхнуть в трубочку. Вы дышите и на приборе загорается красная лампочка.'
				'Сотрудник ГИБДД хмыкает и пишет что то в своем сотовом, после чего показывает вам. Там написана смс с цифрой 50000'
				'Или давай составлять протокол. Сейчас действует лишение прав навсегда за вождение в не трезвом виде.'

				if money >= 50000:
					act 'Дать взятку 50 штук':
						cla
						money = money-50000

						'Вы расплачиваетесь и полицейский предупреждает вас, что бы вы никуда не ехали в таком состоянии.'

						act 'В салон':gt'carF','salon'
					end
				end
				act 'Давай, все по закону':
					cla
					prava = 0

					'Вас лишают прав, за вождение в не трезвом виде.'

					act 'В салон':gt'carF','salon'
				end

				exit
			end
		elseif alko >= 10:
			avarand = RAND(0,100)
			if avarand >= 50:
				teh = teh/2
				wrek = 1

				'Вы спьяну врезались в дерево, разбив машину вдребезги.'

				act 'В салон':gt'carF','salon'

				exit
			end
		end

		if wrek = 0:
			if cardrive >= 20:
				if cardrive ! 3:
					act 'Ехать в город':
						cla
						minut = minut + 75
						benz = benz - 1
						teh = teh - RAND(3,6)
						cardrive = 3

						'Вы больше часа едете по трассе что бы добраться до города.'

						dynamic $enddrive
					end
				end

				if cardrive ! 21:
					act 'Ехать на заправку':
						cla
						minut = minut + 15
						benz = benz - 1
						teh = teh - RAND(1,3)
						cardrive = 21

						'Вы за 15 минут добираетесь до места назначения.'

						dynamic $enddrive
					end
				end
			end

			if placeMansion > 0 and cardrive ! 18:
				act 'Ехать на свой участок':
					cla

					if cardrive >= 20:
						minut = minut + 60
						benz = benz - 1
						teh = teh - RAND(1,3)
						cardrive = 18
					else
						minut = minut + 15
						benz = benz - 1
						teh = teh - RAND(1,3)
						cardrive = 18
					end

					'Вы доехали до своего земельного участка.'

					dynamic $enddrive
				end
			end

			if cardrive ! 1:
				act 'Ехать в Спальный район':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 1

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 2:
				act 'Ехать в Центр города':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 2

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 3:
				act 'Ехать в Северный район':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 3

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 4:
				act 'Ехать к озеру':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 4

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 5:
				act 'Ехать в парк':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 5

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 6:
				act 'Ехать на заправку':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 6

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 7:
				act 'Ехать в автосервис':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 7

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 8:
				act 'Ехать в автосалон':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 8

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 9:
				act 'Ехать на авторынок':
					cla
					minut = minut + 15
					benz = benz - 1
					teh = teh - RAND(1,3)
					cardrive = 9

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 12:
				act 'Ехать на объект':
					cla
					minut = minut + 60
					benz = benz - 1
					teh = teh - RAND(2,5)
					cardrive = 12

					'Вы за 15 минут добираетесь до места назначения.'

					dynamic $enddrive
				end
			end

			if cardrive ! 20:
				act 'Ехать в Городок':
					cla
					minut = minut + 75
					benz = benz - 1
					teh = teh - RAND(3,6)
					cardrive = 20

					'Вы больше часа едите по трассе до городка.'

					dynamic $enddrive
				end
			end

			act 'Ехать по трассе (1 час)':
				cla
				'Вы выезжаете на трассу.'

				numberRoad = input("На каком километре остановится (от 0 до 20)")
				if numberRoad >= 0 and numberRoad <= 20:
					cardrive = 19
					nroad = numberRoad
					ncarroad = numberRoad
				end

				xgt'carF','salon'
			end
			act 'Гонять по трассе (1 час)':
				cla
				minut = minut + 60
				benz = benz - 4
				teh = teh - RAND(2,6)
				manna = manna + 20
				wipo = wipo+10

				'Вы выезжаете на трассу и лихачите развлекаясь, потом поворачиваете обратно.'

				act 'Закончить':xgt'carF','salon'
			end
		end
	end
end
--- carF ---------------------------------

