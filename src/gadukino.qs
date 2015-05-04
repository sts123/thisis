# gadukino
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Деревня Гадюкино</H4></center>'

if month >= 5 and month <= 9:
	'<center><img src="images/pic/gadukino.jpg"></center>'
else
	'<center><img src="images/pic/gadukino_winter.jpg"></center>'
end

'Маленькая деревушка с покосившимися деревянными избами.'
if StoryLine = 1:'В одной из <a href="exec:minut += 5 & GT ''Gaddvor''">изб живут ваши дедушка и бабушка</a>.'

act 'Выйти на шоссе':minut += 30 & nroad = 15 & gt'road'
--- gadukino ---------------------------------

