# fbDormD
$d_fbd_start = {
	act 'Идти в общагу':
		cls
		minut += 5
		gs'stat'

		'Вахтерша увидев вас с негодованием прикрикнула "<<$bname>>, зараза ты этакая, опять какую то блядь привел?" <<$bname>> ухмыльнулся "Да ладно вам тетя Катя, дело то молодое, а с меня шоколадка." Тетя Катя заметно сбавила обороты и пробубнила "Ага, как же, от вас дождешься."'

		tiprand = RAND(1,100)
		if tiprand >= 90:fbde = 1
		if tiprand < 90 and tiprand >= 60:fbde = 2
		if tiprand < 60:fbde = 3

		dynamic $d_fbd_dormroom
	end
}

$d_fbd_dormroom = {
	act 'Идти в комнату':
		cls
		minut += 5
		gs'stat'

		if fbde <= 1:
			'Когда вы вошли в комнату то увидели, что тут в самом разгаре вечеринка, на столе стоят бутылки и закуска, птушники во всю гуляют. Один из парней поднялся вам на встречу "А, <<$bname>> проходи, и познакомь нас со своей девушкой." <<$bname>> поздоровался за руку с парнями и представил вас после чего вам помогли сесть за стол. Стульев на всех не хватало и вы сели на середину кровати, с одной стороны сел <<$bname>>, с другой стороны не знакомый парень.'

			dynamic $d_fbd_mass
		elseif fbde = 2:
			'На удивление в комнате никого не оказалось и <<$bname>> быстро закрыл за вами входную дверь и подойдя к вам обнял вас и поцеловал.'

			dynamic $d_fbd_regular
		elseif fbde = 3:
			'В комнате оказался не знакомый вам парень. <<$bname>> поздоровался с ним и что то ему прошептал.'

			tiprand = RAND(1,100)
			if tiprand < 90:
				'Не знакомый парень сменил тапки на ботинки и попрощавшись вышел из комнаты.'

				dynamic $d_fbd_regular
			elseif tiprand >= 90:
				'Незнакомый парень достал из сумки бутылку водки и закуску и вас настойчиво усадили на кровать, а парни сели по оба бока от вас.'

				dynamic $d_fbd_drunk
			end
		end
	end
}

$d_fbd_regular = {
	act 'Целоваться':
		cls
		boy += 1
		dick = RAND(15,25)
		parkfuckboy += 1
		$ppBoyName[parkfuckboy] = $bname
		ppBoyTipe[parkfuckboy] = 1
		ppBoyPlace[parkfuckboy] = 3
		!дроч 2 минет 3 групповуха
		ppdick[parkfuckboy] = dick
		fbdormtimes += 1
		pphj = 0
		ppbj = 0
		ppsex = 0
		ppanal = 0
		minut += 5
		horny += 10
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbdKiss.jpg"></center>'
		'Вы начали страстно целоваться с парнем и он начал вас медленно раздевать.'

		dynamic $d_fbd_blowhim

		act 'Продолжать целоваться':
			cls
			minut += 5
			horny += 10
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/fbdKiss.jpg"></center>'

			tiprand = RAND(1,100)
			if tiprand >= 80:
				'<<$bname>> нежно но сильно давит вам на плечи заставляя наклонить ваше лицо к его члену.'

				dynamic $d_fbd_blowhim
			elseif tiprand < 80 and tiprand >= 40:
				'<<$bname>> взял вас за плечи и положил на спину'

				dynamic $d_fbd_miss
			elseif tiprand < 40:
				'<<$bname>> взял вас за талию и поставил раком'

				dynamic $d_fbd_dog
			end
		end
	end
}

$d_fbd_blowhim = {
	act 'Взять в рот':
		cls
		minut += 5
		ppbj += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbdBJ.jpg"></center>'

		dynamic $dinrandbj

		tiprand = RAND(0,1)
		if tiprand = 0:
			'<<$bname>> взял вас за плечи и положил на спину'

			dynamic $d_fbd_miss
		elseif tiprand = 1:
			'<<$bname>> взял вас за талию и поставил раком'

			dynamic $d_fbd_dog
		end
	end
}

