# svidan
if $ARGS[0] = 'start':
	if svidanieA = 1 and svidanieB = 1 and svidanieC = 1:
		bfA = 0
		bfB = 0
		bfC = 0
		svidanieA = 0
		svidanieB = 0
		svidanieC = 0
		manna = 0
		willpower = willpower - 30

		'<<$boyA>>, <<$boyB>> и <<$boyC>> подходят к вам, затем недоуменно переглядываются. Они все понимают и уходят. <<$boyC>> бросает вам на прощание "ну ты и шлюха!"'

		act 'Уйти':gt'street'

		exit
	elseif svidanieA = 1 and svidanieB = 1 and svidanieC = 0:
		bfA = bfA - 1
		bfB = 0
		!bfC = 0
		svidanieA = 0
		svidanieB = 0
		svidanieC = 0
		manna = manna - 10
		willpower = willpower - 20

		'<<$boyA>> и <<$boyB>> подходят к вам, затем недоуменно переглядываются. <<$boyA>> спрашивает, что это за хмырь к вам приперся. На что <<$boyB>> возмущается, что он ваш парень, а не этот полудурок.'
		if bfA > 0:'<<$boybodyA>> <<$boybodA>> <<$boyA>> бьет кулаком своему конкуренту в лицо. <<$boyB>> падает на землю с разбитым лицом. <<$boyA>> говорит поверженному сопернику, "еще раз тебя увижу возле моей девчонки вообще убью нахер."'
		if bfA <= 0:'<<$boyA>> плюет со злостью на землю и говорит. "Пошла ты на хер, шлюха." и уходит швырнув цветы в помойку. <<$boyB>> глядит на происходящее и уходит не говоря ни слова.'

		act 'Уйти':gt'street'

		exit
	elseif svidanieA = 1 and svidanieB = 0 and svidanieC = 1:
		bfA = bfA - 1
		!bfB = 0
		bfC = 0
		svidanieA = 0
		svidanieB = 0
		svidanieC = 0
		manna = manna - 10
		willpower = willpower - 20

		'<<$boyA>> и <<$boyC>> подходят к вам, затем недоуменно переглядываются. <<$boyA>> спрашивает, что это за хер с горы к вам приперся. На что <<$boyC>> возмущается, что он ваш парень, а не этот полудурок.'
		if bfA > 0:'<<$boybodyA>> <<$boybodA>> <<$boyA>> бьет кулаком своему конкуренту в лицо. <<$boyC>> падает на землю с разбитым лицом. <<$boyA>> говорит поверженному сопернику, "еще раз тебя увижу возле моей девчонки вообще убью нахер."'
		if bfA <= 0:'<<$boyA>> плюет со злостью на землю и говорит. "Пошла ты на хер, шлюха." и уходит швырнув цветы в помойку. <<$boyC>> глядит на происходящее и уходит не говоря ни слова.'

		act 'Уйти':gt'street'

		exit
	elseif svidanieA = 0 and svidanieB = 1 and svidanieC = 1:
		bfB = bfB - 1
		!bfB = 0
		bfC = 0
		svidanieA = 0
		svidanieB = 0
		svidanieC = 0
		manna = manna - 10
		willpower = willpower - 20

		'<<$boyB>> и <<$boyC>> подходят к вам, затем недоуменно переглядываются. <<$boyB>> спрашивает, что это за хер с горы к вам приперся. На что <<$boyC>> возмущается, что он ваш парень, а не этот полудурок.'
		if bfb > 0:'<<$boybodyB>> <<$boybodB>> <<$boyB>> бьет кулаком своему конкуренту в лицо. <<$boyC>> падает на землю с разбитым лицом. <<$boyB>> говорит поверженному сопернику, "еще раз тебя увижу возле моей девчонки вообще убью нахер."'
		if bfb <= 0:'<<$boyB>> плюет со злостью на землю и говорит. "Пошла ты на хер, шлюха." и уходит швырнув цветы в помойку. <<$boyC>> глядит на происходящее и уходит не говоря ни слова.'

		act 'Уйти':gt'street'

		exit
	elseif svidanieA = 1 and svidanieB = 0 and svidanieC = 0:
		dayA = dayA + 1
		svidanieA = 0
		willpower = willpower + RAND(5,10)
		manna = manna + RAND(5,10)

		if harakBoy = 0:
			if mop <= 2 and mop > 0:bfA = bfA + 1
			if mop = 4:bfA = bfA - 1
		elseif harakBoy = 1:
			if mop <= 3 and mop > 0:bfA = bfA + 1
			if mop = 4:bfA = bfA - 1
		elseif harakBoy = 2:
			if mop = 4:bfA = bfA + 1
			if mop <= 2 and mop > 0:bfA = bfA - 1
		end

		'<<$boybodyA>> <<$boybodA>> <<$boyA>> подходит к вам и целует вас приветствуя.'

		if dayA >= 30:
			giftrand = RAND(0,2)
			if giftrand <= financeA:
				gift = RAND(bfa*10,bfa*50)
				money = money + gift

				'<<$boyA>> сделал вам подарок на <<gift>> рублей.'
			end
		end

		act 'Поцеловать':gt'svidan','a'
		act 'Избежать поцелуя':
			cla
			bfA = bfA - 1
			gt'svidan','a'
		end

		exit
	elseif svidanieA = 0 and svidanieB = 1 and svidanieC = 0:
		dayB = dayB + 1
		svidanieB = 0

		'<<$boybodyb>> <<$boybodb>> <<$boyb>> подходит к вам и целует вас приветствуя.'

		act 'Поцеловать':gt'svidan','b'

		exit
	elseif svidanieA = 0 and svidanieB = 0 and svidanieC = 1:
		dayc = dayc + 1
		svidaniec = 0

		'<<$boybodyc>> <<$boybodc>> <<$boyc>> подходит к вам и целует вас приветствуя.'

		act 'Поцеловать':gt'svidan','c'

		exit
	end
