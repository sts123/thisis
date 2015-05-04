# stwork
if $ARGS[0] = 'start':
	$stripgirl = {
		cls
		gs'stat'

		striptalkrand = RAND(0,10)
		if striptalkrand = 0:$striptalk = 'Слышали? Тут как-то приходила одна девчонка, вся такая красавица, но на сцену вышла, полный ноль, ничего не умеет, так ее только освистали.'
		if striptalkrand = 1:$striptalk = 'Я вам точно говорю, мужиков заводят девчонки с татуировками.'
		if striptalkrand = 2:$striptalk = 'На шесте кончено гораздо выгодней танцевать чем просто стриптиз, легче клиента возбудить, но на этом шесте довольно трудно.'
		if striptalkrand = 3:$striptalk = 'Фух, как не выйду на сцену, возвращаюсь вся потная, волосы растрепанные и макияж обязательно сплывет. Тут на одной косметики разорится можно.'
		if striptalkrand = 4:$striptalk = 'Вообще с этими приватными танцами хоть и гарантированные деньги но не то, на сцене можно больше заработать.'
		if striptalkrand = 5:$striptalk = 'Тут одна страшненькая девчонка была, вышла на сцену, ее давай сразу освистывать, но как начала вокруг шеста крутится, у клиентов челюсти отпали, вполне она не плохо зарабатывала.'
		if striptalkrand = 6:$striptalk = 'И почему менеджер никогда не сообщает, мужской день или женский? Я недавно неслась на работу, даже ноготь сломала, прибегаю, а тут эти медведи скачут на сцене. Развернулась и обратно пошла.'
		if striptalkrand = 7:$striptalk = 'Некоторые девчонки рассказывали что у них проблемы возникают из за работы. Для многих стритизерша равно шлюха.'
		if striptalkrand = 8:$striptalk = 'Тут одна жирная баба пыталась на шесте станцевать, так плюхнулась мордой об пол и поставила крепкий такой синяк.'
		if striptalkrand = 9:$striptalk = 'Недавно одну жирнуху на смех подняли в зале. Вроде и симпотная и танцует хорошо, но не помогло.'
		if striptalkrand = 10:$striptalk = 'Я слышала в приличных клубах за границей стриптизерши сами платят за право работать в клубе.'

		'Девушки занимаются своей внешностью перед зеркалом весело болтая о всяких пустяках.'
		'<<$striptalk>>'

		act 'Отойти':gt $curloc,'start'
	}

	$stripohr = {
		cls
		gs'stat'

		'Здоровенный охранник скучает возле двери. Увидев вас он лениво бросает "Привет Света."'

		act 'Отойти':gt $curloc,'start'
	}

	$striptoilet2 = {
		cls
		gs'stat'

		'Вы сполоснули бритву, лезвия которой хватит еще на <<stanok>> раз.'

		if leghair > 0 and stanok > 0:
			act 'Брить ноги 15 мин':
				cla
				*clr
				minut = minut + 15
				leghair = -5
				horny = horny + 5
				stanok = stanok - 1

				'<center><img src="images/pics/shave.jpg"></center>'
				'Вы намылили ноги и сбрили волосы с них.'

				act 'Отложить станок':dynamic $striptoilet2
			end
		end

		if lobok > 0 and stanok > 0:
			act 'Брить лобок 15 мин':
				cla
				*clr
				minut = minut + 15
				lobok = -5
				horny = horny + 5
				stanok = stanok - 1

				'<center><img src="images/pics/shave3.jpg"></center>'
				'Вы намылили лобок, после чего сбрили с него все волосы.'

				act 'Отложить станок':dynamic $striptoilet2
			end
		end

		act 'Выйти из душа и одеться':dynamic $striptoilet
	}

	$striptoilet = {
		cls
		gs'stat'

		'<center><img src="images/LakeCafe/Toilet.jpg"></center>'
		'Грязный и вонючий туалет, в котором, похоже, никогда не убирались'

		if tanga = 1:
			act 'Снять нижнее белье':
				cla
				tanga = 0
				dynamic $striptoilet
			end
		end

		if hapri = 0:
			act 'Причесаться':
				cla
				minut = minut + 3
				hapri = 1

				act 'Посмотреть результат':dynamic $striptoilet
			end
		end

		if mop ! 1:
			act 'Смыть макияж':
				cla
				*clr
				minut += 5
				mop = 1

				'<center><img src="images/pic/mop.jpg"></center>'
				'Вы смыли макияж.'

				act 'Выйти':dynamic $striptoilet
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

					act 'Выйти':dynamic $striptoilet
				end

				if kosmetica >= 2:
					act 'Нормальный макияж':
						cla
						minut = minut + 5
						kosmetica = kosmetica - 2
						mop = 3

						'Вы накрасили губы, подвели глаза и наложили тени.'

						act 'Выйти':dynamic $striptoilet
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

						act 'Выйти':dynamic $striptoilet
					end
				end
			end
		end

		act 'Принять душ 15 мин':
			cla
			*clr
			minut = minut + 15
			sweat = -3
			horny = horny + 1
			hapri = 0
			mop = 1
			cumpussy = 0
			cumbelly = 0
			cumass = 0
			cumanus = 0
			cumlip = 0
			cumface = 0
			cumanus = 0

			'<center><img src="images/pics/dush.jpg"></center>'
			'Вы залезли в ванную и включили душ. Намылили тело и смыли под душем.'

			if leghair > 0 and stanok > 0 or lobok > 0 and stanok > 0:
				act 'Достать бритву':dynamic $striptoilet2
			end

			if horny >= 90:
				act 'Направить душ на киску':
					cla
					*clr
					horny = 0
					minut = minut + 30
					mastr = mastr + 1
					orgasm = orgasm + 1
					manna = manna + 15
					willpower = willpower + 15

					'<center><img src="images/pics/wash2.jpg"></center>'
					'Вы направили душ на киску и тугие струи теплой воды начали ласкать вас. Вскоре вы почувствовали как теплая волна охватывает весь ваш организм и вы начали содрогаться в оргазме.'

					act 'Выйти из ванной и одеться':dynamic $striptoilet
				end
			elseif horny >= 40 and hormy < 90:
				act 'Направить душ на киску':
					cla
					*clr
					horny = horny + 5
					minut = minut + 30
					manna = manna + 10
					willpower = willpower + 10

					'<center><img src="images/pics/wash2.jpg"></center>'
					'Вы направили душ на киску и тугие струи теплой воды начали ласкать вас. Сначала вам было очень приятно, но через некоторое время стало даже как то больно. Возбуждение спало и вы прекратили мастурбировать.'

					act 'Выйти из ванной и одеться':dynamic $striptoilet
				end
			end

			act 'Выйти из душа и одеться':dynamic $striptoilet
		end

		if cumpussy > 0 or cumbelly > 0 or cumass > 0 or cumanus > 0:
			act 'Подмыться 15 мин':
				cla
				*clr
				cumpussy = 0
				cumbelly = 0
				cumass = 0
				cumanus = 0
				cumlip = 0
				cumface = 0
				sweat = sweat - 1
				minut = minut + 15

				'<center><img src="images/pics/wash5.jpg"></center>'
				'Вы тщательно смыли сперму с себя.'

				act 'Выйти':dynamic $striptoilet
			end
		end

		if cumlip > 0 or cumface > 0:
			act 'Смыть сперму с лица 15 мин':
				cla
				*clr
				cumlip = 0
				cumface = 0
				sweat = sweat - 1
				minut = minut + 15

				'<center><img src="images/pic/facesp.jpg"></center>'
				'Вы тщательно смыли сперму с лица.'

				act 'Выйти':dynamic $striptoilet
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

				act 'Выйти':dynamic $striptoilet
			end
		end

		act 'Выйти из туалета':gt $curloc,'start'
	}

	$sexloc = $CURLOC
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	clr
	minut = minut + 5
	stripMir = 1
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Раздевалка для стриптизерш</font></b></center>'
	'<center><img src="images/pic/striprazd.jpg"></center>'
	'На стене множество <a href="exec:GT ''mirror'',''start''">зеркал</a> перед которыми <a href="exec:dynamic $stripgirl">девушки</a> приводят себя в порядок перед выступлениями.'
	'<a href="exec:stripMir = 0 & GT ''stripclub'',''start''">Не приметная, железная дверь</a> в коридоре выходит на задний двор и весь персонал ходит через эту дверь на работу, а не через парадный ход. Около этого входа всегда стоит <a href="exec:dynamic $stripohr">охранник</a>.'
	'За деревянной дверью расположен <a href="exec:dynamic $striptoilet">туалет для персонала</a>'

	if tatplech > 0:stripKoef = RAND(1,3)
	if tatback > 0:stripKoef2 = RAND(1,3)
	if tatback > 0:stripKoef3 = RAND(1,3)
	if tatupb > 0:stripKoef4 = RAND(3,6)
	if tatleg > 0:stripKoef5 = RAND(1,3)
	publichot = vnesh-10+stripKoef+stripKoef2+stripKoef3+stripKoef4+stripKoef5
	publichotstart = publichot

	if hour >= 15 or hour <= 2:
		if mop >= 4:
			if hapri = 1:
				if sweat <= 0:
					if leghair <= 0 and lobok <= 0:
						if fingal <= 0:
							act 'Идти на сцену':stpredmet = 3 & gt'stwork2'
						else
							'С таким фингалом как у вас, на сцене делать нечего.'
						end
					else
						'Нет ничего ужасней стриптизерши с волосатыми ногами или лобком, в таком виде нельзя работать.'
					end
				else
					'Господи, да от вас же воняет как от лошади, надо прежде помыться.'
				end
			else
				'Нельзя с такой растрепанной шевелюрой показываться на публике.'
			end
		else
			'Для работы нужен очень вызывающий макияж.'
		end
	else
		'Рабочее время кончилось. Пора идти домой.'
	end
end
--- stwork ---------------------------------

