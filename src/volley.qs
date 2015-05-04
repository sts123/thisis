# volley
minut += 30
gs'stat'

if volltime = 0:
	'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
	'Команды вышли на поле и начали играть.'

	if volleysostav = 1:
		'Вы сидите на скамейке запасных смотря как ваша команда играет.'
	end

	poverkomandV = RAND(500,1500)
	if poverkomand > poverkomandV:
		volpoint += 1

		'Ваша команда обыгрывает команду противниц.'
	elseif poverkomand = poverkomandV:
		volpoint += 1
		volpointv += 1

		'Чаша весов колеблется то в одну, то в другую сторону, очевидно команды равны по силам.'
	elseif poverkomand < poverkomandV:
		volpointv += 1

		'Команда соперниц обыгрывает вашу команду.'
	end

	act 'Далее':volltime = 1 & gt $curloc
elseif volltime = 1:
	'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
	'Наступил перерыв и обе команды отдыхают.'

	if volleysostav = 1:
		'Вы сидите на скамейке запасных.'

		act 'Проситься поиграть':
			cls
			gs'stat'

			trenereparand = RAND(0,80)
			if trenerepa >= trenereparand:
				volleysostav = 2
				dom += 1
				poverkomand -= 100
				poverkomand += volleyboll

				'Тренер согласился вас выпустить на поле.'

				act 'Далее':volltime = 2 & gt $curloc
			else
				'Вы стали просится у тренера поиграть, но он отрицательно покачал головой и продолжил объяснять девчонкам стратегию.'

				act 'Далее':volltime = 2 & gt $curloc
			end
		end
	end

	act 'Далее':volltime = 2 & gt $curloc
elseif volltime = 2:
	'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
	'Перерыв закончился и команды начали играть снова.'

	if volleysostav = 1:
		'Вы сидите на скамейке запасных смотря как ваша команда играет.'
	end

	if poverkomand > poverkomandV:
		volpoint += 1

		'Ваша команда обыгрывает команду противниц.'

		if volleysostav = 2:
			if volpointv > 0:
				trenerepa += 10
			end
		end
	elseif poverkomand = poverkomandV:
		volpoint += 1
		volpointv += 1

		'Чаша весов колеблется то в одну, то в другую сторону, очевидно команды равны по силам.'

		if volleysostav = 2:
			if volpointv > 0:
				trenerepa += 5
			end
		end
	elseif poverkomand < poverkomandV:
		volpointv += 1

		'Команда соперниц обыгрывает вашу команду.'

		if volleysostav = 2:
			if volpoint > 0:
				trenerepa -= 10
			end
		end
	end

	act 'Далее':volltime = 3 & gt $curloc
elseif volltime = 3:
	volsesongame += 1

	'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
	'Прозвучал финальный свисток.'

	if volpoint > volpointv:
		volsesonwin += 1

		'Ваша команда выиграла.'
	elseif volpoint = volpointv:
		volsesondraw += 1

		'Ничья.'
	elseif volpoint < volpointv:
		volsesonloss += 1
		'Ваша команда проиграла.'
	end

	if volleysostav = 2:volleysostav = 1 & poverkomand -= volleyboll & poverkomand += 100
	volpoint = 0
	volpointv = 0

	act 'Уйти':gt'gdksport'
	act 'Зайти в тренерскую':gt'Voltrener'
end
--- volley ---------------------------------

