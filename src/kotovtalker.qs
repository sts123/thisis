# kotovtalker
!!!!!!!!!!!!!!!!!
!!!ВИТЕК КОТОВ!!!
!!!!!!!!!!!!!!!!!
if numnpc = 9 and grupNPC[numnpc] >= 80 and GorSlut = 0 and kotovLoveQW >= 0:
	if $loc = 'gdkin':
		if alko < 2:
			'<<$npcName[numnpc]>> - Эй Светик, давай подбухнем, а то вообще как то стремно.'

			act 'Пить пиво':
				cls
				minut += 5
				grupNPC[numnpc] += 5
				alko += 2
				salo += 1
				fat += 2
				energy += 10
				gs'stat'

				'Витек налил вам пива и вы стали с ним пить. Витек не сводит с вас глаз и рассказывает вам какая вы классная девчонка.'

				act 'Отойти':gt $loc, $metka
			end

			act 'Отказаться':grupNPC[numnpc] -= 5 & gt $loc, $metka

			exit
		elseif alko >= 2:
			'<<$npcName[numnpc]>> - Эй Светик, давай потанцуем.'

			act 'Отказаться':grupNPC[numnpc] -= 5 & gt $loc, $metka
			act 'Танцевать':
				cls
				minut += 5
				grupNPC[numnpc] += 5
				dance += RAND(1,3)
				horny += 10
				kotovQW += 1
				gs'stat'

				'Вы вышли на танцпол и стали танцевать с Витьком. Витек лапает вас за задницу своими сильными руками, которые больше похожи на клещи.'

				if kotovLoveQW = 0:
					if kotovQW < 5 or grupTipe[25] = 0:
						act 'Отойти':gt $loc, $metka
					elseif kotovQW >= 5 and grupTipe[25] ! 0:
						'Танец заканчивается и Витек взяв вас за руку отводит вас к стене. "Слыш, Светик, давай мутить, ты будешь типа моей телкой. Я любому за тебя бошку откручу"'

						act 'Отказаться':
							cls
							grupNPC[numnpc] = 0
							gs'stat'

							'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
							'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
							'Вы отказались и Витек выглядит совершенно растерянным, но его тут же охватывает злость. "Ну и вали тогда на хуй шлюха ебаная!"'

							act 'Отойти':gt $loc, $metka
						end
						act 'Согласиться':
							cls
							kotovLoveQW = 1
							gs'stat'

							'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
							'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
							'Вы и Витек обрадовался "Охуеть. Я сам не верю, что ты согласилась со мной мутить."'

							act 'Отойти':gt $loc, $metka
						end
					end
				elseif kotovLoveQW > 0:
					'Танец заканчивается и Витек взяв вас за руку отводит к стенке.'
					'Витек обнимает вас "Светик, пойдем ко мне домой."'

					act 'Отойти':gt $loc, $metka
					act 'Идти к Витьку':
						cls
						minut += 15
						gs'stat'

						'<center><img src="images/qwest/alter/npc/9.jpg"></center>'
						'Вы вышли из дискотеки и пошли в сторону где живет Витек вместе с ним, держась при этом за его руку. Вскоре вы вместе с Витьком подошли к обветшалому дому он открыл дверь и повел вас по бедной и не ухоженной квартире в свою комнату, где лежала одежда смятыми кучами и на полу валялись пустые бутылки.'

						act 'Далее':gt'kotovSex'
					end
				end
			end
		end

		exit
	end

	'<<$npcName[numnpc]>> - Эй Светик, будет кто доставать. Скажи мне, я за тебя любому шею сверну.'

	dynamic $din_sekondparturok

	exit
elseif numnpc = 9 and kotovLoveQW > 0 and GorSlut > 0:
	'Витек набычился и говорит вам "Слыш Светик, че за хуйня? Мы с тобой мутим, а потом мне про тебя рассказывают, что ты <<$gnikname>>. Весь город уже в курсе, пацаны с района надо мной ржут. Ты же охуевшая тварь!"'

	act 'Устроить скандал':
		cls
		grupNPC[9] = 0
		kotovLoveQW = -1
		gs'stat'

		'Вы начали орать на Витька, что тот уже заебал. Витек начал орать на вас и вдруг у вас зазвенело в голове и вы оказались на полу. Над вами стоял Витек. Сильно жгло щеку, вы не поняли, что произошло, но кажется он влепил вам пощечину. "Все тварь! Больше ко мне не подходи! Между нами все кончено!"'

		if $loc = 'gschool':dynamic $din_sekondparturok
		if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
	end

	if dom >= 20:
		act 'Убеждать, что все это сплетни':
			cls
			sub += 20
			GorSlut = 0
			gs'stat'

			'Вы начали убеждать Витька, что все это сплетни, не имеющие под собой никакого основания. Витек нахмурился "Я этим болтунам зубы выбью, если хоть раз еще какую хуйню о тебе услышу. Не волнуйся, я позатыкаю эти тявкающие рты."'

			if $loc = 'gschool':dynamic $din_sekondparturok
			if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
		end
	end

	exit
end

if $loc = 'gdkin':
	if GorSlut < 2:
		'<<$npcName[numnpc]>> - Эй Светик, давай подбухнем, а то вообще как то стремно.'

		act 'Пить пиво':
			cls
			minut += 5
			grupNPC[numnpc] += 5
			alko += 1
			salo += 1
			fat += 2
			energy += 10
			gs'stat'

			'Вы попили пивка в компании знакомых.'

			act 'Отойти':gt $loc, $metka
		end
		act 'Отказаться':grupNPC[numnpc] -= 5 & gt $loc, $metka
	elseif GorSlut >= 2:
		'<<$npcName[numnpc]>> - Чо приперлась, вафлерша. Хуйца хочешь соснуть что ли?'

		act 'Уйти':grupNPC[numnpc] -= 5 & gt $loc, $metka
	end

	exit
end
--- kotovtalker ---------------------------------

