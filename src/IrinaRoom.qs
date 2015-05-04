# IrinaRoom
if $ARGS[0] = 'start':
	cla
	*clr
	minut = minut + 5
	clr
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Подъезд где живет ваша подружка Ира</font></b></center>'
	'<center><img src="images/pic/podezdhr.jpg"></center>'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'street'
	end
	act 'Позвонить в дверь Ирине':
		cla
		if hour >= 16 and hour <= 21 and week >= 6 and IrinaQW ! 2:
			'Вы позвонили в дверь и вам открыла Ира, она заулыбалась и пригласила вас войти.'

			act 'Пройти в квартиру':gt'IrinaRoom','first'
		else
			'Вы позвонили в дверь но никто не отвечает.'

			act 'Выйти':
				cla
				minut = minut + 5
				gt'street'
			end
		end
	end
end

if $ARGS[0] = 'first':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b><font color = maroon>Квартира Иры</font></b></center>'
	'<center><img src="images/pic/IrinaRoom.jpg"></center>'
	'Маленькая однокомнатная квартира Иры чистенькая и опрятная'

	act 'Выпивать на кухне':gt'IrinaRoom','first1'
end

if $ARGS[0] = 'first1':
	cla
	clr
	*clr
	minut = minut + 60
	manna = manna + 50
	gs'stat'

	'<center><img src="images/picVA/IrinaQW.jpg"></center>'
	'Вы с Ирой расположились на кухне с бутылочкой вина и закуской из фруктов, вы весело общались и болтали.'
	'И Ира и вы немного захмелели и разговор стал перетекать в более откровенные формы.'

	act 'Уйти':
		cla
		minut = minut + 60
		manna = manna + 50
		gt'street'
	end

	if IrinaQW = 1:
		act 'Предложить выпить на брудершафт':gt'IrinaRoom','first2'
	end
	if IrinaQW >= 10:
		act 'Целоваться':gt'IrinaRoom','kiss'
	end
end

if $ARGS[0] = 'kiss':
	cla
	*clr
	minut = minut + 10
	manna = manna + 50
	horny = horny + 20
	clr
	gs'stat'

	'<center><img src="images/picVA/IrinaKiss.jpg"></center>'
	'Вы страстно целуетесь с Ирой, и ласкаете ее упругие груди руками.'

	act 'Секс':gt'IrinaRoom','sex'
end

if $ARGS[0] = 'sex':
	cla
	clr
	*clr
	minut = minut + 60
	manna = manna + 50
	lesbian = lesbian + 1
	manna = manna + 100
	willpower = willpower + 100
	gs'stat'

	'<center><img src="images/picVA/IrinaSex.jpg"></center>'

	if horny < 50:
		horny -= 10

		'Оказавшись в кровати вы ласкаете друг друга со всей страстью и вылизываете влажные киски друг у друга. Но возбуждение плавно пропадает и вы чувствуете, что оргазма у вас уже не будет.'
	end
	if horny >= 50:
		horny = 0
		orgasm = orgasm + 1

		'Оказавшись в кровати вы ласкаете друг друга со всей страстью и вылизываете влажные киски друг у друга. Наконец вы обе удовлетворились.'
	end

	act 'Выйти':
		cla
		minut = minut + 5
		gt'street'
	end
end

if $ARGS[0] = 'first2':
	cla
	clr
	*clr
	minut = minut + 60
	manna = manna + 50
	gs'stat'

	'<center><img src="images/picVA/IrinaQW1.jpg"></center>'
	'Вы предложили Ире выпить на брудершафт, в честь знакомства.'

	act 'Поцеловать':gt'IrinaRoom','first3'
end

if $ARGS[0] = 'first3':
	cla
	clr
	*clr
	manna = manna + 50
	horny = horny + 20
	gs'stat'

	'<center><img src="images/picVA/IrinaQW2.jpg"></center>'
	'Вы поцеловали Иру в ее теплые, мягкие, пахнущие вином губы. Ирина после поцелуя раскраснелась и смотрит на вас смущенно и немного испуганно.'

	act 'Раздеть Иру':gt'IrinaRoom','first4'
	act 'Поить Иру дальше':gt'IrinaRoom','first5'
end

if $ARGS[0] = 'first4':
	cla
	clr
	*clr
	IrinaQW = 2
	gs'stat'

	'Вы начали снимать блузку с Иры, она подпрыгнула и вскочила со стула с воплем "Ты что творишь? Я не лесбиянка!"'
	'Она сильно испугалась вашего натиска и указала вам на дверь.'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'street'
	end
end

if $ARGS[0] = 'first5':
	cla
	clr
	*clr
	IrinaQW = 10
	horny = horny + 20
	gs'stat'

	'<center><img src="images/picVA/IrinaQW3.jpg"></center>'
	'Вы накачали Иру вином, она сильно опьянела и пролила вино на себя. Она пошла в ванную переодеться. Вы тоже вошли туда и предложили ей помочь.'
	'Она разделась и вы решили последовать ее примеру и тоже раздевшись залезли под душ. Вы начали намыливать тело Иры и увидели как у нее встали торчком соски.'

	act 'Целовать':gt'IrinaRoom','first6'
end

if $ARGS[0] = 'first6':
	cla
	clr
	*clr
	horny = horny + 20
	gs'stat'

	'<center><img src="images/picVA/IrinaQW4.jpg"></center>'
	'Вы страстно впились губами в сочные губы Иры, она неожиданно ответила на ваш поцелуй очень страстно.'

	act 'Ласкать грудь':gt'IrinaRoom','first7'
end

if $ARGS[0] = 'first7':
	cla
	clr
	*clr
	horny = horny + 20
	gs'stat'

	'<center><img src="images/picVA/IrinaQW5.jpg"></center>'
	'Вы опустили голову к груди Иры и начали сосать и лизать ее твердые соски Ира застонала от удовольствия.'

	act 'Лизать киску':gt'IrinaRoom','first8'
end

if $ARGS[0] = 'first8':
	cla
	clr
	*clr
	horny = horny + 20
	girl = girl + 1
	lesbian = lesbian + 1
	gs'stat'

	'<center><img src="images/picVA/IrinaQW6.jpg"></center>'
	'Вы стали целовать все ниже и ниже пока не опустились до уровня сочившейся влагой киски Иры. Ваш язычок начал ласкать ее клитор и вскоре она задрожала и начала стонать от оргазма.'
	'Ира решила отплатить вам той же монетой и не говоря не слова положила вас на край ванной и ее губы впились в вашу киску.'

	act 'Лизать киску':gt'IrinaRoom','first9'
end

if $ARGS[0] = 'first9':
	cla
	clr
	*clr
	horny = 0
	orgasm = orgasm + 1
	manna = manna + 100
	willpower = willpower + 100
	gs'stat'

	'<center><img src="images/picVA/IrinaQW7.jpg"></center>'
	'Губы и язык Иры быстро возымели эффект и вы кончили со страстными стонами.'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'street'
	end
end
--- IrinaRoom ---------------------------------

