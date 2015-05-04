# Gnpc2
$din_gboy_end_to_disco = {
	!:markgoondisco
	discofirsttime += 1
	gs'stat'

	if gnpcSex[numnpc] = 0:
		gdeystboyrand = RAND(0,1)
		if gdeystboyrand = 0:
			'<<$nameBoyfrend[numnpc]>> предложил пойти к нему домой.'

			dynamic $din_gboy_go_to_boyhome

			act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
		elseif gdeystboyrand = 1:
			'<<$nameBoyfrend[numnpc]>> предложил проводить вас домой.'

			act 'Идти домой':gt'gorodok'
		end
	elseif gnpcSex[numnpc] > 0:
		'<<$nameBoyfrend[numnpc]>> предложил пойти к нему домой.'

		dynamic $din_gboy_go_to_boyhome

		act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
	end
}

$din_gboy_go_to_disco = {
	act 'Идти на дискотеку':
		cls
		minut += 120
		if dance < 50 and agil >= dance:dance += 1
		manna += 10
		gs'stat'

		'<<$nameBoyfrend[numnpc]>> заплатил за вход и вы вместе пришли на дискотеку. Вместе со своим парнем вы вышли на танцпол и начали вместе танцевать.'

		diskoIvRand = RAND(0,100)
		if discofirsttime = 0:diskoIvRand = 0
		if diskoIvRand >= 80:
			diskoIvTipeRand = RAND(0,1)
			if diskoIvTipeRand = 0:
				'Вы танцуете со своим парнем, к вам подходит пьяный пацан в спортивных штанах и олимпийке.'

				if GorSlut < 3:
					'Гопник отталкивает вашего парня в сторону и обхватывает вас за талию. "Давай потанцуем, чикуля."'

					act 'Вырываться':
						cls
						dom += 1
						gs'stat'

						'Вы стали вырываться из объятий гопника. <<$nameBoyfrend[numnpc]>> оттолкнул пьяного пацана и тут же на танцпол подошли дружки гопника. Начался базар. Гопники начали предъявлять вашему парню, что он быкует.'

						tiprand = RAND(0,100)
						if tiprand <= 70:
							'<<$nameBoyfrend[numnpc]>> сумел выйти из словесного поединка победителем, обвинив гопника в том, что он начал приставать к его девушке. Но вечер был окончательно испорчен и <<$nameBoyfrend[numnpc]>> предложил уйти с дискотеки.'

							act 'Идти домой':gt'gorodok'
						elseif tiprand > 70 and tiprand < 90:
							otnBoyFrend[numnpc] -= 20

							'Гопники быстро загрузили вашего парня и развели его на бабки. <<$nameBoyfrend[numnpc]>> отдал все деньги гопникам и еще долго извинялся перед ними. После чего <<$nameBoyfrend[numnpc]>> предложил вас проводить.'

							act 'Идти домой':gt'gorodok'
						elseif tiprand >= 90:
							'Разговоры быстро переросли в драку и трое гопников начали бить вашего парня прямо посреди дискотеки.'

							act 'Наблюдать за дракой со стороны':
								cls
								otnBoyFrend[numnpc] -= 20
								gs'stat'

								'<<$nameBoyfrend[numnpc]>> не смог противопоставить троим гопникам ничего и вскоре упал под градом ударов. Гопари вытащили его на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

								act 'Идти домой':gt'gorodok'
							end
							act 'Разнимать дерущихся':
								cls
								gs'stat'

								if stren < 90:
									'Вы попытались оттолкнуть гопника, но вас кто то толкнул и вы отлетев от дерущихся на несколько метров со всей силы грохнулись об пол. Гопари тем временем вытащили вашего избитого парня на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

									act 'Идти домой':gt'gorodok'
								elseif stren >= 90:
									'Вы толкнули гопника со всей силы и он отлетел от вас. Но второй гопник развернулся к вам и вы увидели как он бьет кулаком вам в лицо.'

									if agil < 90:
										zub += 1
										gs'stat'

										'В голове зазвенело и вы поняли, что лежите на полу. Сильно болели зубы и рот был полон солоноватой жидкости. Вы плюнули на пол и увидели, что вам выбили зуб. Гопари тем временем вытащили вашего избитого парня на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

										act 'Идти домой':gt'gorodok'
									elseif agil >= 90:
										'Вы резко убрали голову в сторону и кулак гопника разрезал воздух возле вашей головы.'

										act 'Ударить гопника кулаком в лицо':
											cls
											gs'stat'

											if speed >= 50:
												zub += 1
												gs'stat'

												'Вы ударили Гопника и попали ему точно по носу. Парень взревел "Ах ты сука!" и набросился на вас. В голове зазвенело и вы поняли, что лежите на полу. Сильно болели зубы и рот был полон солоноватой жидкости. Вы плюнули на пол и увидели, что вам выбили зуб. Гопари тем временем вытащили вашего избитого парня на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

												act 'Идти домой':gt'gorodok'
											elseif speed < 50:
												'Вы попытались стукнуть гопнику кулаком в лицо, но ваш удар оказался слишком медленным. Гопник толкнул вас и вы отлетели от него на несколько метров и с размаху грохнулись на танцпол. Гопари тем временем вытащили вашего избитого парня на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

												act 'Идти домой':gt'gorodok'
											end
										end
										act 'Пнуть гопнику ногой в голову':
											cls
											gs'stat'

											if speed >= 90:
												'Вы зарядили хорошим пинком гопнику по физиономии. Голова гопника сильно качнулась и он схватился за лицо. "Бля! Ебаная сука! Ты мне нос сломала! Я тебе сейчас весь ебальник разобью, тварь!" Ваш парень в этот момент врезал гопнику с разбитым носом и он отлетев на пару метров упал на танцпол. Двое других гопарей повисли на вашем парне стараясь выкрутить ему руки.'

												act 'Вцепиться одному из гопников в лицо':
													cls
													gs'stat'
													GopWin[numnpc] += 1

													'Вы вцепились ногтями гопнику в лицо и начали царапать его и рвать ему кожу. Гопник не выдержал и с воплем отцепился от вашего парня. Выш парень тем временем избавившись от одного из гопников сумел врезать второму, потом еще раз и еще. Гопник упал на танцпол как мешок. Гопник с исцарапанной мордой набросился на вашего парня, но без успешно, кровь заливала ему глаза и ваш парень врезал ему по морде от чего гопник плюхнулся на задницу. Тем временем начал подниматься на ноги один из гопников. "Ладно ублюдок, вали со своей сукой! Мы тебя все равно найдем!"'

													act 'Идти домой':gt'gorodok'
												end
											elseif speed < 90:
												'Вы попытались пнуть гопнику ногой в голову но он успел вас оттолкнуть прежде чем вы хоть что то успели сделать. Вы отлетели от него на несколько метров и с размаху грохнулись на танцпол. Гопари тем временем вытащили вашего избитого парня на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

												act 'Идти домой':gt'gorodok'
											end
										end
										act 'Пнуть гопнику по яйцам':
											cls
											gs'stat'

											if speed >= 70:
												bollrand = RAND(0,1)
												if bollrand = 0:
													'Вы попали гонику по яйцам и он с воем плюхнулся на колени зажимая больное место руками. Двое других гопников повисли на вашем парне стараясь выкрутить ему руки.'

													act 'Вцепиться одному из гопников в лицо':
														cls
														gs'stat'
														GopWin[numnpc] += 1

														'Вы вцепились ногтями гопнику в лицо и начали царапать его и рвать ему кожу. Гопник не выдержал и с воплем отцепился от вашего парня. Ваш парень тем временем избавившись от одного из гопников сумел врезать второму, потом еще раз и еще. Гопник упал на танцпол как мешок. Гопник с исцарапанной мордой набросился на вашего парня, но без успешно, кровь заливала ему глаза и ваш парень врезал ему по морде от чего гопник плюхнулся на задницу. Тем временем начал подниматься на ноги один из гопников. "Ладно ублюдок, вали со своей сукой! Мы тебя все равно найдем!"'

														act 'Идти домой':gt'gorodok'
													end
												elseif bollrand = 1:
													'Вы попытались пнуть гопнику между ног но он увернулся и сильно толкнул вас. Вы отлетели от него на несколько метров и с размаху грохнулись на танцпол. Гопари тем временем вытащили вашего избитого парня на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

													act 'Идти домой':gt'gorodok'
												end
											elseif speed < 70:
												'Вы попытались пнуть гопнику между ног но он увернулся и сильно толкнул вас. Вы отлетели от него на несколько метров и с размаху грохнулись на танцпол. Гопари тем временем вытащили вашего избитого парня на улицу где отобрали деньги, сняли с него кроссовки, и бросили в кустах. Вы помогли своему парню подняться на ноги и проводили его до дома. Все его лицо было в крови и начинало заплывать синяками.'

												act 'Идти домой':gt'gorodok'
											end
										end
									end
								end
							end
						end
					end
					act 'Танцевать':
						cls
						sub += 1
						otnBoyFrend[numnpc] = 0
						DPtipe = 2
						gs'BnameGen'
						gs'stat'

						'Вы стали танцевать с гопником. <<$nameBoyfrend[numnpc]>> подошел к нему и схватил его за плечо. "Слыш ты! Это моя девчонка!" К вашему парню подошли пара гопников и стали перетирать с ним, не давая при этом подойти к вам и к гопнику танцующему с вами. Вскоре <<$nameBoyfrend[numnpc]>> плюнул и послав вас на хуй ушел с дискотеки. Гопник предложил вам бухнуть с ним.'

						act 'Идти бухать':gt'EvgopBuh'
					end
				elseif GorSlut >= 3:
					otnBoyFrend[numnpc] = 0

					'Гопник смотрит на вас потом начинает смеяться "Слыш, поцик. Че ты с ней танцуешь? Это же Светка <<$gnikname>>. Отведи ее в кусты, да навали ей в рот. Знаешь как она сладко причмокивает, когда хуй сосет." Вы покраснели от слов гопника и смутились. <<$nameBoyfrend[numnpc]>> начал наезжать на гопника "Что ты сказал? А ну повтори!" К гопнику тут же подошли его друзья. "Слыш пацан. Не быкуй. За Светку все пацаны в округе знают, что она <<$gnikname>>." <<$nameBoyfrend[numnpc]>> смотрит на вас с удивлением. "Что правда?" Пацаны смеются "Ну ты и тормоз." <<$nameBoyfrend[numnpc]>> бьет вам ладонью по лицу "Пошла ты на хуй, шлюха!" после чего <<$nameBoyfrend[numnpc]>> уходит с танцпола.'

					act 'Тереть щеку':gt'gdkin'
				end
			elseif diskoIvTipeRand = 1:
				'<<$nameBoyfrend[numnpc]>> сказал, что хочет пива и предложил вам пойти вместе с ним выпить пива.'

				act 'Отказаться и танцевать одной':
					cls
					if dance < 50 and agil >= dance:dance += 1
					minut += 3
					gs'stat'

					'Ваш парень вышел с дискотеки, что бы купит пива и выпить его, вы тем временем продолжили танцевать.'

					if GorSlut >= 3:
						'К вам подходит парень "Хех. Я тут давно наблюдаю как <<$gnikname>> Света развлекается с парнем. Он еще не в курсе кто ты? Может мне ему рассказать?"'

						act 'Послать его':
							cls
							dom += 1
							otnBoyFrend[numnpc] = 0
							gs'stat'

							'Вы послали парня куда подальше и он нехорошо усмехаясь отошел в сторону. В этот момент к вам подошел <<$nameBoyfrend[numnpc]>> и спросил, "Чего этому парню надо было?" Вы с ходу наврали ему "Потанцевать хотел, я ему отказала." Тут парень подошел к вам и отозвал вашего парня поговорить. Через некоторое время к вам подошел <<$nameBoyfrend[numnpc]>> и сказал "Я тебя бросаю. Оказывается ты настоящая блядь! Я себя не на помойке нашел, что бы тратить свое время на такую шлюху!"'

							act 'Отойти':gt'gdkin'
						end
						act 'Просить его не рассказывать':
							cls
							sub += 1
							gs'stat'

							'Вы стали просить парня не рассказывать ничего, его молодому человеку. Он усмехнулся. "Ну если отсосешь, то так и быть, не расскажу."'

							act 'Послать его':
								cls
								dom += 1
								otnBoyFrend[numnpc] = 0
								gs'stat'

								'Вы послали парня куда подальше и он нехорошо усмехаясь отошел в сторону. В этот момент к вам подошел <<$nameBoyfrend[numnpc]>> и спросил, "Чего этому парню надо было?" Вы с ходу наврали ему "Потанцевать хотел, я ему отказала." Тут парень подошел к вам и отозвал вашего парня поговорить. Через некоторое время к вам подошел <<$nameBoyfrend[numnpc]>> и сказал "Я тебя бросаю. Оказывается ты настоящая блядь! Я себя не на помойке нашел, что бы тратить свое время на такую шлюху!"'

								act 'Отойти':gt'gdkin'
							end
							act 'Согласиться':
								cls
								sub += 1
								gs'stat'

								'Вы согласились и парень сказал вам, пойдем в туалет. Вы сразу приуныли. Туалет в клубе был чем то вроде проходного двора, кто то там курил, кто то справлял нужду, в кабинках половины дверей не было. Парень повел вас в мужской туалет. Когда вы открыли туда двери, то увидели, что несколько пьяных парней стоя у порога курят. В одной из кабинок слышно как кто то блюет. Парни с недоумением посмотрели на вас "Детка, ты ничего не перепутала? Это мужской сортир." Парень который привел вас усмехнулся "Она со мной." Он повернул к вам голову "Ну что хуесоска. Бери в рот." Вы оглянулись на парней и спросили "Что прямо тут что ли?" Парни захохотали "Да ладно. Что ты смущаешься?"'

								act 'Послать его':
									cls
									dom += 1
									otnBoyFrend[numnpc] = 0
									gs'stat'

									'Вы послали парня куда подальше и он нехорошо усмехаясь отошел в сторону. В этот момент к вам подошел <<$nameBoyfrend[numnpc]>> и спросил, "Чего этому парню надо было?" Вы с ходу наврали ему "Потанцевать хотел, я ему отказала." Тут парень подошел к вам и отозвал вашего парня поговорить. Через некоторое время к вам подошел <<$nameBoyfrend[numnpc]>> и сказал "Я тебя бросаю. Оказывается ты настоящая блядь! Я себя не на помойке нашел, что бы тратить свое время на такую шлюху!"'

									act 'Отойти':gt'gdkin'
								end
								act 'Отсосать':
									cls
									sub += 5
									guy += 1
									bj += 1
									cumlip += 1
									swallow += 1
									gs'stat'

									'<center><img src="images/qwest/alter/Ev/public.jpg"></center>'
									'Вы сели на корточки и парень расстегнув ширинку достал свой стоячий член. Другие пацаны стояли покуривали и наблюдали за происходящем. Вы открыли свой рот и облизнули бордовую головку члена, после чего обхватили ее своими <<$liptalk>> и взяли член в рот. Парни со смехом начали комментировать то, что они видят "Смотри как вафлерша причмокивает." Другой вторил "Где ты только такую хуесоску нашел" Еще кто то узнал вас "Так это же Светка Лебедева. Она конченная блядь." Вы краснели и сгорали от стыда отсасывая член на глазах у других парней. Наконец парень начал кончать вам в рот и вы старались как можно быстрее проглотить сперму. Наконец член парня обмяк и он заправил его в брюки. Вы встали с пола и стали вытирать рот, чувствуя как из вашего рта пахнет спермой. Один из парней захихикал "Эй звезда минета, отсоси и у меня."'

									act 'Выскользнуть из туалета':
										cls
										gs'stat'

										'Вы стараясь не обращать внимания на парней, выскользнули из туалета обратно на танцпол. <<$nameBoyfrend[numnpc]>> уже искал вас, он подошел к вам и спросил "Ты куда пропала? Я тебя тут всюду ищу." Вы соврали первое, что в голову пришло "В туалет ходила." <<$nameBoyfrend[numnpc]>> поинтересовался "А рот, что вытираешь?"'

										act 'Предложить уйти':
											cls
											gs'stat'

											'Вы предложили своему парню уйти с дискотеки. <<$nameBoyfrend[numnpc]>> пожал плечами и вы отправились на выход.'

											act 'Уйти':
												cls
												dynamic $din_gboy_end_to_disco
											end
										end
										act 'Танцевать':
											cls
											otnBoyFrend[numnpc] = 0
											gs'stat'

											'Вы продолжили танцевать со своим парнем и вдруг увидели как из туалет выходят парни которые были свидетелями того, как вы делаете минет. Они тоже увидели вас и загоготали, что то шумно обсуждая. <<$nameBoyfrend[numnpc]>> недоуменно посмотрел на них, "чего это они?" Пацаны крикнули ему, "пока ты где то шлялся, твоя телка в мужском сортире хуи сосет!" <<$nameBoyfrend[numnpc]>> подошел к ним "Вы что базарите?" Пацаны начали ему рассказывать как вы только что сосали хуй у них на глазах. <<$nameBoyfrend[numnpc]>> подошел к вам и влепил вам пощечину "Уебывай шлюха! И чтоб я тебя больше не видел!"'

											act 'Отойти':gt'gdkin'
										end
									end
								end
							end
						end
					elseif GorSlut < 3:
						'Пока ваш парень ходил за пивом к вам подошел какой то не знакомый парень и начал с вами танцевать.'

						act 'Танцевать':
							cls
							otnBoyFrend[numnpc] -= 20
							gs'stat'

							'Вы стали танцевать с не знакомым парнем и в этот момент в зал вошел <<$nameBoyfrend[numnpc]>> он подошел к вам и дернул вас за руку оттащив от другого парня. "Ты совсем что ли охренела? Отойти нельзя, а ты уже нашла кого то!" Он обиделся на вас и ушел с дискотеки.'

							act 'Отойти':gt'gdkin'
						end
						act 'Отказаться танцевать с незнакомцем':
							cls
							otnBoyFrend[numnpc] += 5
							gs'stat'

							'Вы отказались танцевать с незнакомцем и заметили что <<$nameBoyfrend[numnpc]>> пришел обратно в клуб. Вы еще немного потанцевали со своим парнем и он предложил уйти.'

							act 'Уйти':
								cls
								dynamic $din_gboy_end_to_disco
							end
						end
					end
				end
				act 'Идти с парнем и пить пиво':
					cls
					alko += 2
					minut += 3
					horny += 5
					gs'stat'

					'Вы вышли из дискотеки и нашли укромное местечко в котором начали пить пиво вместе со своим парнем.'

					act 'Уйти':
						cls
						dynamic $din_gboy_end_to_disco
					end
					act 'Целоваться':
						cls
						minut += 5
						kissBoyFrend[numnpc] += 1
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
						'<<$nameBoyfrend[numnpc]>> нежно обнял вас и начал целовать ваши губы.'

						if gnpcSex[numnpc] > 0:
							'<<$nameBoyfrend[numnpc]>> прошептал вам в ухо, "Светик, может займемся чем нибудь прямо тут?"'

							act 'Подрочить парню':
								cls
								minut += 5
								if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1
								dick = dickBoyFrend[numnpc]
								hj += 1
								hja += 1
								sub += 1
								gs'stat'

								'<center><img src="images/qwest/alter/Ev/hj.jpg"></center>'
								'Вы достали его твердый и горячий член из штанов и взяли его в руку. Вы начали целоваться с парнем, одновременно дроча ему член. Наконец парень сдавленно застонал и вы увидели как из его члена вылетает сперма.'

								act 'Далее':
									cls
									dynamic $din_gboy_end_to_disco
								end
							end
							act 'Взять в рот':
								cls
								minut += 5
								horny += 10
								bj += 1
								bja += 1
								dick = dickBoyFrend[numnpc]
								if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1

								if GorSlut < 2:
									resultrand = RAND(0,100)
									if resultrand >= 100:
										GorSlut = 2
										GboyBalabol[numnpc] = 1
									end
								end

								sub += 1
								gs'stat'

								'<center><img src="images/qwest/alter/Ev/cocksucker.jpg"></center>'
								'Вы сели на корточки перед парнем и приблизили свое лицо к его члену.'

								dynamic $dinrandbj

								'Вскоре <<$nameBoyfrend[numnpc]>> застонал "Светик, я сейчас кончу."'

								act 'Сосать дальше':
									cls
									minut += 5
									horny += 10
									cumlip += 1
									swallow += 1
									gs'stat'

									'<center><img src="images/qwest/alter/Ev/cocksuckerSwallow.jpg"></center>'

									dynamic $dinrandswallow

									act 'Далее':
										cls
										dynamic $din_gboy_end_to_disco
									end
								end
								act 'Вынуть изо рта':
									cls
									minut += 5
									horny += 10
									cumface += 1
									facial += 1
									gs'stat'

									'<center><img src="images/qwest/alter/Ev/cocksuckerFacial.jpg"></center>'
									'Вы вынули изо рта член и тут же вам в лицо ударила струя горячей спермы, потом еще и еще и наконец парень прекратил кончать на ваше лицо.'

									act 'Далее':
										cls
										dynamic $din_gboy_end_to_disco
									end
								end
							end
						elseif gnpcSex[numnpc] = 0:
							'Вы почувствовали как руки вашего парня ласкают ваши груди.'

							act 'Прекратить':
								cls
								dynamic $din_gboy_end_to_disco
							end
							act 'Позволить ему':
								cls
								horny += 10
								minut += 3
								gs'stat'

								'<center><img src="images/qwest/alter/Ev/tits.jpg"></center>'
								'<<$nameBoyfrend[numnpc]>> вытаскивает вашу грудь <<tits>> размера наружу и начинает мять ваши груди и целовать их. Парень берет вашу руку и кладет себе на пах, вы чувствуете что у него там твердый член.'

								act 'Ласкать его член через штаны':
									cls
									horny += 5
									minut += 3
									gs'stat'

									'<center><img src="images/qwest/alter/Ev/cock.jpg"></center>'
									'Вы начали гладить парня по ширинке, ощущая твердость его вставшего члена через материю.'

									if horny < 80:
										act 'Убрать руки':
											cls
											minut += 5
											otnBoyFrend[numnpc] -= 10
											dom += 1
											gs'stat'

											'Вы убрали руки парня от своей груди и он растерялся, не зная что ему делать.'

											act 'Далее':
												cls
												dynamic $din_gboy_end_to_disco
											end
										end
									end

									act 'Залезть к парню в штаны':
										cls
										horny += 10
										minut += 3
										gs'stat'

										'<center><img src="images/qwest/alter/Ev/cock2.jpg"></center>'
										'Вы засунули руку к парню в штаны и почувствовали своими пальцами его твердый и горячий член.'

										if dom > 0:
											act 'Подрочить парню':
												cls
												minut += 5
												if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1
												dick = dickBoyFrend[numnpc]
												hj += 1
												hja += 1
												sub += 1
												gs'stat'

												'<center><img src="images/qwest/alter/Ev/hj.jpg"></center>'
												'Вы достали его твердый и горячий член из штанов и взяли его в руку. Вы начали целоваться с парнем, одновременно дроча ему член. Наконец парень сдавленно застонал и вы увидели как из его члена вылетает сперма.'

												act 'Далее':
													cls
													dynamic $din_gboy_end_to_disco
												end
											end
										end

										act 'Взять в рот':
											cls
											minut += 5
											horny += 10
											bj += 1
											bja += 1
											dick = dickBoyFrend[numnpc]
											if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1

											if GorSlut < 2:
												resultrand = RAND(0,100)
												if resultrand >= 100:
													GorSlut = 2
													GboyBalabol[numnpc] = 1
												end
											end

											sub += 1
											gs'stat'

											'<center><img src="images/qwest/alter/Ev/cocksucker.jpg"></center>'
											'Вы сели на корточки перед парнем и приблизили свое лицо к его члену.'

											dynamic $dinrandbj

											'Вскоре <<$nameBoyfrend[numnpc]>> застонал "Светик, я сейчас кончу."'

											act 'Сосать дальше':
												cls
												minut += 5
												horny += 10
												cumlip += 1
												swallow += 1
												gs'stat'

												'<center><img src="images/qwest/alter/Ev/cocksuckerSwallow.jpg"></center>'

												dynamic $dinrandswallow

												act 'Далее':
													cls
													dynamic $din_gboy_end_to_disco
												end
											end
											act 'Вынуть изо рта':
												cls
												minut += 5
												horny += 10
												cumface += 1
												facial += 1
												gs'stat'

												'<center><img src="images/qwest/alter/Ev/cocksuckerFacial.jpg"></center>'
												'Вы вынули изо рта член и тут же вам в лицо ударила струя горячей спермы, потом еще и еще и наконец парень прекратил кончать на ваше лицо.'

												act 'Далее':
													cls
													dynamic $din_gboy_end_to_disco
												end
											end
										end
									end
								end

								if horny <= 90:
									act 'Сопротивляться':
										cls
										horny += 10
										minut += 3
										gs'stat'

										'<center><img src="images/qwest/alter/Ev/petting.jpg"></center>'
										'Вы убрали руку от ширинки и парень засунул вам свою руку в трусы, вы ощутили как его пальцы ласкают вашу мокрую киску.'

										if horny < 70:
											act 'Убрать его руку':
												cls
												minut += 5
												otnBoyFrend[numnpc] -= 10
												dom += 1
												gs'stat'

												'Вы убрали руки парня от себя и он растерялся, не зная что ему делать.'

												act 'Далее':
													cls
													dynamic $din_gboy_end_to_disco
												end
											end
										end

										act 'Наслаждаться':
											cls
											minut += 5
											sub += 1
											horny += 10
											gs'stat'

											'<center><img src="images/qwest/alter/Ev/petting.jpg"></center>'
											'Вы прекратили сопротивляться и просто расслабились ощущая приятное тепло от того, как парень ласкает вашу киску. <<$nameBoyfrend[numnpc]>> стал раздевать вас и вскоре вы оказались голая.'

											act 'Отдаться':
												cls
												minut += 5
												horny += 10
												sexa += 1
												if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1
												$boy = $nameBoyfrend[numnpc]
												dick = dickBoyFrend[numnpc]
												silavag = silavagBoyFrend[numnpc]

												if GorSlut = 0:
													resultrand = RAND(0,100)
													if resultrand >= 100:
														GorSlut = 1
														GboyBalabol[numnpc] = 1
													end
												end

												gs'stat'

												'<center><img src="images/picV/vag.jpg"></center>'
												'Парень быстро скинул с себя одежду и лег на вас сверху.'

												dynamic $sexstart
												dynamic $sexstart2
												dynamic $sexcum

												act 'Далее':
													cls
													dynamic $din_gboy_end_to_disco
												end
											end

											if dom > 0 or anal > 0:
												act 'Подставить попку':
													cls
													minut += 30
													cumanus += 1
													anala += 1
													$boy = $nameBoyfrend[numnpc]
													dick = dickBoyFrend[numnpc]
													silavag = silavagBoyFrend[numnpc]
													if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1

													if GorSlut = 0:
														resultrand = RAND(0,100)
														if resultrand >= 100:
															GorSlut = 1
															GboyBalabol[numnpc] = 1
														end
													end

													gs'stat'

													'<center><img src="images/qwest/alter/Ev/anal.jpg"></center>'

													dynamic $sexstart
													dynamic $analsex

													'Наконец парень замирает и вы чувствует как что то теплое заливает вашу попу.'

													act 'Далее':
														cls
														dynamic $din_gboy_end_to_disco
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			elseif diskoIvTipeRand = 2:
				''
			elseif diskoIvTipeRand = 3:
				''
			end

			exit
		end

		if kissBoyFrend[numnpc] > 0:
			''
		elseif kissBoyFrend[numnpc] = 0:
			''
		end

		dynamic $din_gboy_end_to_disco
	end
}

