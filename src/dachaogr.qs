# dachaogr
$metka = $ARGS[0]
$loc = $CURLOC
$metkaBed = $ARGS[0]
$locBed = $CURLOC
$metkaP = $ARGS[0]
$locP = $CURLOC
$metkaFight = $ARGS[0]
$locFight = $CURLOC

*clr
gs'stat'
gs'time'

!'
FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)
'

'<center><H4>Огород</H4></center>'

if month > 4 and month < 10:
	'<center><img src="images/etogame/vspah.jpg"></center>'
	'Ухоженный огород.'
elseif month <= 4 or month >= 10:
	'<center><img src="images/etogame/vspah.jpg"></center>'
	'Для посадок не сезон'
end

act 'Уйти':
	minut = minut+5
	gt'dachamy'
end
--- dachaogr ---------------------------------