end

if $ARGS[0] = 'a':
	if financeA = 0:gt'svi','poor'
	if financeA = 1:gt'svi','norm'
	if financeA = 2:gt'svi','reach'
end

if $ARGS[0] = 'kustA':
	*clr
	minut = minut + 20

	'Вы спрятались в укромном уголке и <<$boyA>> достал свой член.'

	act 'Взять в рот':
		cla
		*clr
		bfA = bfA + 1
		if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
		bj = bj + 1
		dick = dickA
		harakBoy = harakBoyA
		minut = minut + 30
		$nameV = $boyA

		'<center><img src="images/picV/bj.jpg"></center>'
		'Вы встали на колени и <<$nameV>> достал свой член и подставил его к вашему лицу.'

		gs'oral','start'

		act 'Продолжать сосать':
			cla
			*clr
			swallow = swallow + 1
			cumlip = cumlip + 1

			'<center><img src="images/picV/swallow.jpg"></center>'
			'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$nameV>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

			act 'Уйти':
				cla
				gt'street'
			end
		end
		act 'Вынуть изо рта':
			cla
			*clr

			if harakBoyA = 0:
				'<center><img src="images/picV/hand.jpg"></center>'
				'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
			elseif harakBoyA = 1:
				tiprand = RAND(0,3)
				if tiprand < 3:
					'<center><img src="images/picV/hand.jpg"></center>'
					'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
				elseif tiprand = 3:
					facial = facial + 1
					cumface = cumface + 1

					'<center><img src="images/picV/facial.jpg"></center>'
					'Вы вынули член и в этот момент <<$nameV>> разрядился прямо вам на лицо, покрывая его теплой и липкой спермой.'
				end
			elseif harakBoyA = 2:
				facial = facial + 1
				cumface = cumface + 1

				'<center><img src="images/picV/facial.jpg"></center>'
				'<<$nameV>> удерживая вас за волосы вынул член из вашего рта и кончил вам на лицо, покрывая его теплой и липкой спермой.'
			end

			act 'Уйти':
				cla
				gt'street'
			end
		end
	end
end

