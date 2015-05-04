# tvPar
gs'stat'

'<center><img src="images/pics/telek.jpg"></center>'
'Вы включили телевизор и поудобней устроились на диване.'

$din_wath_tv_h = {
	cls
	minut += 60
	willpower += RAND(5,10)
	manna += RAND(10,50)
	gs'stat'

	'<center><img src="images/pics/telek.jpg"></center>'
	'Вы смотрите центральный канал лежа на диване. Смотреть почти нечего, сплошная реклама и дрянные программы.'

	act 'Смотреть телевизор 1 час':dynamic $din_wath_tv_h
	act 'Встать с дивана':gt $locM, $metkaM
}

act 'Смотреть телевизор 1 час':dynamic $din_wath_tv_h
act 'Встать с дивана':gt $locM, $metkaM
--- tvPar ---------------------------------

