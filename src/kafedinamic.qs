# kafedinamic
$kafetualet = {
	cls
	clr
	gs'stat'

	'<center><img src="images/LakeCafe/Toilet.jpg"></center>'
	'Грязный и вонючий туалет, в котором, похоже, никогда не убирались'

	turand = RAND(0,100)
	if turand = 0:
		cls
		gs'stat'

		'<center><img src="images/picKav/tuarand.jpg"></center>'
		'Зайдя в туалет вы увидели как в одной из кабинок пьяная девица с бутылкой в руке скачет на стоячем хую парня рассевшегося на унитазе.'

		act 'Уйти':gt'kafe','workPred'
		exit
	elseif turand = 1:
		cls
		gs'stat'

		'<center><img src="images/picKav/tuarand1.jpg"></center>'
		'Зайдя в туалет вы увидели что какая то тощая девица сосет член у мужика который снимает все происходящее на камеру.'

		act 'Уйти':gt'kafe','workPred'
		exit
	elseif turand = 2:
		cls
		gs'stat'

		'<center><img src="images/picKav/tuarand2.jpg"></center>'
		'Зайдя в туалет вы застукали какую то рыжую девчонку за отсасыванием члена.'

		act 'Уйти':gt'kafe','workPred'
		exit
	end

	if hapri = 0:
		act 'Причесаться':
			cla
			minut = minut + 3
			hapri = 1
			act 'Посмотреть результат':dynamic $kafetualet
		end
	end

	if mop = 1 and kosmetica > 0:
		act 'Нанести макияж':
			cla
			*clr
			'<center><img src="images/pic/mop.jpg"></center>'

			act 'Легкий макияж':
				cla
				minut = minut + 3
				kosmetica = kosmetica - 1
				mop = 2

				'Вы легонечко подвели глаза и немного подкрасили губы.'

				act 'Выйти':dynamic $kafetualet
			end

			if kosmetica >= 2:
				act 'Нормальный макияж':
					cla
					minut = minut + 5
					kosmetica = kosmetica - 2
					mop = 3

					'Вы накрасили губы, подвели глаза и наложили тени.'

					act 'Выйти':dynamic $kafetualet
				end
			end
			if kosmetica >= 3:
				act 'Вызывающий макияж':
					cla
					minut = minut + 10
					kosmetica = kosmetica - 3
					vidageday = vidageday - 1
					mop = 4

					'Вы густо накрасили глаза, наложили тени и тушь для ресниц, накрасили контур губ карандашом и губы помадой.'

					act 'Выйти':dynamic $kafetualet
				end
			end
		end
	end

	if cumpussy > 0 or cumbelly > 0 or cumass > 0 or cumanus > 0:
		act 'Подмыться 15 мин':
			cla
			*clr
			dynamic $showerdin
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pics/wash5.jpg"></center>'
			'Вы тщательно смыли сперму с себя.'

			act 'Выйти':dynamic $kafetualet
		end
	end

	if cumlip > 0 or cumface > 0:
		act 'Смыть сперму с лица 15 мин':
			cla
			*clr
			mop = 1
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы тщательно смыли сперму с лица.'

			act 'Выйти':dynamic $kafetualet
		end
	end

	if cumfrot > 0:
		act 'Стереть сперму с одежды 15 мин':
			cla
			*clr
			cumfrot = 0
			sweat = sweat - 1
			minut = minut + 15

			!'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы стерли следы спермы с одежды.'

			act 'Выйти':dynamic $kafetualet
		end
	end

	if tampon > 0 and mesec > 0 and isprok = 0:
		act 'Поменять тампон':
			cla
			*clr
			tampon = tampon - 1
			isprok = 1
			minut = minut + 5
			manna = manna - 5

			'<center><img src="images/pics/wash3.jpg"></center>'
			'Вы поменяли тампон.'

			act 'Закончить':dynamic $kafetualet
		end
	end

	act 'Уйти':gt'kafe','workPred'
}

