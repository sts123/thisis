# dinBoroda
$borodachNo = {
	act 'Мне хватит':
		cla
		minut += 15
		gs'stat'

		'Вы отказались пить и стали собираться уходить. Охранник начал вас уговаривать остаться с ним и продолжить.'

		if SUB < 10:act 'Уйти':dom += 1 & gt'clener','start'
		dynamic $borodachDrink
	end
}

$borodachNo2 = {
	act 'Мне пора идти':
		cla
		minut += 15
		gs'stat'

		'Вы начали собираться но Саша стал вас уговаривать остаться с ним и продолжить.'

		if DOM > 0 and horny < 50:act 'Уйти':dom += 1 & gt'clener','start'
		dynamic $borodachSex
	end
}

$borodachDrink = {
	act 'Выпить еще':
		cla
		minut += 15
		horny += 20
		gs'stat'

		'Вы выпили еще и закусив сырком поняли что резко опьянели. Рука охранника уже не отрываясь ласкала вашу попу.'

		dynamic $borodachNo2
		dynamic $borodachSex
	end
}

$borodachSex = {
	act 'Расслабиться':
		cla
		if borodachSex = 0:borodachSex = 1 & guy += 1
		minut += 5
		horny += 5
		gs'stat'

		'Вы расслабились и стали получать удовольствие от рук ласкающих вас. Сашка уже не таясь обнял вас и начал целовать.'
		'Его руки скользнули по вашей одежде расстегивая и снимая ее. Вскоре он добрался до вашей груди и начал сосать ваши соски.'

		act 'Лечь на диван':
			cls
			minut += 5
			horny += 20
			gs'stat'
			borodachSexDay = day
			sex = sex + 1
			minut = minut + 30
			pose = 0
			$nameV = 'Сашка'
			$boy = $nameV
			dick = 15
			silavag = 0

			'<center><img src="images/picV/vag.jpg"></center>'
			'<<$nameV>> положил вас на диван, раздвинул ваши ноги руками и достав свой <<dick>> сантиметровый член, стал ласкать пальцами вашу киску готовясь войти в нее.'
			gs'orgazm','start'

			act 'Уйти':gt'street'
		end
	end
}

$ohrhj = {
	act 'Дрочить ему':
		cla
		minut += 15
		horny += dom
		gs'stat'
		hj += 1

		'Вы начали дрочить его член своими нежными ручками. Вскоре Сашка закряхтел "Я так кончу скоро."'

		dynamic $ohrbj
		dynamic $ohrhjcum
		dynamic $ohrsex
	end
}

$ohrhjcum = {
	act 'Дрочить ему дальше':
		cls
		minut += 15
		horny += dom
		borodachSexDay = day
		gs'stat'

		'<center><img src="images/qwest/ohrannik/hjcum.jpg"></center>'
		'Сашка застонал и из его члена начали вылетать струи спермы вам в ладони.'

		act 'Уйти':gt'street'
	end
}

$ohrbj = {
	act 'Взять в рот':
		cls
		minut += 15
		horny += 5
		gs'stat'
		bj += 1

		picrand = RAND(0,4)
		if picrand = 0:'<center><img src="images/qwest/ohrannik/bj.jpg"></center>'
		if picrand = 1:'<center><img src="images/qwest/ohrannik/bj1.jpg"></center>'
		if picrand = 2:'<center><img src="images/qwest/ohrannik/bj2.jpg"></center>'
		if picrand = 3:'<center><img src="images/qwest/ohrannik/bj3.jpg"></center>'
		if picrand = 4:'<center><img src="images/qwest/ohrannik/bj4.jpg"></center>'

		'Вы обхватили 15 сантиметровый, крепкий и теплый член своими <<$liptalk>> и начали его сосать лаская головку язычком и обрабатывая губками твердый фаллос. Сашка закряхтел "Я сейчас кончу."'

		dynamic $ohrbjcum
		dynamic $ohrsex
	end
}

$ohrbjcum = {
	act 'Обхватить еще сильнее губами':
		cls
		minut += 15
		horny += 5+vaf
		cumlip += 1
		gs'stat'

		picrand = RAND(0,4)
		if picrand = 0:'<center><img src="images/qwest/ohrannik/bjcum.jpg"></center>'
		if picrand = 1:'<center><img src="images/qwest/ohrannik/bjcum1.jpg"></center>'
		if picrand = 2:'<center><img src="images/qwest/ohrannik/bjcum2.jpg"></center>'
		if picrand = 3:'<center><img src="images/qwest/ohrannik/bjcum3.jpg"></center>'
		if picrand = 4:'<center><img src="images/qwest/ohrannik/bjcum4.jpg"></center>'

		'Вы удвоили свои усилия обрабатывая твердый член своими <<$liptalk>>. Горячая струя ударила вам в рот, потом еще одна и еще. Вы продолжали отсасывать не обращая внимания на то что у вас полный рот ядреной спермы. Наконец поток иссяк.'
		gs'oral','0'

		act 'Проглотить сперму':
			cls
			minut += 15
			horny += 5
			vaf += 1
			borodachSexDay = day
			gs'stat'

			picrand = RAND(0,2)
			if picrand = 0:'<center><img src="images/qwest/ohrannik/swallow.jpg"></center>'
			if picrand = 1:'<center><img src="images/qwest/ohrannik/swallow1.jpg"></center>'
			if picrand = 2:'<center><img src="images/qwest/ohrannik/swallow2.jpg"></center>'

			'Вы открыли рот наполненный спермой и облизнувшись проглотили ее.'

			act 'Уйти':gt'street'
		end
		act 'Выплюнуть сперму':
			cls
			minut += 15
			horny += 5
			if vaf > 0:vaf -= 1
			borodachSexDay = day
			gs'stat'

			'<center><img src="images/qwest/ohrannik/spit.jpg"></center>'
			'Вы открыли рот наполненный спермой выплюнули сперму в раковину.'

			act 'Уйти':gt'street'
		end
	end
}

$ohrsex = {
	act 'Секс':
		cls
		minut += 5
		horny += 20
		gs'stat'
		borodachSexDay = day
		sex = sex + 1
		minut = minut + 30
		pose = 0
		$nameV = 'Сашка'
		dick = 15
		silavag = 0

		'<center><img src="images/picV/vag.jpg"></center>'
		'<<$nameV>> положил вас на диван, раздвинул ваши ноги руками и достав свой <<dick>> сантиметровый член, стал ласкать пальцами вашу киску готовясь войти в нее.'
		gs'orgazm','start'

		act 'Уйти':gt'street'
	end
}

rikudootvet = 1415
--- dinBoroda ---------------------------------

