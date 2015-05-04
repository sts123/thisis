# FightE1
$resultUderDinE = {
	cls
	endur -= 2

	if Aktiv >= Passiv:
		pointE += 1
		lustw -= 1
		KuE += 1

		'<center><img src="images/pic/fight/f2u.jpg"></center>'
		'<<$nameE>> успешно удерживает вас'

		act '...':gt'fightE1'
	elseif Aktiv < Passiv:
		point += 1
		Kz += 1

		'<center><img src="images/pic/fight/f2u2.jpg"></center>'
		'<<$nameE>> не удается ничего сделать и вы переворачиваетесь.'

		act '...':stoper = 0 & gt'fightE3'
	end
}

!Вы снизу на животе -20%
!Противница сверху проводит удержание

koef = 80
koefE = 100
lustw -= 1
rMin -= 1
stoper += 1
gs'fightStat'

'<center><img src="images/pic/fight/f2.jpg"></center>'
'<<$nameE>> зафиксировала вас и проводит удержание.'

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
	pointE += 3

	'Рефери свистит в свисток и разводит вас. Соперница получает 3 очка за успешное удержание.'

	act 'Встать':gt'RoundStop'
end
--- FightE1 ---------------------------------

