# skverdin
$d_park_placer_bj = {
	boy += 1
	dick = RAND(15,25)
	parkfuckboy += 1
	$ppBoyName[parkfuckboy] = $bname
	ppBoyTipe[parkfuckboy] = 1
	ppBoyPlace[parkfuckboy] = 1
	!дроч 2 минет 3 групповуха
	ppdick[parkfuckboy] = dick
	parktimes += 1
	pphj = 0
	ppbj = 0
	ppsex = 0
	ppanal = 0
	dynamic $d_pp_hand
	dynamic $d_pp_squat
}

$d_pp_hand = {
	act 'Потрогать член рукой':
		cls
		pphj += 1
		minut += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/hj.jpg"></center>'
		'Вы обхватили пальчиками стоячий <<dick>> сантиметровый член парня и стали двигать кожицу то открывая багровую головку то закрывая ее.'

		tiprand = RAND(1,100)
		if tiprand >= 90:
			'<<$bname>> взял вас за плечи и надавил, стараясь посадить вас на корточки'

			dynamic $d_pp_squat
		elseif tiprand >= 50 and tiprand < 90:
			'<<$bname>> сказал нетерпеливо "Светик, поцелуй его"'

			dynamic $d_pp_squat

			if dom > 0:
				dynamic $d_pp_hjcum
			else
				'<<$bname>> стоит не двигаясь и пожирает вас глазами'

				dynamic $d_pp_hjcum
				dynamic $d_pp_squat
			end
		end
	end
}

$d_pp_hjcum = {
	act 'Додрочить':
		cls
		pphj += 1
		minut += 1
		gs'stat'

		tiprand = RAND(1,100)
		if tiprand >= 80:cumfrot += 1 & $pptext = 'вы заметили как одна из струй спермы попала вам на одежду'
		if tiprand < 80:$pptext = 'сперма парня тугими струями полетела на землю'

		'<center><img src="images/qwest/alter/Ev/pphjcum.jpg"></center>'
		'Вы стали усиленно дрочить член парня и он начал кончать, <<$pptext>>'

		dynamic $d_pp_goend
	end
}

$d_pp_squat = {
	act 'Сесть на корточки':
		cls
		minut += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/squat.jpg"></center>'
		'Вы сели на корточки и прямо перед вашим лицом оказался стоячий <<dick>> сантиметровый член парня'

		dynamic $d_pp_bj
	end
}

$d_pp_bj = {
	act 'Сосать':
		cls
		ppbj += 1
		minut += 5
		parkslut += 1
		ppBoyTipe[parkfuckboy] = 2
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/ppbj.jpg"></center>'
		'Ваши губы обхватывают твердый <<dick>> сантиметровый член парня, и вы старательно его сосете ощущая своим языком и губами его тепло и каждую вену на теле члена.'

		tiprand = RAND(1,100)
		if tiprand = 100:
			'Внезапно вы слышите приближающиеся шаги и повернув голову в сторону видите другого парня, он засмеялся и сказал "Бля, <<$bname>> тебя на пятнадцать минут оставить нельзя, уже какой то телке за щеку вкатил." <<$bname>> засмеялся и обратился к своему другу "А ты что тупишь? Присоединяйся!" Второй парень тут же подошел к вам и достал из штанов свой член.'

			dynamic $d_pp_double
		elseif tiprand >= 90 and tiprand < 100:
			'<<$bname>> внезапно вынул член из вашего рта и стал не говоря ни слова поднимать вас и разворачивать спиной к себе'

			dynamic $d_pp_sex
		elseif tiprand >= 70 and tiprand < 90:
			'<<$bname>> шепчет вам "Светик, у тебя ротик не устал? Может перепихнемся?"'

			dynamic $d_pp_sex
			dynamic $d_pp_bjcum
		elseif tiprand < 70:
			'Вы чуствуете как напрягся член парня, кажется он уже готов вот вот кончить'

			dynamic $d_pp_hjcum
			dynamic $d_pp_bjcum
		end
	end
}