$gividin = {
	cls
	gs'stat'

	if hour < 22:
		'Вы подошли к барной стойке за которой стоит хозяин кафе Гиви Карапетович, он не отрываясь от протирки стаканов посмотрел на вас.'

		if hour = 20 and Givi >= 90:
			act 'Отпроситься у Гиви':
				cla
				minut = minut + 5
				Givi = Givi - 5

				'Вы отпросились уйти пораньше у Гиви Карапетовича. Он немного рассердился но отпустил вас.'

				act 'Отойти':gt'street'
			end
		end

		if Kavslut > 0 and IrinaQW >= 10 and IrinaSlut = 0 and hour <= 20:
			act 'Попросить у Гиви повысить зарплату Ире':
				cla
				IrinaSlut = 1
				minut = minut + 30
				gs'stat'

				'Вы попросили Гиви повысить зарплату Ире. Гиви хмыкнул "Это зачем?" Вы апеллировали к тому что она ваша близкая подруга и хотите ей помочь. Гиви обещал подумать о повышении зарплаты.'

				act 'Отойти':gt'kafe','workPred'
			end
		end

		act 'Болтать с Гиви':
			cla
			if GiviSex = 0:
				minut = minut + 30
				manna = manna + 5
				if Givi <= 90:Givi = Givi + RAND(10,25)
				if Givi > 90 and GiviSex = 0:Givi = 90

				'Вы поболтали у стойки с владельцем кафе и по совместительству барменом Гиви Карапетовичем.'

				if Givi = 90:
					'Уходя от Гиви вы неожиданно получили шлепок ладонью по попе. Обернувшись вы увидели что Гиви улыбается.'
				end

				act 'Отойти':gt'kafe','workPred'
			elseif GiviSex >= 1 and kavslut = 0:
				minut = minut + 63
				manna = manna + 5
				Givi = 100

				'Вы поболтали у стойки с владельцем кафе и по совместительству барменом Гиви Карапетовичем.'
				'Вай Свэтик, мне так понравилось в прошлый раз. Оставайся со мной вечером, поможешь.'
				'Уходя от Гиви вы неожиданно получили шлепок ладонью по попе. Обернувшись вы увидели что Гиви улыбается.'

				act 'Отойти':gt'kafe','workPred'
			elseif GiviSex >= 1 and kavslut > 0:
				minut = minut + 30
				manna = manna - 5
				Givi = 100

				givirand = RAND(0,100)
				if givirand < 10 and Venera < 4:
					'"Свэтик, я какой то напряженный, сними с меня напряжение" С этими словами Гиви взял вас за руку'

					act 'Встать на колени':
						cla
						*clr
						smenaKafe = smenaKafe + 1
						if giviSex < 2:GiviSex = 2
						bj = bj + 1
						gs'bdman','givi'
						SUB = SUB + 1
						gs'stat'

						'<center><img src="images/picVA/barbj.jpg"></center>'
						'Вы нагнулись и спрятались от посетителей за высокой барной стойкой, встали на колени перед Гиви, он достал член.'

						gs'bdsex','autobj'

						'Гиви крепко схватил вас за волосы и натянул ваш рот на свой член поглубже.'

						act 'Продолжать сосать':
							cla
							*clr
							swallow = swallow + 1
							cumlip = cumlip + 1
							gs'stat'

							'<center><img src="images/picV/swallow1.jpg"></center>'
							'Струя горячей спермы ударила вам в рот. Вы начали глотать сперму, а <<$boy>> продолжал кончать вам в рот. Наконец поток горячей жидкости с резким вкусом прекратился.'

							act 'Отойти':gt'kafe','workPred'
						end
					end

					if GiviSex < 2:
						act 'Сдурел что ли?':
							cla

							'"Вах, Свэтик, ты жэ шлюха, зачэм сопротивляешься, я тэбэ денег в зарплату больше выпишу, будет много дэнег, платья покупать, касмэтика." сказал Гиви'

							act 'Отойти':gt'kafe','workPred'
						end
					end
				elseif givirand >= 10 or Venera >= 4:
					'Гиви сильно хлопнул вам по жопе и заржал. "Свэта, звэзда минэта!"'

					act 'Отойти':gt'kafe','workPred'
				end
			end
		end
	else
		if Vnesh < 0:
			'Гиви кивает вам головой, "До свидания, Свэтик."'

			act 'Уйти':
				cla
				minut = minut + 5
				gt'kafeend'
			end
		else
			dynamic $givipredlogdin
		end
	end
}

