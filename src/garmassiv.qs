# garmassiv
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Гаражный массив</H4></center>'
'<center><img src="images/pic/garmassiv.jpg"></center>'
'Большая площадь застроена разномастными гаражами в которых автолюбители хранят свои автомобили.'

if StoryLine = 1:'В одном из гаражей находится <a href="exec:minut += 5 & GT ''gargazel''">гараж вашего отчима</a>'

act 'Уйти в городок':minut += 5 & gt'gorodok'
--- garmassiv ---------------------------------

