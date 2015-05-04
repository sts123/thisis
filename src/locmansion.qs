# locmansion
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Коттеджный поселок</H4></center>'
'<center><img src="images/pic/locmansion.jpg"></center>'
'Элитный поселок в котором могут позволить себе жить только сливки общества.'

if car > 0 and cardrive = 19:
	cardrive = 19

	'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
end

act 'Выйти на шоссе':minut += 15 & nroad = 1 & gt'road'

if placeMansion > 0:'<a href="exec:GT ''youplace''">Ваш земельный участок</a>.'
--- locmansion ---------------------------------

