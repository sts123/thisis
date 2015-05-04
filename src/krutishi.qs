# krutishi
if grupTipe[numnpc] = 3:
	if npcPol[numnpc] = 0 and hapri = 0:
		grupNPC[numnpc] -= 5
		'<<$npcName[numnpc]>> с усмешкой смотрит на ваши взлохмаченные волосы.'
	elseif npcPol[numnpc] = 1 and hapri = 0:
		grupNPC[numnpc] -= 5
		'<<$npcName[numnpc]>> с усмешкой смотрит на ваши взлохмаченные волосы.'
	elseif npcPol[numnpc] = 0 and hapri > 0 and $loc = 'gdkin' and grupNPC[numnpc] >= 40:
		if glamur > 0 or ski > 0:
			cla
			'<<$npcName[numnpc]>> - Может потанцуем?'

			act 'Танцевать':
				cls
				minut += 5
				grupNPC[numnpc] += 5
				dance += RAND(1,3)

				if numnpc = 1:
					Mud = totminut+120
				end

				gs'stat'

				'Вы танцевали под старый шлягер на танцполе вместе с парнем.'

				act 'Отойти':gt $loc, $metka

				if numnpc = 4 and grupNPC[numnpc] >= 80:
					!Игорь Круглов
					horny += 10
					gs'stat'

					if IgorLoverQW > 0 and IgorDominaQW = 0:
						'Игорь шепчет вам "Светулечка, я так люблю тебя. Пойдем ко мне."'

						act 'Идти к Игорю':gt'IgorEv'
					elseif IgorLoverQW > 0 and IgorDominaQW > 0:
						'Игорь шепчет вам "Моя госпожа, я так люблю вас. Пойдемте ко мне."'

						act 'Идти к Игорю':gt'IgorEv'
					elseif IgorLoverQW = 0:
						'Во время танца руки Игоря спускаются вам на попку и начинают ее гладить.'

						if DimaRudeQW > 0:
							'Игорь шепчет вам в ухо "Мне Димка рассказывал какая ты классная хуесоска. Пойдем на улицу, покажешь мне свой класс."'

							act 'Идти на улицу':
								cls
								gs'stat'

								'Вы вместе с Игорем выскользнули из дискотеки. Спрятавшись в укромном уголке Игорь начал вас целовать и ласкать. Послышался звук расстегнутой ширинки и Игорь надавил вам на плечи.'

								dynamic $din_igor_disco_bj
							end
							act 'Отказываться':
								cls
								gs'stat'

								'Вы отказались идти с Игорем на улицу. К вам подошел Дима и спросил что тут у вас происходит. Игорь пожал плечами "Твоя хуесоска не хочет у меня отсосать." Димка нахмурился "Светка, он мой самый близкий друг, потому не будет ничего плохого, если ты у него отсосешь." Парни взяли вас за руки и повели на улицу.'

								dynamic $din_igor_dima_disco_bj
							end

							exit
						end

						if grupNPC[1] = 0:
							'Игорь шепчет вам в ухо "Мне Димка рассказывал как ты его отшила. Молодец, он иногда ведет себя как настоящая свинья. Кстати, Светик, пойдем на улицу, подышим воздухом."'

							dynamic $din_igor__disco

							exit
						end

						cla
						'Игорь шепчет вам в ухо "Пойдем на улицу Светик. Подышим свежим воздухом."'

						dynamic $din_igor__disco

						exit
					end
				elseif numnpc = 1 and grupNPC[numnpc] >= 80 and DimaRudeQW > 0:
					'После танца Дима держит вас за руку. "Пойдем на улицу."'

					act 'Отказаться':grupNPC[numnpc] -= 5 & gt $loc, $metka
					act 'Идти с Димой на улицу':
						cls
						gs'stat'

						'Вы вышли из клуба вместе с Димой на улицу. "Ну что, свинья, бери в рот."'

						act 'Отказаться':grupNPC[numnpc] -= 5 & gt $loc, $metka

						dynamic $din_predlog_dima_bj
					end
				elseif numnpc = 1 and grupNPC[numnpc] >= 80 and DimaRudeQW = 0:
					'После танца Дима держит вас за руку. "Пойдем на улицу, подышим свежим воздухом."'

					act 'Идти с Димой на улицу':
						cls
						gs'stat'

						'Вы вышли на улицу вместе с Димой и отошли за клуб. Дима подошел к вам в плотную и обнял вас. "Света, ты ничего девчонка. Хочешь со мной встречаться?"'

						act 'Нет':
							cls
							gs'stat'

							'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
							'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
							'Вы ответили отрицательно и Дима ухмыльнулся. "Не стесняйся, конечно хочешь. Иначе зачем ты все время ко мне подходишь."'

							act 'Ну может быть немного':
								cls
								gs'stat'

								'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
								'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
								'Вы смутились и сказали, что вы не знаете, но может быть. Дима усмехнулся и обнял вас. "Конечно. Я знал это с самого начала. Знаешь, мне не нужна какая то монашка, мне нужна девушка без комплексов. В общем так, мы с тобой будем встречаться, если ты, прямо сейчас отсосешь у меня."'

								dynamic $din_dima_predlog
							end
							act 'Уйти':gt $loc, $metka
						end
						act 'Да':
							cls
							gs'stat'

							'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
							'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
							'Вы смутились от прямоты вопроса и подтвердили. Дима ухмыльнулся. "Конечно. Я знал это с самого начала. Знаешь, мне не нужна какая то монашка, мне нужна девушка без комплексов. В общем так, мы с тобой будем встречаться, если ты, прямо сейчас отсосешь у меня."'

							dynamic $din_dima_predlog
						end
					end
				end
			end

			act 'Отказаться':grupNPC[numnpc] -= 5 & gt $loc, $metka

			exit
		end
	end
end
--- krutishi ---------------------------------

