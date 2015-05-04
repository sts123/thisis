# EvBoyBuh
$din_gorodok_boy_bj = {
	act 'Сесть на корточки':
		cls
		minut += 5
		horny += 10
		bj += 1
		if boynumBlock = 0:guy += 1
		if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
		sub += 1
		gs'tboyopr'
		bmBJ[Tboynum] += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/boybj.jpg"></center>'
		'Вы сели на корточки перед парнем и стали дрочить его член.'

		act 'Сосать':
			cls
			minut += 5
			horny += 10

			if GorSlut < 2:
				resultrand = RAND(0,100)
				if resultrand >= 80:
					GorSlut = 2
					bmGossip[Tboynum] = 2
				end
			end

			gs'stat'

			'<center><img src="images/qwest/alter/Ev/boybj2.jpg"></center>'

			dynamic $dinrandbj

			act 'Сосать дальше':
				cls
				minut += 5
				horny += 10
				cumface += 1
				cumlip += 1
				cumfrot += 1
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/boybj3.jpg"></center>'

				dynamic $dinrandswallow

				act 'Уйти':gt'gdkin'
			end
		end
		act 'Нагнуться':
			cls
			minut += 5
			horny += 10
			if boynumBlock = 0:boy += 1
			bmSEX[Tboynum] += 1
			$boy = $bname3
			pose = 1

			if GorSlut = 0:
				resultrand = RAND(0,100)
				if resultrand >= 80:
					GorSlut = 1
					bmGossip[Tboynum] = 1
				end
			end

			gs'stat'

			'<center><img src="images/qwest/alter/Ev/boysex.jpg"></center>'
			'Вы нагнулись и подставили свой голый зад парню.'

			dynamic $sexstart
			dynamic $sexstart2
			dynamic $sexcum

			act 'Уйти':gt'gdkin'
		end
	end
}

$d_gorodok_boy_hj = {
	if dom > 0:
		act 'Подрочить парню':
			cls
			minut += 5
			sub += 1
			gs'tboyopr'
			bmHJ[Tboynum] += 1
			gs'stat'

			evhjrand = RAND(0,1)
			if evhjrand = 0:
				if boynumBlock = 0:guy += 1
				if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
				hj += 1

				'<center><img src="images/qwest/alter/Ev/hj.jpg"></center>'
				'Вы достали его твердый и горячий член из штанов и взяли его в руку. Вы начали целоваться с парнем, одновременно дроча ему член. Наконец парень сдавленно застонал и вы увидели как из его члена вылетает сперма.'

				act 'Уйти':gt'gdkin'
			elseif evhjrand = 1:
				'<center><img src="images/qwest/alter/Ev/hj.jpg"></center>'
				'Вы достали его твердый и горячий член из штанов и взяли его в руку. Вы начали целоваться с парнем, одновременно дроча ему член. Парень надавливает вам на плечи вынуждая сесть на корточки.'

				dynamic $din_gorodok_boy_bj
			end
		end
	end
}

music_on = 0
minut += 5
gs'stat'

'<center><img src="images/etogame/dk_night.jpg"></center>'
'Вы вышли с парнем из клуба он повел вас за клуб.'