$din_gboy_tits = {
	'<<$nameBoyfrend[numnpc]>> стал доставать ваши груди <<tits>> размера из под одежды.'

	act 'Позволить ему':
		cls
		horny += 10
		minut += 3
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/tits.jpg"></center>'
		'<<$nameBoyfrend[numnpc]>> вытаскивает вашу грудь <<tits>> размера наружу и начинает мять ваши груди и целовать их. Парень берет вашу руку и кладет себе на пах, вы чувствуете что у него там твердый член.'

		act 'Ласкать его член через штаны':
			cls
			horny += 5
			minut += 3
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/cock.jpg"></center>'
			'Вы начали гладить парня по ширинке, ощущая твердость его вставшего члена через материю.'

			if horny < 80:
				act 'Убрать руки':
					cls
					minut += 5
					otnBoyFrend[numnpc] -= 10
					dom += 1
					gs'stat'

					'Вы убрали руки парня от своей груди и он растерялся, не зная что ему делать.'

					act 'Идти домой':gt'gorodok'
				end
			end

			act 'Залезть к парню в штаны':
				cls
				horny += 10
				minut += 3
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/cock2.jpg"></center>'
				'Вы засунули руку к парню в штаны и почувствовали своими пальцами его твердый и горячий член.'

				if dom > 0:
					act 'Подрочить парню':
						cls
						minut += 5
						if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1
						dick = dickBoyFrend[numnpc]
						hj += 1
						hja += 1
						sub += 1
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/hj.jpg"></center>'
						'Вы достали его твердый и горячий член из штанов и взяли его в руку. Вы начали целоваться с парнем, одновременно дроча ему член. Наконец парень сдавленно застонал и вы увидели как из его члена вылетает сперма.'

						act 'Идти домой':gt'gorodok'
					end
				end

				act 'Взять в рот':
					cls
					minut += 5
					horny += 10
					bj += 1
					bja += 1
					dick = dickBoyFrend[numnpc]
					if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1

					if GorSlut < 2:
						resultrand = RAND(0,100)
						if resultrand >= 100:
							GorSlut = 2
							GboyBalabol[numnpc] = 1
						end
					end

					sub += 1
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/cocksucker.jpg"></center>'
					'Вы сели на корточки перед парнем и приблизили свое лицо к его члену.'

					dynamic $dinrandbj

					'Вскоре <<$nameBoyfrend[numnpc]>> застонал "Светик, я сейчас кончу."'

					act 'Сосать дальше':
						cls
						minut += 5
						horny += 10
						cumlip += 1
						swallow += 1
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/cocksuckerSwallow.jpg"></center>'

						dynamic $dinrandswallow

						act 'Идти домой':gt'gorodok'
					end
					act 'Вынуть изо рта':
						cls
						minut += 5
						horny += 10
						cumface += 1
						facial += 1
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/cocksuckerFacial.jpg"></center>'
						'Вы вынули изо рта член и тут же вам в лицо ударила струя горячей спермы, потом еще и еще и наконец парень прекратил кончать на ваше лицо.'

						act 'Идти домой':gt'gorodok'
					end
					act 'Отдаться':
						cls
						minut += 5
						horny += 10
						sexa += 1
						if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1
						$boy = $nameBoyfrend[numnpc]
						dick = dickBoyFrend[numnpc]
						silavag = silavagBoyFrend[numnpc]

						if GorSlut = 0:
							resultrand = RAND(0,100)
							if resultrand >= 100:
								GorSlut = 1
								GboyBalabol[numnpc] = 1
							end
						end

						gs'stat'

						'<center><img src="images/picV/vag.jpg"></center>'
						'Парень быстро скинул с себя одежду и лег на вас сверху.'

						dynamic $sexstart
						dynamic $sexstart2
						dynamic $sexcum

						act 'Идти домой':gt'gorodok'
					end

					if dom > 0 or anal > 0:
						act 'Подставить попку':
							cls
							minut += 30
							cumanus += 1
							anala += 1
							$boy = $nameBoyfrend[numnpc]
							dick = dickBoyFrend[numnpc]
							silavag = silavagBoyFrend[numnpc]
							if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1

							if GorSlut = 0:
								resultrand = RAND(0,100)
								if resultrand >= 100:
									GorSlut = 1
									GboyBalabol[numnpc] = 1
								end
							end

							gs'stat'

							'<center><img src="images/qwest/alter/Ev/anal.jpg"></center>'

							dynamic $sexstart
							dynamic $analsex

							'Наконец парень замирает и вы чувствует как что то теплое заливает вашу попу.'

							act 'Уйти':gt'gorodok'
						end
					end
				end
			end
		end

		if horny <= 90:
			act 'Сопротивляться':
				cls
				horny += 10
				minut += 3
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/petting.jpg"></center>'
				'Вы убрали руку от ширинки и парень засунул вам свою руку в трусы, вы ощутили как его пальцы ласкают вашу мокрую киску.'

				if horny < 70:
					act 'Убрать его руку':
						cls
						minut += 5
						otnBoyFrend[numnpc] -= 10
						dom += 1
						gs'stat'

						'Вы убрали руки парня от себя и он растерялся, не зная что ему делать.'

						act 'Идти домой':gt'gorodok'
					end
				end

				act 'Наслаждаться':
					cls
					minut += 5
					sub += 1
					horny += 10
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/petting.jpg"></center>'
					'Вы прекратили сопротивляться и просто расслабились ощущая приятное тепло от того, как парень ласкает вашу киску. <<$nameBoyfrend[numnpc]>> стал раздевать вас и вскоре вы оказались голая.'

					act 'Отдаться':
						cls
						minut += 5
						horny += 10
						sexa += 1
						if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1
						$boy = $nameBoyfrend[numnpc]
						dick = dickBoyFrend[numnpc]
						silavag = silavagBoyFrend[numnpc]

						if GorSlut = 0:
							resultrand = RAND(0,100)
							if resultrand >= 100:
								GorSlut = 1
								GboyBalabol[numnpc] = 1
							end
						end

						gs'stat'

						'<center><img src="images/picV/vag.jpg"></center>'
						'Парень быстро скинул с себя одежду и лег на вас сверху.'

						dynamic $sexstart
						dynamic $sexstart2
						dynamic $sexcum

						act 'Идти домой':gt'gorodok'
					end

					if dom > 0 or anal > 0:
						act 'Подставить попку':
							cls
							minut += 30
							cumanus += 1
							anala += 1
							$boy = $nameBoyfrend[numnpc]
							dick = dickBoyFrend[numnpc]
							silavag = silavagBoyFrend[numnpc]
							if gnpcSex[numnpc] = 0:gnpcSex[numnpc] = 1 & guy += 1

							if GorSlut = 0:
								resultrand = RAND(0,100)
								if resultrand >= 100:
									GorSlut = 1
									GboyBalabol[numnpc] = 1
								end
							end

							gs'stat'

							'<center><img src="images/qwest/alter/Ev/anal.jpg"></center>'

							dynamic $sexstart
							dynamic $analsex

							'Наконец парень замирает и вы чувствует как что то теплое заливает вашу попу.'

							act 'Уйти':gt'gorodok'
						end
					end
				end
			end
		end
	end

	if horny < 90:
		act 'Убрать его руку':
			cls
			minut += 5
			otnBoyFrend[numnpc] -= 10
			dom += 1
			gs'stat'

			'Вы убрали руки парня от своей груди и он растерялся, не зная что ему делать.'

			act 'Идти домой':gt'gorodok'
		end
	end
}

