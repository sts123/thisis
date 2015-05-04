# placer_house
alko += 10
gs'stat'

'Вы пришли всей компанией на квартиру и продолжили там выпивать и веселится.'

if kol_man = 1:
	dick = RAND(12,25)
	$boy = 'Парень'

	'Вы начали обниматься и целоваться с парнем, <<$ev_name>> тоже начала его целовать.'

	act 'Сосать у парня':
		cls
		bj += 1
		guy += 1
		gang += 1
		gs'stat'

		'<center><img src="images/qwest/alter/placer/threesomeBJ.jpg"></center>'
		'Вместе с подружкой вы наклонились к паху парня и начали вдвоем сосать его член, по очереди вбирая его в рот и облизывая яички.'

		act 'Далее':
			cls
			minut += 15

			if Frend_num = 14:
				KatjaLust += 5
				KatjaSlut += 5
				KatjaHorny = 0
				KatjaSex += 1
				KatjaGuy += 1
				KatjaBJ += 1
				KatjaOhrenet = 5
			end

			pose = 1
			lesbian += 1
			gs'stat'

			'<center><img src="images/qwest/alter/placer/threesome.jpg"></center>'
			'Вас поставили раком и парень подошел к вашей попке готовясь трахнуть вас. <<$ev_name>> села перед вами и подставила вам свою киску которую вы тут же начали лизать.'

			dynamic $sexstart
			dynamic $sexstart2
			dynamic $sexcum

			act 'Уйти':gt'placer_end'
		end
	end
elseif kol_man = 2:
	dick = RAND(12,25)
	$boy = 'Парень'

	'Парни начали обнимать и целовать вас с подружкой, <<$ev_name>> стала гладить парня между ног и достала его член.'

	act 'Сосать у парня':
		cls
		bj += 1
		guy += 1
		gs'stat'

		'<center><img src="images/qwest/alter/placer/foursomeBJ.jpg"></center>'
		'Вы тоже наклонились к парню и начали сосать его член, <<$ev_name>> сосет у другого парня.'

		act 'Трахаться с парнями':
			cls
			minut += 15

			if Frend_num = 14:
				KatjaLust += 5
				KatjaSlut += 5
				KatjaHorny = 0
				KatjaSex += 1
				KatjaGuy += 1
				KatjaBJ += 1
				KatjaOhrenet = 4
			end

			gs'stat'

			'<center><img src="images/qwest/alter/placer/foursome.jpg"></center>'

			dynamic $sexstart
			dynamic $sexstart3
			dynamic $sexcum

			act 'Уйти':gt'placer_end'
		end
	end
