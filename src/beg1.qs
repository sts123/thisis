# beg1
if $ARGS[0] = 'start':
	cla
	*clr
	clr
	gs'stat'
	minut = minut + 60
	kolsorev = kolsorev + 1
	begmon = month

	if razradbeg = 0:
		'Вас записывают в группу новичков.'

		act 'Выйти на беговую дорожку':xgt'beg1','br'
	elseif razradbeg = 1:
		'Вас записывают в группу третеразрядников.'

		act 'Выйти на беговую дорожку':xgt'beg1','3'
	elseif razradbeg = 2:
		'Вас записывают в группу вторых разрядов. Чемпионат города.'

		act 'Выйти на беговую дорожку':xgt'beg1','2'
	elseif razradbeg = 3:
		'Вас записывают в группу первых разрядов. Чемпионат области.'

		act 'Выйти на беговую дорожку':xgt'beg1','1'
	elseif razradbeg = 4:
		'Вас записывают в группу КМС. Чемпионат региона.'

		act 'Выйти на беговую дорожку':xgt'beg1','kms'
	elseif razradbeg = 5:
		'Вас записывают в группу Мастеров Спорта. Чемпионат России.'

		act 'Выйти на беговую дорожку':xgt'beg1','ross'
	elseif razradbeg >= 6 and razradbeg < 16:
		'Вас записывают в группу Мастеров Спорта международного класса. Квалификационные соревнование за выход на Чемпионат Европы.'

		act 'Выйти на беговую дорожку':xgt'beg1','kval'
	elseif razradbeg = 16:
		if razradbegK < 8:
			cla
			razradbegK = 0
			razradbeg = 6

			'Вы не прошли квалификационный отбор на Чемпионат Европы.'

			act 'Уйти':gt'fit','razd'
		elseif razradbegK >= 8:
			cla
			razradbegK = 0
			razradbeg = 6

			'Вас записывают на чемпионат Европы.'

			act 'Выйти на беговую дорожку':xgt'beg1','evro'
		end
	end
end

if $ARGS[0] = 'br':
	cla
	beg = beg + 1
	fat = fat - 10

	begplus = beg + speed + vital + RAND(1,20)
	begminus = salo + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Женщины, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 10:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 10 and begresult < 20:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 20 and begresult < 30:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 30 and begresult < 40:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 40 and begresult < 50:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 50 and begresult < 60:bronzebeg = bronzebeg + 1 & money = money + 100 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 100 рублей'
	if begresult >= 60 and begresult < 70:silverbeg = silverbeg + 1 & money = money + 500 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 500 рублей'
	if begresult >= 70:razradbeg = 1 & goldbeg = goldbeg + 1 & money = money + 1000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 1000 рублей и 3й спортивный разряд по бегу.'

	act 'Уйти':gt'down'
end

if $ARGS[0] = '3':
	cla
	beg = beg + 1
	fat = fat - 10

	begplus = beg + speed + vital + RAND(1,20)
	begminus = salo + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 70:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 70 and begresult < 80:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 80 and begresult < 90:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 90 and begresult < 100:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 100 and begresult < 110:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 110 and begresult < 120:bronzebeg = bronzebeg + 1 & money = money + 500 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 500 рублей'
	if begresult >= 120 and begresult < 130:silverbeg = silverbeg + 1 & money = money + 1000 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 1000 рублей'
	if begresult >= 130:razradbeg = 2 & goldbeg = goldbeg + 1 & money = money + 2000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 2000 рублей и 2й спортивный разряд по бегу.'

	act 'Уйти':gt'down'
end

if $ARGS[0] = '2':
	cla
	beg = beg + 1
	fat = fat - 10

	begplus = beg + speed + vital + RAND(1,20)
	begminus = salo + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Женщины, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 130:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 130 and begresult < 140:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 140 and begresult < 150:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 150 and begresult < 160:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 160 and begresult < 170:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 170 and begresult < 180:bronzebeg = bronzebeg + 1 & money = money + 1000 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 1000 рублей'
	if begresult >= 180 and begresult < 190:silverbeg = silverbeg + 1 & money = money + 2000 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 2000 рублей'
	if begresult >= 200:razradbeg = 3 & goldbeg = goldbeg + 1 & money = money + 3000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 3000 рублей и 1й спортивный разряд по бегу. Вы становитесь Чемпионкой города по бегу.'

	act 'Уйти':gt'down'
end

if $ARGS[0] = '1':
	cla
	beg = beg + 1
	fat = fat - 10

	begplus = beg + speed + vital + RAND(1,20)
	begminus = salo + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Женщины, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 200:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 200 and begresult < 210:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 210 and begresult < 220:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 230 and begresult < 240:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 240 and begresult < 250:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 250 and begresult < 260:bronzebeg = bronzebeg + 1 & money = money + 2000 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 2000 рублей'
	if begresult >= 260 and begresult < 270:silverbeg = silverbeg + 1 & money = money + 3000 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 3000 рублей'
	if begresult >= 270:razradbeg = 4 & goldbeg = goldbeg + 1 & money = money + 4000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 4000 рублей и звание КМС по бегу. Вы становитесь чемпионкой области.'

	act 'Уйти':gt'down'
