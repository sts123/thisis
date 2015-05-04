# RoundEnd
round += 1
rMin = 8
stoper = 0

if round = Formula+1:
	'Поединок закончился и вас с соперницей вызывают для оглашения вердикта'

	if point > pointE:
		!win[1] += 1
		!loss[i] += 1
		resultFight = 1

		'Рефери поднимает вашу руку в знак вашей победы.'
	elseif point < pointE:
		!win[i] += 1
		!loss[1] += 1
		resultFight = 3

		'Рефери поднимает руку соперницы в знак ее победы.'
	elseif point = pointE:
		!draw[1] += 1
		!draw[i] += 1
		resultFight = 2

		'Рефери поднимает вашу руку и руку соперницы объявляя ничью.'
	end

	act '...':gt'EndFight'
elseif round < Formula+1:
	endur += lustw*25/100
	endurE += lustwe*25/100

	if crouch = 1 and croonce = 0:crouch = 0 & croonce = 1
	if crouch = 0 and croonce = 0:crouch = 1 & croonce = 1

	croonce = 0

	'<center><b>Перерыв между раундами</b></center>'

	if crouch = 1:$text = 'Встать вашей сопернице на четвереньки, а вам произвести захват сзади.'
	if crouch = 0:$text = 'Встать вам на четвереньки, а вашей сопернице произвести захват сзади.'

	'Вы отдыхаете некоторое время и слышите свисток рефери объявляющий о начале следующего раунда.'
	'Рефери скомандовал <<$text>>'

	act 'Выполнить указания рефери':
		gt'FightCrouch'
	end
end
--- RoundEnd ---------------------------------

