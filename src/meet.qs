# meet
if $ARGS[0] = 'start':
	minut = minut + 15
	dayA = dayA + 1
	svidanieA = 0
	giftNum = giftNumA

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	$boy = $boyA
	$namev = $boy
	$boybody = $boybodyA
	$boybod = $boybodA
	$boyface = $boyfaceA

	!длинна члена
	dick = dickA
	!! половая сила от 0 до 2
	silaVag = silaVagA
	!!Обеспеченность, отвечает за деньги и требования 0 нищий, 1 середняк 2 богат
	finance = financeA
	!!проверка по внешности, от параметра vnesh
	vneshBoy = vneshBoyA

	$boyClo = $boyCloA
	!0 - зад меньше 80, 1 зад от 80 до 100, 2 зад свыше 100
	figurBoy = figurBoyA
	!0 - грудь меньше 3, 1 грудь 3-4, 2 грудь больше 4
	titBoy = titBoyA
	!любимый цвет волос 0 - брюнетка, 1 - шатенка, 2 - рыжая, 3 - блондинка
	haerBoy = haerBoyA
	!характер 0 - мягкий, 1 -норма 2 - агрессор
	harakBoy = harakBoyA
	!извращенность
	izvrat = izvratA

	if love = 3:
		'Вас встретил <<$boyA>> и посадил в нанятый им свадебный лимузин.'

		act 'Сесть в лимузин':
			cla
			'Вы сели в лимузин, а <<$boyA>> сел в другую машину. Вскоре лимузин подъехал к дворцу бракосочетаний.'

			act 'Выйти за муж':
				cla
				minut = minut + 60
				love = 0
				bfA = 0
				husband = 100
				husbanday = 0

				$husName = $boyA
				$husHair = $boyfaceA
				$husBody = $boybodyA
				$husFat = $boybodA

				husDick = dickA
				harakHusb = harakBoyA
				izvratH = izvratA
				silavagH = silavagA
				husbFin = financeA
				husbandMark = 1

				'Свадьба проходила в кафе. Гостей было не много и конечно только со стороны жениха. Было много поздравлений, тостов, игрищь и криков горько. К вечеру все напились и вас с новоиспеченным мужем увезли домой.'

				act 'Брачная ночь':gt'husbsex','room'
			end
		end

		exit
	elseif love = 2:
		'<<$boyA>> выглядит очень взволнованным и неожиданно достает колечко из коробочки.'
		'(<<$boyA>>) - Света. Я предлагаю тебе руку и сердце, выйди за меня за муж.'

		act 'Нет (Расстаться)':
			minut = minut + 60
			bfA = 0
			pregtalk = 0
			gt'street'
		end
		act 'Да':
			cla
			'Вы согласились и одели кольцо на палец. <<$boyA>> обрадовался и обнял вас крепко поцеловав.'
			'(<<$boyA>>) - А теперь поехали выберем тебе свадебное платье.'

			act 'Ехать за платьем':
				cla
				minut = minut + 60
				love = 3

				'Вы сели в такси вместе со своим женихом и поехали в магазин выбирать платье. Там вы выбрали дорогое и роскошное платье и <<$boyA>> оплатил его покупку.'
				'После всех этих мотании по городу вы устали и <<$boyA>> отвез вас домой, предупредив, что на следующей встрече вы поженитесь.'

				act 'Уйти':gt'street'
			end
		end

		exit
	end

	if mop > 1 and glamur = 1 and curly > 0 and love = 1 and harakBoyA = 0:
		'<<$boyA>> выглядит очень взволнованным, осмотрев вас он решил, что вы готовы предстать перед его мамой.'

		act 'Ехать к родителям':gt'love','mother'

		exit
	elseif mop > 1 and glamur = 1 and curly > 0 and love = 1 and harakBoyA = 1 and tanga = 1:
		'<<$boyA>> осмотрев вас решил, что вы готовы предстать перед его друзьями.'

		act 'Ехать к друзьям':gt'love','frends'

		exit
	end

	if skin = 0:bfa = bfa - 2 & $meetskin = 'стоит смотря себе под ноги'
	if skin = 1:bfa = bfa - 1 & $meetskin = 'бросает на вас взгляд'
	if skin = 2:$meetskin = 'глядит на вас'
	if skin = 3:bfa = bfa + 1 & $meetskin = 'улыбается завидев вас'
	if skin = 4:bfa = bfa + 2 & $meetskin = 'улыбается завидев вас'

	if harakBoyA = 0:
		if mop <= 2 and mop > 0:bfA = bfA + 1 & $meetmop = 'ты сегодня такая красивая.'
		if mop = 4:bfA = bfA - 1 & $meetmop = 'отличная сегодня погода.'
	elseif harakBoyA = 1:
		if mop <= 3 and mop > 0:bfA = bfA + 1 & $meetmop = 'ты сегодня такая красивая.'
		if mop = 4:bfA = bfA - 1 & $meetmop = 'ярко ты накрасилась, вроде не хэллоуин.'
	elseif harakBoyA = 2:
		if mop = 4:bfA = bfA + 1 & $meetmop = 'ты сегодня такая красивая.'
		if mop <= 2 and mop > 0:bfA = bfA - 1 & $meetmop = 'отличная сегодня погода.'
	end

	if mop = 0:bfA = bfA - 1 & $meetmop = 'Эмм, у тебя косметика потекла.'
	if hapri = 1 and curly > 0:bfA = bfA + 2 & $meethair = 'У тебя очень красивая прическа.'
	if hapri = 1 and curly = 0:bfA = bfA + 1 & $meethair = 'У тебя симпатичная прическа.'
	if hapri = 0:bfA = bfA - 1 & $meethair = 'Я гляжу ты очень спешила на нашу встречу.'
	if harakBoyA = 0:$meet = '"Привет любимая! Рад тебя видеть, <<$meetmop>> <<$meethair>>"'
	if harakBoyA = 1:$meet = '"Привет Света! Рад тебя видеть, <<$meetmop>> <<$meethair>>"'
	if harakBoyA = 2:$meet = '"Привет Светик! Рад тебя видеть, <<$meetmop>> <<$meethair>>"'
	$meetcol = ''

	if dayA > 10 and harakBoy = 2:
		if haerBoyA ! hcol:
			bfA = bfA - 5
			if haerBoyA = 0:$meetcol = '<<$boyA>> говорит, что вам бы пошел черный цвет волос.'
			if haerBoyA = 1:$meetcol = '<<$boyA>> говорит, что вам бы пошел русый цвет волос.'
			if haerBoyA = 2:$meetcol = '<<$boyA>> говорит, что вам бы пошел рыжий цвет волос.'
			if haerBoyA = 3:$meetcol = '<<$boyA>> говорит, что вам бы пошел светлый цвет волос.'
		elseif haerBoyA = hcol:
			bfA = bfA + 1

			'<<$boyA>> говорит, что у вас чудесный цвет волос.'
		end
	end

	if dayA > 20 and harakBoy = 1:
		if haerBoyA ! hcol:
			bfA = bfA - 5
			if haerBoyA = 0:$meetcol = '<<$boyA>> говорит, что вам бы пошел черный цвет волос.'
			if haerBoyA = 1:$meetcol = '<<$boyA>> говорит, что вам бы пошел русый цвет волос.'
			if haerBoyA = 2:$meetcol = '<<$boyA>> говорит, что вам бы пошел рыжий цвет волос.'
			if haerBoyA = 3:$meetcol = '<<$boyA>> говорит, что вам бы пошел светлый цвет волос.'
		elseif haerBoyA = hcol:
			bfA = bfA + 1

			'<<$boyA>> говорит, что у вас чудесный цвет волос.'
		end
	elseif dayA > 30 and harakBoy = 0:
		if haerBoyA ! hcol:
			bfA = bfA - 5
			if haerBoyA = 0:$meetcol = '<<$boyA>> говорит, что вам бы пошел черный цвет волос.'
			if haerBoyA = 1:$meetcol = '<<$boyA>> говорит, что вам бы пошел русый цвет волос.'
			if haerBoyA = 2:$meetcol = '<<$boyA>> говорит, что вам бы пошел рыжий цвет волос.'
			if haerBoyA = 3:$meetcol = '<<$boyA>> говорит, что вам бы пошел светлый цвет волос.'
		elseif haerBoyA = hcol:
			bfA = bfA + 1

			'<<$boyA>> говорит, что у вас чудесный цвет волос.'
		end
	end

	if lip = 0:$meetlip = 'тонкие губы'
	if lip = 1:$meetlip = 'мягкие губы'
	if lip = 2:$meetlip = 'пухленькие губы'
	if lip = 3:$meetlip = 'крупные, пухлые губы'
	if lip = 4:$meetlip = 'толстые и огромные губы'

