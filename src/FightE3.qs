# FightE3
$resultUderDinE = {
	cls

	if Aktiv > Passiv:
		pointE += 1
		KuE += 1

		'<center><img src="images/pic/fight/f3u.jpg"></center>'
		'<<$nameE>> успешно фиксирует вас'

		act '...':stoper = 0 & gt'fightE1'
	elseif Aktiv <= Passiv:
		point += 1
		Kz += 1

		'<center><img src="images/pic/fight/f3u2.jpg"></center>'
		'<<$nameE>> не удается ничего сделать и вы выскальзываете из захвата.'

		act '...':gt'RoundStop'
	end
}

$resultBrosDinE = {
	cls

	if Aktiv > Passiv:
		pointE += 2
		lustwE += 1
		KbE += 1

		'<center><img src="images/pic/fight/f3b.jpg"></center>'
		'<<$nameE>> успешно бросает вас'

		act '...':stoper = 0 & gt'fightE2'
	elseif Aktiv <= Passiv:
		point += 1
		Kz += 1

		'<center><img src="images/pic/fight/f3u2.jpg"></center>'
		'<<$nameE>> не удается ничего сделать и вы выскальзываете из захвата.'

		act '...':gt'RoundStop'
	end
}

!Вы снизу на спине
!Противница сверху

koef = 100
koefE = 100
rMin -= 1
stoper += 1
gs'fightStat'

'<center><img src="images/pic/fight/f3.jpg"></center>'
'Вы лежите снизу на спине, а <<$nameE>> сидит на вас.'

if endur <= 0 or lustw <= 0:gt'SubLoss'
if endurE <= 0 or lustwE <= 0:gt'SubWin'

if stoper < 3:
	if rMin > 0:
		deystrand = RAND(0,1)
		if deystrand = 0:
			dynamic $uderdinE
			dynamic $resultUderDinE

			exit
		elseif deystrand = 1:
			dynamic $brosdinE
			dynamic $resultBrosDinE

			exit
		end
	else
		'Рефери свистит в свисток и разводит вас. Конец раунда.'

		act 'Встать':gt'RoundEnd'
	end
elseif stoper >= 3:
	point += 1

	'Рефери свистит в свисток и разводит вас. Время соперницы на атаку вышло. Вы получаете одно очко.'

	act 'Встать':gt'RoundStop'
end
--- FightE3 ---------------------------------

