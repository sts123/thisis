# Voltrener
$din_trener_bj = {
	act 'Сделать минет':
		cls
		bj += 1
		if trenerSex>0:trenerSex += 1
		if trenerSex = 0:trenerSex = 1 & guy += 1
		if volleysostav>0:trenerepa += 2
		gs'stat'

		'<center><img src="images/qwest/alter/ev/tren.jpg"></center>'
		'Вы сели на корточки перед тренером и погладили его по ширинке ощутив то, как встал его член. Вы сунули руку в спортивные штаны придерживая резинку другой рукой и нащупали горячий член тренера. Вы вытащили стоячий член из спортивных штанов и наклонившись к нему обхватили его губами.'

		if trenerSex >= 5:
		end

		if tipTrsex = 0:
			cumlip += 1
			swallow += 1
			gs'stat'

			'Тренер слегка застонал и вам в рот брызнула теплая струя спермы. Вы начали проглатывать теплую жидкость заполняющую ваш рот.'
		end

		if volleysostav = 0:
			volleysostav = 1
			trenerepa = 20

			'Тренер заправил член в штаны. "Ладно Лебедева, ты очень старательная девчонка, может и выйдет из тебя толк, считай, что ты уже в команде, но конечно в запасных игроках."'
		end

		if tipTrsex = 0:act 'Уйти':tipTrsex = 0 & gt'gdksport'
	end
}

$din_trener_gorslut = {
	gs'stat'

	'Вы неохотно кивнули головой "Это правда, я действительно <<$gnikname>>. А какое это имеет отношение к волейболу?" Тренер усмехнулся, "Косвенное отношение, очень косвенное, мы ведь обсуждаем сейчас как тебе попасть в команду. И мне интересно, что ты умеешь. Ты понимаешь о чем я говорю?"'

	act 'Нет':
		cls
		gs'stat'

		'Вы покачали головой и сказали тренеру, что не понимаете, тренер вздохнул "А ты умом не блещеш, не правда ли? Ну ладно, я человек одинокий, а кругом молодые симпатичные девушки. Так понятней?"'

		act 'Уйти':gt'gdksport'

		dynamic $din_trener_bj
	end
	act 'Положить руку тренеру на колено':
		cls
		gs'stat'

		'Вы немного наклонились вперед и положили ладошку тренеру на колено, ухмыльнувшись вы прошептали "Нужна маленькая демонстрация моих других навыков? Я вас правильно поняла?" Тренер откинулся на стуле "А ты умная девушка Света, продолжай."'

		dynamic $din_trener_bj
	end
}

gs'stat'

'<center><img src="images/qwest/alter/gdksport.jpg"></center>'
'Вы зашли в комнату тренера, в которой находятся кубки, мячи, разный спортивный инвентарь и стол за которым иногда сидит тренер и заполняет различные бумаги. Тренер Михаил Николаевич Власов занимается не только любителями в секции но и так же тренирует профессиональную команду волейболисток.'

if volleysostav > 0:
	if trenerepa < 20:'Тренер не желает вас больше терпеть.'
	if trenerepa >= 20 and trenerepa < 40:'Тренер едва вас терпит.'
	if trenerepa >= 40 and trenerepa < 60:'У вас с тренером нормальные отношения.'
	if trenerepa >= 60 and trenerepa < 80:'У вас с тренером хорошие отношения.'
	if trenerepa >= 80:'Тренер в вас души не чает.'
	if trenerepa <= 0:
		volleysostav = -1
		'Тренер грозно обращается к вам. "Все Лебедева, ты надоела мне со своими выкрутасами. Я тебя исключаю из команды!"'

		act 'Уйти':gt'gdksport'

		exit
	end
end