$d_fbd_miss = {
	act 'Лечь на спину':
		cls
		minut += 5
		horny += 10
		ppsex += 1
		pose = 0
		$boy = 'парень'
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbdMiss.jpg"></center>'

		dynamic $sexstart
		dynamic $sexstart4

		tiprand = RAND(1,100)
		if tiprand < 70:
			dynamic $sexcum
			dynamic $d_fbd_end
		elseif tiprand >= 50 and tiprand < 70:
			'<<$bname>> взял вас за талию и поставил раком'

			dynamic $d_fbd_dog
		elseif tiprand >= 70:
			'<<$bname>> внезапно вышел из вас и ловко забрался вам на грудь'

			dynamic $d_fbd_face
		end
	end
}

$d_fbd_dog = {
	act 'Встать раком':
		cls
		minut += 5
		horny += 10
		pose = 1
		ppsex += 1
		$boy = 'парень'
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbdDog.jpg"></center>'

		dynamic $sexstart
		dynamic $sexstart4

		tiprand = RAND(1,100)
		if tiprand < 70:
			dynamic $sexcum
			gs'stat'
			dynamic $d_fbd_end
		elseif tiprand >= 50 and tiprand < 70:
			'<<$bname>> вышел из вас и придавил вас так, что вам пришлось лечь на живот'

			dynamic $d_fbd_anal
		elseif tiprand >= 70:
			'<<$bname>> внезапно вышел из вас, положил вас на спину и ловко забрался вам на грудь'

			dynamic $d_fbd_face
		end
	end
}

$d_fbd_face = {
	act 'Лежать':
		cls
		minut += 5
		horny += 10
		cumface += 1
		cumlip += 1
		facial += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbdFace.jpg"></center>'
		'<<$bname>> дрочит член перед вашим лицом касаясь своей багровой головкой ваших губ и языка. Вдруг из его члена вылетает струя спермы и попадает вам на лицо, потом еще одна и еще. Резко пахнущее семя попадает вам в рот и стекает по вашим щекам.'

		dynamic $d_fbd_end
	end
}

$d_fbd_anal = {
	act 'Лечь на живот':
		cls
		minut += 5
		horny += 10
		ppanal += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbdAnal.jpg"></center>'

		dynamic $analsex2

		tiprand = RAND(1,100)
		if tiprand >= 70:
			'<<$bname>> внезапно вышел из вас, положил вас на спину и ловко забрался вам на грудь'

			dynamic $d_fbd_face
		elseif tiprand < 70:
			cumass += 1
			gs'stat'

			'<<$bname>> застонал и вы почувствовали как его теплое семя стало наполнять вашу попу.'

			dynamic $d_fbd_end
		end
	end
}

$d_fbd_end = {
	act 'Приводить себя в порядок':
		cls
		if ppbj > 0:bj += 1
		if pphj > 0:hj += 1
		if ppsex > 0:sex += 1
		if ppanal > 0:anal += 1
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbhend.jpg"></center>'
		'Вы начали приводить себя в порядок. <<$bname>> довольно одевался "Рад был бы с тобой еще посидеть, но сейчас придут соседи по комнате, сама понимаешь."'

		act 'Уйти':gt'gorodok'
	end
}

$d_fbd_drunk = {
	act 'Выпивать':
		cls
		minut += 60
		alko += 6
		gs'stat'

		'Шумная компания веселилась и гудела как растревоженный улей. Вы порядком набрались, хотя и пропускали большую часть выпивки. <<$bname>> наливает вам опять и предлагает выпить.'

		act 'Выпить еще':
			alko += 12
			dormrape = 0
			kol_man = RAND(5,16)
			$kol_man_text = 'парни'
			gt'placer_sex'
		end
	end
}

