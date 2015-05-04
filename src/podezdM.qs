# podezdM
if $ARGS[0] = 'start':
	minut = minut + 15

	'<<$boyA>> сказал "Пойдем в киоск, пивасика купим"'

	act 'Идти обнявшись':
		cla

		if harakBoyA = 0:bfa = bfa + 2
		if harakBoyA = 1:bfa = bfa + 1
		if harakBoyA = 2:bfa = bfa - 1

		'<center><img src="images/pic/boygo.jpg"></center>'
		'Вы идете обнявшись до киоска, там <<$boyA>> покупает пива и чипсов и вы идете в ближайший подъезд.'

		gt'podezdM','kiosk'
	end
	act 'Идти держась за руки':
		cla

		if harakBoyA = 0:bfa = bfa + 1
		if harakBoyA = 1:bfa = bfa + 2
		if harakBoyA = 2:bfa = bfa - 1

		'<center><img src="images/pic/boygo1.jpg"></center>'
		'Вы идете держась за руки до киоска, там <<$boyA>> покупает пива и чипсов и вы идете в ближайший подъезд.'

		gt'podezdM','kiosk'
	end
	act 'Идти рядом':
		cla

		if harakBoyA = 0:bfa = bfa - 1
		if harakBoyA = 1:bfa = bfa + 1
		if harakBoyA = 2:bfa = bfa + 2

		'<center><img src="images/pic/boygo2.jpg"></center>'
		'Вы идете до киоска, там <<$boyA>> покупает пива и чипсов и вы идете в ближайший подъезд.'

		gt'podezdM','kiosk'
	end
end

if $ARGS[0] = 'kiosk':
	cla
	*clr
	minut = minut + 30
	fat = fat + 1
	manna = manna + 10
	willpower = willpower + 10
	podrand = RAND(5,100)

	'<center><img src="images/pic/podezdM.jpg"></center>'
	'В подъезде парень открывает вам бутылку пива и подает ее вам.'

	act 'Выпить немного':
		cla
		alko += 1
		gs'stat'

		if podrand < 9:
			xgt'podezdM','kiosk1'
		elseif podrand >= 9:
			gt'podezdM','grup'
		end
	end
	act 'Выпить бутылку':
		cla
		alko += 2
		fat = fat + 1
		manna = manna + 10
		willpower = willpower + 10
		gs'stat'

		if podrand < 9:
			gt'podezdM','kiosk1'
		elseif podrand >= 9:
			gt'podezdM','grup'
		end
	end
end

if $ARGS[0] = 'kiosk1':
	cla
	*clr

	if dayA > 15 and harakBoyA = 2:gs'boylove','tits'
	if dayA > 20 and harakBoyA = 1:gs'boylove','tits'
	if dayA > 25 and harakBoyA = 0:gs'boylove','tits'
	if dayA > 20 and harakBoyA = 2:gs'boylove','figure'
	if dayA > 25 and harakBoyA = 1:gs'boylove','figure'
	if dayA > 30 and harakBoyA = 0:gs'boylove','figure'

	gs'anekdot'

	'<<$boyA>> пьет пиво и рассказывает вам анекдот <<$anek>>'

	act 'Смеяться':
		cla
		SUB = SUB + 1
		bfa = bfa + 1
		gt'podezdM','kiosk2'
	end
	act 'Улыбаться':
		cla
		gt'podezdM','kiosk2'
	end
	act 'Не смешно':
		cla
		DOM = DOM + 1
		bfa = bfa - 1
		gt'podezdM','kiosk2'
	end
end

