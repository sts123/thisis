# KatjaHomeDin
$katja_shower_kiss_home = {
	cls
	horny += 10
	KatjaLust += 10
	KatjaSlut += 1
	KatjaHorny += 10
	gs'stat'

	'<center><img src="images/qwest/alter/katja/showerkiss.jpg"></center>'
	'Катя нежно вас обняла одной рукой и поцеловала в губы, вы почувствовали как ее мягкая ладошка легла на ваш голый лобок и ее тонкий пальчик нащупав ваш клитор начал его ласкать.'

	if KatjaSlut >= 10:
		'Катя нежно, но настойчиво сажает вас на край ванны.'
	elseif KatjaSlut < 10:
		'Катя нежно ласкает ваш клитор пальцами и ее губы начинают целовать вашу шею, пробираясь все ниже.'
	end

	act 'Сесть на край ванны':
		cls
		minut += 5
		horny += 10
		KatjaHorny -= 10
		KatjaLust += 1
		KatjaSlut += 1
		if npcSex[14] = 0:npcSex[14] = 1 & girl += 1 & KatjaSlut += 5 & KatjaLust += 5
		lesbian += 1
		orgasm += 1
		horny = 0
		gs'stat'

		'<center><img src="images/qwest/alter/katja/showersex.jpg"></center>'
		'Вы сели на край ванны и раздвинули ноги открыв свою влажную киску. Катя встала на колени перед вами и аккуратно лизнула ваши набухшие красные лепестки. Ее язычок начал бойко ласкать вашу киску не забывая про клитор. Вскоре блаженство охватило все ваше тело. Вы заметили как рука Кати скользнула себе между ног и начала там двигаться. Внезапно вас охватывает мощный оргазм от которого вы почти теряете сознание, все ваше тело выгибается в конвульсиях и горячие волны блаженства охватывают вас.'

		act 'Выйти из душа':gt $curloc
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
		'Вы убрали ее руки и Катя весело заулыбалась. Вы домылись, Катя смущенно смотрела в сторону и вышли из ванной комнаты.'

		act 'Выйти из душа':gt $curloc
	end
}

$d_katjaSextalk = {
	'Покрасневшая Катя смотрит на вас задумчиво.'

	kattalkrand = RAND(0,3)
	if kattalkrand = 0:
		if KatjaKnowBJ > 0:
			'- Света, расскажи, как ты сосала член.'
		elseif KatjaKnowBJ = 0:
			'- Света, а ты брала в рот у парней?'
		end

		if bj > 0:
			act 'Рассказать как вы делали минет':
				cls
				KatjaLust += 5
				KatjaHorny += 10
				gs'stat'

				'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
				'Вы рассказали Кате как вы сосали член и что при этом чувствовали. Катя покраснела и прикусила губу.'

				act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
			end
		end
	elseif kattalkrand = 1:
		if KatjaKnowSex > 0:
			'- Света, расскажи, как ты трахалась.'
		elseif KatjaKnowSex = 0:
			'- Света, а ты уже трахалась с парнями?'
		end

		if sex > 0:
			act 'Рассказать как вы занимались сексом':
				cls
				KatjaLust += 5
				KatjaHorny += 10
				gs'stat'

				'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
				'Вы рассказали Кате как вы занимались сексом и что при этом чувствовали. Катя покраснела и прикусила губу.'

				act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
			end
		end
	elseif kattalkrand = 2:
		if KatjaKnowAnal > 0:
			'- Света, расскажи, как ты брала в попу.'
		elseif KatjaKnowAnal = 0:
			'- Света, а ты давала парням в попу?'
		end

		if anal > 0:
			act 'Рассказать как вы давали в попу':
				cls
				KatjaLust += 5
				KatjaHorny += 10
				gs'stat'

				'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
				'Вы рассказали Кате как вы давали в попу и что при этом чувствовали. Катя покраснела и прикусила губу.'

				act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
			end
		end
	elseif kattalkrand = 3:
		if KatjaKnowMastr > 0:
			'- Света, расскажи, как ты мастурбируешь.'
		elseif KatjaKnowMastr = 0:
			'- Света, а ты мастурбируешь?'
		end

		if mastr > 0:
			act 'Рассказать как вы мастурбировали':
				cls
				KatjaLust += 5
				KatjaHorny += 10
				gs'stat'

				'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
				'Вы рассказали Кате как вы мастурбировали в ванной. Катя покраснела и прикусила губу.'

				if KatjaMastr = 0:
					act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
				elseif KatjaMastr > 0:
					act 'Дальше':
						cls
						KatjaLust += 5
						KatjaHorny += 10
						gs'stat'

						'<center><img src="images/qwest/alter/katja/mastr.jpg"></center>'
						'Катя рассказала, что она тоже мастурбирует, прямо тут в комнате лаская себя между ног.'

						act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
					end
				end
			end

			if SelfFisting > 0:
				act 'Рассказать как вы засунули себе кулак в попу':
					cls
					KatjaLust += 10
					KatjaHorny += 20
					if SelfFistingKnow = 0:SelfFistingKnow = 1
					gs'stat'

					'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
					'Вы рассказали Кате как вы мастурбировали свою попу и даже сумели так ее растянуть, что можете засунуть туда кулак. Катя покраснела и прикусила губу.'

					act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
				end
			end
		end
	end

	act 'Отказаться разговаривать на такие темы':
		cls
		dom += 1
		KatjaDom -= 1
		gs'stat'

		'Вы отказались разговаривать с Катей на подобные темы. Катя смутилась и потупила глаза "Извини, Света, я не хотела тебя обидеть."'

		act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
	end
}

$d_katjahornykiss = {
	'Катя приблизило свое лицо к вашему, так, что вы могли почувствовать ее горячее дыхание на своей коже.'

	act 'Приблизить свое лицо к ее лицу':
		cls
		gs'stat'

		'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
		'Вы тоже приблизили свое лицо, к лицу Кати.'

		if KatjaHorny < 50:
			katjarand = RAND(0,50)
			if katjarand <= KatjaHorny+dom:
				dynamic $din_katja_kiss
			else
				KatjaHorny += 5

				'Катя захихикала и отодвинула свое лицо от вашего.'

				act 'Дальше':minut += 15 & gt'KatjaHomeTalk'

				if dom > 0:
					act 'Схватить лицо Кати':
						cls
						dom -= 1
						KatjaDom -= 5
						KatjaHorny -= 10
						KatjaLust += 1
						gs'stat'

						'Вы обхватили лицо Кати своими руками и приблизили свои губы к ее губам.'

						if dom < KatjaDom:
							'Катя твердо взяла ваши руки и убрала их от себя, дав вам понять, что целоваться она не намерена.'

							act 'Дальше':minut += 15 & gt'KatjaHomeTalk'
						else
							'Катя замерла глядя вам в глаза.'

							dynamic $din_katja_kiss
						end
					end
				end
			end
		elseif KatjaHorny >= 50:
			dynamic $din_katja_kiss
		end
	end
}
--- KatjaHomeDin ---------------------------------

