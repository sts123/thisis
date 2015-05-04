# road
$polustanok = {
	cls
	gs'stat'

	'Обыкновенная железнодорожная платформа.'

	act 'Выйти':minut += 10 & nroad = 5 & gt'road'

	if money >= 150:
		act 'Купить билет до городка (150 руб)':
			cls
			money -= 150
			minut += 15
			gs'stat'

			'<center><img src="images/pic/electri.jpg"></center>'
			'Вы заплатили за билет и сели в электричку идущую в Городок.'
			'Через 15 минут электричка остановилась на полустанке.'

			act 'Ехать дальше':
				cls
				minut += 15
				gs'stat'

				'<center><img src="images/pic/electri.jpg"></center>'
				'Через 15 минут электричка остановилась на полустанке Гадюкино.'

				act 'Ехать дальше':
					cls
					minut += 15
					gs'stat'

					'<center><img src="images/pic/electri.jpg"></center>'
					'Через 15 минут электричка остановилась в Городке.'

					act 'Выйти':minut += 20 & nroad = 20 & gt'vokzalG'
				end
				act 'Выйти':minut += 15 & nroad = 15 & gt'road'
			end
			act 'Выйти':minut += 10 & nroad = 10 & gt'road'
		end
	end

	if money >= 50:
		act 'Купить билет до Центра (50 руб)':
			cls
			money -= 50
			minut += 15
			gs'stat'

			'<center><img src="images/pic/electri.jpg"></center>'
			'Вы заплатили за билет и сели в электричку идущую в Городок.'
			'Через 15 минут электричка остановилась в Центре.'

			act 'Выйти':minut += 5 & nroad = 0 & gt'Vokzal'
		end
	end
}

$polustanok2 = {
	cls
	gs'stat'

	'Обыкновенная железнодорожная платформа.'

	act 'Выйти':minut += 10 & nroad = 10 & gt'road'

	if money >= 100:
		act 'Купить билет до городка (100 руб)':
			cls
			money -= 100
			minut += 15
			gs'stat'

			'<center><img src="images/pic/electri.jpg"></center>'
			'Вы заплатили за билет и сели в электричку идущую в Городок.'
			'Через 15 минут электричка остановилась на полустанке Гадюкино.'

			act 'Ехать дальше':
				cls
				minut += 15
				gs'stat'

				'<center><img src="images/pic/electri.jpg"></center>'
				'Через 15 минут электричка остановилась в Городке.'

				act 'Выйти':minut += 20 & nroad = 20 & gt'vokzalG'
			end
			act 'Выйти':minut += 10 & nroad = 15 & gt'road'
		end
	end

	if money >= 100:
		act 'Купить билет до Центра (100 руб)':
			cls
			money -= 100
			minut += 15
			gs'stat'

			'<center><img src="images/pic/electri.jpg"></center>'
			'Вы заплатили за билет и сели в электричку идущую в Городок.'

			act 'Ехать дальше':
				cls
				minut += 15
				gs'stat'

				'<center><img src="images/pic/electri.jpg"></center>'
				'Через 15 минут электричка остановилась в Центре.'

				act 'Выйти':minut += 5 & nroad = 0 & gt'Vokzal'
			end
			act 'Выйти':minut += 20 & nroad = 5 & gt'road'
		end
	end
}

$polustanok3 = {
	cls
	gs'stat'

	'Обыкновенная железнодорожная платформа.'

	act 'Выйти':minut += 15 & nroad = 15 & gt'road'

	if money >= 50:
		act 'Купить билет до городка (50 руб)':
			cls
			money -= 100
			minut += 15
			gs'stat'

			'<center><img src="images/pic/electri.jpg"></center>'
			'Вы заплатили за билет и сели в электричку идущую в Городок.'
			'Через 15 минут электричка остановилась в Городке.'

			act 'Выйти':minut += 20 & nroad = 20 & gt'vokzalG'
		end
	end

	if money >= 150:
		act 'Купить билет до Центра (150 руб)':
			cls
			money -= 150
			minut += 15
			gs'stat'

			'<center><img src="images/pic/electri.jpg"></center>'
			'Вы заплатили за билет и сели в электричку идущую в Городок.'

			act 'Ехать дальше':
				cls
				minut += 15
				gs'stat'

				'<center><img src="images/pic/electri.jpg"></center>'
				'Через 15 минут электричка остановилась на полустанке.'

				act 'Ехать дальше':
					cls
					minut += 15
					gs'stat'

					'<center><img src="images/pic/electri.jpg"></center>'
					'Через 15 минут электричка остановилась в Центре.'

					act 'Выйти':minut += 5 & nroad = 0 & gt'Vokzal'
				end
				act 'Выйти':minut += 5 & nroad = 5 & gt'road'
			end
			act 'Выйти':minut += 20 & nroad = 10 & gt'road'
		end
	end
}

$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Северное шоссе</H4></center>'
'<center><img src="images/pic/road.jpg"></center>'
'<center><<nroad>> километр</center>'
'Шоссе по которому летят автомобили на огромной скорости, с гулом проносятся фуры обдавая ветром.'

if car > 0 and cardrive = 19 and ncarroad = nroad:
	'На обочине стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
end

if nroad = 0:act 'Идти в город':minut += 60 & gt'nord'
if nroad = 16:act 'Идти на объект':minut += 60 & gt'obekt'
if nroad = 20:act 'Идти в городок':minut += 60 & gt'gorodok'
if nroad < 20:act 'Идти на север':minut += 60 & nroad += 1 & gt $curloc
if nroad > 0:act 'Идти на юг':minut += 60 & nroad -= 1 & gt $curloc

if nroad = 0:
	'Окраина города на которой собрались унылые полуразвалившиеся домишки среди кряжистых деревьев.'
	'У обочины стоят <a href="exec:minut += 5 & GT ''furi''">фуры</a>'
elseif nroad = 1:
	'Неподалеку от города виднеются <a href="exec:minut += 15 & GT ''locmansion''">особняки</a>.'
elseif nroad = 2:
	''
elseif nroad = 3:
	'Неподалеку от трассы видно <a href="exec:minut += 15 & GT ''graveyard''">кладбище</a>.'
elseif nroad = 4:
	''
elseif nroad = 5:
	'Неподалеку от трассы находится <a href="exec:dynamic $polustanok">железнодорожный полустанок</a> рядом с которыми находится <a href="exec:minut += 15 & GT ''dachi''">дачный кооператив</a>.'
elseif nroad = 6:
	''
elseif nroad = 7:
	''
elseif nroad = 8:
	''
elseif nroad = 9:
	''
elseif nroad = 10:
	'Неподалеку от трассы находится <a href="exec:dynamic $polustanok2">железнодорожный полустанок</a>.'
elseif nroad = 11:
	''
elseif nroad = 12:
	''
elseif nroad = 13:
	''
elseif nroad = 14:
	'Около дороги находится <a href="exec:minut += 15 & GT ''motel''">мотель</a>'
elseif nroad = 15:
	'Неподалеку от трассы находится <a href="exec:dynamic $polustanok3">железнодорожный полустанок</a>. От полустанка ведет грунтовая дорога к <a href="exec:minut += 30 & GT ''gadukino''">деревне Гадюкино</a>'
elseif nroad = 16:
	'Неподалеку от трассы виднеется заброшенная стройка.'
elseif nroad = 17:
	''
elseif nroad = 18:
	''
elseif nroad = 19:
	''
elseif nroad = 20:
	'Трасса упирается в старинный провинциальный городишко.'
	'У обочины стоят <a href="exec:minut += 5 & GT ''furi''">фуры</a>'
end
--- road ---------------------------------

