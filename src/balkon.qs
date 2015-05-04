# balkon
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color=maroon>Балкон квартиры</font></b></center>'

	if nude = 0:
		'<center><img src="images/etogame/clo_balcon.jpg"></center>'
	elseif nude = 1:
		if tanga = 0:'<center><img src="images/etogame/nude_balcon.jpg"></center>'
		if tanga = 1:'<center><img src="images/etogame/tanga_balcon.jpg"></center>'
	end

	'Вы вышли на балкон.'

	if hour >= 0 and hour <= 6:
		'На улице темно, фонарь освещает улицу.'
	elseif hour = 7:
		'На улице утренний рассвет, поют птички.'
	elseif hour >= 8 and hour <= 19:
		'На улице ясный день.'
	elseif hour >= 20 and hour <= 23:
		'На улице сумерки.'
	end

	if nude = 1:
		if sosedBalDay ! day:temp = RAND(1,4)
		if sosedBalDay = day:temp = RAND(1,3)

		if temp = 1:
			'На вас никто не обращает внимания.'
		elseif temp = 2:
			'На вас никто не обращает внимания.'
		elseif temp = 3:
			'На вас никто не обращает внимания.'
		elseif temp = 4:
			'Сосед слева вышел на балкон, и смотрит на вас голую.'

			act 'Посмотреть на соседа':gt'balkon2','sosed'
		end
	end

	if sigaret >= 1:act 'Закурить сигарету':gt'balkon2','kurit'

	act 'Посмотреть вниз':gt'balkon2','niz'
	act 'Уйти с балкона':gt'sitr'
end
--- balkon ---------------------------------

