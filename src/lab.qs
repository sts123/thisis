# lab
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Лаборатория Карины</font></b></center>'
	'<center><img src="images/picQW/lab.jpg"></center>'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'down'
	end
	act 'Тренироваться с Джуго':
		cla
		gt'lab','jugo'
	end
	act 'Тренироваться с Карин':
		cla
		gt'lab','karin'
	end

	if judosparday ! day:
		act 'Спарринг (Джуго, мутант, сила 600)':
			cla
			judosparday = day
			$nameV = 'Джуго'
			!Статы
			strenV = 600
			speedV = 60
			agilV = 60
			reactV = 50
			vitalV = 200
			intelV = 50
			willV = 50
			!Навыки
			magikV = 100
			boxingV = 100
			shootV = 100
			!Параметры
			healthV = vitalV*10 + strenV*5
			mannaV = intelV*10 + magikV*10
			willpowerV = willV*10
			BonusAtakV = 0
			BonusDefV = 0
			!программа действий
			program = 0
			jugoFight = 2
			gt'fight','start'
		end
	end

	if karinsparday ! day:
		act 'Спарринг (Карин, маг6)':
			cla
			karinsparday = day
			$nameV = 'Карин'
			!Статы
			strenV = 60
			speedV = 100
			agilV = 100
			reactV = 60
			vitalV = 100
			intelV = 100
			willV = 100
			!Навыки
			magikV = 100
			boxingV = 100
			shootV = 100
			!Параметры
			healthV = vitalV*10 + strenV*5
			mannaV = intelV*6 + magikV*10
			willpowerV = willV*10
			BonusAtakV = 0
			BonusDefV = 0
			!программа действий
			program = 4
			karinFight = 1
			gt'fight','start'
		end
	end
end

if $ARGS[0] = 'jugo':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Джуго</font></b></center>'
	'<center><img src="images/picPRE/jugoPRE.jpg"></center>'
	'Джуго сидит на полу и отстранено смотрит куда-то в пространство.'

	act 'Выйти':gt'lab','start'

	if jugoday ! day:
		act 'Развивать силу 1 час':
			cla
			stren = stren + RAND(3,6)
			minut = minut + 60
			jugoday = day

			'Вы выполняли физические упражнения под руководством Джуго.'

			act 'Выйти':gt'lab','jugo'
		end
		act 'Развивать скорость 1 час':
			cla
			speed = speed + RAND(3,6)
			minut = minut + 60
			jugoday = day

			'Вы выполняли физические упражнения под руководством Джуго.'

			act 'Выйти':gt'lab','jugo'
		end
		act 'Развивать ловкость 1 час':
			cla
			agil = agil + RAND(3,6)
			minut = minut + 60
			jugoday = day

			'Вы выполняли физические упражнения под руководством Джуго.'

			act 'Выйти':gt'lab','jugo'
		end
		act 'Развивать реакцию 1 час':
			cla
			react = react + RAND(3,6)
			minut = minut + 60
			jugoday = day

			'Вы выполняли физические упражнения под руководством Джуго.'

			act 'Выйти':gt'lab','jugo'
		end
		act 'Развивать выносливость 1 час':
			cla
			vital = vital + RAND(3,6)
			minut = minut + 60
			jugoday = day

			'Вы выполняли физические упражнения под руководством Джуго.'

			act 'Выйти':gt'lab','jugo'
		end
	end
end