$d_fbd_mass = {
	act 'Выпивать':
		cls
		boy += 2
		gang += 1
		dick = RAND(15,25)
		parkfuckboy += 1
		$ppBoyName[parkfuckboy] = $bname
		ppBoyTipe[parkfuckboy] = 1
		ppBoyPlace[parkfuckboy] = 4
		!дроч 2 минет 3 групповуха
		ppdick[parkfuckboy] = dick
		fbdormtimes += 1
		pphj = 0
		ppbj = 0
		ppsex = 0
		ppanal = 0
		minut += 5
		horny += 10
		minut += 60
		alko += 6
		horny += 20
		gs'stat'

		'Вы стали выпивать с парнями и довольно быстро захмелели. <<$bname>> начал вас целовать, а второй парень нежно гладить вашу попу. <<$bname>> шепчет вам "Ты как предпочитаешь, только со мной? Или может поэкспериментируем втроем?"'

		act 'Только с тобой':
			cls
			minut += 5
			horny += 10
			ppsex += 1
			pose = 0
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/fbdtsingle.jpg"></center>'
			'<<$bname>> начал вас целовать и вы сами не поняли как, оказались уже раздетой под парнем.'

			dynamic $sexstart
			dynamic $sexstart4

			'Вы чувствуете как что то твердое и горячее уткнулось вам в губы'

			act 'Приоткрыть рот':
				cls
				minut += 5
				horny += 10
				ppsex += 1
				pose = 0
				ppbj += 1
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/fbdtdouble.jpg"></center>'
				'Вы приоткрыли рот, и тут же в ваш рот вошло что то твердое и теплое. Открыв глаза вы увидели курчавые лобковые волосы перед своим лицом. Только тут до вас дошло, что сосед по комнате решил присоединится к вам и засунул свой член вам в рот. Вы хотели возмутится, но он взял вашу голову и начал насаживать ее на свой член в то время пока <<$bname>> трахал вас удерживая в своих ладонях ваши ноги.'

				dynamic $sexcum

				act 'Сосать':
					cls
					minut += 5
					cumface += 1
					cumlip += 1
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/fbdtcum.jpg"></center>'
					'Внезапно вам в губы ударила теплая вязкая жидкость с резким запахом и еще более резким вкусом. Второй парень начал разряжатся вам в рот. Вы пытались что то изобразить но были слишком пьяны и только лежали пуская пузыри изо рта, где слюна перемешалась со спермой.'

					dynamic $d_fbd_end

					act 'Обессиленно лежать':
						cls
						minut += 5
						cumface += 1
						cumlip += 1
						gs'stat'

						'Вы лежите совершенно выбившись из сил и тут вдруг <<$bname>> взяв вас за плечи направил ваше лицо к своему члену'

						dynamic $d_fbd_threesome
					end
				end
			end
		end
		act 'Ну я даже не знаю. Может быть':
			cls
			minut += 5
			horny += 10
			ppsex += 1
			pose = 0
			gs'stat'

			'Вы начали неуверенно мямлить что то невразумительное и <<$bname>> легонько взяв вас за плечи направил ваше лицо к своему члену.'

			dynamic $d_fbd_threesome
		end
	end
}

$d_fbd_threesome = {
	act 'Взять в рот':
		cls
		ppbj += 2
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/fbdrbj.jpg"></center>'
		'Вы приоткрыли губы и взяли в свой рот член, взяв второй член в ладошку и начав его дрочить. Вы иногда меняете члены в своем рту и ладошке, стараясь попеременно обслуживать парней. Один из парней встает и подойдя к вам сзади начинает гладить вашу попу.'

		act 'Продолжать сосать':
			cls
			minut += 5
			horny += 10
			ppsex += 1
			pose = 1
			$boy = $bname
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/fbdrsex.jpg"></center>'
			'Вы продолжили сосать член и почувствовали как сзади пристраивается <<$bname>>.'

			dynamic $sexstart
			dynamic $sexstart4

			'<<$bname>> вынимает член из вашей вагины и ласкает ваш анус легкими поглаживаниями пальцев.'

			act 'Расслабиться и продолжать сосать':
				cls
				minut += 5
				horny += 10
				ppsex += 1
				pose = 1
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/fbdranal.jpg"></center>'
				'Вы постарались максимально расслабить попку и продолжили сосать член в вашем рту.'

				dynamic $analsex2

				'<<$bname>> вынул член из вашей попки и лег на спину. Он обхватил вас за талию и стал сажать на свой член.'

				act 'Сесть на член':
					cls
					minut += 5
					horny += 10
					ppsex += 1
					pose = 1
					dick2 = RAND(15,18)
					$boy2 = 'второй парень'
					dp += 1
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/fbdrdp.jpg"></center>'
					'Вы сели на член и постарались расслабится, парень у которого вы сосали подошел к вам сзади и стал поглаживать вашу попу..'

					dynamic $doublepenetration

					'Из вас внезапно достали оба члена и резко поставили на колени.'

					act 'Стоять на коленях':
						cls
						minut += 5
						cumface += 2
						cumlip += 1
						gs'stat'

						'<center><img src="images/qwest/alter/Ev/fbdrcum.jpg"></center>'
						'Внезапно вам в губы ударила теплая вязкая жидкость с резким запахом и еще более резким вкусом. Второй парень начал разряжатся вам в рот. Вы стоите на коленях с перемазанным в сперме лицом и смотрите снизу вверх на парней.'

						dynamic $d_fbd_end
					end
				end
			end
		end
	end
}
--- fbDormD ---------------------------------

