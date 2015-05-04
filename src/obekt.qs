# obekt
clr
gs'stat'
gs'time'

'<center><H4>Объект</H4></center>'
'<center><img src="images/pic/obekt.jpg"></center>'
'Стройка на объекте остановлена и на территории тишина, только прохаживается охранник.'

if car > 0 and cardrive = 12:
	cardrive = 12

	'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
end

act 'Проникнуть на стройку':
	cls
	minut += 5
	gs'stat'

	if ObjektOpen = 0:
		if ObjektBil = 0:ObjektBil = 1

		'Стройку охраняют очень тщательно, просто так войти не удастся.'

		act 'Уйти':gt $curloc
	else
		gt'obekt2'
	end
end

if ObjektBil = 1:
end

act 'Выйти на дорогу':minut += 15 & nroad = 16 & gt'road'
--- obekt ---------------------------------