elseif kol_man = 3:
	$d_dozdat = {
		act 'Дождаться подруги':
			cls
			minut += 5
			gs'stat'
			cumface = 0

			if Frend_num = 14:
				'<center><img src="images/qwest/alter/placer/katjacum.jpg"></center>'
				'Из комнаты вышла усталая но довольная Катя с перепачканным в белой слизи лицом.'
			end

			'Вместе с подругой вы привели друг друга в порядок и стали собираться домой.'

			act 'Уйти':gt'placer_end'
		end
	}

	$d_girlfrend_end = {
		act 'Далее':
			cls

			if Frend_num = 14:
				KatjaLust += 10
				KatjaSlut += 5
				KatjaHorny = 0
				KatjaSex += 1
				KatjaGuy += 1
				KatjaBJ += 1
				KatjaOhrenet = 1
			end

			gs'stat'

			'Парни ушли в ванную и вы в комнате остались одни.'

			dynamic $d_dozdat

			act 'Подглядеть за подругой':
				cls
				gs'stat'

				if Frend_num = 14:
					'<center><img src="images/qwest/alter/placer/katjaend.jpg"></center>'
					'Вы заглянули в комнату, на кровати лежала обнаженная Катя и явно досасывала член у парня после горячего секса, парень начал кончать Кате на лицо и размазывать сперму по ее губам и щекам.'
				end

				'Вы закрыли дверь что бы не мешать и стали дожидаться подруги.'

				dynamic $d_dozdat
			end
		end
	}

	$d_girlfrend_end2 = {
		act 'Далее':
			cls

			if Frend_num = 14:
				KatjaLust += 5
				KatjaSlut += 10
				KatjaHorny = 0
				KatjaSex += 1
				KatjaGuy += 2
				KatjaBJ += 2
				KatjaGang += 1
				KatjaOhrenet = 2
			end

			gs'stat'

			'Парень лег на кровать и захрапел.'

			dynamic $d_dozdat

			act 'Подглядеть за подругой':
				cls
				gs'stat'

				if Frend_num = 14:
					'<center><img src="images/qwest/alter/placer/katjaendgang.jpg"></center>'
					'Вы заглянули в комнату что Катю яростно шпилят с обоих сторон два парня, Катя только мычит удерживая член во рту.'
				end

				'Вы закрыли дверь что бы не мешать и стали дожидаться подруги.'

				dynamic $d_dozdat
			end
		end
	}

	'Один из парней предложил вам уеденится в комнате.'

	act 'Идти с парнем':
		cls
		horny += 10
		gs'stat'

		'<center><img src="images/qwest/alter/Ev/kiss.jpg"></center>'
		'Стоило вам остаться наедине как парень начал вас целовать и лапать'

		act 'Взять в рот':
			cls
			$boy = 'парень'
			dick = RAND(15,20)
			bj += 1
			guy += 1
			gs'stat'

			'<center><img src="images/qwest/alter/placer/bj.jpg"></center>'
			'Вы сели перед парнем на корточки и он расстегнув ширинку достал оттуда свой член.'

			dynamic $dinrandbj

			act 'Далее':
				cls
				gs'stat'

				tipsexrand = RAND(0,1)
				if tipsexrand = 0:
					cumlip += 1
					swallow += 1
					gs'stat'

					'<center><img src="images/qwest/alter/placer/swallow2.jpg"></center>'

					dynamic $dinrandswallow
					dynamic $d_girlfrend_end2
				elseif tipsexrand = 1:
					'<center><img src="images/qwest/alter/placer/bj.jpg"></center>'
					'Парень прошептал, "Я хочу тебя"'

					act 'Удвоить усилия':
						cls
						cumlip += 1
						swallow += 1
						gs'stat'

						'<center><img src="images/qwest/alter/placer/swallow2.jpg"></center>'
						'Вы стали еще активней сосать член, что бы обойтись минетом.'

						dynamic $dinrandswallow
						dynamic $d_girlfrend_end2
					end
					act 'Лечь на спину':
						cls
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/alter/placer/miss.jpg"></center>'
						'Вы легли на спину и один из парней раздвинул ваши ноги, а второй подошел к вашему лицу и сунул свой член вам в рот.'

						dynamic $sexstart
						dynamic $sexstart2
						dynamic $sexcum
						dynamic $d_girlfrend_end2
					end
					act 'Анал':
						cls
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/alter/placer/anal2.jpg"></center>'
						'Вы предложили парню трахнуть вас в попку, он с радостью согласился и вы раздевшись встали на четвереньки.'

						dynamic $analsexrude
						dynamic $d_girlfrend_end2
					end
				end
			end
		end
	end
	act 'Остаться в комнате':
		cls
		horny += 20
		gs'stat'

		'<center><img src="images/qwest/alter/placer/swing.jpg"></center>'
		'<<$ev_name>> о чем то шепталась с парнем, после чего она ушла в соседнюю комнату с ним, оставив вас с двумя парнями. Парни подсели к вам по ближе, один начал целовать ваши губы, а второй гладить вашу грудь.'

		act 'Остаться с парнями':
			cls
			$boy = 'парень'
			dick = RAND(15,20)
			horny += 10
			bj += 2
			guy += 2
			gang += 1
			gs'stat'

			'<center><img src="images/qwest/alter/placer/doublebj.jpg"></center>'
			'Парни начали вас раздевать, а вы только пьяно хихикали, вы сами не поняли как но у вас во рту оказался член одного из парней, а второй член вы держали в ладони. Вы начали сосать у парней по очереди. Наконец члены парней были достаточно напряжены и парни оторвались от вашего рта стараясь поставить вас в позу для секса.'

			act 'Лечь на спину':
				cls
				horny += 10
				gs'stat'

				'<center><img src="images/qwest/alter/placer/doublemiss.jpg"></center>'
				'Вы легли на спину и один из парней раздвинул ваши ноги, а второй подошел к вашему лицу и сунул свой член вам в рот.'

				dynamic $sexstart
				dynamic $sexstart2
				dynamic $sexcum

				sexrand = RAND(0,1)
				if sexrand = 0:
					cumlip += 1
					cumface += 1
					gs'stat'

					'Внезапно парень у которого вы сосали стал кончать вам в рот и размазывать своим членом сперму вам по губам и щекам.'

					dynamic $d_girlfrend_end
				elseif sexrand = 1:
					'Парни внезапно решили поменяться местами.'

					act 'Далее':
						cls
						horny += 10
						cumlip += 1
						cumface += 1
						dick = RAND(15,20)
						gs'stat'

						'<center><img src="images/qwest/alter/placer/doublemiss2.jpg"></center>'
						'Парни поменялись местами, и тот парень у которого вы сосали член раздвинул ваши ноги, а парень который трахнул вас сунул вам свой перемазанный кончей член в рот, что бы вы его почистили.'

						dynamic $sexstart
						dynamic $sexstart2
						dynamic $sexcum
						dynamic $d_girlfrend_end
					end
				end
			end
			act 'Встать раком':
				cls
				horny += 10
				gs'stat'

				'<center><img src="images/qwest/alter/placer/rakom.jpg"></center>'
				'Вы разделись и встали раком на кровати ожидая парней.'

				act 'Анал':
					cls
					dick = RAND(15,20)
					horny += 10
					gs'stat'

					'<center><img src="images/qwest/alter/placer/doggyanal.jpg"></center>'
					'Вы предложили парням трахнуть вас в попку, они с радостью согласились. Один из парней подошел к вашему лицу и вставил свой член вам между губ, вы сразу же начали его сосать.'

					dynamic $analsexrude

					sexrand = RAND(0,1)
					if sexrand = 0:
						cumlip += 1
						cumface += 1
						gs'stat'

						'Внезапно парень у которого вы сосали стал кончать вам в рот и размазывать своим членом сперму вам по губам и щекам.'

						dynamic $d_girlfrend_end
					elseif sexrand = 1:
						act 'Далее':
							cls
							dick = RAND(15,20)
							gs'stat'

							'<center><img src="images/qwest/alter/placer/anal.jpg"></center>'
							'Парень достал из вашей задницы свой обмякший член и парень у которого вы сосали обошел вас и пристроился к вашей попе.'

							dynamic $analsexrude
							dynamic $d_girlfrend_end
						end
					end
				end
				act 'В киску':
					cls
					pose = 1
					horny += 10
					gs'stat'

					'<center><img src="images/qwest/alter/placer/doubledog.jpg"></center>'
					'Один из парней подошел к вашему лицу и вставил свой член вам между губ, вы сразу же начали его сосать.'

					dynamic $sexstart
					dynamic $sexstart2
					dynamic $sexcum

					cumlip += 1
					cumface += 1
					gs'stat'

					'Внезапно парень у которого вы сосали стал кончать вам в рот и размазывать своим членом сперму вам по губам и щекам.'

					dynamic $d_girlfrend_end
				end
			end
		end
	end
elseif kol_man >= 4:
	'Парни начали обнимать вас и подружку.'

	act 'Заниматься сексом':
		cls
		gang += 1
		anal += 1
		sex += 1
		dp += 1
		dick = RAND(15,18)
		$boy = 'первый парень'
		dick2 = RAND(15,18)
		$boy2 = 'второй парень'

		if Frend_num = 14:
			KatjaLust += 5
			KatjaSlut += 10
			KatjaHorny = 0
			KatjaSex += 1
			KatjaGuy += 2
			KatjaBJ += 2
			KatjaGang += 1
			KatjaOhrenet = 4
		end

		gs'stat'

		'<center><img src="images/qwest/alter/placer/dp.jpg"></center>'

		dynamic $doublepenetration
		dynamic $sexcum

		cumanus += 1
		gs'stat'

		'Второй парень начал кончать внутрь вашей попы заливая ее своей спермой'

		act 'Уйти':gt'placer_end'
	end
end
!if kol_man = 5:
!end
!if kol_man = 6:
!end
--- placer_house ---------------------------------