$din_gboy_kiss = {
	act 'Целоваться':
		cls
		minut += 5
		kissBoyFrend[numnpc] += 1
		horny += 10
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
		'Вы повернули голову к парню и ваши губы встретились. <<$nameBoyfrend[numnpc]>> стал страстно гладить своими руками по вашему телу и целовать вас.'

		dynamic $din_gboy_tits
	end
}

$din_gboy_knee = {
	if horny < 75 or dom > 0:
		act 'Убрать его руку':
			cls
			minut += 5
			otnBoyFrend[numnpc] -= 10
			if dom > 0 and horny >= 75:dom -= 1
			if horny < 75:dom += 1
			gs'stat'

			'Вы убрали руку парня и он растерялся, не зная что ему делать.'

			act 'Идти домой':gt'gorodok'
		end
	end

	act 'Делать вид, что ничего не происходит':
		cls
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/groped.jpg"></center>'
		'Вы сделали вид, что ничего не происходит и <<$nameBoyfrend[numnpc]>> уже не стесняясь вовсю шарил своими руками по вашим ногам. <<$nameBoyfrend[numnpc]>> наклонился к вашему лицу стремясь поцеловать вас.'

		dynamic $din_gboy_kiss

		if horny < 75 or dom > 5:
			act 'Убрать его руку':
				cls
				minut += 5
				otnBoyFrend[numnpc] -= 10
				if dom > 0 and horny >= 75:dom -= 5
				if horny < 75:dom += 5
				gs'stat'

				'Вы убрали руку парня и он растерялся, не зная что ему делать.'

				act 'Идти домой':gt'gorodok'
			end
		end
	end

	if dom > 0 or horny >= 75:
		act 'Поцеловать парня':
			cls
			minut += 5
			dom += 1
			kissBoyFrend[numnpc] += 1
			horny += 10
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
			'Вы повернули голову к парню и наклонились к его лицу. После этого вы поцеловались и <<$nameBoyfrend[numnpc]>> стал страстно гладить своими руками по вашему телу.'

			dynamic $din_gboy_tits
		end
	end
}