act 'Поговорить с тренером':
	cls
	gs'stat'

	if volleysostav = -1:
		if trenerSex = 0:
			'Тренер поднял глаза на вас "Лебедева. Даже не подходи ко мне. Я больше не включу тебя в команду!"'
		elseif trenerSex > 0:
			'Тренер поднял глаза на вас "Лебедева. Даже не подходи ко мне. Я больше не включу тебя в команду!"'
		end
	elseif volleysostav = 0:
		if volleyboll < 25:
			'Тренер поднял глаза на вас "А Лебедева. Не отвлекай меня от дел."'
		elseif volleyboll >= 25 and volleyboll < 50:
			'Тренер поднял глаза на вас "А Лебедева. Тебе нужно больше времени уделять тренировкам, у тебя все очень плохо."'
		elseif volleyboll >= 50 and volleyboll < 75:
			'Тренер поднял глаза на вас "А Лебедева. Ты конечно не плохо играешь, но не плохо для любителя. Более высокий уровень ты не потянешь."'
		elseif volleyboll >= 75:
			'Тренер поднял глаза на вас "А Лебедева. У тебя есть задатки спортсменки, правда я не уверен, что на профессиональном уровне у тебя что либо получится."'

			act 'Проситься в профи':
				cls
				gs'stat'

				if GorSlut = 0:
					if volleyboll < 100:
						'Вы начали просить у тренера включить вас в команду, но он покачал головой. "Лебедева, не зарывайся, у тебя хороший любительский уровень. Но ты не потянешь."'
					elseif volleyboll >= 100:
						'Вы начали просить у тренера включить вас в команду, тренер задумался. "Конечно можно попробовать включить тебя в запасные, но я даже не знаю, стоит ли."'

						act 'Убеждать':
							cls
							dom -= 1
							gs'stat'

							if dom >= 10:
								!if volleysostav > 0:trenerepa -= 1
								volleysostav = 1
								trenerepa = 20

								'Вы начали доказывать тренеру, что вас нужно включить в команду, тренер попытался возражать, но ваш напор был настолько убедительным, что в итоге он сдался. "Ладно Лебедева, я включу тебя в команду, пока естественно только в запасные игроки."'
							else
								'Вы начали доказывать тренеру, что вас нужно включить в команду, но не сумели проявить достаточную напористость и тренер откинул все ваши доводы отказав вам.'
							end

							act 'Уйти':gt'gdksport'
						end
					end
				elseif GorSlut > 0:
					'Вы начали просить тренера включить вас в состав. Тренер задумался "Слушай Лебедева, тут другие девочки про тебя говорят разные вещи. Например что ты <<$gnikname>>. Это правда?"'

					act 'Это все вранье':
						cls
						gs'stat'

						if dom > 0:
							'Вы начали доказывать тренеру, что слухи про вас это все вранье и их распускают завистники. Вы говорили довольно убедительно и кажется тренер поверил.'

							act 'Убеждать включить в команду':
								cls
								dom -= 1
								gs'stat'

								if dom >= 10:
									!if volleysostav > 0:trenerepa -= 1
									volleysostav = 1
									trenerepa = 20
									'Вы начали доказывать тренеру, что вас нужно включить в команду, тренер попытался возражать, но ваш напор был настолько убедительным, что в итоге он сдался. "Ладно Лебедева, я включу тебя в команду, пока естественно только в запасные игроки."'
								else
									'Вы начали доказывать тренеру, что вас нужно включить в команду, но не сумели проявить достаточную напористость и тренер откинул все ваши доводы отказав вам.'
								end

								act 'Уйти':gt'gdksport'
							end
						else
							'Вы начали доказывать тренеру, что слухи про вас это все вранье и их распускают завистники. Вы говорили не очень убедительно и тренер вам откровенно не верит. "Лебедева, хватит врать! Ты меня за дурака держишь?"'

							act 'Ладно, это правда, я <<$gnikname>>':
								cls
								gs'stat'
								dynamic $din_trener_gorslut
							end
						end

						act 'Уйти':gt'gdksport'
					end
					act 'Это правда, я <<$gnikname>>':
						cls
						gs'stat'

						dynamic $din_trener_gorslut
					end
				end

				act 'Уйти':gt'gdksport'
			end
		end
	elseif volleysostav > 0:
		if trenerSex = 0:
			'Тренер поднял глаза на вас "А Лебедева. Не отвлекай меня от дел."'
		elseif trenerSex > 0:
			'Тренер поднял глаза на вас "А Лебедева. Молодец что пришла."'

			act 'Положить руку тренеру на колено':
				cls
				gs'stat'

				'Вы немного наклонились вперед и положили ладошку тренеру на колено, ухмыльнувшись вы прошептали "Нужна маленькая демонстрация моих навыков? Я вас правильно поняла?" Тренер откинулся на стуле "А ты умная девушка Света, продолжай."'

				dynamic $din_trener_bj
			end
		end
	end

	act 'Уйти':gt'gdksport'
end

act 'Уйти':gt'gdksport'
--- Voltrener ---------------------------------

