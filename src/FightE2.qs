# FightE2
$resultUderDinE = {
	cls

	if Aktiv > Passiv:
		pointE += 1
		KuE += 1

		'<center><img src="images/pic/fight/f1u.jpg"></center>'
		'<<$nameE>> успешно фиксирует вас'

		act '...':stoper = 0 & gt'fightE1'
	elseif Aktiv < Passiv:
		point += 1
		Kz += 1

		'<center><img src="images/pic/fight/f1u1.jpg"></center>'
		'<<$nameE>> не удается ничего сделать и вы переворачиваетесь.'

		act '...':stoper = 0 & gt'fightE3'
	elseif Aktiv = Passiv:
		'<center><img src="images/pic/fight/f1u2.jpg"></center>'
		'У вас обеих мало что получается и вы боретесь без всякого успеха.'

		act '...':gt $curloc
	end
}

!Вы снизу на спине после броска -15%
!Противница сверху

koef = 85
koefE = 100
rMin -= 1
stoper += 1
gs'fightStat'

'<center><img src="images/pic/fight/f1.jpg"></center>'
'Вы лежите снизу немного оглушенная после броска, а <<$nameE>> сидит на вас.'

if endur <= 0 or lustw <= 0:gt'SubLoss'
if endurE <= 0 or lustwE <= 0:gt'SubWin'

if stoper < 3:
	if rMin > 0:
		dynamic $uderdinE
		dynamic $resultUderDinE

		exit
	else
		'Рефери свистит в свисток и разводит вас. Конец раунда.'

		act 'Встать':gt'RoundEnd'
	end
elseif stoper >= 3:
	point += 1

	'Рефери свистит в свисток и разводит вас. Время соперницы на атаку вышло. Вы получаете одно очко.'

	act 'Встать':gt'RoundStop'
end
--- FightE2 ---------------------------------

