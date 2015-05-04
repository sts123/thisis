# obekt2
clr
gs'stat'
gs'time'

'<center><H4>Объект</H4></center>'
'<center><img src="images/pic/obekt.jpg"></center>'
'На стройке уже нет техники, но все еще стоит бытовка в которой сидит сторож. Провал в земле закрыт железным листом.'

act 'Проникнуть в провал':
	cls
	minut += 10
	gs'stat'
	gt'dangeon'
end
act 'Выйти с территории стройки':
	cls
	minut += 5
	gs'stat'
	gt'obekt'
end
--- obekt2 ---------------------------------