$din_gboy_go_to_boyhome = {
	act 'Идти к парню домой':
		cls
		minut += 15
		gs'stat'

		'<<$nameBoyfrend[numnpc]>> повел вас к себе домой. Вы подошли к небольшому двухэтажному дому, в котором было несколько квартир и <<$nameBoyfrend[numnpc]>> проводил вас до своей квартиры. Он открыл дверь ключом и впустил вас.'

		boyhouserand = RAND(0,2)
		if boyhouserand = 0:
			'Дома у парня никого не было и он предложил вам пойти в зал и посмотреть видик.'

			act 'Смотреть видик':
				cls
				minut += 30
				gs'stat'

				'Вы расположились по удобней на диване и <<$nameBoyfrend[numnpc]>> порывшись в кассетах вставил одну из них в видик и включив его сел рядом с вами.'

				boyvideorand = RAND(0,3)
				if boyvideorand = 0:
					'Когда начался фильм вы увидели, что это порнуха. Главные герои не успели и перекинуться парой фраз как девушка оказалась уже голой и на коленях перед парнем с его членом во рту.'

					act 'Смотреть порнуху':
						cls
						minut += 30
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/alter/groped.jpg"></center>'
						'Вы стали вместе с парнем смотреть порнуху и происходящее начало постепенно возбуждать вас. Вы почувствовали как <<$nameBoyfrend[numnpc]>> положил руку на вашу коленку и начал ее гладить.'

						dynamic $din_gboy_knee
					end
					act 'Устроить скандал':
						cls
						minut += 30
						dom += 1
						otnBoyFrend[numnpc] -= 20
						gs'stat'

						'Вы встали с дивана и устроили скандал парню утверждая, что вы не такая и ему от вас нужно только одно. <<$nameBoyfrend[numnpc]>> смутился и покраснев начал бубнить извинения.'

						act 'Идти домой':gt'gorodok'
					end
				elseif boyvideorand > 0:
					'Начался голливудский боевик в котором главный герой крушил все вокруг себя при этом умудрялся даже не оцарапаться. В фильме убили его лучшего друга, после чего герой стоя на коленях возле тела кричал НЕТ!!! под дождем. Наконец герой добрался до главного злодея и после трудной схватки покончил им, кончился фильм как и полагается взрывом на заднем плане от которого герой убегал.'

					boyprirand = RAND(0,2)
					if boyprirand = 0:
						'Вы почувствовали как рука парня легла вам на колено и начала его гладить.'

						dynamic $din_gboy_knee

						if horny < 75 or dom > 5:
							act 'Убрать его руку':
								cls
								minut += 5
								otnBoyFrend[numnpc] -= 10
								if dom > 0 and horny >= 75:dom -= 5
								if horny < 75:dom += 5
								gs'stat'

								'Вы убрали руку парня и он растерялся, не зная что ему делать.'

								act 'Идти домой':gt'gorodok'
							end
						end
					else
						act 'Идти домой':gt'gorodok'
						if dom > 0 or horny >= 75:
							act 'Поцеловать парня':
								cls
								minut += 5
								dom += 1
								gs'stat'

								'Вы повернули голову к парню и наклонились к его лицу. После этого вы поцеловались и <<$nameBoyfrend[numnpc]>> стал страстно гладить своими руками по вашему телу.'

								dynamic $din_gboy_tits
							end
						end
					end
				end
			end
		elseif boyhouserand = 1:
			'<center><img src="images/qwest/alter/groped.jpg"></center>'
			'Дома у парня никого не было и он предложил вам пойти в его комнату. В своей комнате парень сел рядом с вами и начал гладить ваше колено.'

			dynamic $din_gboy_knee
		elseif boyhouserand = 2:
			'<center><img src="images/qwest/alter/groped.jpg"></center>'
			'Дома у парня оказались родители и он быстренько проводил вас в свою комнату. В своей комнате парень сел рядом с вами и начал гладить ваше колено.'

			dynamic $din_gboy_knee
		end
		!act 'Идти домой':gt'gorodok'
	end
}