if GorSlut = 0:
	'Парень достал из пакета полторашку пива, чипсы и пару стаканчиков. Вы нашли местечко в зарослях и устроились на поваленном дереве.'

	act 'Пить пиво':
		cls
		alko += 1
		manna += 30
		fat += 5
		energy += 20
		minut += 10
		gs'stat'

		'Вы весело болтали с парнем потягивая пиво из стаканчиков и заедая чипсами. Парень оказался веселый и рассказывал забавные истории.'

		if alko >= 3:
			horny += 20

			'<<$bname>> обнял вас и поцеловал. Вас охватило возбуждение от поцелуя. Вы почувствовали его руки на своей груди.'

			if horny < 75:
				act 'Шептать "Не надо"':
					cls
					minut += 5
					gs'stat'

					if DPtipe = 2:
						'<center><img src="images/qwest/alter/Ev/grab.jpg"></center>'
						'Парень пьян и не обращает внимания на вас.'

						dynamic $din_gorodok_boy_bj

						act 'Молчать':
							cls
							minut += 5
							horny += 10
							if boynumBlock = 0:boy += 1
							gs'tboyopr'
							bmSEX[Tboynum] += 1
							$boy = $bname3

							if GorSlut = 0:
								resultrand = RAND(0,100)
								if resultrand >= 80:
									GorSlut = 1
									bmGossip[Tboynum] = 1
								end
							end

							gs'stat'

							'<center><img src="images/picV/vag.jpg"></center>'
							'Парень повалил вас на землю и начал раздевать.'

							dynamic $sexstart
							dynamic $sexstart2
							dynamic $sexcum

							act 'Уйти':gt'gdkin'
						end
					else
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/tits.jpg"></center>'
						'Парень немного ослабляет напор, но все еще не отпускает вас.'

						if horny < 75:
							act 'Уйти':gt'gdkin'
						end

						'Вы стоите в обнимку с парнем и он плавно достает вашу грудь и начинает ее облизывать и сосать соски.'

						dynamic $din_gorodok_boy_bj
					end

					dynamic $d_gorodok_boy_hj
				end
			end

			act 'Молчать':
				cls
				minut += 5
				horny += 10
				if boynumBlock = 0:guy += 1
				if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
				bmSEX[Tboynum] += 1
				$boy = $bname3

				if GorSlut = 0:
					resultrand = RAND(0,100)
					if resultrand >= 80:
						GorSlut = 1
						bmGossip[Tboynum] = 1
					end
				end

				gs'stat'

				'<center><img src="images/picV/vag.jpg"></center>'
				'Парень повалил вас на землю и начал раздевать.'

				dynamic $sexstart
				dynamic $sexstart2
				dynamic $sexcum

				act 'Уйти':gt'gdkin'
			end
		elseif alko < 3:
			if DPtipe = 1:
				randvnesh = RAND(10,30)

				deystrand = RAND(0,1)
				if deystrand = 0 and vnesh >= randvnesh:
					'<<$bname>> сказал "Ты классная девчонка. Может мы еще встретимся?"'

					act 'Отказать ему и уйти':gt'gdkin'
					act 'Сказать ему свой телефон':
						cls
						manna += 10
						numboyFrend += 1
						$nameBoyfrend[numboyFrend] = $bname
						$nameBoyfrendFull[numboyFrend] = $bnamefull
						dickBoyFrend[numboyFrend] = dick
						silavagBoyFrend[numboyFrend] = siladick
						otnBoyFrend[numboyFrend] = 50
						minut += 30
						bmFrend[Tboynum] = 1
						gs'stat'

						'Вы сказали парню свой телефон и он записал его.'

						act 'Уйти':gt'gdkin'
					end
				elseif deystrand = 1 or vnesh < randvnesh:
					'<<$bname>> подходит к вам ближе и начинает целовать вас.'

					if horny <= 25:act 'Уйти':gt'gdkin'

					dynamic $din_gorodok_boy_pristal
				end
			elseif DPtipe = 2:
				horny += 5
				gs'stat'

				'<<$bname>> подходит к вам ближе и начинает целовать вас.'

				if horny <= 25:act 'Уйти':gt'gdkin'

				act 'Целоваться':
					cls
					horny += 5
					minut += 3
					bmKISS[Tboynum] += 1
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
					'<<$bname>> страстно целует ваши <<$liptalk3>> и вы отвечаете взаимностью на этот поцелуй. Вы чувствуете как руки парня стараются вытащить вашу грудь.'

					if horny <= 50:act 'Уйти':gt'gdkin'

					act 'Позволить ему':
						cls
						horny += 10
						minut += 3
						bmTITS[Tboynum] += 1
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/tits.jpg"></center>'
						'<<$bname>> вытаскивает вашу грудь <<tits>> размера наружу и начинает мять ваши груди и целовать их. Парень берет вашу руку и кладет себе на пах, вы чувствуете что у него там твердый член.'

						if horny <= 75:act 'Уйти':gt'gdkin'
						if horny <= 90:
							act 'Сопротивляться':
								cls
								horny += 10
								minut += 3
								gs'stat'

								'<center><img src="images/qwest/alter/Ev/petting.jpg"></center>'
								'Вы убрали руку от ширинки и парень засунул вам свою руку в трусы, вы ощутили как его пальцы ласкают вашу мокрую киску.'

								if horny <= 90:act 'Убрать его руки и уйти':gt'gdkin'
								if horny > 90:
									cla
									horny = 0
									orgasm += 1
									gs'stat'

									'Внезапно вы почувствовали как внизу живота нарастает приятное тепло и на вас обрушился оргазм. Вы прикусили губу что бы не заорать от ощущений.'

									act 'Стонать':
										cls
										horny += 5
										minut += 3
										gs'stat'

										'<center><img src="images/qwest/alter/Ev/cock3.jpg"></center>'
										'Вы застонали от удовольствия и ваши ноги подкосились, вы сели на корточки перед парнем. Когда в глазах прояснилось вы увидели перед вашим лицом член.'

										if sub > 10:
											act 'Сосать':
												cls
												minut += 5
												horny += 10
												bj += 1
												if boynumBlock = 0:guy += 1
												if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
												bmBJ[Tboynum] += 1
												sub += 1
												gs'stat'

												'<center><img src="images/qwest/alter/Ev/cocksuck.jpg"></center>'
												'Вы сами того не понимая внезапно поцеловали головку члена и поняли что же вы делаете только тогда, когда твердый член уже наполнил ваш рот и вы старательно его отсасывали.'

												act 'Далее':
													cls
													minut += 5
													horny += 10
													cumlip += 1
													cumface += 1
													cumfrot += 1

													if GorSlut < 2:
														resultrand = RAND(0,100)
														if resultrand >= 80:
															GorSlut = 2
															bmGossip[Tboynum] = 2
														end
													end

													gs'stat'

													'<center><img src="images/qwest/alter/Ev/cocksuck2.jpg"></center>'
													'Внезапно вам в рот ударила теплая струя спермы, вы едва не захлебнулись но продолжили сосать. Семя стекало по вашим губам на член и капало вам на одежду, наконец член стал опадать в вашем рту и парень его вынул, и убрал в штаны.'

													act 'Посмотреть на парня':
														cls
														minut += 1
														gs'stat'

														'<center><img src="images/qwest/alter/Ev/cocksuck3.jpg"></center>'
														'<<$bname>> все еще держит вас за голову и вы с полным ртом спермы посмотрели вверх, ему в лицо. Парень блаженствует и довольно смотрит на вас. "Офигенно отсосала!"'

														act 'Встать и уйти':gt'gdkin'
													end
												end
											end
										elseif sub >= 10 or dom <= 10:
											act 'Сидеть':
												cls
												minut += 5
												if boynumBlock = 0:guy += 1
												if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
												facial += 1
												sub += 1
												cumface += 1
												cumfrot += 1
												gs'stat'

												'<center><img src="images/qwest/alter/Ev/facial.jpg"></center>'
												'Вы как завороженная остались сидеть на земле и парень начал дрочить член перед вашим лицом. Все произошло очень быстро, вы не успели ничего понять и вдруг вам на лицо, из члена вылетает струя горячей жидкости и приземляется на нос. Вы вздрагиваете и зажмуриваете глаза, ощущая как новые струйки спермы попадают вам на лицо.'

												act 'Уйти':gt'gdkin'
											end
										elseif dom > 10:
											act 'Подрочить парню':
												cls
												minut += 5
												if boynumBlock = 0:guy += 1
												if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
												bmHJ[Tboynum] += 1
												hj += 1
												dom = 0
												gs'stat'

												'<center><img src="images/qwest/alter/Ev/hj.jpg"></center>'
												'Вы нашли в себе силы встать на ноги и взяли его твердый и горячий член в руку. Вы начали целоваться с парнем, одновременно дроча ему член. Наконец парень сдавленно застонал и вы увидели как из его члена вылетает сперма.'

												act 'Уйти':gt'gdkin'
											end
										end
									end
								end
							end
						end

						act 'Ласкать его член через штаны':
							cls
							horny += 5
							minut += 3
							gs'stat'

							'<center><img src="images/qwest/alter/Ev/cock.jpg"></center>'
							'Вы начали гладить парня по ширинке, ощущая твердость члена.'

							if horny <= 90:act 'Уйти':gt'gdkin'

							act 'Залезть к парню в штаны':
								cls
								horny += 10
								minut += 3
								gs'stat'

								'<center><img src="images/qwest/alter/Ev/cock2.jpg"></center>'
								'Вы засунули руку к парню в штаны и почувствовали своими пальцами его твердый и горячий член.'

								if horny <= 90:act 'Уйти':gt'gdkin'

								dynamic $d_gorodok_boy_hj
								dynamic $din_gorodok_boy_bj
							end
						end
					end
				end
			end
		end
	end