$ashotdin = {
	cls
	gs'stat'

	'Вы зашли на кухню где занимался приготовление блюд повар Ашот. Посудомойка <a href="exec:dynamic $tamdin">Тамара</a> как всегда стоит возле раковины и моет посуду.'

	if hour < 22:
		act 'Есть и пить на кухне':
			cla
			minut = minut + 30
			gs'stat'
			frost = 0
			health = health + 10

			if energy >= 30:
				fat = fat + 5

				'Вы больше не можете есть.'
			elseif energy >= 20 and energy < 30:
				fat = fat + 3
				energy = energy + 10

				'Вы через силу затолкали в себя еду.'
			elseif energy < 20:
				energy = energy +20
				fat = fat + 1

				'Вы с удовольствием съели приготовленную еду.'
			end

			if water >= 20:
				'Чай в вас больше не лезет.'
			elseif water < 20:
				water = water +20

				'Вы с удовольствием выпили кружку чая.'
			end

			act 'Отойти':gt'kafe','workPred'
		end
		act 'Болтать с Ашотом':
			cla
			minut = minut + 30
			manna = manna + 5
			gs'stat'

			if Ashot <= 90:Ashot = Ashot + RAND(0,5)

			if giviSex > 0 and Ashotsex = 0:
				if Ashot <= 90:Ashot = 90
				horny = horny + 10

				'Когда вы вошли на кухню, Ашот подошел к вам и крепко сжал своей ладонью вашу ягодицу, вы даже взвизгнули. Ашот засмеялся.'

				act 'Отойти':gt'kafe','workPred'
			elseif giviSex = 0 and Ashotsex = 0:
				'Вы поболтали на кухне с поваром Ашотом.'

				act 'Отойти':gt'kafe','workPred'
			elseif giviSex > 0 and Ashotsex > 0:
				Ashotrand = RAND(0,100)
				if Ashotrand > 20:
					horny = horny + 10

					'"Ты классная сучка" сказал Ашот хватая вас за задницу.'

					act 'Отойти':gt'kafe','workPred'
				elseif Ashotrand <= 20:
					*clr
					cla
					'Когда вы вошли на кухню, Ашот подошел к вам и крепко сжал своими ладонями ваши ягодицы: " - Раздэвайся! Мой хуй соскучылся по твоей попке"'

					act 'Позволить':
						*clr
						cla

						if analplugin = 1:
							*clr
							cla
							analplugin = 0

							'<center><img src="images/picL/analplug.jpg"></center>'
							'Вай какая развратныца! - воскликнул Ашот вытаскивая из вашей попки анальную пробку.'

							act 'Смутиться':
								*clr
								cla
								'<center><img src="images/picL/analkafe.jpg"></center>'
								'Затем поставил вас раком и вставил член в попку. Не давая времени сфинктеру расслабится, он стал грубо трахать вас глубоко загоняя член. Ашот крепко держал ваши бёдра от ударов члена в попку у вас потекли слезы из глаз. "- Двигай попкой, двигай, блядь похотливая!"'

								act 'Стонать':
									*clr
									cla
									horny = horny + SUB - DOM + ((anus-18)*3)
									anal = anal + 1
									Ashotsex = Ashotsex + 1
									cumanus = cumanus + 1
									if anus < 18:anus = anus + 1

									'<center><img src="images/picL/kafeanpie.jpg"></center>'
									'Ашот подался вперёд засовывая свой член как можно глубже.'

									if horny >= 100:
										horny = 1
										orgasm = orgasm + 1
										analorgasm = analorgasm + 1

										'В анусе полыхал пожар и волны удовольствия охватили тело, вы стонали и сами насаживались попкой на член.'
									end

									'Струя горячей спермы ударила вам анус. Ашот кончал и бил вас по жопе, приговаривая, что такую дырку нужно ебать и ебать. А потом вытащил член и вы почувствовали как из вашей растраханной попки потекла тоненькая струйка спермы.'

									act 'Отойти':gt'kafe','workPred'
								end
							end
						else
							*clr
							cla
							'<center><img src="images/picL/analkafe.jpg"></center>'
							'Затем поставил вас раком и вставил член в попку. Не давая времени сфинктеру расслабится, он стал грубо трахать вас глубоко загоняя член. Ашот крепко держал ваши бёдра от ударов члена в попку у вас потекли слезы из глаз. "- Двигай попкой, двигай, блядь похотливая!"'

							act 'Стонать':
								*clr
								cla
								horny = horny + SUB - DOM + ((anus-18)*3)
								anal = anal + 1
								Ashotsex = Ashotsex + 1
								cumanus = cumanus + 1
								if 18 > anus:anus = anus + 1

								'<center><img src="images/picL/kafeanpie.jpg"></center>'
								'Ашот подался вперёд засовывая свой член как можно глубже.'

								if horny >= 100:
									horny = 1
									orgasm = orgasm + 1
									analorgasm = analorgasm + 1

									'В анусе полыхал пожар и волны удовольствия охватили тело, вы стонали и сами насаживались попкой на член.'
								end

								'Струя горячей спермы ударила вам анус. Ашот кончал и бил вас по жопе, приговаривая, что такую дырку нужно ебать и ебать. А потом вытащил член и вы почувствовали как из вашей растраханной попки потекла тоненькая струйка спермы.'

								act 'Отойти':gt'kafe','workPred'
							end
						end
					end
				end
			elseif giviSex = 0 and Ashotsex > 0:
				horny = horny + 10

				'"Слюшай, ты так смачно жопой вокруг моего хуя вертела, вай, до сих пор вспоминаю." сказал Ашот хватая вас за задницу.'
			end
		end
	else
		'Ашот раскладывает кухонные приборы по своим местам готовясь уходить.'
	end

	act 'Отойти':gt'kafe','workPred'
}

