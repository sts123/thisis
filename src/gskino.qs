# gskino
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><img src="images/gevent/kinoteatr.jpg"></center>'
'Небольшой кинотеатр, в котором есть всего один небольшой зал. Билет в кино стоит 100 рублей.'

if money >= 100:
	act 'Сходить в кино':
		cla
		*clr
		money = money - 100
		minut = minut + 120
		manna = manna+ RAND(60,90)

		'Вы спокойно посмотрели фильм, после чего вышли из кинозала.'

		act 'Выйти из зала':gt'gskver'
	end
end

act 'Выйти из кинотеатра':minut = minut+5 & gt'gskver'
--- gskino ---------------------------------

