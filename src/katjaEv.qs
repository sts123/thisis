# katjaEv
$din_katja_kiss = {
	act 'Целоваться':
		cls
		minut += 5
		manna += 100
		horny += 10
		KatjaHorny += 10

		if katjaFirstKiss = 0:
			katjaFirstKiss = 1
			KatjaLust = 10
			KatjaSlut = 10
			KatjaDom = 50
			KatjaOTN = 1
		end

		gs'stat'
		gs'katjaEvDin'
		gs'KatjaHomeDin'

		'<center><img src="images/qwest/alter/katja/kiss.jpg"></center>'
		'Вы приблизили свое лицо к лицу Кати и почувствовали ее горячее дыхание на своих губах. Катя закрыла глаза и прикоснулась своими губами к вашим губам. В ваш рот проник ловкий язычок Кати который вы начали обсасывать, потом ваш язык вошел в Катин рот и она очень нежно ласкала его своим языком и обсасывала. Наконец Катя отодвинула от вас свое раскрасневшееся лицо и облизнулась.'

		if KatjaHorny >= 75:
			'Катя протянула свою ручку к вашей груди и нежно провела по ней пальчиком.'

			act 'Трогать груди':
				cls
				minut += 5
				horny += 10
				KatjaHorny += 10
				KatjaLust += 1
				gs'stat'

				'<center><img src="images/qwest/alter/katja/touch.jpg"></center>'
				'Вы прикоснулись к нежной груди Кати и Катя глубоко вздохнула закусив губу.'

				katjalustrand = RAND(0,30)
				if KatjaLust < katjalustrand:
					'Вы немного потрогали груди друг друга и Катя отодвинулась от вас.'

					act 'Дальше':gt'KatjaHomeTalk'

					if dom > 0:
						act 'Схватить ее':
							cls
							minut += 5
							horny += 10
							dom -= 1
							KatjaDom -= 5
							KatjaHorny -= 10
							KatjaLust += 1
							gs'stat'

							'<center><img src="images/qwest/alter/katja/grab.jpg"></center>'
							'Вы схватили Катю не давая ей вывернуться.'

							if dom < KatjaDom:
								'Катя твердо взяла ваши руки и убрала их от себя, дав вам понять, что вы уже закончили.'

								act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
							else
								'Катя замерла в ваших руках, пока вы гладили ее тело и целовали ее шею.'

								act 'Лизать ее грудь':
									cls
									minut += 5
									horny += 10
									KatjaDom -= 1
									KatjaHorny += 10
									KatjaLust += 1
									gs'stat'

									'<center><img src="images/qwest/alter/katja/tits.jpg"></center>'
									'Вы достали не большие но крепкие груди Кати из под одежды и начали их облизывать своим язычком. Катя закрыла глаза от удовольствия и прикусила губу.'

									if npcSex[14] = 0:
										'Через некоторое время Катя убрала ваши руки от себя.'
										act 'Дальше':gt'KatjaHomeTalk'
									elseif npcSex[14] > 0:
										dynamic $d_katja_sex
									end
								end
							end
						end
					end
				else
					'Катя начала все сильнее гладить ваши груди и вы почувствовали как она снимает ваш лифчик пытаясь добраться до ваших грудей.'

					act 'Позволить ей':
						cls
						minut += 5
						horny += 10
						KatjaDom += 1
						KatjaHorny += 10
						KatjaLust += 1
						gs'stat'

						'<center><img src="images/qwest/alter/katja/tits.jpg"></center>'
						'Катя обнажила вашу грудь и потрогала ее своими пальчиками, после этого она наклонила голову и стала облизывать ваш сосок.'

						if npcSex[14] = 0:
							'Полизав вашу грудь некоторое время Катя выпрямилась и отвернулась начав убираться в комнате.'

							act 'Дальше':gt'KatjaHomeTalk'
						elseif npcSex[14]>0:
							dynamic $d_katja_sex
						end
					end
					act 'Убрать ее руки':
						cls
						dom += 1
						minut += 5
						horny += 10
						KatjaDom -= 1
						KatjaHorny -= 10
						KatjaLust += 1
						gs'stat'

						'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
						'Вы убрали ее руки и Катя весело заулыбалась.'

						act 'Дальше':gt'KatjaHomeTalk'
					end
				end
			end
		else
			'Катя отвернулась и стала собирать учебники делая вид, что ничего не было.'

			act 'Попрощаться и идти домой':gt'gorodok'
		end
	end
}

