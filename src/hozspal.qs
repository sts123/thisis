# hozspal
if $ARGS[0] = 'start':
	$sexloc = $CURLOC
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	minut += 5
	gs'stat'

	'<center><b>Спальня</b></center>'
	'<center><img src="images/img/centr/hozspaln.jpg"></center>'

	act 'В коридор':gt'house'

	if week < 6 and hour > 8 and hour < 20 and tanwork = 1:
		act 'Убираться':
			minut += 60
			gs'stat'

			housespalrand = RAND(0,4)
			if hour > 17 and hour < 20 and housespalrand = 0 and nikslut = 1 and niksexday ! day:
				cla
				*clr
				niksexday = day
				money += 2000
				SUB += 1
				guy += 1
				picrand = 23

				'<center><img src="images/img/centr/niks1.jpg"></center>'
				'Николай и еще один мужчина что то обсуждают, увидев вас Николай подзывает вас к себе и достав член вставляет его вам в рот, вы покорно начинаете сосать. Второй мужчина тоже присоединяется.'

				act 'Секс':xgt'sexdvoe','var'
			elseif hour < 14 and housespalrand = 0 and houserab = 1:
				cla
				*clr
				SUB += 3

				'<center><img src="images/img/centr/gosps1.jpg"></center>'
				'Хозяйка приказывает вам раздеться и лечь на кровать, вы послушно выполняете, она достает дилдо и вставляет вам в киску, через несколько минут вас накрывает оргазм. Она смотрит как вы извиваетесь на кровати кончая.'
				'"Ну что кошка проголодалась, пошли покормлю тебя." говорит она одевая на вас ошейник'

				act 'Идти с ней':
					cla
					*clr
					'<center><img src="images/img/centr/gosps2.jpg"></center>'
					'Вы сползаете с кровати на карачки и хозяйка ведет вас на кухню. Вы неуклюже передвигаетесь на карачках стараясь не отставать, что бы не злить её.'

					act 'На кухню':
						cla
						*clr
						'<center><img src="images/img/centr/gosps3.jpg"></center>'
						'Она наливает в тарелку молоко и ставит на пол, вы в нерешительности замираете над тарелкой, тогда она с силой опускает вашу голову в тарелку, буквально вбивая вас в неё лицом.'
						'"Ах ты свинья смотри весь пол изгадила, быстро вылизывай что-бы блестел." закричала она.'

						act 'Вылизывать':
							cla
							*clr
							'<center><img src="images/img/centr/gosps4.jpg"></center>'
							'Вы покорно начинаете слизывать молоко с пола, а она придавливает вас лицом к полу, говоря что бы вы лучше слизывали. Когда вы вылизываете весь пол от молока, она уходит оставляя вас голой на полу.'

							act 'В коридор':gt'house'
						end
					end
				end
			end
		end
	end
end
--- hozspal ---------------------------------