end

$din_gorodok_boy_otkaz = {
	if dom >= GorSlut:
		act 'Уйти':
			cls
			dom -= GorSlut
			minut += 5
			gs'stat'

			'Вы отказали парню и пошли обратно в клуб.'

			act 'Уйти':gt'gdkin'
		end
	end
}

$din_gorodok_boy_pristal = {
	act 'Целоваться':
		cls
		horny += 5
		minut += 3
		gs'tboyopr'
		bmKISS[Tboynum] += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
		'<<$bname>> страстно целует ваши <<$liptalk3>> и вы отвечаете взаимностью на этот поцелуй. Вы чувствуете как руки парня стараются вытащить вашу грудь.'

		if horny <= 50:act 'Уйти':gt'gdkin'

		act 'Позволить ему':
			cls
			horny += 10
			minut += 3
			bmTITS[Tboynum] += 1
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/tits.jpg"></center>'
			'<<$bname>> вытаскивает вашу грудь <<tits>> размера наружу и начинает мять ваши груди и целовать их. Парень берет вашу руку и кладет себе на пах, вы чувствуете что у него там твердый член.'

			if horny <= 75:act 'Уйти':gt'gdkin'
			if horny <= 90:
				act 'Сопротивляться':
					cls
					horny += 10
					minut += 3
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/petting.jpg"></center>'
					'Вы убрали руку от ширинки и парень засунул вам свою руку в трусы, вы ощутили как его пальцы ласкают вашу мокрую киску.'

					if horny <= 90:act 'Убрать его руки и уйти':gt'gdkin'
					if horny > 90:
						cla
						horny = 0
						orgasm += 1
						gs'stat'

						'Внезапно вы почувствовали как внизу живота нарастает приятное тепло и на вас обрушился оргазм. Вы прикусили губу что бы не заорать от ощущений.'

						act 'Стонать':
							cls
							horny += 5
							minut += 3
							gs'stat'

							'<center><img src="images/qwest/alter/Ev/cock3.jpg"></center>'
							'Вы застонали от удовольствия и ваши ноги подкосились, вы сели на корточки перед парнем. Когда в глазах прояснилось вы увидели перед вашим лицом член.'

							if sub > 0:
								act 'Сосать':
									cls
									minut += 5
									horny += 10
									bj += 1
									if boynumBlock = 0:guy += 1
									if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
									bmBJ[Tboynum] += 1
									sub += 1
									gs'stat'

									'<center><img src="images/qwest/alter/Ev/cocksuck.jpg"></center>'
									'Вы сами того не понимая внезапно поцеловали головку члена и поняли что же вы делаете только тогда, когда твердый член уже наполнил ваш рот и вы старательно его отсасывали.'

									act 'Далее':
										cls
										minut += 5
										horny += 10
										cumlip += 1
										cumface += 1
										cumfrot += 1

										if GorSlut < 2:
											resultrand = RAND(0,100)
											if resultrand >= 80:
												GorSlut = 2
												bmGossip[Tboynum] = 2
											end
										end

										gs'stat'

										'<center><img src="images/qwest/alter/Ev/cocksuck2.jpg"></center>'
										'Внезапно вам в рот ударила теплая струя спермы, вы едва не захлебнулись но продолжили сосать. Семя стекало по вашим губам на член и капало вам на одежду, наконец член стал опадать в вашем рту и парень его вынул, и убрал в штаны.'

										act 'Посмотреть на парня':
											cls
											minut += 1
											gs'stat'

											'<center><img src="images/qwest/alter/Ev/cocksuck3.jpg"></center>'
											'<<$bname>> все еще держит вас за голову и вы с полным ртом спермы посмотрели вверх, ему в лицо. Парень блаженствует и довольно смотрит на вас. "Офигенно отсосала!"'

											act 'Встать и уйти':gt'gdkin'
										end
									end
								end
							elseif sub = 0 and dom = 0:
								act 'Сидеть':
									cls
									minut += 5
									if boynumBlock = 0:guy += 1
									if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
									facial += 1
									sub += 1
									cumface += 1
									cumfrot += 1
									gs'stat'

									'<center><img src="images/qwest/alter/Ev/facial.jpg"></center>'
									'Вы как завороженная остались сидеть на земле и парень начал дрочить член перед вашим лицом. Все произошло очень быстро, вы не успели ничего понять и вдруг вам на лицо, из члена вылетает струя горячей жидкости и приземляется на нос. Вы вздрагиваете и зажмуриваете глаза, ощущая как новые струйки спермы попадают вам на лицо.'

									act 'Уйти':gt'gdkin'
								end
							end

							dynamic $d_gorodok_boy_hj
						end
					end
				end
			end

			act 'Ласкать его член через штаны':
				cls
				horny += 5
				minut += 3
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/cock.jpg"></center>'
				'Вы начали гладить парня по ширинке, ощущая твердость члена.'

				if horny <= 90:act 'Уйти':gt'gdkin'

				act 'Залезть к парню в штаны':
					cls
					horny += 10
					minut += 3
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/cock2.jpg"></center>'
					'Вы засунули руку к парню в штаны и почувствовали своими пальцами его твердый и горячий член.'

					if horny <= 90:act 'Уйти':gt'gdkin'

					dynamic $d_gorodok_boy_hj
					dynamic $din_gorodok_boy_bj
				end
			end
		end
	end
}

