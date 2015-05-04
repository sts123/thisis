# albinaEv
$din_albina_get_over_car = {
	'Сильные руки схватили вас и вытащили из машины.'

	act 'Далее':
		cls
		albinaCar = 1
		gs'stat'

		'<center><img src="images/qwest/alter/grab.jpg"></center>'
	end
}

albinaCarday = day
gs'stat'

'<center><img src="images/qwest/alter/BMW.jpg"></center>'
'Вы вышли к машине и посмотрели на Альбину. Та окинула вас надменным взглядом и завела машину.'

if albinaCar > 0:
!
elseif albinaCar = 0:
	act 'Это твоя машина?':
		cls
		albinaCar = 1
		gs'stat'

		'<center><b><font color = maroon><<$npcName[23]>> <<$npcSurName[23]>></font></b></center>'
		'<center><img src="images/qwest/alter/npc/23.jpg"></center>'
		'Вы спросили у Альбины "Это твоя машина?" Альбина скорчила презрительную гримасу "Что? Конечно нет! Это машина отца, я никогда бы не купила это. Вообще X5 это машина для внезапно разбогатевшего быдла, а не для приличных людей." Вы покачали головой "У тебя что? Права есть?" Альбина засмеялась "Права? Зачем МНЕ, права? Ты знаешь кто мой отец? Он начальник полиции нашего городка, правда вышел на пенсию, но связи остались. Меня никогда не остановят на его машине." Альбина секунду о чем то подумала и сказала "Поехали покатаемся."'

		act 'Ехать с Альбиной':
			cls
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/alter/BMW.jpg"></center>'
			'Вы сели на сидение рядом с Альбиной и она тронула машину. Вы поехали по улицам городка, вскоре вы съехали с центральных улиц и заехали в какую то глушь, где среди деревьев темнел корпус завода. Альбина глядя на вас загадочно улыбнулась "Это сюрприз."'

			act 'Осмотреться':
				cls
				minut += 5
				gs'stat'

				'<center><img src="images/qwest/alter/castle.jpg"></center>'
				'Вы осмотрелись и поняли, что вы находитесь на територии заброшенного завода. Вы вопросительно посмотрели на Альбину, та усмехнулась и ткнула наманикюренным пальчиком в табличку. Вы прочитали надпись на табличке "Собственность ООО Снежная королева" Альбина усмехнулась "Это замок Снежной королевы. Моя территория" Машина остановилась и к бмв подошли два парня, на внешний вид обоим было чуть за 30 лет, один высокий, атлетичный, второй не большого роста, с пузиком, но очень крепкий, с красной борцовской шеей, мощными кистями рук и широкими плечами. Альбина открыла дверь "Привет ребята. Как дела?" Мужики хмуро осмотрели вас и коротышка пробасил "Все нормально."'

				if AlbinaLast > 0 or AlbinaBlokDance > 0:
					'Альбина не глуша мотор, вышла из машины и сказала парням "Я вам привезла очень не послушную девочку, которая кое что знает о моем танцевальном бизнесе." Высокий усмехнулся "Понятно." Крепкий коротышка молча и с ленцой направился к вам.'

					if dom > 0:
						act 'Прыгнуть за руль':
							cls
							minut += 5
							gs'stat'

							'<center><img src="images/qwest/alter/BMW.jpg"></center>'

							if agil >= 100:
								'Вы ловко запрыгнули за баранку автомобиля. Крепыш оказался у капота, а длинный парень ринулся к водительской двери, что бы достать вас.'

								act 'Включить заднюю передачу':
									cls
									minut += 1
									gs'stat'

									'<center><img src="images/qwest/alter/BMW.jpg"></center>'
									'Вы резко сдали назад и остановились практически у бетонного забора. Перед вашим капотом вы видите как бежит крепыш к вам. А к водительской двери подбегает длинный.'
								end
								act 'Резко поехать вперед':
									cls
									minut += 1
									gs'stat'

									'<center><img src="images/qwest/alter/BMW.jpg"></center>'
									'Вы резко воткнули передачу и выжав сцепление резко двинулись вперед. Крепыш с грохотом плюхнулся на капот и свалился с машины. Впереди вы видите кусты, ворота в которые вы въехали с Альбиной находятся с права от вас. С лева от вас находится кирпичная стена заводского корпуса.'
								end
							elseif agil < 100:
								'Вы прыгнули за руль автомобиля, но запутались ногами между сиденьем и рычагом коробки передач. В водительскую дверь просунулись руки длинного мужика.'

								dynamic $din_albina_get_over_car
							end
						end
					end

					act 'Выскочить из машины':
						cls
						minut += 5
						gs'stat'

						'<center><img src="images/qwest/alter/castle.jpg"></center>'
						'Вы выскочили из машины и увидели как к вам бежит крепыш со стороны капота, а со стороны багажника машину оббегает длинный. Дорога назад для вас отрезана, но вы замечаете открытую дверь в цех.'
					end
					act 'Сидеть в машине':
						cls
						minut += 5
						gs'stat'

						'<center><img src="images/qwest/alter/BMW.jpg"></center>'

						dynamic $din_albina_get_over_car
					end

					exit
				end

				if DanceWhore > 0:
					'Альбина не глуша мотор, вышла из машины и сказала "Расслабьтесь парни. Света из моих Звездушек. Новенькая. Но подает большие надежды."'
				end
			end
		end
	end
end

act 'Отойти':gt $loc, $metka
--- albinaEv ---------------------------------
