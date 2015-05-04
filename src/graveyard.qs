# graveyard
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Кладбище</H4></center>'
'<center><img src="images/pic/graveyard.jpg"></center>'
'Очень спокойное место погруженное в тишину навивающее философские мысли о бренности бытия.'
'В дальнем конце кладбища виднеется обветшалое сооружение, которое раньше было то ли склепом, то ли часовней.'

act 'Выйти на шоссе':minut += 15 & nroad = 3 & gt'road'

act 'Идти к склепу':
	cls
	minut += 15
	gs'stat'
	gs'time'

	'<center><img src="images/pic/graveyard2.jpg"></center>'
	'На окнах решетки защищающие покрытые пылью окна, все вокруг заросло кустами.'

	act 'Выйти на шоссе':minut += 15 & gt $curloc
end
--- graveyard ---------------------------------

