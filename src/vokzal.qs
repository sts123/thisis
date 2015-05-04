# vokzal
clr
gs'stat'
gs'time'

'<center><H4>Вокзал</H4></center>'
'<center><img src="images/pic/vokzal.jpg"></center>'

temp = RAND(1,100)
if temp > 70:'Вы видите <a href="exec:GT ''etoexhib'',''pos54''">подозрительную личность.</a>'

act 'Уйти':minut += 15 & gt'nord'
act 'Выйти на северное шоссе':minut += 15 & nroad = 0 & gt'road'

if money >= 200:
	act 'Купить билет до городка':
		cls
		money -= 200
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
			'Через 15 минут электричка остановилась на полустанке.'

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
					'Через 15 минут электричка остановилась в Городке.'

					act 'Выйти':minut += 5 & nroad = 20 & gt'VokzalG'
				end
				act 'Выйти':minut += 5 & nroad = 15 & gt'road'
			end
			act 'Выйти':minut += 5 & nroad = 10 & gt'road'
		end
		act 'Выйти':minut += 5 & nroad = 5 & gt'road'
	end
end
--- vokzal ---------------------------------