$iradin = {
	cls
	gs'stat'

	'Ира как раз стоит не чем не занятая возле стойки.'

	if hour < 22:
		act 'Болтать с Ириной':
			cla
			minut = minut + 30
			manna = manna + 5
			gs'stat'
			willpower = willpower + RAND(0,1)
			if Irina <= 100:Irina = Irina + RAND(0,5)
			gs'stat'

			'Вы поболтали у стойки с официанткой Ирой.'

			if IrinaQW ! 10 or IrinaLesbSex >= 3:
				if GiviSex >= 1 and Kavslut = 0:
					'Ира с круглыми глазами говорит вам, что слушок идет, будто вы у Гиви в рот брали.'
				elseif Kavslut > 0:
					'Ира вам говорит, что она в курсе что вас кавказцы трахают по вечерам на складе.'
				end
			elseif IrinaQW = 10 and IrinaLesbSex = 2:
				IrinaLesbSex = 3

				'Ирина вроде расслабилась и больше не дергается при вашем появлении.'
			elseif IrinaQW = 10 and IrinaLesbSex = 1:
				IrinaLesbSex = 2

				'Ирина вам улыбается и пытается общаться, но у нее это выходит как то натужно.'
			elseif IrinaQW = 10 and IrinaLesbSex = 0:
				IrinaLesbSex = 1

				'Ирина явно выглядит смущенной и старается не смотреть вам в глаза. Вы подошли к ней и постарались ее успокоить. Ирина кивнула вам и сказала "Давай на работе делать вид, что ничего не было. Я не хочу, что бы об этом кто нибудь знал." Вы согласились с Ирой.'
			end

			act 'Отойти':gt'kafe','workPred'
		end
	else
		if IrinaSlut >= 2:
			dynamic $givipredlogdin
		elseif IrinaSlut < 2:
			act 'Идти домой с Ириной':
				cla
				Irina += 5
				minut = minut + 5
				gs'stat'

				if Irina < 100:
					if Irina < 50:
						if GiviSex >= 1 and Kavslut = 0:
							$irinatalk = 'По дороге она в основном молчит и косится на вас'
						elseif Kavslut > 0:
							$irinatalk = 'По дороге она в основном молчит и косится на вас.'
						else
							$irinatalk = 'Ирина в основном молчит всю дорогу.'
						end

						$irinaend = 'Около подъезда она сдержанно с вами прощается и идет к себе домой.'
					elseif Irina >= 50:
						if GiviSex >= 1 and Kavslut = 0:
							$irinatalk = 'По дороге она в основном молчит, но набравшись храбрости начинает расспрашивать вас о ваших отношениях с Гиви.'
						elseif Kavslut > 0:
							$irinatalk = 'По дороге она в основном молчит, но набравшись храбрости начинает расспрашивать вас про похождения с хачами удивляясь как можно быть такой подстилкой как вы.'
						else
							$irinatalk = 'Ирина по дороге рассказывает о всяких пустяках.'
						end

						$irinaend = 'Около подъезда она машет вам рукой и идет к себе домой.'
					end
				elseif Irina >= 100 and IrinaQW = 0:
					IrinaQW = 1

					$irinatalk = 'Ира весело щебечет всю дорогу.'
					$irinaend = 'Она приглашает вас как нибудь в Субботу зайти к ней в гости и идет в свой подъезд.'
				elseif Irina >= 100 and IrinaQW = 1:
					if GiviSex >= 1 and Kavslut = 0:
						$irinatalk = 'Ирина по дороге рассказывает о своих бывших бойфрендах.'
					elseif Kavslut > 0:
						$irinatalk = 'Ирина по дороге рассказывает о своих бывших бойфрендах. А так же про то как она однажды сделала минет в туалете клуба напившись с каким то парнем.'
					else
						$irinatalk = 'Ирина весело болтает всю дорогу о пустяках.'
					end

					$irinaend = 'Ира стоя у подъезда приглашает вас зайти к ней.'

					act 'Пойти в гости к Ире':gt'IrinaRoom','first'
				elseif Irina >= 100 and IrinaQW = 2:
					if GiviSex >= 1 and Kavslut = 0:
						$irinatalk = 'Ирина в основном молчит всю дорогу, но набравшись решимости говорит что не ожидал того что не ожидала от вас, того что вы не только с мужчинами спите, но и с женщинами. Стараясь быть вежливой она сообщает вам, что вообщем то она не против секс меньшинств, но ей вовсе не хочется спать с женщинами, они такие мягкие и противные, просто ужас.'
					elseif Kavslut > 0:
						$irinatalk = 'Ирина в основном молчит всю дорогу, но набравшись решимости говорит что от такой шлюхи как вы можно конечно было всякого ожидать и говорит вам что вы вообще без тормозов. Стараясь быть вежливой она сообщает вам, что вообщем то она не против секс меньшинств, но ей вовсе не хочется спать с женщинами, они такие мягкие и противные, просто ужас.'
					else
						$irinatalk = 'Ирина в основном молчит всю дорогу, но набравшись решимости говорит что не ожидал того что такая приличная девушка как вы, на самом деле лесба. Стараясь быть вежливой она сообщает вам, что вообщем то она не против секс меньшинств, но ей вовсе не хочется спать с женщинами, они такие мягкие и противные, просто ужас.'
					end

					$irinaend = 'Подойдя к подъезду она прощается с вами и уходит.'
				elseif Irina >= 100 and IrinaQW >= 10 and IrinaSlut >= 2:
					if Kavslut > 0:
						$irinatalk = 'Ира улыбаясь рассказывает что ей давно хотелось прекратить быть монашкой и жить свободно и она благодарит вас за вашу помощь..'
					end

					$irinaend = 'Стоя у дверей своего подъезда Ира приглашает вас зайти к ней в гости.'

					act 'Идти к Ире в гости':gt'IrinaRoom','first'
				elseif Irina >= 100 and IrinaQW >= 10 and IrinaSlut = 1:
					if GiviSex >= 1 and Kavslut = 0:
						$irinatalk = 'Ира улыбаясь удивляется тому что не ожидала от секса с женщиной такого удовольствия.'
					elseif Kavslut > 0:
						$irinatalk = 'Ира улыбаясь удивляется тому что не ожидала от секса с женщиной такого удовольствия. Она замечает, что впрочем у вас опыт явно больше, уж Ира то никогда не спала с двумя мужиками сразу.'
					else
						$irinatalk = 'Ира улыбаясь удивляется тому что не ожидала от секса с женщиной такого удовольствия.'
					end

					$irinaend = 'Стоя у дверей своего подъезда Ира приглашает вас зайти к ней в гости.'

					act 'Идти к Ире в гости':gt'IrinaRoom','first'
				elseif Irina >= 100 and IrinaQW >= 10 and IrinaSlut = 0:
					if GiviSex >= 1 and Kavslut = 0:
						$irinatalk = 'Ира улыбаясь удивляется тому что не ожидала от секса с женщиной такого удовольствия.'
					elseif Kavslut > 0:
						$irinatalk = 'Ира улыбаясь удивляется тому что не ожидала от секса с женщиной такого удовольствия. Она замечает, что впрочем у вас опыт явно больше, уж Ира то никогда не спала с двумя мужиками сразу. Она так же просит замолвить перед Гиви за ней словечко, ей тоже хочется повышения зарплаты.'
					else
						$irinatalk = 'Ира улыбаясь удивляется тому что не ожидала от секса с женщиной такого удовольствия.'
					end

					$irinaend = 'Стоя у дверей своего подъезда Ира приглашает вас зайти к ней в гости.'

					act 'Идти к Ире в гости':gt'IrinaRoom','first'
				end

				'Вы собрались и пошли с Ириной домой. <<$irinatalk>> Вы доходите до дома где живет Ира. <<$irinaend>>'

				act 'Попрощаться':gt'street'
			end
		end
	end
}

