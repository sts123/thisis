# gdkbibl
$metka = $ARGS[0]
$loc = $CURLOC

frost = 0
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Дом культуры</font></b></center>'
'<center><img src="images/qwest/alter/gdkbibl.jpg"></center>'
'Небольшая библиотека в которой много интересных книг.'

act 'Выйти':gt'gdk'

if hour >= 8 and hour <= 18:
	act 'Читать научную книгу 1 час':
		cls
		minut += 60
		if intel >= 50:intel += RAND(0,1)
		if intel < 50 and intel >= 25:intel += RAND(1,2)
		if intel < 25:intel += RAND(1,3)
		gs'stat'

		'Вы в течении часа читаете книгу пытаясь понять всякие умные фразочки и разобраться в предмете описания.'

		act 'Отложить книгу':gt $curloc
	end
	act 'Читать развлекательную книгу 1 час':
		cls
		minut += 60
		manna += 100
		willpower += 100
		gs'stat'

		'Вы в течении часа читаете книгу о приключениях.'

		act 'Отложить книгу':gt $curloc
	end
	act 'Читать собрание сочинений Льва Толстого 1 час':
		cls
		minut += 60
		if will >= 50:will += RAND(0,1)
		if will < 50 and will >= 25:will += RAND(1,2)
		if will < 25:will += RAND(1,3)
		gs'stat'

		'Вы в течении часа читаете книгу. Толстой конечно классик, этого никто не отрицает, но писал он тягомотину редкую.'

		act 'Отложить книгу':gt $curloc
	end
else
	'Библиотека закрывается.'
end
--- gdkbibl ---------------------------------