if $ARGS[0] = 'carA':
	*clr
	minut = minut + 20

	'Вы сели в машину и <<$boyA>> обнял вас и начал целовать.'

	act 'Секс':
		cla
		*clr
		bfA = bfA + 1
		if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
		sex = sex + 1
		minut = minut + 30
		pose = 0
		$nameV = $boyA
		dick = dickA
		silavag = silavagA

		'<center><img src="images/picV/vag.jpg"></center>'
		'<<$nameV>> положил вас на спину и раздвинул ваши ноги.'

		gs'orgazm','start'

		act 'Уйти':
			cla
			gt'street'
		end
	end
	act 'Взять в рот':
		cla
		*clr
		bfA = bfA + 1
		if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
		bj = bj + 1
		dick = dickA
		harakBoy = harakBoyA
		minut = minut + 30
		$nameV = $boyA

		'<center><img src="images/picV/bj.jpg"></center>'
		'Вы встали на колени и <<$nameV>> достал свой член и подставил его к вашему лицу.'

		gs'oral','start'

		act 'Продолжать сосать':
			cla
			*clr
			swallow = swallow + 1
			cumlip = cumlip + 1

			'<center><img src="images/picV/swallow.jpg"></center>'
			'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$nameV>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

			act 'Уйти':
				cla
				gt'street'
			end
		end
		act 'Вынуть изо рта':
			cla
			*clr

			if harakBoyA = 0:
				'<center><img src="images/picV/hand.jpg"></center>'
				'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
			elseif harakBoyA = 1:
				tiprand = RAND(0,3)
				if tiprand < 3:
					'<center><img src="images/picV/hand.jpg"></center>'
					'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
				elseif tiprand = 3:
					facial = facial + 1
					cumface = cumface + 1

					'<center><img src="images/picV/facial.jpg"></center>'
					'Вы вынули член и в этот момент <<$nameV>> разрядился прямо вам на лицо, покрывая его теплой и липкой спермой.'
				end
			elseif harakBoyA = 2:
				facial = facial + 1
				cumface = cumface + 1

				'<center><img src="images/picV/facial.jpg"></center>'
				'<<$nameV>> удерживая вас за волосы вынул член из вашего рта и кончил вам на лицо, покрывая его теплой и липкой спермой.'
			end

			act 'Уйти':
				cla
				gt'street'
			end
		end
	end
end

if $ARGS[0] = 'hisA':
	*clr
	minut = minut + 20

	'Как только вы вошли в квартиру <<$boyA>> обнял вас и начал целовать.'

	act 'Секс':
		cla
		*clr
		bfA = bfA + 1
		if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
		sex = sex + 1
		minut = minut + 30
		pose = 0
		$nameV = $boyA
		dick = dickA
		silavag = silavagA

		'<center><img src="images/picV/vag.jpg"></center>'
		'<<$nameV>> положил вас на спину и раздвинул ваши ноги.'

		gs'orgazm','start'

		act 'Уйти':
			cla
			gt'street'
		end
	end
	act 'Взять в рот':
		cla
		*clr
		bfA = bfA + 1
		if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
		bj = bj + 1
		dick = dickA
		harakBoy = harakBoyA
		minut = minut + 30
		$nameV = $boyA

		'<center><img src="images/picV/bj.jpg"></center>'
		'Вы встали на колени и <<$nameV>> достал свой член и подставил его к вашему лицу.'

		gs'oral','start'

		act 'Продолжать сосать':
			cla
			*clr
			swallow = swallow + 1
			cumlip = cumlip + 1

			'<center><img src="images/picV/swallow.jpg"></center>'
			'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$nameV>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

			act 'Уйти':
				cla
				gt'street'
			end
		end
		act 'Вынуть изо рта':
			cla
			*clr

			if harakBoyA = 0:
				'<center><img src="images/picV/hand.jpg"></center>'
				'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
			elseif harakBoyA = 1:
				tiprand = RAND(0,3)
				if tiprand < 3:
					'<center><img src="images/picV/hand.jpg"></center>'
					'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
				elseif tiprand = 3:
					facial = facial + 1
					cumface = cumface + 1

					'<center><img src="images/picV/facial.jpg"></center>'
					'Вы вынули член и в этот момент <<$nameV>> разрядился прямо вам на лицо, покрывая его теплой и липкой спермой.'
				end
			elseif harakBoyA = 2:
				facial = facial + 1
				cumface = cumface + 1

				'<center><img src="images/picV/facial.jpg"></center>'
				'<<$nameV>> удерживая вас за волосы вынул член из вашего рта и кончил вам на лицо, покрывая его теплой и липкой спермой.'
			end

			act 'Уйти':
				cla
				gt'street'
			end
		end
	end
end