$d_pp_bjcum = {
	act 'Продолжать сосать':
		cls
		minut += 1
		cumlip += 1
		cumfrot += 1
		cumface += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/ppbjcum.jpg"></center>'
		'Вы продолжили сосать и не прошло минуты как член стал разряжаться вам в рот семенем, спермы было так много, что часть ее вылилась по вашим губам изо рта и даже попала на одежду.'

		dynamic $d_pp_goend
	end
}

$d_pp_sex = {
	act 'Нагнуться':
		cls
		minut += 1
		ppsex += 1
		pose = 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/ppsex.jpg"></center>'
		'Вы оголили свой зад и нагнувшись подставили его парню'

		dynamic $sexstart
		dynamic $sexstart4

		tiprand = RAND(1,100)
		if tiprand >= 20:
			dynamic $sexcum
			dynamic $d_pp_goend
		elseif tiprand < 20:
			'<<$bname>> вынул из вас член и развернув вас лицом к себе стал сажать вас на корточки'

			dynamic $d_pp_squat
		end
	end
}

$d_pp_double = {
	act 'Охреневать':
		cls
		ppBoyTipe[parkfuckboy] = 3
		parkslut += 10
		guy += 1
		gang += 1
		bj += 1
		ppbj += 1
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/ppbjdouble.jpg"></center>'
		'Все произошло быстро и вы даже не успели осознать как в обоих ваших руках оказалось по члену, их багровые головки были прямо перед вашим лицом. Один из парней нетерпеливо рукой подтолкнул вашу голову к члену.'

		act 'Сосать два члена':
			cls
			minut += 15
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/ppbjdouble2.jpg"></center>'
			'Вы стали полировать сразу два смычка своими влажными губами насаживая свой рот на багровые шляпы парней по очереди. Вскоре <<$bname>> закряхтел "Открой шлюшка ротик"'

			act 'Открыть рот':
				cls
				minut += 15
				cumface += 1
				cumlip += 1
				gs'stat'

				'<center><img src="images/qwest/alter/Ev/ppbjdouble3.jpg"></center>'
				'Вы послушно открыли порядком уже уставший рот и <<$bname>> выстрелил вам густой белой жидкостью прямо по мокрым и слегка опухшим от проделанной работы губам. Его друг сдавленно прошипел "Кончаю" и схватив вас за волосы повернул ваше лицо к своему члену.'

				act 'Повернуть лицо':
					cls
					minut += 15
					cumface += 1
					cumlip += 1
					cumfrot += 1
					gs'stat'

					'<center><img src="images/qwest/alter/Ev/ppbjdouble4.jpg"></center>'
					'Вы повернули лицо и вам тут же зарядили вторую порцию струхни прямо в открытый рот, вы инстинктивно пошатнулись и большой клубок спермы выпал из вашего рта и шмякнулся вам на одежду. <<$bname>> заржал "Епта! Да ты снайпер, хуесоске зарядил прямо в ее блядский рот!"'

					dynamic $d_pp_goend
				end
			end
		end
	end
}

$d_pp_goend = {
	act 'Приводить себя в порядок':
		cls
		if ppbj > 0:bj += 1
		if pphj > 0:hj += 1
		if ppsex > 0:sex += 1
		if ppanal > 0:anal += 1
		minut += 5
		gs'stat'

		if cumface > 0 or cumlip > 0:
			'<center><img src="images/qwest/alter/Ev/ppendcum.jpg"></center>'
		else
			'<center><img src="images/qwest/alter/Ev/ppendno.jpg"></center>'
		end

		'Вы начали приводить себя в порядок. <<$bname>> довольно застегивал штаны "Ну покеда Светуля, у меня еще дела, может увидимся как нибудь."'

		act 'Уйти':gt'gskver'
	end
}
--- skverdin ---------------------------------

