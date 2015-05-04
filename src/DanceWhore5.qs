# DanceWhore5
minut += 5
dick = RAND(16,30)
gs'stat'

'Трое кавказцев повели вас в комнату.'

act 'Сесть на корточки':
	cls
	bj += 3
	guy += 3
	gang += 1
	sub += 1
	minut += 10
	gs'stat'

	'<center><img src="images/qwest/alter/dance/bjt.jpg"></center>'
	'Вы сели на корточки перед парнями и взяли их члены руками. Немного подрочив вы облизнули головку одного из членов. После этого вы начали сосать член вбирая его в свой рот на столько, насколько могли и дрочить другие члены. Вы старались лизать и сосать сразу три члена.'

	!tipdarand = RAND(0,1)
	tipdarand = 0
	if tipdarand = 0:
		'Кавказцы переговариваясь на непонятном языке поставили вас раком.'

		act 'Расслабить попку и сосать':
			cls
			minut += 30
			$boy = 'Клиент'
			cumanus += 1
			gs'stat'

			'<center><img src="images/qwest/alter/dance/f.jpg"></center>'
			'Вы сосете два члена вбирая их как можно глубже в свой рот.'

			dynamic $sexstart
			dynamic $analsex

			act 'Далее':
				cls

				tipdarand = RAND(0,1)
				if tipdarand = 0:
					cumface += 2
					facial += 1
					minut += 10
					gs'stat'

					'<center><img src="images/qwest/alter/dance/facialt.jpg"></center>'
					'Вы закрыли глаза и почувствовали как вам по лицу ударила теплая струя спермы и потекла вниз. Затем следующая струя ударила вам в лицо. Потом еще и еще. Наконец член перестал кончать. Второй кавказец тоже начал разряжаться вам на лицо покрывая его спермой.'
				elseif tipdarand = 1:
					cumlip += 2
					swallow += 1
					minut += 10
					gs'stat'

					'<center><img src="images/qwest/alter/dance/swallowt.jpg"></center>'
					'Вы встали на колени и с готовностью открыли рот. Кавказцы начали кончать вам в открытый рот заполняя его спермой. Когда поток спермы прекратился и ваш рот оказался до краев наполнен спермой, вы ее проглотили.'
				end

				dynamic $din_go_to_home_dance
			end
		end
	end
!	if tipdarand = 1:
!	end
!	if tipdarand = 2:
!	end
end
--- DanceWhore5 ---------------------------------

