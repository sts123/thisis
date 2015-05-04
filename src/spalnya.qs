# spalnya
$metkaM = $ARGS[0]
$locM = $CURLOC

minut += 5
tanhouse1 = 1
gs'stat'

'<center><b>Спальня</b></center>'
'<center><img src="images/img/centr/spaln.jpg"></center>'
if komp = 1:'<a href="exec:GT ''Komp'',''start''">Компьютер</a>.'

act 'В коридор':gt'house'
act 'Заниматься(2 часа)':
	cla
	minut += 120
	intel += 1

	'Вы прозанимались два часа, кажется в вашей голове что-то отложилось'

	act 'Закончить':gt'spalnya'
end

if student > 0 and kursovik < 100:
	act 'Писать курсовик 1 час':
		cla
		*clr
		minut = minut + 60
		kursovik = kursovik + RAND(intel/20,intel/10)
		if kursovik > 100:kursovik = 100
		manna = manna - 10

		'<center><img src="images/pic/study.jpg"></center>'
		'Вы сидели над курсовой работой и подготовили ее на <<kursovik>> процентов.'

		act 'Закончить':gt'spalnya'
	end
end
act 'Зеркало':gt'mirror','start'
act 'Шкаф':gt'loker','start'
act 'В кровать':gt'bed','start'

if tanga = 0 and clrbelo > 0:
	act 'Одеть нижнее белье':
		cla
		tanga = 1
		gt'spalnya'
	end
else
	act 'Снять нижнее белье':
		cla
		tanga = 0
		gt'spalnya'
	end
end
--- spalnya ---------------------------------