gs'stat'

'<center><b><font color = maroon><<$nameBoyfrend[numnpc]>></font></b></center>'
!'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
'<<$nameBoyfrend[numnpc]>> ваш парень.'

if otnBoyFrend[numnpc] < 20:'У вас плохие отношения.'
if otnBoyFrend[numnpc] >= 20 and otnBoyFrend[numnpc] < 40:'У вас напряженные отношения.'
if otnBoyFrend[numnpc] >= 40 and otnBoyFrend[numnpc] < 60:'У вас нормальные отношения.'
if otnBoyFrend[numnpc] >= 60 and otnBoyFrend[numnpc] < 80:'У вас хорошие отношения.'
if otnBoyFrend[numnpc] >= 80:'У вас отличные отношения.'

''
''

if hour < 20:
	if otnBoyFrend[numnpc] < 80:
		'<<$nameBoyfrend[numnpc]>> предложил проводить вас домой.'

		act 'Идти домой':gt'gorodok'
	elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] = 0:
		gdeystboyrand = RAND(0,1)
		if gdeystboyrand = 0:
			'<<$nameBoyfrend[numnpc]>> предложил пойти к нему домой.'

			dynamic $din_gboy_go_to_boyhome

			act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
		elseif gdeystboyrand = 1:
			'<<$nameBoyfrend[numnpc]>> предложил проводить вас домой.'

			act 'Идти домой':gt'gorodok'
		end
	elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] > 0:
		'<<$nameBoyfrend[numnpc]>> предложил пойти к нему домой.'

		dynamic $din_gboy_go_to_boyhome

		act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
	end