$tamdin = {
	cls
	gs'stat'

	'Тамара не отрываясь от посуды повернулась к вам.'

	if hour < 22:
		act 'Болтать с Тамарой':
			cla
			minut = minut + 30
			manna = manna + 5
			willpower = willpower + RAND(0,2)
			if Tamara <= 100:Tamara = Tamara + RAND(0,5)

			'Вы поболтали на кухне с посудомойкой Тамарой.'

			if GiviSex >= 1 and Kavslut = 0:
				'Тамара хмыкает. Надо же, и не стыдно тебе сосать у Гиви за зарплату, какая мерзость!'
			elseif Kavslut > 0:
				'Шлюха ты кавказская, топай отсюда.'
			end

			act 'Отойти':gt'kafe','workPred'
		end
	else
		'Она уже собирается домой и предлагает вам пойти вместе.'

		act 'Идти домой с Тамарой':
			cla
			minut = minut + 5

			if clener = 1:'Вы идете с Тамарой по улице, она живет неподалеку от вас и дойдя до ее дома она останавливается попрощаться с вами.'
			if clener = 0:clener = 1 & 'Вы идете с Тамарой по улице, Тамара вам говорит о том, что она иногда подрабатывает уборщицей в офисном здании неподалеку.'

			act 'Попрощаться':gt'street'
		end
	end
}

