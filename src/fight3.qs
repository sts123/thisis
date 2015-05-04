# fight3
$resultUderDin = {
	if Aktiv > Passiv:
		point += 1
		Ku += 1

		'<center><img src="images/pic/fight/f3u.jpg"></center>'
		'Вы успешно фиксируете соперницу'

		act '...':stoper = 0 & gt'fight2'
	elseif Aktiv <= Passiv:
		pointE += 1
		KzE += 1

		'<center><img src="images/pic/fight/f3u2.jpg"></center>'
		'Вам не удается ничего сделать и соперница разрывает захват.'

		act '...':gt'RoundStop'
	end
}

$resultBrosDin = {
	if Aktiv > Passiv:
		point += 2
		lustw += 1
		Kb += 1

		'<center><img src="images/pic/fight/f3b.jpg"></center>'
		'Вы успешно бросаете соперницу'

		act '...':stoper = 0 & gt'fight1'
	elseif Aktiv <= Passiv:
		pointE += 1
		KzE += 1

		'<center><img src="images/pic/fight/f3u2.jpg"></center>'
		'Вам не удается ничего сделать и соперница разрывает захват.'

		act '...':gt'RoundStop'
	end
}

!вы сверху
!противница снизу лицом к вам

koef = 100
koefE = 100
rMin -= 1
stoper += 1
gs'fightStat'

'<center><img src="images/pic/fight/f3.jpg"></center>'
'<<$nameE>> лежит на спине, а вы сидите сверху на ней. <<$nameE>> пытается сбросить вас с себя.'

if endur <= 0 or lustw <= 0:gt'SubLoss'
if endurE <= 0 or lustwE <= 0:gt'SubWin'

if stoper < 3:
	if rMin > 0:
		act 'Сделать попытку удержания':
			cls
			dynamic $uderdin
			dynamic $resultUderDin
		end
		act 'Сделать попытку броска':
			cls
			dynamic $brosdin
			dynamic $resultBrosDin
		end
	else
		'Рефери свистит в свисток и разводит вас. Конец раунда.'

		act 'Встать':gt'RoundEnd'
	end
elseif stoper >= 3:
	pointE += 1

	'Рефери свистит в свисток и разводит вас. Ваше время на атаку вышло. <<$nameE>> получает одно очко.'

	act 'Встать':gt'RoundStop'
end
--- fight3 ---------------------------------