elseif hour >= 20 and hour < 23:
	if otnBoyFrend[numnpc] < 80:
		'<<$nameBoyfrend[numnpc]>> предложил проводить вас домой.'

		act 'Идти домой':gt'gorodok'
	elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] = 0:
		tipgbrand = RAND(0,1)
		if tipgbrand = 0:
			'<<$nameBoyfrend[numnpc]>> предложил сходить на дискотеку.'

			dynamic $din_gboy_go_to_disco

			act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
		elseif tipgbrand = 1:
			'<<$nameBoyfrend[numnpc]>> предложил пойти к нему домой.'

			dynamic $din_gboy_go_to_boyhome

			act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
		end
	elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] > 0:
		gdeystboyrand = RAND(0,1)
		if gdeystboyrand = 0:
			'<<$nameBoyfrend[numnpc]>> предложил пойти к нему домой.'

			dynamic $din_gboy_go_to_boyhome

			act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
		elseif gdeystboyrand = 1:
			'<<$nameBoyfrend[numnpc]>> предложил сходить на дискотеку.'

			dynamic $din_gboy_go_to_disco

			act 'Отказаться и идти домой':otnBoyFrend[numnpc] -= 10 & gt'gorodok'
		end
	end
elseif hour >= 23:
	'<<$nameBoyfrend[numnpc]>> предложил проводить вас домой.'

	act 'Идти домой':gt'gorodok'
end
--- Gnpc2 ---------------------------------

