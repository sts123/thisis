# brother
brotherAge = age-2
gs'stat'

'<center><b><font color = maroon>Колька</font></b></center>'
'<center><img src="images/qwest/alter/brother.jpg"></center>'
'Ваш брат Колька младше вас и ему <<brotherAge>> лет. Колька родился в отличии от вас с сестрой уже от отчима. Он учится в той же школе что и вы и увлекается футболом.'

if brother < 20:'У вас с братом скандал.'
if brother >= 20 and brother < 40:'У вас с братом напряженные отношения.'
if brother >= 40 and brother < 60:'У вас с братом нормальные отношения.'
if brother >= 60 and brother < 80:'У вас с братом хорошие отношения.'
if brother >= 80:'У вас с братом отличные отношения.'

!'
if cumface > 0 or cumfrot > 0 or cumlip > 1:
	if GorSlut > 0:
		'Колька смотрит на вас "Слыш <<$gnikname>>. После обслуживания хуев подмываться надо, а не бегать в струхне."'
	elseif GorSlut = 0:
		if motherKnowSpravka >= 1 or motherKnowWhore >= 1:
			'Колька смотрит на вас "Слушай, я понимаю что мать в курсе о том, что ты шлюха. Но будешь в струхне бегать, весь город узнает, что ты шлюха."'
		elseif motherKnowSpravka = 0 and motherKnowWhore = 0:
			'Колька смотрит на вас "А что это?" Его глаза округляются "Да это же сперма. Вот так номер, моя примерная сестренка шлюха."'
		end
	end

	act 'Отойти':gt $loc, $metka

	exit
end

act 'Отойти':gt $loc, $metka

if GorSlut > 0:
	'Колька сморщился "Чего тебе надо <<$gnikname>>."'
end

if motherKnowSpravka >= 1 or motherKnowWhore >= 1:
	'Вы подошли к брату. Он засмеялся и стал тыкать пальцем в вас "Шлюха. Шлюха. Шлюха."'
else
'

act 'Отойти':gt $loc, $metka

if $loc = 'gschool':
	if brother < 40:
		'Брат хмурится "Отвали от меня придурочная!"'
	else
		if evgenQW >= 4:
			'Пацаны пошушукавшись между собой говорят вам "Да, ну его этот футбол, пойдем лучше порнушку смотреть."'

			act 'Идти смотреть порнуху':minut += 5 & gt'seeporn'
		elseif evgenQW < 4:
			'Брат усмехается "Привет Светка. Поиграем в футбол?"'

			act 'Играть в футбол':
				cls
				minut += 60
				brother += 5
				agil += RAND(0,2)
				speed += RAND(0,2)
				sweat += 3
				beg += RAND(2,5)
				gs'stat'

				'Вы в течении часа бегали по полю гоняя мячик с братом и его друзьями Мишкой и Жендосом.'

				ivrand = RAND(0,1)
				if ivrand = 0 and seepornofut = 0:
					'Пацаны шушукаются между собой обсуждая что то.'

					act 'Вы тут о чем говорите?':
						cls
						gs'stat'

						'Пацаны замялись, да так, ни о чем.'

						if dom > 0:
							'Вы немного надавили на них "Вы что как малышня, секретики какие то у вас." Один из пацанов тут же раскололся "Да хотим сходить порнуху поглядеть."'

							act 'Отойти':gt $loc, $metka
							act 'Возьмите меня':
								cls
								gs'stat'

								'Вы попросили, что бы вас тоже взяли посмотреть порнуху. Пацаны немного посмущались, но согласились.'

								act 'Идти смотреть порнуху':minut += 5 & gt'seeporn'
							end
						else
							act 'Отойти':gt $loc, $metka
						end
					end
				elseif ivrand = 0 and seepornofut >= 1:
					'Пацаны пошушукавшись между собой говорят вам "Светка, пойдешь порнушку глядеть?"'

					act 'Идти смотреть порнуху':minut += 5 & gt'seeporn'
				end

				act 'Отойти':gt $loc, $metka
			end
		end
	end
end
!end
--- brother ---------------------------------