!!!!!!!!!!!!
!!!ДИАЛОГ!!!
!!!!!!!!!!!!

	'У подъезда <<$meetskin>> <<$boyA>>. Увидев вас он подходит к вам и говорит. <<$meet>> <<$meetcol>>'

	if financeA = 0:$clom = 'одетым в дешевый спортивный костюм.'
	if financeA = 1:$clom = 'одетым в джинсы и свитер.'
	if financeA = 2:$clom = 'одетым в респектабельный и дорогой пиджак.'

	if harakBoyA = 0:'<<$boyA>> выглядит робким и не уверенным в себе молодым человеком <<$clom>>'
	if harakBoyA = 1:'<<$boyA>> выглядит уверенным и спокойным молодым человеком <<$clom>>'
	if harakBoyA = 2:'<<$boyA>> выглядит дерзким и нахальным молодым человеком <<$clom>>'

	if dayA >= 2 and financeA = 2 and giftDay < (dayA - giftNum):
		giftrand = RAND(0,2)
		if giftrand <= financeA:
			giftDayA = dayA
			giftNum = giftNum + 1
			gift = RAND(bfa*20,bfa*30)
			if gift > 2500:gift = 2500
			giftNumA = giftNum
			money = money + gift

			'<<$boyA>> залез в карман и достал для вас подарок на <<gift>> рублей.'
		end
	elseif dayA >= 5 and financeA = 1 and giftDay < (dayA - giftNum):
		giftrand = RAND(0,2)
		if giftrand <= financeA:
			giftDayA = dayA
			giftNum = giftNum + 1
			gift = RAND(bfa*10,bfa*20)
			if gift > 1500:gift = 1500
			giftNumA = giftNum
			money = money + gift

			'<<$boyA>> залез в карман и достал для вас подарок на <<gift>> рублей.'
		end
	elseif dayA >= 10 and financeA = 0 and giftDay < (dayA - giftNum):
		giftrand = RAND(0,2)
		if giftrand <= financeA:
			giftDayA = dayA
			giftNum = giftNum + 1
			gift = RAND(bfa*5,bfa*10)
			if gift > 500:gift = 500
			giftNumA = giftNum
			money = money + gift

			'<<$boyA>> залез в карман и достал для вас подарок на <<gift>> рублей.'
		end
	end

	'<<$boybody>> <<$boybod>> <<$boyface>> подходит к вам и хочет вас поцеловать.'

	if venera < 4 and cumface = 0:
		!cumlip
		act 'Поцеловать с языком':
			cla
			if cumlip = 0:
				'<center><img src="images/pic/kiss.jpg"></center>'

				if harakBoyA = 0:bfa = bfa - 2 & 'Вы прижали свои <<$meetlip>> к твердым губам парня и приоткрыв рот просунули свой язык ему в рот. <<$boyA>> покраснел и отстранился.'
				if harakBoyA = 1:bfa = bfa - 1 & 'Вы прижали свои <<$meetlip>> к твердым губам парня и приоткрыв рот просунули свой язык ему в рот. <<$boyA>> нежно обсосал ваш язык.'
				if harakBoyA = 2:bfa = bfa + 2 & 'Вы прижали свои <<$meetlip>> к твердым губам парня и приоткрыв рот просунули свой язык ему в рот. <<$boyA>> агрессивно протолкнул свой язык вам в рот и практически начал сношать вас в рот своим языком.'

				act 'Закончить поцелуй':xgt'meet','a'

				exit
			elseif cumlip > 0:
				'<center><img src="images/pic/cumlip.jpg"></center>'
				'<<$boyA>> поцеловал вас в ваши пахнущие спермой <<$meetlip>> и отстранился. "Что это?" спросил он "У тебя изо рта спермой пахнет."'

				if izvrat = 1:
					bfa = bfa + 5
					DOM = DOM + 1

					'<<$boyA>> покраснел и потупил глаза, вы отчетливо увидели как у него образовался холмик на брюках.'

					act 'Закончить поцелуй':xgt'meet','a'

					exit
				else
					bfa = 0

					'<<$boyA>> в гневе вас отшвырнул от себя "Ах ты грязная шлюха! Проваливай, что бы я больше тебя не видел, между нами все кончено!"'

					act 'Уйти':gt'street'

					exit
				end
			end
		end
		act 'Поцеловать в губы':
			cla
			if cumlip = 0:
				'<center><img src="images/pic/kiss1.jpg"></center>'

				if harakBoyA = 0:'Вы подставили для поцелуя губы и <<$boyA>> немного смущаясь поцеловал вас.'
				if harakBoyA = 1:bfa = bfa + 2 & 'Вы подставили для поцелуя губы и <<$boyA>> быстро вас чмокнул.'
				if harakBoyA = 2:bfa = bfa - 1 & 'Вы подставили для поцелуя губы и <<$boyA>> смачно поцеловал вас, вдавливая свои твердые губы в ваши <<$meetlip>>.'

				act 'Закончить поцелуй':xgt'meet','a'

				exit
			elseif cumlip > 0:
				'<center><img src="images/pic/cumlip.jpg"></center>'
				'<<$boyA>> поцеловал вас в ваши пахнущие спермой <<$meetlip>> и отстранился. "Что это?" спросил он "У тебя изо рта спермой пахнет."'

				if izvrat = 1:
					bfa = bfa + 5
					DOM = DOM + 1

					'<<$boyA>> покраснел и потупил глаза, вы отчетливо увидели как у него образовался холмик на брюках.'

					act 'Закончить поцелуй':xgt'meet','a'

					exit
				else
					boya = 0

					'<<$boyA>> в гневе вас отшвырнул от себя "Ах ты грязная шлюха! Проваливай, что бы я больше тебя не видел, между нами все кончено!"'

					act 'Уйти':gt'street'

					exit
				end
			end
		end
		act 'Поцеловать в щеку':
			cla
			DOM = DOM + 1

			'<center><img src="images/pic/kiss2.jpg"></center>'

			if harakBoyA = 0:bfa = bfa + 1 & 'Вы подставили щечку и <<$boyA>> робко вас чмокнул.'
			if harakBoyA = 1:'Вы подставили щечку и <<$boyA>> вас чмокнул.'
			if harakBoyA = 2:bfa = bfa - 2 & 'Вы подставили щечку и <<$boyA>> поцеловал вас с обескураженным видом.'

			if giftDayA = dayA:
				bfa = bfa - 3
				if harakBoyA = 0:'<<$boyA>> выглядит расстроенным.'
				if harakBoyA = 1:'<<$boyA>> выглядит оскорбленным.'
				if harakBoyA = 2:'<<$boyA>> выглядит рассерженным.'
			end

			act 'Закончить поцелуй':xgt'meet','a'

			exit
		end
		act 'Не целоваться':
			cla
			DOM = DOM + 2

			if harakBoyA = 0:bfa = bfa - 1 & 'Вы кивнули и поздоровались, <<$boyA>> стушевался и немного покраснел.'
			if harakBoyA = 1:bfa = bfa - 2 & 'Вы кивнули и поздоровались, <<$boyA>> немного нахмурился.'
			if harakBoyA = 2:bfa = bfa - 3 & 'Вы кивнули и поздоровались, <<$boyA>> хмыкнул и ухмыльнулся.'

			if giftDayA = dayA:
				bfa = bfa - 3
				if harakBoyA = 0:'<<$boyA>> выглядит расстроенным.'
				if harakBoyA = 1:'<<$boyA>> выглядит оскорбленным.'
				if harakBoyA = 2:'<<$boyA>> выглядит рассерженным.'
			end

			act 'Далее':xgt'meet','a'

			exit
		end
	elseif venera >= 4:
		bfa = 0

		'<center><img src="images/pic/venera.jpg"></center>'
		'<<$boyA>> пристальней посмотрел на вас и сказал "Что это у тебя с губами? Они все в язвах. Это что, генитальный герпес? Я лучше пойду, не хочу заразиться. Прощай."'

		act 'Уйти':gt'street'

		exit
	elseif cumface > 0:
		'<center><img src="images/pic/cumface.jpg"></center>'
		'<<$boyA>> пристальней посмотрел на вас и сказал "Что это у тебя в волосах застряло? Это что, сперма?"'

		if izvrat = 1:
			bfa = bfa + 5
			DOM = DOM + 1

			'<<$boyA>> покраснел и потупил глаза, вы отчетливо увидели как у него образовался холмик на брюках.'

			act 'Да это сперма, еще вопросы есть?':
				cla
				gs'stat'

				'(Вы) - Да это сперма, еще вопросы есть?'
				'<<$boyA>> отрицательно покачал головой.'

				xgt'meet','a'
			end

			exit
		else
			boya = 0

			'<<$boyA>> в гневе вас отшвырнул от себя "Ах ты грязная шлюха! Проваливай, что бы я больше тебя не видел, между нами все кончено!"'

			act 'Уйти':gt'street'

			exit
		end
	end
