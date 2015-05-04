# sportShop
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Магазин спортивных товаров.</font></b></center>'
	'<center><img src="images/pic/sportshop.jpg"></center>'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'torgcentr'
	end
	act 'В отдел женской одежды':
		cla
		minut = minut + 5
		gt'sportshop','clo'
	end

	if skak = 0 and money >= 500:
		act 'Купить скакалку (500 руб)':
			cla
			minut = minut + 5
			money = money - 500
			skak = 1

			act 'Забрать покупку':gt'sportshop','start'
		end
	end

	if obruch = 0 and money >= 1500:
		act 'Купить обруч (1500 руб)':
			cla
			minut = minut + 5
			money = money - 1500
			obruch = 1

			act 'Забрать покупку':gt'sportshop','start'
		end
	end

	if bookYog = 0 and money >= 1500:
		act 'Купить пособие по йоге (1500 руб)':
			cla
			minut = minut + 5
			money = money - 1500
			bookYog = 1

			act 'Забрать покупку':gt'sportshop','start'
		end
	end
end

if $ARGS[0] = 'clo':
	$metka = $ARGS[0]
	$loc = $CURLOC
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	cla
	clr
	*clr
	mag = 1
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Отдел женской одежды.</font></b></center>'
	'<center><img src="images/pic/sportshop.jpg"></center>'
	'Вся одежда стоит 4000 руб, спортивная одежда безразмерная.'

	act 'Выйти из отдела':
		cla
		minut = minut + 5
		gt'sportshop','start'
	end

	if money >= 4000:
		if yoga[1] = 0:
			act 'Осмотреть 1ю спортивную одежду':numdres = 1 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[2] = 0:
			act 'Осмотреть 2ю спортивную одежду':numdres = 2 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[3] = 0:
			act 'Осмотреть 3ю спортивную одежду':numdres = 3 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[4] = 0:
			act 'Осмотреть 4ю спортивную одежду':numdres = 4 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[5] = 0:
			act 'Осмотреть 5ю спортивную одежду':numdres = 5 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[6] = 0:
			act 'Осмотреть 6ю спортивную одежду':numdres = 6 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[7] = 0:
			act 'Осмотреть 7ю спортивную одежду':numdres = 7 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[8] = 0:
			act 'Осмотреть 8ю спортивную одежду':numdres = 8 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[9] = 0:
			act 'Осмотреть 9ю спортивную одежду':numdres = 9 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[10] = 0:
			act 'Осмотреть 10ю спортивную одежду':numdres = 10 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[11] = 0:
			act 'Осмотреть 11ю спортивную одежду':numdres = 11 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[12] = 0:
			act 'Осмотреть 12ю спортивную одежду':numdres = 12 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[13] = 0:
			act 'Осмотреть 13ю спортивную одежду':numdres = 13 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[14] = 0:
			act 'Осмотреть 14ю спортивную одежду':numdres = 14 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[15] = 0:
			act 'Осмотреть 15ю спортивную одежду':numdres = 15 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[16] = 0:
			act 'Осмотреть 16ю спортивную одежду':numdres = 16 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[17] = 0:
			act 'Осмотреть 17ю спортивную одежду':numdres = 17 & payclo = 4000 & gt'loker','yoga'
		end
		if yoga[18] = 0:
			act 'Осмотреть 18ю спортивную одежду':numdres = 18 & payclo = 4000 & gt'loker','yoga'
		end
	end
end
--- sportShop ---------------------------------

