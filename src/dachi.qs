# dachi
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Дачный кооператив</H4></center>'
'<center><img src="images/pic/dachi.jpg"></center>'

if car > 0 and cardrive = 18:
	cardrive = 18

	'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
end

'Вначале аллеи вкопан в землю <a href="exec:GT ''etoexhib'',''pos7''">столбик с объявлениями</a>.'
'В конце аллеи находиться <a href="exec:GT ''etoexhib'',''pos6''">родник с ключевой водой</a>.'

if dachaest = 1:
	'Ваш <a href="exec:GT ''dachamy'',''start''">дачный участок</a>.'
	'Напротив Ваших 6 соток расположен точно такой же <a href="exec:GT ''etoexhib'',''pos8''">участок соседа</a>.'
end

if etoexhib < 13:'Вы чувствуете легкое присутствие магии.'

act 'Прогуляться по аллеям':gt'etoexhib','pos2'
act 'Выйти на шоссе':minut += 15 & nroad = 5 & gt'road'
--- dachi ---------------------------------

