# kotovSex
$din_kotov_bj = {
	act 'Взять в рот':
		cls
		minut += 5
		bj += 1
		bja += 1
		if npcSex[9] = 0:npcSex[9] = 1 & guy += 1
		bjrand = RAND(0,6)
		kotovBJtimes += 1
		if pirsA = 0:$textsexkotov = 'ласкали язычком головку'
		if pirsA > 0:$textsexkotov = 'ласкали язычком головку чувствуя как штанга в вашем языке шевелится от ударов о член'
		gs'stat'

		'<center><img src="images/qwest/alter/ev/kotovBJ<<bjrand>>.jpg"></center>'
		'Вы погладили рукой промежность Витька и почувствовали как его член стал вставать. Витек быстро стянул с себя штаны и лег на кровать. Вы устроились поудобней между его ног и обхватили своими губами его стоячий член начав его сосать. Вы всасывали твердый член до горла заполняя весь рот, <<$textsexkotov>> и брали член за щеку. Вскоре Витек застонал "Светик, я сейчас кончу!"'

		if kotovBJtimes > 5:
			act 'Продолжить сосать':
				cls
				minut += 5
				cumlip += 1
				bjrand = RAND(0,6)
				gs'stat'

				'<center><img src="images/qwest/alter/ev/kotovBJcum.jpg"></center>'
				'Вы продолжили сосать и струя горячей спермы ударила вам в рот.'

				act 'Сосать глотая сперму':
					cls
					minut += 5
					swallow += 1
					gs'stat'

					'<center><img src="images/qwest/alter/ev/cocksuck2.jpg"></center>'
					'Вы сосете кончающий член сглатывая сперму, как только она попадает вам в рот. Наконец Витек прекращает кончать и вынимает свой член из вашего рта.'

					act 'Уйти':gt'gorodok'
				end

				if kotovBJtimes > 10:
					act 'Сосать удерживая сперму во рту':
						cls
						minut += 5
						gs'stat'

						'<center><img src="images/qwest/alter/ev/kotovBJcum4.jpg"></center>'
						'Вы сосете кончающий член который заполняет ваш рот спермой. Наконец Витек прекращает кончать и вынимает свой член из вашего рта.'

						act 'Выплюнуть':
							cls
							minut += 5
							gs'stat'

							'<center><img src="images/qwest/alter/ev/gop8.jpg"></center>'
							'Вы быстренько пошли в ванную и выплюнули сперму в раковину.'

							act 'Уйти':gt'gorodok'
						end

						if kotovBJtimes > 12:
							act 'Проглотить':
								cls
								minut += 5
								swallow += 1
								vaf += 1
								gs'stat'

								'<center><img src="images/qwest/alter/ev/kotovBJcum5.jpg"></center>'
								'Как только Витек достает член из вашего рта, вы большим глотком проглатываете сперму, оставившую после себя резкое послевкусие.'

								act 'Уйти':gt'gorodok'
							end
						elseif kotovBJtimes > 15:
							act 'Играть со спермой':
								cls
								minut += 5
								swallow += 1
								vaf += 1
								gs'stat'

								'<center><img src="images/qwest/alter/ev/kotovBJcum2.jpg"></center>'
								'Как только Витек достает член из вашего рта, вы открываете перед ним рот и начинаете играть со спермой.'

								act 'Уйти':gt'gorodok'
							end
						end
					end
				end
			end
		end

		act 'Вынуть изо рта':
			cls
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/alter/ev/kotovHJ.jpg"></center>'
			'Вы достаете изо рта член и начинаете его дрочить рукой.'

			if kotovBJtimes > 15:
				act 'Направить на лицо':
					cls
					minut += 5
					cumface += 1
					facial += 1
					gs'stat'

					'<center><img src="images/qwest/alter/ev/kotovFacial.jpg"></center>'
					'Вы направляете член на свое лицо и горячая струя спермы ударяет вас по лицу. Потом еще одна струя и еще. Ваше лицо покрыто стекающей кончей и Витек убирает член в штаны.'

					act 'Уйти':gt'gorodok'
				end
			end

			act 'Кончить в ладони':
				cls
				minut += 5
				gs'stat'

				'<center><img src="images/qwest/alter/ev/kotovHJ2.jpg"></center>'
				'Вы зажимаете кончающий член ладошками и вам в руку начинает хлестать сперма из члена.'

				act 'Уйти':gt'gorodok'
			end
		end
	end
}

$din_kotov_anal = {
	act 'Подставить попку':
		cls
		minut += 30
		cumanus += 1
		anala += 1
		if npcSex[9] = 0:npcSex[9] = 1 & guy += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/anal.jpg"></center>'

		dynamic $sexstart
		dynamic $analsex

		act 'Уйти':gt'gorodok'
	end
}

$din_kotov_sex = {
	act 'Лечь на спину':
		cls
		minut += 30
		sexa += 1
		kotovVagSex += 1
		if npcSex[9] = 0:npcSex[9] = 1 & guy += 1
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/sex.jpg"></center>'
		'Вы легли на спину. Витек лег сверху и раздвинул ваши ноги.'

		dynamic $sexstart
		dynamic $sexstart2
		dynamic $sexcum

		act 'Уйти':gt'gorodok'
	end
}

dick = 18
silavag = 2
$boy = 'Витек'
minut += 15
gs'stat'

'<center><b><font color = maroon><<$npcName[9]>> <<$npcSurName[9]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/9.jpg"></center>'
'Витек начал вас лапать и целовать. "Короче Светик, раздевайся."'

if vagina = 0 and sex = 0:
	if SchoolAtestat = 0:
		act 'Я еще девочка':
			cls
			minut += 5
			gs'stat'

			'Вы сказали Витьку, что вы еще девочка. Тот почесал затылок "Вот засада, да еще и школу не окончила. Ну тогда на клыка возьми или в попец. Если за щеку возьмешь, я бля буду, никому не скажу, что ты в рот брала."'

			dynamic $din_kotov_bj
			dynamic $din_kotov_anal
		end
	else
		act 'Я еще девочка':
			cls
			minut += 5
			gs'stat'

			'Вы сказали Витьку, что вы еще девочка. Тот усмехнулся "Да ладно, хуйня, ты школу закончила, взрослая теперь. Не ну конечно можешь на клыка взять или в попец."'

			dynamic $din_kotov_bj
			dynamic $din_kotov_anal
			dynamic $din_kotov_sex
		end
	end
else
	act 'Раздеваться':
		cls
		minut += 5
		gs'stat'

		'Вы быстро скинули с себя одежду и Витек тоже разделся.'

		dynamic $din_kotov_sex

		if dom > 0:dynamic $din_kotov_anal
		if KotovKnowPirsA = 1:dynamic $din_kotov_bj
	end
end

if pirsA = 1 and KotovKnowPirsA = 0:
	KotovKnowPirsA = 1

	'Витек внезапно пристально посмотрел вам в лицо. "А что это у тебя на языке?" Вы высунули язык и показали штангу. Витек ухмыльнулся "Хе, это, чтоб хуй лучше сосать?" Вы нахмурились и назвали Витька пошляком. Он усмехнулся "Да ладно Светик, я никому не скажу, если ты за щеку возьмешь."'
end
--- kotovSex ---------------------------------

