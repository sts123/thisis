# EndFight
!'
!Тут выполняются условия поединка
!награды, наказания
'У вас <<Ku>> активных действий в атаках удержанием, <<Kb>> активных действий в атаках бросками, <<Kz>> удачных защит.'
'У соперницы <<KuE>> активных действий в атаках удержанием, <<KbE>> активных действий в атаках бросками, <<KzE>> удачных защит.'

if resultFight = 0:
	wipo[1] += 2
	wipo[i] -= 1
	rating[1] += 2
	rating[i] -= 5
	!вы победили сдачей
elseif resultFight = 1:
	wipo[1] += 1
	rating[1] += 1
	rating[i] -= 3
	!вы победили
elseif resultFight = 2:
	rating[1] -= 1
	rating[i] -= 1
	!ничья
elseif resultFight = 3:
	wipo[i] += 1
	rating[1] -= 3
	rating[i] += 1
	!вы проиграли
elseif resultFight = 4:
	wipo[i] += 2
	wipo[1] -= 1
	rating[1] -= 5
	rating[i] += 2
	!вы проиграли сдачей
end

act '...':gt $loc

if Ku > Kb:
	if Ku > Kz:
		Uteh[1] += 10
	end
elseif Kb > Ku:
	if Kb > Kz:
		Bteh[1] += 10
	end
elseif Kz > Kb:
	if Kz > Ku:
		Zteh[1] += 10
	end
end
'

'<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>>'
'<<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>>'
'<<point>> очков <<$nameA>> <<Ku>> активных действий в атаках удержанием, <<Kb>> активных действий в атаках бросками, <<Kz>> удачных защит.'
'<<pointE>> очков <<$nameE>> <<KuE>> активных действий в атаках удержанием, <<KbE>> активных действий в атаках бросками, <<KzE>> удачных защит.'

if resultFight = 0:
	wipo[a] += 2
	wipo[i] -= 1
	rating[a] += 2
	rating[i] -= 5

	strand = RAND(0,2)
	!if strand = 0:musle[a] += 10
	!if strand = 1:flex[a] += 10
	!if strand = 2:stamina[a] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[a] += 10
	if tehrand = 1:Uteh[a] += 10
	if tehrand = 2:Zteh[a] += 10

	'<b><<$nameA>> одержала победу сдачей</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа сдачей</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение сдачей</font>
	'

	win[a] += 1
	SubWin[a] += 1
	loss[i] += 1
	SubLoss[i] += 1
elseif resultFight = 1:
	wipo[a] += 1
	rating[a] += 1
	rating[i] -= 3

	strand = RAND(0,2)
	!if strand = 0:musle[a] += 10
	!if strand = 1:flex[a] += 10
	!if strand = 2:stamina[a] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[a] += 10
	if tehrand = 1:Uteh[a] += 10
	if tehrand = 2:Zteh[a] += 10

	'<b><<$nameA>> одержала победу</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение</font>
	'

	win[a] += 1
	loss[i] += 1
elseif resultFight = 2:
	rating[a] -= 1
	rating[i] -= 1

	'<b>Результат боя ничья</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = black>ничья</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = black>ничья</font>
	'

	draw[a] += 1
	draw[i] += 1
elseif resultFight = 3:
	wipo[i] += 1
	rating[a] -= 3
	rating[i] += 1

	strand = RAND(0,2)
	if strand = 0:musle[i] += 10
	if strand = 1:flex[i] += 10
	if strand = 2:stamina[i] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[i] += 10
	if tehrand = 1:Uteh[i] += 10
	if tehrand = 2:Zteh[i] += 10

	'<b><<$nameE>> одержала победу</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа</font>
	'

	win[i] += 1
	loss[a] += 1
elseif resultFight = 4:
	wipo[i] += 2
	wipo[a] -= 1
	rating[a] -= 5
	rating[i] += 2

	strand = RAND(0,2)
	if strand = 0:musle[i] += 10
	if strand = 1:flex[i] += 10
	if strand = 2:stamina[i] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[i] += 10
	if tehrand = 1:Uteh[i] += 10
	if tehrand = 2:Zteh[i] += 10

	'<b><<$nameE>> одержала победу сдачей</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение сдачей</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа сдачей</font>
	'

	win[i] += 1
	SubWin[i] += 1
	loss[a] += 1
	SubLoss[a] += 1
end

act '...':gt $loc
--- EndFight ---------------------------------

