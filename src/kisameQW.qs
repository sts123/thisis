# kisameQW
if $ARGS[0] = 'start':
	cla
	horny = horny + 20
	clr
	gs'stat'

	'<center><img src="images/picQW/kisame1.jpg"></center>'
	'Вы плаваете в бассейне, под водой кружит Кисаме постоянно дотрагиваясь до вашего тела. Он срывает с вас купальник и толкает вас ко дну бассейна.'
	'Кисаме погружается к вам и раздвигает ваши ноги.'

	act 'Пытаться его оттолкнуть':
		cla
		*clr
		horny = horny + 60
		sweat = -3
		manna = manna + 5
		willpower = willpower + 5
		clr
		gs'stat'

		'<center><img src="images/picQW/kisame2.jpg"></center>'
		'Кисаме не смотря на ваши попытки сопротивления раздвигает ваши ноги впивается губами в вашу куску, его язык проникает вам в вагину и ласкает вас словно. Вы чувствуете себя на верху блаженства.'

		act 'Подчиниться':
			cla
			*clr
			horny = horny + 60
			sweat = -3
			manna = manna + 5
			willpower = willpower + 5
			guy = guy + 1
			sex = sex + 1
			vagina = vagina + 1
			if KisameSex = 0:KisameSex = 1 & guy = guy + 1
			clr
			gs'stat'

			'<center><img src="images/picQW/kisame3.jpg"></center>'
			'Кисаме играет с вами как с игрушкой, он подплывает под вас и насаживает вашу киску на свой член. Вы одновременно на грани оргазма и обморока от удушья. Вы слышите голос Кисаме, ты можешь дышать под водой. Он жестко трахает вас в киску и вы не выдерживаете и вдыхаете в себя воду. Неожиданно вместо воды в ваши легкие попадает совершенно нормальный воздух.'
			'Вздохнув вас тут же охватывает оргазм, вы изгибаетесь в конвульсиях от удовольствия. Кисаме тоже кончает в вас.'

			act 'Далее':gt'kisameQW','after'
		end
		act 'Атаковать (Кисаме маг10)':
			cla
			*clr
			'<center><img src="images/picQW/kisameV.jpg"></center>'

			horny = horny + 60
			$nameV = 'Кисаме'
			!Статы
			strenV = 300
			speedV = 100
			agilV = 100
			reactV = 100
			vitalV = 200
			intelV = 100
			willV = 50
			!Навыки
			magikV = 10
			boxingV = 100
			shootV = 100
			!Параметры
			healthV = vitalV*10 + strenV*5
			mannaV = intelV*magikV + magikV*100 + vitalV*10
			willpowerV = willV*10
			BonusAtakV = 0
			BonusDefV = 0
			!программа действий
			program = 5

			kisamePic = 1
			KisaFight = 1
			klonV = 5
			!defenceV = 10000
			if spellavtoklon = 1:klon = 3
			if spellbefshild = 1:defence = 500
			gt'fight','start'

			'Вы ударили ногой по лицу Кисаме. Он показал зубы и его внешность стала изменяться, через мгновение он уже был синего цвета с жабрами на лице и акульими зубами. Он прошипел с улыбкой на лице "Хочешь поиграть детка? Давай поиграем!"'

			act 'Драться':gt'fight','start'
		end
	end
end

if $ARGS[0] = 'after':
	cla
	horny = horny + 20
	clr
	gs'stat'

	'<center><img src="images/picQW/kisameV.jpg"></center>'
	'Кисаме трансформировался молниеносно в синее акулоподобное существо. Он улыбнулся и сказал "Спасибо детка." С этими словами он шлепнул вас по заднице и пошел в мужскую раздевалку.'

	act 'Найти купальник и уйти в раздевалку':gt'bass','start'
end
--- kisameQW ---------------------------------

