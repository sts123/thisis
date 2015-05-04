# fight1
$resultUderDin = {
	if Aktiv > Passiv:
		point += 1
		Ku += 1

		'<center><img src="images/pic/fight/f1u.jpg"></center>'
		'Вы успешно фиксируете соперницу'

		act '...':stoper = 0 & gt'fight2'
	elseif Aktiv < Passiv:
		pointE += 1
		KzE += 1

		'<center><img src="images/pic/fight/f1u1.jpg"></center>'
		'Вам не удается ничего сделать и соперница переворачивается.'

		act '...':stoper = 0 & gt'fight3'
	elseif Aktiv = Passiv:
		'<center><img src="images/pic/fight/f1u2.jpg"></center>'
		'У вас обеих мало что получается и вы боретесь без всякого успеха.'

		act '...':gt $curloc
	end
}

!вы сверху
!противница лежит на спине после броска -15%

koef = 100
koefE = 85
rMin -= 1
stoper += 1
gs'fightStat'

'<center><img src="images/pic/fight/f1.jpg"></center>'
'<<$nameE>> лежит на спине немного растерянная после броска, а вы сидите сверху на ней. <<$nameE>> пытается вывернутся.'

if endur <= 0 or lustw <= 0:gt'SubLoss'
if endurE <= 0 or lustwE <= 0:gt'SubWin'

if stoper < 3:
	if rMin > 0:
		act 'Сделать попытку удержания':
			cls
			dynamic $uderdin
			dynamic $resultUderDin
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
--- fight1 ---------------------------------