katjaMeynoldday = day
gs'stat'
gs'KatjaHomeDin'
gs'katjaEvDin'

'<center><b><font color = maroon><<$npcName[14]>> <<$npcSurName[14]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
'Катя смотрит на вас улыбаясь. "Свет, пойдем ко мне, вместе уроки выучим."'

if fedorKozlovQW >= 10:
	'К вам с Катей подходит Федор. "Привет девчонки, что замышляете?" Катя смутившись сказала "Вот хотим сходить уроки поучить вместе. "Федор подумал намного и сказал "Ну ладно. Тогда до встречи." После чего отвернулся и отошел в сторону.'
end

'KatjaLust - <<KatjaLust>>'
'KatjaSlut - <<KatjaSlut>>'
'KatjaDom - <<KatjaDom>>'
'KatjaMastr - <<KatjaMastr>>'

act 'Попрощаться и идти домой':gt'gorodok'

act 'Идти с Катей':
	cls
	minut += 15
	manna += 100
	gs'stat'

	'<center><b><font color = maroon><<$npcName[14]>> <<$npcSurName[14]>></font></b></center>'
	'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
	'Вы идете по улицам городка вместе с Катей к ее дому. Вы вместе болтаете о всяких пустяках и веселитесь.'

	if albinaQWdance > 0 and AlbinaBlokDance = 0:'Катя живо интересуется как у вас дела со Звездушками. По ее мнению это очень закрытый коллектив, в городе бродят самые разные слухи про коллектив Альбины.'
	if kotovLoveQW > 0:'Катя спрашивает вас о ваших отношениях с Витьком Котовым, попутно высказывая мнение о нем. По ее мнению Витек грубый и он настоящий бандит.'

	if pirsA = 1 and KatjaKnowPirsA = 0:
		KatjaKnowPirsA = 1
		KatjaLust += 5

		'Катя заметила у вас пирсинг языка и щебетала всю дорогу узнавая у вас подробности.'
	end

	'Наконец вы пришли к ее дому. Частный, двух этажный дом, с пристроенным гаражом и довольно большим садом производит впечатление ухоженности и порядка. Катя показывает вам дорогу в свою комнату'

	act 'Идти в комнату Кати':
		cls
		minut += 15
		manna += 100
		gs'stat'

		'<center><b><font color = maroon><<$npcName[14]>> <<$npcSurName[14]>></font></b></center>'
		'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
		'В комнате у Кати довольно не убрано и кругом лежат ее вещи. Катя кидает свой рюкзачок на пол и достает учебники и тетради.'

		act 'Заниматься с Катей':
			cls
			minut += 30
			grupNPC[14] += 10
			lernHome = 0
			lern += RAND(2,4)
			intel += RAND(0,1)
			katjaLernTimes += 1
			gs'stat'

			'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
			'За пол часа, что вы занимались с Катей вы полностью выучили уроки и довольно не плохо усвоили материал.'

			if katjaLernTimes >= 10:
				katjaLernQW += 1

				if katjaLernQW < 5:
					katrand = RAND(0,3)
					if katrand = 0:'Вы замечаете что Катя пристально смотрит вам в глаза, как будто хочет, что то спросить, но отворачивается.'
					if katrand = 1:'Вы замечаете что Катя покраснела и отворачивается от вас.'
					if katrand = 2:'Катя как бы случайно кладет свою ладошку вам на колено, потом быстро убирает ее.'
					if katrand = 3:'Катя улыбается вам совершенно глупой улыбкой, после чего отворачивается.'
				elseif katjaLernQW = 5:
					'Катя задумывается о чем то, потом засмущавшись и покраснев спрашивает вас "Свет, а ты уже целовалась с мальчиками?"'

					act 'Да':
						cls
						gs'stat'

						'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
						'Вы улыбнулись Кате и сказали, что конечно вы целовались с мальчиками. Катя застеснялась еще сильней. "Понимаешь Света, мне нравится один парень, он старше меня, и я боюсь, что когда мы начнем целоваться, я сделаю, что то не так. Ты не могла бы научить меня целоваться?"'

						dynamic $din_katja_kiss

						act 'Нет':
							cls
							katjaLernQW = 0
							katjaLernTimes = 1
							gs'stat'

							'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
							'Вы отказались целоваться с Катей и она обиделась на вас.'

							act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
						end
					end
					act 'Нет':
						cls
						gs'stat'

						'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
						'Вы отрицательно покачали головой и сказали, что не целовались. Катя застеснялась еще сильней. "Понимаешь Света, мне нравится один парень, он старше меня, и я боюсь, что когда мы начнем целоваться, я сделаю, что то не так. Может мы могли бы попробовать поцеловаться, что бы научиться?"'

						dynamic $din_katja_kiss

						act 'Нет':
							cls
							katjaLernQW = 0
							katjaLernTimes = 1
							gs'stat'

							'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
							'Вы отказались целоваться с Катей и она обиделась на вас.'

							act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
						end
					end

					exit
				elseif katjaLernQW >= 6:
					katjaDeystRand = RAND(0,2)
					if katjaDeystRand = 0:
						dynamic $d_katjahornykiss

						act 'Попрощаться и идти домой':minut += 15 & KatjaHorny -= 5 & gt'gorodok'

						exit
					elseif katjaDeystRand = 1:
						if npcSex[14] = 1:
							'Катя предложила вам погулять в сквере.'

							act 'Идти в сквер':
								minut += 15
								KatjaHorny += 5
								$ev_name = 'Катя'
								$ev_name_a = 'Катю'
								$ev_name_om = 'Катей'
								dick = 0
								place = 1
								Frend_num = 14
								p_lust = KatjaLust
								p_slut = KatjaSlut
								p_dom = KatjaDom
								p_horny = KatjaHorny
								p_alko = 0
								gt'placer'
							end

							act 'Отказаться и идти домой':minut += 15 & KatjaHorny -= 5 & gt'gorodok'

							exit
						elseif npcSex[14] = 0:
							KatjaHorny += 5
							KatjaLust += 1

							'Катя начала болтать о мальчиках, косметике и школе вместе с вами.'

							act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
						end
					elseif katjaDeystRand = 2 and sweat > 0:
						'Катя сморщила носик "Света, ты вся потная, пойдешь в душ?"'

						act 'Идти в душ':
							cls
							minut += 15
							gs'stat'

							if KatjaHorny >= 50:
								'Катя проводила вас в душевую. Она раскраснелась и сказала "Я тоже что то вспотела, давай вместе помоемся."'

								act 'Мыться одной':
									cls
									dynamic $showerdin
									minut += 15
									horny = horny + 1
									hapri = 1
									mop = 1
									sweat = -3
									if frost > 0:frost = 0
									gs'stat'

									'<center><img src="images/pics/dush.jpg"></center>'
									'Вы выдворили Катю из душевой и закрыли дверь. Вы залезли в душ и начали намыливать свое тело мочалкой. После смыли мыло и помыли волосы шампунем. Смыв шампунь вы стали совершенно чистой.'

									act 'Выйти из душа':
										cls
										gs'stat'

										'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
										'Вы вышли из душа и вошли в комнату к Кате. Вы еще немного поболтали и Катя сказала, что у нее дела.'

										act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
									end
								end
								act 'Мыться вместе':
									cls
									dynamic $showerdin
									minut += 15
									horny = horny + 1
									hapri = 1
									mop = 1
									sweat = -3
									if frost > 0:frost = 0
									horny += 10
									KatjaHorny += 10
									KatjaLust += 1
									gs'stat'

									'<center><img src="images/qwest/alter/katja/shower.jpg"></center>'
									'Вы разделись и вместе с Катей залезли в душевую.'

									if lobok <= 0:
										'Глаза Кати скользнули по вашему телу немного задержавшись на ваших грудях и киске. Катя взяла душ в руки и стала вас поливать.'

										act 'Дальше':
											cls
											gs'stat'

											'<center><img src="images/qwest/alter/katja/shower2.jpg"></center>'
											'Катя нежно намыливала вас гелем и смывала теплыми струями душа.'

											if KatjaLust >= 10 and KatjaHorny >= 90:
												'Катя смыла мыло с вашей киски и грудей нежными поглаживаниями своих маленьких ладошек. Ее щеки раскраснелись и заблестели глаза.'

												dynamic $katja_shower_kiss
											else
												'Наконец Катя закончила вас мыть и помылась сама.'

												act 'Выйти из душа':
													cls
													gs'stat'

													'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
													'Вы вышли из душа и вошли в комнату к Кате. Вы еще немного поболтали и Катя сказала, что у нее дела.'

													act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
												end
											end
										end
									elseif lobok > 0:
										'Глаза Кати скользнули по вашему телу немного задержавшись на грудях и волосах на лобке. Катя улыбнулась "Светуль, у тебя тут такая растительность, это уже не модно, давай я тебе сбрею волосы."'

										act 'Брить волосы между ног':
											cls
											minut += 5
											lobok = -3
											KatjaHorny += 10
											KatjaLust += 1
											gs'stat'

											'<center><img src="images/qwest/alter/katja/lobok.jpg"></center>'
											'Катя усадила вас в ванную и намылила ваш лобок попутно намылив живот и груди. Она взяла бритву и стала аккуратно сбривать ваши волосики между ног.'

											if KatjaLust >= 10 and KatjaHorny >= 90:
												'Катя смыла мыло с вашей киски и грудей нежными поглаживаниями своих маленьких ладошек. Ее щеки раскраснелись и заблестели глаза.'

												dynamic $katja_shower_kiss
											else
												'Наконец Катя сбрила все ваши волосы между ног и стала смывать с вас мыло.'

												act 'Выйти из душа':
													cls
													gs'stat'

													'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
													'Вы вышли из душа и вошли в комнату к Кате. Вы еще немного поболтали и Катя сказала, что у нее дела.'

													act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
												end
											end
										end
									end
								end
							elseif KatjaHorny < 50:
								dynamic $showerdin
								minut += 15
								horny = horny + 1
								hapri = 1
								mop = 1
								sweat = -3
								if frost > 0:frost = 0
								gs'stat'

								'<center><img src="images/pics/dush.jpg"></center>'
								'Катя вам показала где находятся туалетные принадлежности и вышла из душевой. Вы залезли в душ и начали намыливать свое тело мочалкой. После смыли мыло и помыли волосы шампунем. Смыв шампунь вы стали совершенно чистой.'

								act 'Выйти из душа':
									cls
									gs'stat'

									'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
									'Вы вышли из душа и вошли в комнату к Кате. Вы еще немного поболтали и Катя сказала, что у нее дела.'

									act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
								end
							end
						end

						act 'Отказаться и идти домой':minut += 15 & KatjaHorny -= 5 & gt'gorodok'

						exit
					elseif katjaDeystRand = 2 and sweat <= 0:
						dynamic $d_katjaSextalk

						exit
					end
				end
			end

			act 'Попрощаться и идти домой':minut += 15 & gt'gorodok'
		end
	end
end
--- katjaEv ---------------------------------