end

if $ARGS[0] = 'kms':
	cla
	beg = beg + 1
	fat = fat - 10

	begplus = beg + speed + vital + RAND(1,20)
	begminus = salo + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Женщины, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 270:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 270 and begresult < 280:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 280 and begresult < 290:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 290 and begresult < 300:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 300 and begresult < 310:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 310 and begresult < 320:bronzebeg = bronzebeg + 1 & money = money + 3000 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 3000 рублей'
	if begresult >= 320 and begresult < 330:silverbeg = silverbeg + 1 & money = money + 4000 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 4000 рублей'
	if begresult >= 330:razradbeg = 5 & goldbeg = goldbeg + 1 & money = money + 5000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 5000 рублей и звание Мастер спорта по бегу. Вы становитесь чемпионкой региона.'

	act 'Уйти':gt'down'
end

if $ARGS[0] = 'ross':
	cla
	beg = beg + 1
	fat = fat - 10

	begplus = beg + speed + vital + RAND(1,20)
	begminus = (salo*2) + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Женщины, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 330:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 330 and begresult < 340:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 340 and begresult < 350:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 350 and begresult < 360:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 360 and begresult < 370:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 370 and begresult < 380:bronzebeg = bronzebeg + 1 & money = money + 4000 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 4000 рублей'
	if begresult >= 380 and begresult < 390:silverbeg = silverbeg + 1 & money = money + 5000 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 5000 рублей'
	if begresult >= 390:razradbeg = 6 & goldbeg = goldbeg + 1 & money = money + 6000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 6000 рублей и звание Мастер спорта международного класса по бегу. Вы становитесь Чемпионкой России.'

	act 'Уйти':gt'down'
end

if $ARGS[0] = 'kval':
	cla
	beg = beg + 1
	fat = fat - 10

	razradbeg = razradbeg + 1
	begplus = beg + speed + vital + RAND(1,20)
	begminus = (salo*3) + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Женщины, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 450:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 450 and begresult < 500:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 500 and begresult < 550:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 550 and begresult < 600:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 600 and begresult < 650:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 650 and begresult < 700:razradbegK = razradbegK + 1 & bronzebeg = bronzebeg + 1 & money = money + 5000 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 5000 рублей'
	if begresult >= 700 and begresult < 800:razradbegK = razradbegK + 1 & silverbeg = silverbeg + 1 & money = money + 10000 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 10 тысяч рублей'
	if begresult >= 800:razradbegK = razradbegK + 1 & goldbeg = goldbeg + 1 & money = money + 15000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 15 тысяч рублей.'

	act 'Уйти':gt'down'
end

if $ARGS[0] = 'evro':
	cla
	beg = beg + 1
	fat = fat - 10

	razradbeg = razradbeg + 1
	begplus = beg + speed + vital + RAND(1,20)
	begminus = (salo*4) + RAND(1,20)
	begresult = begplus - begminus

	'<center><img src="images/pic/begsor.jpg"></center>'
	'Женщины, забег на 400 метров. Вы переодеваетесь и выходите на беговую дорожку. Встаете на старт. Раздается стартовый выстрел.'

	if begresult <= 0:'Вы с трудом сумели добежать до финиша, какое уж там место, конечно вы последняя.'
	if begresult > 0 and begresult < 450:'Вы не плохо пробежали, для дилетантки конечно, так как заняли последнее 8 место.'
	if begresult >= 450 and begresult < 550:'Вы упорно боролись, но сумели занять только предпоследнее 7 место.'
	if begresult >= 700 and begresult < 800:'Вы упорно боролись, но сумели занять только 6 место.'
	if begresult >= 800 and begresult < 1000:'Вы упорно боролись, но сумели занять только 5 место.'
	if begresult >= 1000 and begresult < 1300:'Вы упорно боролись, но сумели занять только 4 место.'
	if begresult >= 1300 and begresult < 1800:razradbegEB = razradbegEB + 1 & money = money + 10000 & 'Вы упорно боролись, и сумели занять призовое 3 место. Вы получаете бронзовую медаль и приз 10 тысяч рублей'
	if begresult >= 1800 and begresult < 2500:razradbegES = razradbegES + 1 & money = money + 15000 & 'Вы упорно боролись, и сумели занять призовое 2 место. Вы получаете серебряную медаль и приз 15 тысяч рублей'
	if begresult >= 2500:razradbegEG = razradbegEG + 1 & money = money + 20000 & 'Вы упорно боролись, и сумели занять 1 место. Вы получаете золотую медаль, приз 20 тысяч рублей. Вы чемпионка Европы.'

	act 'Уйти':gt'down'
end
--- beg1 ---------------------------------

