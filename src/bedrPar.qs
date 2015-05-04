# bedrPar
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
minut += 1
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Ваша спальная</font></b></center>'
'<center><img src="images/qwest/alter/<<$loc>>.jpg"></center>'
'Маленькая комната в которой с трудом втиснулся <a href="exec:GT ''loker'',''start''">шкаф</a>, ваша <a href="exec:GT ''bedPar''">кровать</a>, <a href="exec:GT ''stolPar''">письменный стол</a> и кровать сестры.'

gs'family'

if tanga = 0:tanga = 1

act 'Выйти из комнаты':
	gt'korrPar'
end

if student > 0 and kursovik < 100:
	act 'Писать курсовик 1 час':
		cla
		*clr
		minut += 60
		kursovik = kursovik + RAND(intel/20,intel/10)
		if kursovik > 100:kursovik = 100
		manna -= 10

		'<center><img src="images/pic/study.jpg"></center>'
		'Вы сидели над курсовой работой и подготовили ее на <<kursovik>> процентов.'

		act 'Выйти':gt $curloc
	end
end

if horny >= 50 and sisterHere = 0:
	act 'Мастурбировать':
		gt'selfplay'
	end
end

if pornMagazine > 0:
	'Под матрацем у вас спрятан порножурнал.'
end

if sisterHere = 0 and pornMagazine > 0:
	dynamic $d_read_porn
end

dynamic $d_read_book

if tovarL > 0:'У вас хранится <<tovarL>> единиц мелкого товара. Максимально вы можете хранить в своей комнате 30 единиц товара.'

if card > 0:
	act 'Взять колоду карт':
		gt'card'
	end
end

if dur > 0:
	'У вас спрятано <<dur>> доз бледной леди'
end

if dur > 0 and narkday ! day:
	act 'Нюхнуть бледной леди 5 мин':
		cla
		*clr
		minut += 5
		narkday = day
		health = vital*10 + stren*5
		willpower = intel*5 + will*5
		manna = (intel*magik) + magik*100 + vital*10 + rikudo
		horny = 100
		nark += 10
		dur -= 1

		'<center><img src="images/pic/dur.jpg"></center>'
		'Вы отсыпали дозу порошка и нюхнули его, после этого вы почувствовали себя просто превосходно.'

		act 'Выйти':gt $curloc
	end
end
--- bedrPar ---------------------------------