if $ARGS[0] = 'kiosk2':
	cla
	*clr

	if harakBoyA = 0:
		if daya < 20 and boyonceA = 0:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		elseif daya >= 20 and boyonceA = 0:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		elseif boyonceA = 1:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		end
	elseif harakBoyA = 1:
		if daya < 10 and boyonceA = 0:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		elseif daya >= 10 and boyonceA = 0:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		elseif boyonceA = 1:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		end
	elseif harakBoyA = 2 and izvrat = 0:
		if daya < 3 and boyonceA = 0:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		elseif daya >= 3 and boyonceA = 0:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		elseif boyonceA = 1:
			'<<$boyA>> допил пиво и предложил проводить вас до дома.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		end
	elseif harakBoyA = 2 and izvrat = 1:
		if daya < 3 and boyonceA = 0:
			'<<$boyA>> допил пиво и бросив бутылку сказал вам. "Светик, ты такая сочная, я хочу тебя!" с этим словами он подошел к вам и крепко обняв за талию впился своими губами в ваши, его язык проник вам в рот.'

			act 'Вырваться':
				cla
				'Вы вырвались из его цепких объятий, а он грубо вам сказал "Ну что ты ломаешься, ты же сама хочешь этого."'

				act 'Да пошел ты!':
					cla
					DOM = DOM + 1
					bfA = 0
					gt'street'
				end
				act 'Целоваться':
					cla
					'<<$boyA>> целует вас и его руки спускаются с вашей талии на попу и крепко ее сжимают.'

					gt'sexm','startPod'
				end
			end
			act 'Целоваться':
				cla
				SUB = SUB + 1

				'<<$boyA>> целует вас и его руки спускаются с вашей талии на попу и крепко ее сжимают.'

				gt'sexm','startPod'
			end

			exit
		elseif daya >= 3 and boyonceA = 0:
			'<<$boyA>> допил пиво и предложил пойти к вам домой и трахнуть вас во все щели.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		elseif boyonceA = 1:
			'<<$boyA>> допил пиво и предложил пойти к вам домой и трахнуть вас во все щели.'

			act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'

			exit
		end
	end
end

if $ARGS[0] = 'grup':
	cla
	*clr
	'<center><img src="images/pic/podezdM1.jpg"></center>'
	'В подъезд вошли несколько парней, они подошли к вашему парню и поздоровались с ним. Парни принесли с собой водку и закуску.'

	act 'Отказаться пить':
		cla
		if harakBoyA = 0:bfa = bfa + 1
		if harakBoyA = 1:bfa = bfa - 1
		if harakBoyA = 2:bfa = bfa - 2
		gt'podezdM','grup1'
	end
	act 'Выпить немного':
		cla
		alko += 1
		gs'stat'
		if harakBoyA = 0:bfa = bfa + 1
		if harakBoyA = 1:bfa = bfa + 2
		if harakBoyA = 2:bfa = bfa + 1
		gt'podezdM','grup1'
	end
	act 'Бухать с парнями':
		cla
		alko += 2
		fat = fat + 1
		manna = manna + 10
		willpower = willpower + 10
		gs'stat'
		if harakBoy = 0:bfa = bfa - 1
		if harakBoy = 1:bfa = bfa + 1
		if harakBoy = 2:bfa = bfa + 2
		gt'podezdM','grup2'
	end
end

if $ARGS[0] = 'grup1':
	cla
	*clr
	gs'stat'

	'Вы тусите в подъезде с парнями, они травят анекдоты, бухают и гогочут.'
	'<<$boyA>> допил пиво и предложил проводить вас до дома.'

	act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'
end

if $ARGS[0] = 'grup2':
	cla
	*clr
	gs'stat'

	'Вы крепко накидались и пол плывет под вашими ногами, один из парней обнял вас за талию, что бы вы не упали.'
	'Другой парень загоготал и стал лапать вас за грудь.'

	if harakBoyA = 0:
		'<<$boyA>> начал мямлить "Ребят, вы что, нельзя же так!"'
		'На что пьяные парни только захохотали и стали стаскивать с вас одежду.'

		act 'Сопротивляться':gt'sexm','gangrape'
		act 'Отдаться':gt'sexm','gangbang'

		exit
	elseif harakBoyA = 1:
		'<<$boyA>> встал и рявкнул "Эй, вы охренели что ли? Это моя телка, убрал руки."'
		'Парни стушевались и ослабили хватку.'

		act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'
		act 'Заткнись, я сама решаю с кем мне спать, идите сюда мальчики':gt'sexm','gangbang'

		exit
	elseif harakBoyA = 2 and izvrat = 0:
		'<<$boyA>> встал и молча разбил бутылку о голову парня который лапал вас за грудь, парень повалился на пол и застонал. <<$boyA>> негромко и уверенно сказал "Еще кто нибудь хочет?"'
		'Парни моментально отпустили вас и отошли в сторону.'

		act 'Идти вместе с парнем до своего подъезда':gt'sexm','start'
		act 'А может все вместе..?':gt'sexm','gangbang'

		exit
	elseif harakBoyA = 2 and izvrat = 1:
		'<<$boyA>> заржал "Давайте эту шлюху по кругу пустим!"'
		'Пьяные парни с энтузиазмом восприняли это предложение и начали стаскивать с вас одежду.'

		act 'Сопротивляться':gt'sexm','gangrape'
		act 'Отдаться':gt'sexm','gangbang'

		exit
	end
end
--- podezdM ---------------------------------

