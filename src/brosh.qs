# brosh
gs'stat'

evgentipe = RAND(0,2)
if evgentipe = 0:
	'На перемене к вам подошел Жендос, друг вашего брата "Светик! Стояк замучил, пойдем за школу."'

	act 'Идти за школу':
		cls
		gs'stat'

		'Вместе с Жендосом вы вышли за школу, где нашли укромный уголок.'

		act 'Отсосать Жендосу':
			cls
			bj += 1
			sub += 1
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/bs.jpg"></center>'
			'Вы сели на корточки и Жендос достал член из штанов подтянув ваше лицо к своему члену, вы покорно обхватили его губами и начали сосать.'

			act 'Сосать':
				cls
				!cumface += 1
				cumlip += 1
				swalllow += 1
				!cumfrot += 1
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/bscum.jpg"></center>'
				'Жендос долго не продержался и вам в рот брызнула сперма, которую вы начали быстро глотать.'

				dynamic $din_sekondparturok
			end
		end
	end
	exit
elseif evgentipe = 1:
	'На перемене к вам подошел Мишаня, друг вашего брата "Светик! Пойдем за школу, у меня для тебя конфетка есть."'

	act 'Идти за школу':
		cls
		gs'stat'

		'Вместе с Мишаней вы вышли за школу, где нашли укромный уголок.'

		act 'Отсосать Мишане':
			cls
			bj += 1
			sub += 1
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/bs1.jpg"></center>'
			'Вы сели на корточки и Мишаня достал член из штанов подтянув ваше лицо к своему члену, вы покорно обхватили его губами и начали сосать.'

			act 'Сосать':
				cls
				!cumface += 1
				cumlip += 1
				swalllow += 1
				!cumfrot += 1
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/bscum1.jpg"></center>'
				'Мишаня долго не продержался и вам в рот брызнула сперма, которую вы начали быстро глотать.'

				dynamic $din_sekondparturok
			end
		end
	end
	exit
elseif evgentipe = 2:
	'На перемене к вам подошли Жендос и Мишаня, друзья вашего брата "Светик! Пойдем за школу, развлечемся."'

	act 'Идти за школу':
		cls
		gs'stat'

		'Вместе с Жендосом и Мишаней вы вышли за школу, где нашли укромный уголок.'

		act 'Отсосать Парням':
			cls
			gang += 1
			bj += 2
			sub += 1
			cumlip += 2
			swalllow += 1
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/bs2.jpg"></center>'
			'Вы сели на корточки и парни достали члены, которые вы начали по очереди дрочить и обсасывать. Парни долго не продержались и вам в рот хлынула их сперма, которую вы начали глотать.'

			dynamic $din_sekondparturok
		end
	end
	exit
end

!dynamic $din_sekondparturok
--- brosh ---------------------------------

