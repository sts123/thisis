# placer_gskver
if hour >= 22 or hour < 8:
	encounter = 0
else
	encounter = RAND(0,5)
end

if encounter = 0:
	!в сквере никого нет
	$textEvent = 'В сквере тихо и пустынно. Никого не видно.'
elseif encounter = 1:
	!в сквере люди 1мамаша гуляющая с ребенком 2старик 3женщина с сумками 4две молодые девушки
	encrand = RAND(0,4)
	if encrand = 0:$textEvent = 'В сквере по тротуару прогуливается молодая мама с коляской.'
	if encrand = 1 and cloth_vid = 0:$textEvent='В сквере по тротуару прогуливается одинокий старик с газетой в руке.'
	if encrand = 1 and cloth_vid = 1:
		$textEvent='В сквере по тротуару прогуливается одинокий старик с газетой в руке. Старик подошел к вам и произнес: "Взгляните, барышня, у меня для вас кое-что есть"'

		act 'Посмотреть':gt'parkBimbo','pos1'
	end
	if encrand = 2:$textEvent = 'В сквере по тротуару идет женщина с сумками решившая сократить путь пройдя через сквер.'
	if encrand = 3:$textEvent = 'В сквере по тротуару прогуливаются две молоденькие девушки.'
	if encrand = 4:
		kol_man = RAND(1,5)
		if kol_man = 1:$textSub = 'идет парень'
		if kol_man = 2:$textSub = 'идут двое парней'
		if kol_man = 3:$textSub = 'идут трое парней'
		if kol_man = 4:$textSub = 'четверо парней'
		if kol_man = 5:$textSub = 'пятеро парней'

		$textEvent = 'В сквере по тротуару <<$textSub>>.'

		mass_ver_zn = 1
		know_status = 1
	end
elseif encounter = 2:
	!в сквере собака
	$textEvent = 'В сквере тихо и пустынно только одинокая собака принюхивается к чему то возле тротуара.'
elseif encounter = 3:
	!в сквере компания молодежи
	$textEvent = 'В сквере на лавочке сидит кампания молодежи.'
	kol_man = RAND(2,6)
	mass_ver_zn = 1
	know_status = 1
elseif encounter = 4:
	!в сквере гопники
	kol_man = RAND(3,6)
	$textEvent = 'В сквере на корточках сидят гопники и пьют пиво.'
	mass_ver_zn = 1
	know_status = 2
elseif encounter = 5:
	!в сквере влюбленная парочка
	$textEvent = 'В сквере прогуливается влюбленная парочка.'
elseif encounter = 6:
	!в сквере знакомый из класса
end

if dickfrend > 0:ver_zn = 0

gs'placer_man'

if hour >= 8 and hour < 22:'<center><img src="images/gevent/skver.jpg"></center>'
if hour >= 22 or hour < 8:'<center><img src="images/gevent/skver.jpg"></center>'

if Frend_num > 0:
	'Вместе с <<$ev_name_om>> вы пришли в тихий сквер. <<$textEvent>>'

	if dickfrend > 0:
		!ваш друг парень
		if kol_man = 1 and $text_znak = '':$kol_man_text_no = 'После того, как парень посмотрел на вас, он отвернулся.'
		if kol_man > 1 and $text_znak = '':$kol_man_text_no = 'После того, как парни осмотрели вас, они отвернулись.'
		if kol_man > 0:'На вас посмотрел<<$kol_man_prefiks>> оценивающе <<$kol_man_text>>. <<$kol_man_text_no>>.'+$text_znak
		!действия с парнем с которым пришли в сквер
	elseif dickfrend = 0:
		!ваш друг девушка
		if ver_zn = 1:
			'На вас с подругой посмотрел<<$kol_man_prefiks>> оценивающе <<$kol_man_text>>.'

			if kol_man = 1:'Парень подошел к вам и сказал "<<$text_znak>>"'
			if kol_man > 1:'Парни подошли к вам и один из парней сказал "<<$text_znak>>"'

			act 'Познакомиться':
				cls

				if p_dom < 80:
					gt'placer_act '
				elseif p_dom >= 80:
					gs'stat'

					'<<$ev_name>> прошипела вам в ухо "Я не собираюсь знакомится с кем то на улице. Если хочешь, оставайся, а я пойду."'

					act 'Уйти вместе с подругой':gt'placer_end'
					act 'Можешь уходить, а я останусь':
						Frend_num = 0
						gt'placer_act '
					end
				end
			end
		elseif ver_zn = 0 and kol_man > 0:
			if kol_man = 1:$kol_man_text_no = 'После того, как парень посмотрел на вас, он отвернулся.'
			if kol_man > 1:$kol_man_text_no = 'После того, как парни осмотрели вас, они отвернулись.'

			'На вас с подругой посмотрел<<$kol_man_prefiks>> оценивающе <<$kol_man_text>>. <<$kol_man_text_no>>.'
		end
		!действия с девушкой с которой пришли
	end

	act 'Продолжить прогулку':gt'placer_end'
elseif Frend_num = 0:
	'Вы прогуливаетесь по тихому скверу. <<$textEvent>>'

	if ver_zn = 1:
		'На вас посмотрел<<$kol_man_prefiks>> оценивающе <<$kol_man_text>>.'
		if kol_man = 1:'Парень подошел к вам и сказал "<<$text_znak>>"'
		if kol_man > 1:'Парни подошли к вам и один из парней сказал "<<$text_znak>>"'

		act 'Познакомиться':gt'placer_act '
	elseif ver_zn = 0 and kol_man > 0:
		if kol_man = 1:$kol_man_text_no = 'После того, как парень посмотрел на вас, он отвернулся.'
		if kol_man > 1:$kol_man_text_no = 'После того, как парни осмотрели вас, они отвернулись.'

		'На вас посмотрел<<$kol_man_prefiks>> оценивающе <<$kol_man_text>>. <<$kol_man_text_no>>.'
	end

	act 'Уйти':gt'gskver'
end

gs'stat'
--- placer_gskver ---------------------------------