if $ARGS[0] = 'karin':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Карина</font></b></center>'
	'<center><img src="images/picPRE/karinPRE.jpg"></center>'
	'Карин как всегда что то изучает.'

	act 'Выйти':gt'lab','start'
	act 'Я слишком жирная и хочу не толстеть':
		cla
		'(Вы) - Карин, я жирная дибилка не способная следить за своим весом, махни своей волшебной палочкой, что бы я не жирела.'
		'(Карин) - Тьфу, вот же понавылазят из пизды дауны, а мне потом возись с ними. Хер с тобой, получай. Только помни, это заклинание навсегда, ты только сможешь приходить и менять талию с бедрами, и так как сиськи состоят из жира, то я только по высочайшей милости тебе 1й размер сделаю, мало, пихай силикон. И решение обратного хода не имеет, либо будь силиконовой куклой, либо живи как человек, расколдовывать я тебя не стану. Так как жир у тебя больше усваиваться не будет и параметры тела удерживаются магическим образом, то не удивляйся сообщению о дистрофии и не удивляйся тому, что силы будут падать от недоедания быстрее, у тебя больше не будет внутренних резервов.'

		act 'Не не не я передумала. Впредь умнее буду':gt'lab','karin'
		act 'Хочу что бы талия была...':
			cla
			dounspell = 1
			TaliaDoun = input ("Объем талии в сантиметрах?")
			if TaliaDoun <= 0:TaliaDoun = 20

			act 'Хочу что бы бедра были...':
				cla
				bedraDoun = input ("Объем бедер в сантиметрах?")
				if bedraDoun <= 0:bedraDoun = 40

				act 'Наслаждаться своей глупостью':gt'lab','karin'
			end
		end
	end

	if IvanPodstavaQW = 2 and poverKAR = 0 and softKAR = 0:
		act 'Попросить у Карин помощи с Иваном':
			cla
			gs'stat'

			'Вы объяснили ситуацию Карин и попросили ее помощи. Карин задумчиво сказала. "Я не думаю, что есть какие то физические свидетельства виновности Ивана. Нужно добиться его признания. Думаю его можно бы захватить и допросить. Или напоить хитростью его сывороткой правды и допросить. В любом случае нужно все это снять на видео."'

			act 'Силовое решение':
				cls
				poverKAR = 1
				gs'stat'

				'<center><img src="images/picPRE/karinPRE.jpg"></center>'
				'Вы решили добиться признания Ивана силой. Карин сказала вам. Езжай к квартире Ивана. Там встретишься с Джуго. Он поможет решить вопрос. Только смотри, если он перейдет на второй уровень печати, он обезумеет. При втором уровне печати он превращается в чудовище.'

				act 'Выйти':gt'lab','karin'
			end
			act 'Хитрое решение':
				cls
				softKAR = 1
				gs'stat'

				'<center><img src="images/picPRE/karinPRE.jpg"></center>'
				'Вы решили добиться признания Ивана хитростью. Карин сказала вам. Езжай к квартире Ивана. Там мы с тобой встретимся и обтяпаем дельце.'

				act 'Выйти':gt'lab','karin'
			end
		end
	elseif poverKAR = 2:
		act 'Подойти к Карин по поводу атаки квартиры Ивана':
			cla
			poverKAR = 3

			'Вы подошли к Карин и та вздохнула. "Да, не удалось. Джуго поймал пулю в голову и его сила поднялась на следующий уровень, вылечила его, сделала почти неуязвимым, но окончательно лишила его разума. Джуго не только не добился признания Ивана, и не просто убил его, он разнес часть подъезда своей атакой. Но есть плюсы. Менты думают это был взрыв газа. Но теперь тебе придется либо выплачивать долг, либо садится в тюрьму."'

			act 'Выйти':gt'lab','karin'
		end
	end

	if karinday ! day:
		act 'Развивать интеллект 1 час':
			cla
			intel = intel + RAND(3,6)
			minut = minut + 60
			karinday = day

			'Вы занимались вместе с Карин развивая свой интеллект.'

			act 'Выйти':gt'lab','karin'
		end
		act 'Развивать волю 1 час':
			cla
			will = will + RAND(3,6)
			minut = minut + 60
			karinday = day

			'Вы занимались вместе с Карин развивая свой интеллект.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if spelltuman = 0 and magik >= 1:
		act 'Выучить технику тумана 1 час':
			cla
			minut = minut + 60
			spelltuman = 1

			'Вы разучили технику вызова тумана в бою.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if spellklon = 0 and magik >= 1:
		act 'Выучить технику защиты клонированием 1 час':
			cla
			minut = minut + 60
			spellklon = 1

			'Вы разучили технику подмены себя клоном в бою.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if spellstun = 0 and magik >= 2:
		act 'Выучить технику паралича 1 час':
			cla
			minut = minut + 60
			spellstun = 1

			'Вы разучили технику парализации противника.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if spellwind = 0 and magik >= 2:
		act 'Выучить раздувания тумана 1 час':
			cla
			minut = minut + 60
			spellwind = 1

			'Вы разучили технику раздувания тумана.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if spellklon2 = 0 and magik >= 2:
		act 'Выучить тройное клонирование 1 час':
			cla
			minut = minut + 60
			spellklon2 = 1

			'Вы разучили технику тройного клонирования.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if spellenergo = 0 and magik >= 3:
		act 'Выучить энергощит 1 час':
			cla
			minut = minut + 60
			spellenergo = 1

			'Вы разучили технику энергощита.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if spellinit = 0 and magik >= 3:
		act 'Выучить технику замедления времени 1 час':
			cla
			minut = minut + 60
			spellinit = 1

			'Вы разучили технику замедления времени.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if magik >= 4 and spellhel = 0:
		!'С этого уровня магии я не могу тебя больше учить.'
		act 'Выучить технику лечения 1 час':
			cla
			minut = minut + 60
			spellhel = 1

			'Вы разучили технику лечения.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if magik >= 5 and spellavtoklon = 0:
		act 'Выучить технику автоклонирования 1 час':
			cla
			minut = minut + 60
			spellavtoklon = 1

			'Вы разучили технику автоклонирования. Эта техника позволяет вам войти в бой с уже созданными тремя клонами.'

			act 'Выйти':gt'lab','karin'
		end
	end

	if magik >= 6 and spellbefshild = 0:
		act 'Выучить технику предварительного щита 1 час':
			cla
			minut = minut + 60
			spellbefshild = 1

			'Вы разучили технику предварительного щита. Эта техника позволяет вам войти в бой с уже готовым щитом против физ воздействий.'

			act 'Выйти':gt'lab','karin'
		end
	end
end
--- lab ---------------------------------