$givipredlogdin = {
	if IrinaSlut >= 2:
		'Около Гиви крутится Ира, а Гиви ни сколько не смущаясь мнет ей зад и хмыкает "Вай, Ира, ты настоящая шлюха." Он поворачивается к вам "Эй Свэтик, оставайся вечерком, зарабатывать премиальные."'

		act 'Остаться с ними':
			gt'kavkazkafe','podgivi'
		end
		act 'Идти домой':
			cla
			minut = minut + 5
			gt'kafeend'
		end

		exit
	end

	'Гиви ходит с блокнотиком и пересчитывает бутылки. Вай Свэта, ти умный голова, помоги посчитать бутылки.'

	act 'Извините, но мне пора домой':
		cla
		minut = minut + 5

		'Вы извинились и стали собираться домой.'

		if GiviSex > 0:
			'Вай Свэтик. Оставайся, прэмию заработаешь, развлечемся.'

			act 'Все же я домой':
				cla
				minut = minut + 5
				gt'kafeend'
			end
			act 'Помочь Гиви':
				gt'kavkazkafe','podgivi'
			end

			exit
		elseif GiviSex = 0:
			'Вай Свэтик, зачем обижаешь а? Я к тебе отношусь как к родной. А ты старику помочь не хочешь.'

			act 'Все же я домой':
				cla
				Givi = 0
				minut = minut + 5
				gt'kafeend'
			end
			act 'Помочь Гиви':
				gt'kavkazkafe','podgivi'
			end

			exit
		end

		act 'Идти домой':
			cla
			minut = minut + 5
			gt'kafeend'
		end
	end
	act 'Помочь Гиви':
		gt'kavkazkafe','podgivi'
	end
}
--- kafedinamic ---------------------------------

