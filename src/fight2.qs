# fight2
$resultUderDin = {
	endurE -= 2
	if Aktiv >= Passiv:
		point += 1
		lustwE -= 1
		Ku += 1

		'<center><img src="images/pic/fight/f2u.jpg"></center>'
		'Вы успешно удерживаете соперницу'

		act '...':gt'fight2'
	elseif Aktiv < Passiv:
		pointE += 1
		KzE += 1

		'<center><img src="images/pic/fight/f2u2.jpg"></center>'
		'Вам не удается ничего сделать и соперница переворачивается.'

		act '...':stoper = 0 & gt'fight3'
	end
}

!вы зафиксировали противницу
!вы сидите сверху
!противница лежит на животе под вами -20%

koef = 100
koefE = 80
lustwE -= 1
rMin -= 1
stoper += 1
gs'fightStat'

'<center><img src="images/pic/fight/f2.jpg"></center>'
'<<$nameE>> лежит под вами и не может пошевелится так как вы удерживаете ее. <<$nameE>> отчаянно изгибается пытаясь выскользнуть из вашего захвата.'

if endur <= 0 or lustw <= 0:gt'SubLoss'
if endurE <= 0 or lustwE <= 0:gt'SubWin'

if stoper < 3:
	if rMin > 0:
		act 'Удерживать':
			cls
			dynamic $uderdin
			dynamic $resultUderDin
		end
	else
		'Рефери свистит в свисток и разводит вас. Конец раунда.'

		act 'Встать':gt'RoundEnd'
	end
elseif stoper >= 3:
	point += 3

	'Рефери свистит в свисток и разводит вас. Ваше время на атаку вышло. За успешное удержание вы получаете сразу 3 очка.'

	act 'Встать':gt'RoundStop'
end
--- fight2 ---------------------------------

