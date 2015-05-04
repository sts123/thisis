# dachamy
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Дача</H4></center>'
'<center><img src="images/etogame/dachamy.jpg"></center>'
'Ваша любимая дача.'

act 'Зайти в домик':gt'dachain'

if hour < 23 and hour >= 7:
	act 'Осмотреть огород':
		cla
		minut += 5
		if etoexhib < 16:gt'dachaogr0'
		if etoexhib = 16:gt'dachaogr'
	end
end

act 'Выйти на аллею':minut += 15 & gt'dachi'
--- dachamy ---------------------------------

