# balkon2
if $ARGS[0] = 'kurit':
	cla
	clr
	*clr
	minut = minut + 10
	vikureno = vikureno + 1
	sigaret = sigaret - 1
	son = son + 1
	gs'stat'

	'<center><img src="images/etogame/kurit.jpg"></center>'
	'Вы закурили сигарету...'

	act 'Бросить окурок...':gt'balkon','start'
end

if $ARGS[0] = 'demo1':
	cla
	clr
	*clr
	horny += RAND(30,50)
	minut = minut + 5
	sosedBalDay = day
	if exhibi = 2:exhibi = 3
	gs'stat'

	if tanga = 1:'<center><img src="images/etogame/pose_tanga.jpg"></center>'
	if tanga = 0:'<center><img src="images/etogame/pose_nude.jpg"></center>'

	'Вы демонстративно позируйте на балконе, на радость соседу. Он жадно смотря на вас яростно дрочит. Спустя 5 минут он кончил и ушел в свою квартиру.'

	act 'Далее':gt'balkon','start'
end

if $ARGS[0] = 'palec1':
	cla
	clr
	*clr
	horny += RAND(10,30)
	minut = minut + 1
	sosedBalDay = day
	gs'stat'

	if tanga=1:'<center><img src="images/etogame/fuck_clo.jpg"></center>'
	if tanga=0:'<center><img src="images/etogame/fuck_nude.jpg"></center>'

	'Вы показали соседу большой палец и он ушел с балкона.'

	act 'Далее':gt'balkon','start'
end

if $ARGS[0] = 'niz':
	cla
	clr
	*clr
	gs'stat'

	if alcohol < 12:
		if hour >= 8 and hour <= 19:
			'<center><img src="images/etogame/bal1.jpg"></center>'
		elseif hour >= 20 and hour <= 23 or hour >= 0 and hour <= 7:
			'<center><img src="images/etogame/bal2.jpg"></center>'
		end
		'Вы смотрите на панораму с вашего балкона.'

		act 'Далее':gt'balkon','start'
	end
end

if $ARGS[0] = 'sosed':
	cla
	clr
	*clr
	gs'stat'

	'<center><b><font color=maroon>Балкон квартиры</font></b></center>'
	'<center><img src="images/etogame/sosed.jpg"></center>'
	'Сосед слева на балконе, смотрит на вас внимательно.'

	act 'Демонстрировать тело':gt'balkon2','demo1'
	act 'Показать извращенцу большой палец':gt'balkon2','palec1'
end
--- balkon2 ---------------------------------

