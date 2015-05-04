# yarik
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Квартира бизнесмена Ярослава</font></b></center>'
	'<center><img src="images/yaroslav/360911_paradniy_pod-ezd.jpg"></center>'

	act 'Позвонить в дверь':
		cla
		if hour >= 16 and hour <= 17 and yaq = 1:
			'Вы позвонили в дверь и вам открыли'

			act 'Пройти в квартиру':gt'yarik','yaqw'
		else
			'Вы позвонили в дверь но никто не отвечает.'

			act 'Уйти':
				cla
				minut = minut + 5
				gt'down'
			end
		end
	end
end

if $ARGS[0] = 'yaqw':
	cla
	*clr
	'<center><img src="images/yaroslav/1365154132_studentka-ischet-rabotu-1.jpg" width = 750 height = 450 ></center>'
	'О, Света! Привет! Заходи. - Сказал Ярослав.'

	act 'Зайти и слушать Ярослава':
		cla
		*clr
		'<center><img src="images/yaroslav/1365154130_studentka-ischet-rabotu-2.jpg" width = 750 height = 450 ></center>'
		'Мне нужно что бы ты протерла пыль, убрала носки, и постирала одежду.'

		act 'Ладно':
			cla
			clr
			minut = minut + 20
			gs'stat'

			'<b>Вы убирались к квартире Ярослава, пока он сидел за какими-то бумагами и читал их.</b>'
			'Вдруг он подошёл к вам. Светик, можешь пойти протереть кафель в ванной?'

			act 'Извините, не могу, нужно бежать':
				cla
				minut = minut + 120
				manna = manna + 50
				money = money + 2000
				uborkayar = uborkayar + 1

				'Не смею тебя задерживать. Вот твои 2 штуки. Приходи еще, если хочешь. Бывай.'

				gt'down'
			end
			act 'Хорошо':
				cla
				*clr
				minut = minut + 10

				'<center><img src="images/yaroslav/1365154198_studentka-ischet-rabotu-3.jpg" width = 750 height = 450 ></center>'
				'Вот чёрт. Заставил меня драить его ванную комнату, ну и работенка, до чего я докатилась - ворчала я себе - мой маникюр, моя одежда - все испортится, ну по крайней мере хоть денег на клуб подзаработаю.'

				act 'Драить пол':
					cla
					*clr
					minut = minut + 5

					'<center><img src="images/yaroslav/1365154197_studentka-ischet-rabotu-4.jpg" width = 750 height = 450 ></center>'
					'Видимо решив проверить как я справляюсь, Ярослав пришёл в ванную, и стал на входе, однако когда он увидел меня, сексуально вставшую рачком и надраивающую пенной губкой пол, все мысли о качестве работы вылетели из его головы.'

					act 'Возмутиться':
						cla
						*clr
						'<center><img src="images/yaroslav/1365154177_studentka-ischet-rabotu-5.jpg" width = 750 height = 450 ></center>'
						'- Эй! - резко обернулась я - вы что пялитесь на мою задницу? - я возмущенно вскрикнула, однако сразу оценив богатство мужчины у меня появился план зарабатывания чаевых.'

						act 'Встать':
							cla
							*clr
							'<center><img src="images/yaroslav/1365154183_studentka-ischet-rabotu-6.jpg" width = 750 height = 450 ></center>'
							'Начавшего оправдываться Ярослава я остановила, встала в полный рост и строя глазки хозяину дома, принялась натирать прозрачную стенку. Слушайте, я тут хочу подработать немного чаевых, что бы мне хватило на новую модную одежду. Я надеюсь вы не против? - Я с вызовом проговорила Ярославу.'

							act 'Испачкаться':
								cla
								*clr
								'<center><img src="images/yaroslav/1365154181_studentka-ischet-rabotu-7.jpg" width = 750 height = 450 ></center>'
								'- А ведь я ничего и не умею толком - проговорила я, выжимая на себя губку с мыльным раствором - вот видите, вся испачкалась, куда я теперь в мокрой футболке, придется её снять и подождать пока высохнет.'

								act 'Снять футболку':
									cla
									*clr
									'<center><img src="images/yaroslav/1365154123_studentka-ischet-rabotu-8.jpg" width = 750 height = 450 ></center>'
									'С этими словами я стащила с себя промокшую футболку и внушительный лифчик, затем выжав на себя остатки пены спросила у Ярослава - Вы не могли бы мне помочь, мне нужно высохнуть, а то я такая влажная...'

									act 'Слушать Ярослава':
										cla
										*clr
										'<center><img src="images/yaroslav/1365154153_studentka-ischet-rabotu-9.jpg" width = 750 height = 450 ></center>'
										'Уже давно поняв к чему я веду, перевозбужденный Ярослав, достав пухлый кошелек из штанов, обращается ко мне - Ты говорила что тебе не хватает денег - я предлагаю тебе совместить приятное с полезным.'

										act 'Смотреть что будет дальше':
											cla
											*clr
											minut = minut + 10

											'<center><img src="images/yaroslav/1365154194_studentka-ischet-rabotu-10.jpg" width = 750 height = 450 ></center>'
											'Достав член из ширинки он продолжает - Покажи что ты умеешь своими ручками и получишь хорошие чаевые.'

											act 'Взять член':
												cla
												*clr
												'<center><img src="images/yaroslav/1365154141_studentka-ischet-rabotu-13.jpg" width = 750 height = 450 ></center>'
												'Довольная, что смогла так легко развести мужчину на бабки, я, взяв его пенис в свою ручку, принялась водить её вверх-вниз, то ускоряя то замедляя темп, прильнул своими розовыми губками к похотливым губам мужчины и высунув язычок, засунула ему в рот.'

												act 'Опуститься вниз':
													cla
													*clr
													'<center><img src="images/yaroslav/1365154216_studentka-ischet-rabotu-12.jpg" width = 750 height = 450 ></center>'
													'Потом я медленно опустилась на колени и начала заглатывать его хозяйство в свой чувственный ротик, вылизывая его словно мороженное. Ярослав не ожидавший таких способностей у столь юной девушки застонал от наслаждения, распыляясь все сильнее, желая просунуть член не в рот, а в мою нежную киску.'

													act 'Сосать член':
														cla
														*clr
														minut = minut + 20

														'<center><img src="images/yaroslav/1365154178_studentka-ischet-rabotu-11.jpg" width = 750 height = 450 ></center>'
														'- Хочешь подзаработать еще больше? - спросил мужчина у меня. В ответ я замычала и не переставая заглатывать член, яростно закивала головой.'

														act 'Встать':
															cla
															*clr
															'<center><img src="images/yaroslav/1365154172_studentka-ischet-rabotu-14.jpg" width = 750 height = 450 ></center>'
															'- Отлично, я знал что ты хорошая девочка. Сказав это, он высунул фаллос из моего рта и взяв меня на руки, усадил на столешницу.'

															act 'Раздвинуть ножки':
																cla
																*clr
																'<center><img src="images/yaroslav/1365154194_studentka-ischet-rabotu-15.jpg" width = 750 height = 450 ></center>'
																'Снимая с себя штаны, он стал поигрывать с моим влагалищем, просовывая свои крепкие мужские руки в мою щелочку.'

																act 'Наслаждаться':
																	cla
																	*clr
																	'<center><img src="images/yaroslav/1365154144_studentka-ischet-rabotu-16.jpg" width = 750 height = 450 ></center>'
																	'Однако не вытерпев долго, он пристроил свой член к половым губкам, а после резко вогнул его внутрь.'

																	act 'Стонать':
																		cla
																		*clr
																		'<center><img src="images/yaroslav/1365154203_studentka-ischet-rabotu-17.jpg" width = 750 height = 450 ></center>'
																		'Схватив меня поудобней он стал с силой запихивать свой член в мою молоденькую письку, я от такого напора застонала, вцепившись в свои ножки ногтями, чтобы отвлечься от боли которую доставлял огромный пенис мужчины, разрабатывая мою киску.'

																		act 'Наслаждаться':
																			cla
																			*clr
																			minut = minut + 20

																			'<center><img src="images/yaroslav/1365154147_studentka-ischet-rabotu-18.jpg" width = 750 height = 450 ></center>'
																			'Большой член Ярослава продолжал таранить мою киску. Я стонала и тяжело дышала.'

																			act 'Спросить':
																				cla
																				*clr
																				minut = minut + 20

																				'<center><img src="images/yaroslav/1365154175_studentka-ischet-rabotu-19.jpg" width = 750 height = 450 ></center>'
																				'- Надеюсь вы не забудете меня поблагодарить за мои способности - спросила я. В ответ Ярослав кивнул и только сильнее всунул член в теплое, мокрое влагалище, работая им словно поршнем.'

																				act 'Развернуться':
																					cla
																					*clr
																					'<center><img src="images/yaroslav/1365154194_studentka-ischet-rabotu-20.jpg" width = 750 height = 450 ></center>'
																					'<center><img src="images/yaroslav/1365154188_studentka-ischet-rabotu-21.jpg" width = 750 height = 450 ></center>'
																					'Развернув меня, он схватил меня за ногу и стал дергать меня к себе, в унисон с движениями таза, другой рукой проникнув в мой сексуально приоткрытый ротик.'

																					act 'Вздохнуть':
																						cla
																						*clr
																						minut = minut + 20

																						'Наконец высунув его, он услышал мой вздох огорчения,и поиграв членом возле смуглого колечка ануса, еще несколько раз вогнал головку члена в мой раздроченный клапан.'
																						'<center><img src="images/yaroslav/1365154232_studentka-ischet-rabotu-22.jpg" width = 750 height = 450 ></center>'
																						'<center><img src="images/yaroslav/1365154212_studentka-ischet-rabotu-23.jpg" width = 750 height = 450 ></center>'
																						'<center><img src="images/yaroslav/1365154145_studentka-ischet-rabotu-24.jpg" width = 750 height = 450 ></center>'

																						act 'Слезть':
																							cla
																							*clr
																							'<center><img src="images/yaroslav/1365154164_studentka-ischet-rabotu-26.jpg" width = 750 height = 450 ></center>'
																							'<center><img src="images/yaroslav/1365154143_studentka-ischet-rabotu-25.jpg" width = 750 height = 450 ></center>'
																							'Затем опустив меня на пол, он лег на спину, а меня начал натягивать на свой хер, растянув мои булки. Я двигала тазом, периодически попрыгивая на его болте и вновь засовывая его на всю глубину.'

																							act 'Слезть и подставить лицо':
																								cla
																								*clr
																								minut = minut + 5
																								horny = horny = 0
																								vagina = vagina + 1
																								throat = throat + 1
																								orgasm = orgasm + 1

																								'<center><img src="images/yaroslav/1365154169_studentka-ischet-rabotu-27.jpg" width = 750 height = 450 ></center>'
																								'Лишь только почувствовав как громко начал стонать Ярослав, и как увеличился его член в финальном порыве, я соскочила с мужчины и стоя на коленях, жадно открыла рот в предвкушении того, как на меня будет брызгать теплая густая жидкость из пениса мужчины, доставившего мне столько приятных минут. И вот наконец из фаллоса вырвались струи семени, заполнившей все мое лицо и грудь.'

																								act 'В ванную':
																									cla
																									*clr
																									minut = minut + 20
																									sweat = sweat = 0
																									hapri = 0

																									'<center><img src="images/yaroslav/1365154231_studentka-ischet-rabotu-28.jpg" width = 750 height = 450 ></center>'
																									'- Молодец девочка, ты очень хорошая работница, забегай ко мне после уроков, я тебе буду помогать с заработком. А теперь пойди ополоснись и я тебя рассчитаю за твою великолепно выполненную работу - сказал Ярослав.'

																									act 'Одеться и уйти':
																										cla
																										money = money + 3000
																										uborkayar = uborkayar + 1
																										minut = minut + 25
																										gt'down'
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
					end
				end
			end
		end
		act 'Уйти':gt'down'
	end
	act 'Уйти':gt'down'
end
--- yarik ---------------------------------

