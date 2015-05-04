# metro
if $ARGS[0] = 'start':
	'<center><b><font color = maroon>Станция метро</font></b></center>'
	if $loc = 'street':'<center><b><font color = maroon>Спальный район</font></b></center>'
	if $loc = 'down':'<center><b><font color = maroon>Центр</font></b></center>'
	if $loc = 'Nord':'<center><b><font color = maroon>Северный район</font></b></center>'
	'<center><img src="images/pic/metro.jpg"></center>'
	'Проезд на метро стоит 16 рублей.'
	minut += 15
	clr
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	if workDisk = 3 and konvert = 1:
		badrand = RAND(0,100)
		if badrand >= 80:konvert = 0
	end

	if money >= 16:
		if $loc ! 'street':
			act 'Ехать в Спальный район':
				$loc = 'street'
				gt'metro','vagon'
			end
		end
		if $loc ! 'down':
			act 'Ехать в Центр':
				$loc = 'down'
				gt'metro','vagon'
			end
		end
		if $loc ! 'Nord':
			act 'Ехать в Северный район':
				$loc = 'Nord'
				gt'metro','vagon'
			end
		end
	end

	act 'Выйти из метро':
		minut += 15
		gt'<<$loc>>'
	end
end

if $ARGS[0] = 'vagon':
	cla
	clr
	money -= 16
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Вагон метро</font></b></center>'

	if hour < 5 or hour > 10 and hour < 15 or hour > 24:
		'<center><img src="images/pic/vagon.jpg"></center>'
		'В вагоне всего несколько пассажиров уныло разглядывающих рекламу в вагоне.'
	elseif hour >= 5 and hour <= 10 or hour >= 15 and hour <= 24:
		'<center><img src="images/pic/vagonFull.jpg"></center>'
		'В вагоне много людей, все стоят как статуи не обращая ни малейшего внимания на окружающих.'

		frotrand = RAND(0,100)
		if frotrand >= 90 - (frot*10) and frot < 3:
			gt'frot','a'
		elseif frotrand >= 90 - (frot*10) and frot >= 3 and cumfrot = 0 and ski = 1 or frotrand >= 90 - (frot*10) and frot >= 3 and cumfrot = 0 and glamur = 1:
			tipfrot = RAND(0,1)
			if tipfrot = 0:gt'frot','b'
			if tipfrot = 1:gt'frot','d1'
			!gt'frot','b'
		elseif frotrand >= 90 - (frot*10) and frot >= 3 and cumfrot = 0 and ski = 0 or frotrand >= 90 - (frot*10) and frot >= 3 and cumfrot = 0 and glamur = 0:
			tipfrot = RAND(0,2)
			if tipfrot = 0:gt'frot','c'
			if tipfrot = 1:gt'frot','d'
			if tipfrot = 2:gt'frot','e'
		end
	end

	if sosedQW >= 1:
		if hour = 7 or hour = 15:
			sosedMetroRand = RAND(0,100)
			if sosedMetroRand >= 60 and sosedMetroDay ! day:
				'Вы замечаете в метро <a href="exec:Gt ''TimofeiMetro''">Тимофей</a>, вашего соседа.'
			end
		end
	end

	if cumfrot > 0 or cumface > 0:
		if hour >= 7 and hour <= 21:
			manna -= 10
			'Несколько пассажиров вылупились на вас разглядывая сперму в которой вы перемазаны.'
		end
	end

	act 'Выйти из вагона':gt'metro','start'
end
--- metro ---------------------------------