end

if $ARGS[0] = 'a':
	if cumfrot > 0:
		'"Эй, а в чем это ты перемазана?" поинтересовался <<$boyA>> глядя на вашу попу. "Это же сперма!"'

		if izvrat = 1:
			bfa = bfa + 5
			DOM = DOM + 1

			'<<$boyA>> покраснел и потупил глаза, вы отчетливо увидели как у него образовался холмик на брюках.'
		else
			bfa = 0

			'<<$boyA>> в гневе вас отшвырнул от себя "Ах ты грязная шлюха! Проваливай, что бы я больше тебя не видел, между нами все кончено!"'

			act 'Уйти':gt'street'

			exit
		end
	end

	if financeA = 0:
		if glamur = 1:
			bfa = bfa - (harakBoyA + 1)

			'"А ты шикарно одеваешься" скептично заметил <<$boyA>> разглядывая ваше дорогое платье.'
		end

		if skirt = 1 or sport = 1:
			bfa = bfa + (harakBoyA + 1)

			'"Классный прикид" заметил <<$boyA>>'
		end

		mesorand = RAND(0,1)
		if mesorand = 0:
			'<<$boyA>> предложил вам выпить пивка в подъезде.'

			act 'Извини, но мне срочно нужно бежать':
				cla
				bfa = bfa - (harakBoyA + 1)
				gt'street'
			end
			act 'Пойдем':gt'podezdM','start'

			exit
		elseif mesorand = 1:
			'<<$boyA>> предложил вам погулять в парке.'

			act 'Извини, но мне срочно нужно бежать':
				cla
				bfa = bfa - (harakBoyA + 1)
				gt'street'
			end
			act 'Пойдем':gt'parkM','start'

			exit
		end
	elseif financeA = 1:
		if glamur = 1 or skirt = 1:
			bfa = bfa - (harakBoyA + 1)

			'"Отличная одежда" восхищенно заметил <<$boyA>>.'
		end

		if sport = 1:
			bfa = bfa - (harakBoyA + 1)

			'"А ты спортивная девушка" скептически заметил <<$boyA>> разглядывая вашу одежду.'
		end

		mesorand = RAND(0,2)
		if mesorand = 0:
			'<<$boyA>> предложил вам сходить в кино.'

			act 'Извини, но мне срочно нужно бежать':
				cla
				bfa = bfa - (harakBoyA + 1)
				gt'street'
			end
			act 'Пойдем':gt'kinoM','start'

			exit
		elseif mesorand = 1:
			'<<$boyA>> предложил вам погулять в парке.'

			act 'Извини, но мне срочно нужно бежать':
				cla
				bfa = bfa - (harakBoyA + 1)
				gt'street'
			end
			act 'Пойдем':gt'parkM','start'

			exit
		elseif mesorand = 2:
			'<<$boyA>> предложил вам посидеть в кафе.'

			act 'Извини, но мне срочно нужно бежать':
				cla
				bfa = bfa - (harakBoyA + 1)
				gt'street'
			end
			act 'Пойдем':gt'kafeM','start'

			exit
		end
	elseif financeA = 2:
		if glamur = 1:
			bfa = bfa + (harakBoyA + 1)

			'"У тебя отличный вкус в одежде" восхищенно заметил <<$boyA>> разглядывая ваше дорогое платье.'
		elseif glamur = 0:
			bfa = bfa - (harakBoyA + 1)

			'"Милый нарядец" скептически заметил <<$boyA>> разглядывая вашу простенькую одежду.'
		end

		mesorand = RAND(0,1)
		if mesorand = 0:
			'<<$boyA>> предложил вам сходить в кафе.'

			act 'Извини, но мне срочно нужно бежать':
				cla
				bfa = bfa - (harakBoyA + 1)
				gt'street'
			end
			act 'Пойдем':gt'kafeM','start'

			exit
		elseif mesorand = 1:
			'<<$boyA>> предложил вам сходить в ресторан.'

			act 'Извини, но мне срочно нужно бежать':
				cla
				bfa = bfa - (harakBoyA + 1)
				gt'street'
			end
			act 'Пойдем':gt'restoranM','start'

			exit
		end
	end
end
--- meet ---------------------------------

