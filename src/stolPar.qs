# stolPar
gs'stat'

!'<center><img src="images/pics/telek.jpg"></center>'
'Вы сели за письменный стол.'

act 'Встать из за стола':gt $locM, $metkaM

if lernHome > 0:
	act 'Учить уроки':
		cls

		if lernHome <= 2:
			minut += 60*lernHome
			lernHome = 0
			lern += 1
			gs'stat'
		elseif lernHome > 2:
			minut += 60*2
			lernHome = 0
			gs'stat'
		end

		'Сидя довольно долгое время за уроками вы все же их сумели выучить.'

		act 'Встать из за стола':gt $locM, $metkaM
	end
end
--- stolPar ---------------------------------

