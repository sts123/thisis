# arturSex
horny += 10
if arturSex = 0:arturSex = 1 & guy += 1
arturDay = day
gs'stat'
gs'arturdin'

'Артур обнял вас и его руки начали снимать вашу одежду и ласкать ваше тело.'

act 'Опуститься на колени':
	cls
	minut += 5
	gs'stat'

	'<center><img src="images/qwest/alter/artur/bj.jpg"></center>'
	'Вы сели на колени перед Артуром и стали дрочить его длинный и толстый член. Артур в нетерпении гладит вашу голову своей жилистой рукой.'

	act 'Сосать':
		cls
		minut += 5
		artbj += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/bj2.jpg"></center>'
		'Вы открыли рот и обхватили своими губами здоровенный член и начали сосать.'

		act 'Дальше':
			cls
			$artbef = 'Вы сосете член и Артур хватает вас за волосы.'
			dynamic $d_art_facefuck
		end
	end
	act 'Дрочить':
		cls
		bj += 1
		$artbef = 'Вы начали дрочить член и Артур тут же потерял терпение.'
		dynamic $d_art_facefuck
	end
end
act 'Наслаждаться':
	cls
	minut += 5
	horny += 10
	gs'stat'

	'Артур ласкает вас и раздевает.'

	tipsexart = RAND(0,2)
	if tipsexart = 0:dynamic $d_art_bed
	if tipsexart = 1:dynamic $d_art_bedmiss
	if tipsexart = 2:dynamic $d_art_facefuck
end
--- arturSex ---------------------------------

