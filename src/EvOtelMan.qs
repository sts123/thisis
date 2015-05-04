# EvOtelMan
$din_otel_man_end = {
	act 'Приводить себя в порядок':
		cls
		minut += 15
		gs'stat'

		'Вы начали приводить себя в порядок. <<$bname>> потянулся и завалился на кровать. "Это было классно Светик."'

		if cumface > 0:cumface = 0 & 'Вы нашли салфетки и стерли сперму с лица.'
		if cumanus > 0:'Вы попробовали вытереть сперму со своей попы, но как бы вы не вытирали из вашего ануса все еще вытекала сперма.'

		act 'Уйти':gt'vokzalG'
	end
}

$din_otel_man_blow = {
	act 'Сесть на корточки':
		cls
		bj += 1
		if boynumBlock = 0:guy += 1
		if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
		sub += 1
		minut += 10
		bmBJ[Tboynum] += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/bj.jpg"></center>'
		'Вы сели на корточки перед мужчиной и взяли его член рукой. Немного подвигав кожицу на члене вы облизнули головку. Ваш ловкий язычок начал ласкать горячий и твердый член мужчины. <<$bname>> сказал "Светик, я так скоро кончу."'

		act 'Сосать':
			cls
			cumlip += 1
			minut += 10
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/bj2.jpg"></center>'
			'Вы обхватили губами член и начали его сосать старательно обхватывая твердый ствол своими <<$liptalk2>>. <<$bname>> стонет и вы чувствуете как вам в рот ударяет струя спермы.'

			act 'Сосать глотая сперму':
				cls
				swallow += 1
				water -= 10
				minut += 10
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/bj3.jpg"></center>'
				'Вы продолжили сосать кончающий член и сглатывать сперму попадающую вам в рот. Спермы было так много, что вы не успеваете все проглотить и она стекает из вашего рта по члену. Наконец <<$bname>> прекращает кончать и вы вытаскиваете член из своего пахнущего спермой рта. Во рту гадко от вкуса кончи, облизнувшись вы понимаете, что ваши <<$liptalk3>> влажные от спермы.'

				dynamic $din_otel_man_end
			end
			act 'Вынуть изо рта':
				cls
				cumface += 1
				facial += 1
				minut += 10
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/bj4.jpg"></center>'
				'Вы вынули член изо рта и струя спермы тут же хлестнула вам по лицу. Вы зажмурили глаза боясь, что сперма попадет вам в глаза и почувствовали как еще одна струя горячей кончи приземлилась вам на лицо.'

				dynamic $din_otel_man_end
			end
		end
		act 'Подставить попку':
			cls
			minut += 30
			cumanus += 1
			$boy = $bname
			bmANAL[Tboynum] += 1
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/anal.jpg"></center>'

			dynamic $sexstart
			dynamic $analsex
			dynamic $din_otel_man_end
		end
		act 'Лечь на спину':
			cls
			minut += 30
			!sex += 1
			$boy = $bname
			bmSEX[Tboynum] += 1
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/sex.jpg"></center>'
			'Вы легли на спину. <<$bname>> лег сверху и раздвинул ваши ноги.'

			dynamic $sexstart
			dynamic $sexstart2
			dynamic $sexcum
			dynamic $din_otel_man_end
		end
	end
}