if GorSlut = 1 or GorSlut = 2:
	gsboyrand = RAND(0,10)
	if gsboyrand = 0:
		if GorSlut = 1:
			'<<$bname>> сказал, "Светик я слышал, что ты всем даешь." Парень достал член из штанов.'

			dynamic $din_gorodok_boy_bj
			dynamic $din_gorodok_boy_otkaz
		elseif GorSlut = 2:
			'<<$bname>> сказал, "Светик я слышал, что ты в рот берешь." Парень достал член из штанов.'

			dynamic $din_gorodok_boy_bj
			dynamic $din_gorodok_boy_otkaz
		end
	elseif gsboyrand > 0:
		alko += 1
		minut += 15
		gs'stat'

		'<<$bname>> достал пиво и вы начали выпивать с ним. Когда с пивом было покончено парень подошел к вам и обнял вас.'

		dynamic $din_gorodok_boy_otkaz
		dynamic $din_gorodok_boy_pristal

		exit
	end
elseif GorSlut = 3 or GorSlut = 4:
	'<<$bname>> сказал, "Светик ты же <<$gnikname>>. Я хочу поразвлечься." Парень достал член из штанов.'

	dynamic $din_gorodok_boy_bj
	dynamic $din_gorodok_boy_otkaz
elseif GorSlut = 5:
	'<<$bname>> сказал, "Светик ты же <<$gnikname>>. Я хочу поразвлечься." После этого парень достал член из штанов.'

	dynamic $din_gorodok_boy_bj
	dynamic $din_gorodok_boy_otkaz