if $ARGS[0] = 'kvartA':
	*clr
	minut = minut + 20
	if housr > 0:housrA = 1 & housrMir = 0

	'Как только вы вошли в квартиру <<$boyA>> обнял вас и начал целовать.'

	if husband = 0:
		act 'Секс':
			cla
			*clr
			bfA = bfA + 1
			if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
			sex = sex + 1
			minut = minut + 30
			pose = 0
			$nameV = $boyA
			dick = dickA
			silavag = silavagA

			'<center><img src="images/picV/vag.jpg"></center>'
			'<<$nameV>> положил вас на спину и раздвинул ваши ноги.'

			gs'orgazm','start'

			act 'Проводить до дверей':
				cla
				gt'mirror','fin'
			end
		end
		act 'Взять в рот':
			cla
			*clr
			bfA = bfA + 1
			if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
			bj = bj + 1
			dick = dickA
			harakBoy = harakBoyA
			minut = minut + 30
			$nameV = $boyA

			'<center><img src="images/picV/bj.jpg"></center>'
			'Вы встали на колени и <<$nameV>> достал свой член и подставил его к вашему лицу.'

			gs'oral','start'

			act 'Продолжать сосать':
				cla
				*clr
				swallow = swallow + 1
				cumlip = cumlip + 1

				'<center><img src="images/picV/swallow.jpg"></center>'
				'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$nameV>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

				act 'Проводить до дверей':
					cla
					gt'mirror','fin'
				end
			end
			act 'Вынуть изо рта':
				cla
				*clr

				if harakBoyA = 0:
					'<center><img src="images/picV/hand.jpg"></center>'
					'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
				elseif harakBoyA = 1:
					tiprand = RAND(0,3)
					if tiprand < 3:
						'<center><img src="images/picV/hand.jpg"></center>'
						'Вы вынули член изо рта и <<$nameV>> кончил вам в ладонь.'
					elseif tiprand = 3:
						facial = facial + 1
						cumface = cumface + 1

						'<center><img src="images/picV/facial.jpg"></center>'
						'Вы вынули член и в этот момент <<$nameV>> разрядился прямо вам на лицо, покрывая его теплой и липкой спермой.'
					end
				elseif harakBoyA = 2:
					facial = facial + 1
					cumface = cumface + 1

					'<center><img src="images/picV/facial.jpg"></center>'
					'<<$nameV>> удерживая вас за волосы вынул член из вашего рта и кончил вам на лицо, покрывая его теплой и липкой спермой.'
				end

				act 'Проводить до дверей':
					cla
					gt'mirror','fin'
				end
			end
			act 'Подрочить ему':
				cla
				*clr
				if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
				DOM = DOM + 1
				hj = hj + 1
				minut = minut + 30
				horny = horny + DOM

				'<center><img src="images/picV/hand1.jpg"></center>'
				'Вы раздели и положили парня на кровать, а сами сели рядом с ним и начали ласкать руками его член.'
				'Вскоре от ваших умелых движений парень кончил вам в ладошки.'

				if harakBoyA = 0:bfA = bfA - 1
				if harakBoyA = 1:bfA = bfA - 5
				if harakBoyA = 2:bfA = bfA - 10

				act 'Вытереть руки и проводить до дверей':
					cla
					gt'mirror','fin'
				end
			end

			if DOM > 1 and kunday ! day and mesec <= 0:
				act 'Куни':
					cla
					*clr
					kunday = day
					if boyonceA = 0:boyonceA = 1 & guy = guy + 1 & vneshBoyA = vneshBoyA + 10
					DOM = DOM + 1
					kuni = kuni + 1
					minut = minut + 30
					horny = horny + DOM + (silaVag*2 + 5)

					'<center><img src="images/picV/kuni.jpg"></center>'
					'Вы разделись и легли на кровать, сказав что бы парень поласкал вас своим язычком.'
					'<<$boyA>> лег между ваших ног и начал работать язычком по вашей киске.'

					if harakBoyA = 0:bfA = bfA - 1
					if harakBoyA = 1:bfA = bfA - 5
					if harakBoyA = 2:bfA = bfA - 10

					if horny >= 90:
						horny = 0
						manna = manna + 15
						willpower = willpower + 15
						orgasm = orgasm + 1

						'От умелых действий парня вас охватил оргазм.'
					else
						'Действия парня хоть и были возбуждающие, но они начали вас утомлять.'
					end
				end
				act 'Дальше':
					cla
					gt'svidan','kvartA'
				end
			end
		end
	end
end
--- svidan ---------------------------------