$din_otel_man_beforesex = {
	if horny < 75 and vagina = 0 and sex = 0 or dom > 0 and vagina = 0 and sex = 0:
		act 'Я еще девочка и берегу девственность':
			cls
			minut += 5
			gs'stat'

			tiprandeom = RAND(0,2)
			if tiprandeom < 2:
				'Вы признались мужчине что вы еще девочка и хотели бы сохранить девственность. Мужчина улыбнулся и сказал, что сексом можно заниматься и оставаясь девочкой. <<$bname>> достал член из штанов.'

				dynamic $din_otel_man_blow

				if dom > 0:
					act 'Даже и не надейся':
						cls
						sub += 1
						gs'stat'

						'Вы рассмеялись и отказали мужчине. <<$bname>> почесал голову "Хочешь я дам тебе пятихатку?"'

						act 'Давай':
							cls
							money += 500
							gs'stat'

							'Вы протянули ладошку и мужчина дал вам пятьсот рублей.'

							dynamic $din_otel_man_blow
						end
						act 'Уйти':gt'vokzalG'
					end
				end
			elseif tiprandeom = 2:
				'<center><img src="images/qwest/alter/Ev/otel.jpg"></center>'
				'<<$bname>> заинтересовался "Правда? Ты девственница? Я дам тебе пятихатку, если ты покажешь мне свою киску"'

				if dom > 0:
					act 'Даже и не надейся':
						cls
						sub += 1
						gs'stat'

						'Вы рассмеялись и отказали мужчине. <<$bname>> почесал голову "Ну тогда может пососешь? Я дам тебе пятихатку."'

						act 'Давай':
							cls
							money += 500
							gs'stat'

							'<center><img src="images/qwest/alter/Ev/otel.jpg"></center>'
							'Вы протянули ладошку и мужчина дал вам пятьсот рублей.'

							dynamic $din_otel_man_blow
						end
						act 'Уйти':gt'vokzalG'
					end
				end

				act 'Показать':
					cls
					sub += 1
					money += 500
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/kiska.jpg"></center>'
					'Вы разделись и показали свою киску мужчине. Тот с интересом рассмотрел вас. "Классно. Слушай. Я дам тебе пять штук, если ты позволишь мне стать твоим первым парнем."'

					act 'Согласиться':
						cls
						minut += 30
						!sex += 1
						$boy = $bname
						bmSEX[Tboynum] += 1
						money += 5000
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/sex.jpg"></center>'
						'Вы протянули ладошку и мужчина дрожащими руками вам отсчитал пять тысяч. После этого <<$bname>> повалил вас на кровать и раздвинул ваши ноги.'

						dynamic $sexstart
						dynamic $sexstart2
						dynamic $sexcum
						dynamic $din_otel_man_end
					end

					if dom > 0:
						act 'Нет, я собираюсь остаться девственницей до брака':
							cls
							sub += 1
							gs'stat'

							'Вы рассмеялись и отказали мужчине. <<$bname>> почесал голову "Ну тогда может пососешь? Я дам тебе пятихатку."'

							act 'Давай':
								cls
								money += 500
								gs'stat'

								'Вы протянули ладошку и мужчина дал вам пятьсот рублей.'

								dynamic $din_otel_man_blow
							end
							act 'Уйти':gt'vokzalG'
						end
					end

					act 'Уйти':gt'vokzalG'
				end
			end
		end
	end

	if dom >= 5 and StoryLine > 0:
		act 'Разводить на бабло':
			cls
			sub += 1
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/otel.jpg"></center>'
			'Вы посмотрели на часы. "Ну мы неплохо провели время, но пожалуй я пойду. А то мамка ругаться будет, не даст потом денег на обеды." <<$bname>> улыбнулся вам "Я дам тебе три штуки, этого хватит тебе на обеды?"'

			act 'Согласиться на секс за деньги':
				cls
				minut += 30
				!sex += 1
				guy += 1
				$boy = $bname
				bmSEX[Tboynum] += 1
				money += 3000
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/sex.jpg"></center>'
				'Вы протянули ладошку и мужчина дрожащими руками вам отсчитал пять тысяч. После этого <<$bname>> повалил вас на кровать и раздвинул ваши ноги.'

				dynamic $sexstart
				dynamic $sexstart2
				dynamic $sexcum
				dynamic $din_otel_man_end
			end
			if dom > 0:
				act 'Минет это максимум':
					cls
					sub += 1
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/otel.jpg"></center>'
					'Вы рассмеялись и отказали мужчине сказав что минет это максимум на который он может рассчитывать. <<$bname>> почесал голову "Да без проблем, я дам тебе пятихатку."'

					act 'Давай':
						cls
						money += 500
						gs'stat'

						'Вы протянули ладошку и мужчина дал вам пятьсот рублей.'

						dynamic $din_otel_man_blow
					end
					act 'Уйти':gt'vokzalG'
				end
			end
		end
	end

	act 'Далее':
		cls
		minut += 30
		!sex += 1
		if boynumBlock = 0:guy += 1
		if boynumBlock > 0 and bmTOTSEX[Tboynum] = 0:guy += 1
		$boy = $bname
		bmSEX[Tboynum] += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/sex.jpg"></center>'
		'<<$bname>> повалил вас на кровать и раздвинул ваши ноги.'

		dynamic $sexstart
		dynamic $sexstart2
		dynamic $sexcum
		dynamic $din_otel_man_end
	end

	if dom > 0:
		dynamic $din_otel_man_blow
	end

}

music_on = 0
minut += 15
gs'tboyopr'
gs'stat'

if DPtipe = 1:
	'Мужчина подошел к стоящему рядом с клубом таксисту и перемолвившись с ним парой фраз обернулся к вам. "Светик поехали." Вы вместе с мужчиной сели в такси и быстро доехали до отеля. Мужчина повел вас к себе в номер.'

	act 'Идти в номер':
		cls
		BeInOtel += 1
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/otel.jpg"></center>'
		'Номер оказался вполне приличным. Мужчина подошел к холодильнику и начал выкладывать на стол. Бутылка запотевшего виски, сервелат, банка красной икры, тарелка с фруктами. Выложив все на стол, мужчина подставил вам стул, на который вы присели. Он сел на стул рядом с вами и разлил виски по рюмкам. "Ну давайте Светик выпьем за знакомство. Я так рад, что встретил такую красивую и замечательную девушку как вы."'

		act 'Выпить':
			cls
			horny += 20
			alko += 2
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
			'Вы выпили с мужчиной и он встав со стула подошел к вам. Его губы начали целовать ваши и его руки стали стягивать с вас одежду.'

			dynamic $din_otel_man_beforesex
		end
	end
end
if DPtipe = 2:
	'Мужчина подошел к стоящему рядом с клубом таксисту и перемолвившись с ним парой фраз обернулся к вам. "Светик поехали." Вы вместе с мужчиной сели в такси и быстро доехали до отеля. Мужчина повел вас к себе в номер.'

	act 'Идти в номер':
		cls
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
		'Вы вошли в номер и едва мужчина закрыл двери как он впился в вас поцелуем и его руки начали шарить по вашему телу стараясь стянуть с вас одежду.'

		dynamic $din_otel_man_beforesex
	end
end
--- EvOtelMan ---------------------------------

