# FSfight
minut += 1
gs'stat'

'Ваше здоровье <<FSHP>>.'
'<<$FSnameV>>, здоровье <<FSHPV>>'

!конец боя
if FSHP <= 0:
	FSloss += 1

	'Вы проиграли бой'

	act 'Уйти':gt'FSgame'

	exit
end

if FSHPV <= 0:
	FSWin += 1

	'<<$FSnameV>> упал. Вы выиграли бой.'
	'Вы получили <<FSPrizeM>> монет и <<FSPrizeExp>> опыта'

	act 'Выйти из боя':gt'FSgame'

	exit
end

!инициатива
KGOLiniV = RAND(FSreaktV/2,FSreaktV*2)
KGOLini = RAND(FSreakt/2,FSreakt*2)

if KGOLini = KGOLiniV:
	hodrand = RAND(0,1)
	if hodrand = 0:KGOLini = 1 & KGOLiniV = 0
	if hodrand = 1:KGOLini = 0 & KGOLiniV = 1
end

if KGOLini > KGOLiniV:KGOLiniSUM += 1
if KGOLini < KGOLiniV:KGOLiniSUM -= 1
if KGOLiniSUM > 3:KGOLini = 0 & KGOLiniV = 1 & KGOLiniSUM = 0
if KGOLiniSUM < -3:KGOLini = 1 & KGOLiniV = 0 & KGOLiniSUM = 0

!ходы
if KGOLini > KGOLiniV:
	'Сейчас ваш ход'

	act 'Атака':
		cls

		''

		dynamic $FSatk

		act 'Далее':gt $curloc
	end
else
	'Сейчас ход противника'
	'<<$FSnameV>> атакует вас'

	dynamic $FSatkV

	act 'Далее':gt $curloc
end
--- FSfight ---------------------------------