elseif GorSlut = 6:
	gs'tboyopr'

	'<<$bname>> сказал, "Светик ты же <<$gnikname>>. Я хочу минет. Вот тебе 50 рублей" После этого парень достал член из штанов.'

	act 'Сесть на корточки':
		cls
		minut += 5
		horny += 10
		bj += 1
		if boynumBlock = 0:guy += 1
		if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
		bmHJ[Tboynum] += 1
		sub += 1
		money += 50
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/boybj.jpg"></center>'
		'Вы сели на корточки перед парнем и стали дрочить его член.'

		act 'Сосать':
			cls
			minut += 5
			horny += 10
			bmBJ[Tboynum] += 1
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/boybj2.jpg"></center>'

			dynamic $dinrandbj

			act 'Дальше':
				cls
				minut += 5
				horny += 10
				cumface += 1
				cumlip += 1
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/boybj3.jpg"></center>'

				dynamic $dinrandswallow

				act 'Уйти':gt'gdkin'
			end
		end
	end
	act 'Уйти':gt'gdkin'
end

if GorSlut >= 1:
	if dom >= 5:
		act 'Обругать парня':
			cls
			sub += 5
			minut += 3
			GorSlut -= 1
			gs'stat'

			'Вы отказали пацану "Ты совсем охерел? Жене своей будешь такие предложения делать. Урод." Парень смутился "Ну пацаны же говорят..." Вы его перебили "Говорят в Москве кур доят, да только как доят, не говорят, ты больше уши развешивай, придурок!"'

			act 'Уйти':gt'gdkin'
		end
	end
	if GorSlut < 6:
		if dom > 0:
			act 'А у тебя деньги то есть?':
				cls
				sub += 1
				minut += 3
				GorSlut = 6
				money += 300
				gs'stat'

				'Вы отказали пацану "А у тебя деньги то есть?" Пацан достал из кармана 300 рублей. Вы взяли деньги и положили их себе.'

				dynamic $din_gorodok_boy_bj
			end
		end
	end
end

!dynamic $dinrandswallow
--- EvBoyBuh ---------------------------------

