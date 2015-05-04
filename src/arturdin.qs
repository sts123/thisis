# arturdin
$d_art_facefuck = {
	minut += 5
	throat += 1
	artfacefucktimes += 1
	artbj += 1
	picrand = RAND(0,5)
	gs'stat'

	'<center><img src="images/qwest/alter/artur/facefuck<<picrand>>.jpg"></center>'
	'<<$artbef>> Артур схватил вас за волосы и просто насадил ваш рот на свой здоровенный член.'

	if throat < dick:
		'Вы задыхаетесь когда член с разгону залетает в ваше горло обдавая его огнем. Вас скручивает рвотный рефлекс.'
	else
		'Горло обдает огнем когда член Артура с разгону входит в ваше горло и ваш нос упирается в кучерявый лобок Артура.'
	end

	if artfacefucktimes < 4:
		tipsexart = RAND(0,1)
		if tipsexart = 0:dynamic $d_artlick
		if tipsexart = 1:dynamic $d_artchik
	elseif artfacefucktimes >= 4:
		tipsexart = RAND(0,1)
		if tipsexart = 0:dynamic $d_art_bed
		if tipsexart = 1:dynamic $d_art_bedmiss
	end
}

$d_artlick = {
	act 'Дальше':
		cls
		minut += 5
		artbj += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/lick.jpg"></center>'
		'Артур достает свой член из вашего рта и начинает бить вам по губам, вы высовываете язык облизывая головку и здоровенный член колотит вам по языку и лицу.'

		act 'Дальше':
			cls
			$artbef = ''
			dynamic $d_art_facefuck
		end
	end
}

$d_artchik = {
	act 'Дальше':
		cls
		minut += 5
		artbj += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/chik.jpg"></center>'
		'Артур засовывает вам свой член между щекой и зубами и легко ударяет ладонью вам по щеке.'

		act 'Дальше':
			cls
			$artbef = ''
			dynamic $d_art_facefuck
		end
	end
}

$d_art_bed = {
	act 'Дальше':
		cls
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/artur/bed.jpg"></center>'
		'Артур кладет вас на кровать кверху попой.'

		if artfucktimes < 4:
			artrand = RAND(0,2)
			if artrand = 0:dynamic $d_art_sexdog
			if artrand = 1:dynamic $d_art_anal
			if artrand = 2:dynamic $d_art_fist
		elseif artfucktimes >= 4:
			artrand = RAND(0,2)
			if artrand = 0:dynamic $d_art_sexdog_cum
			if artrand = 1:dynamic $d_art_cum
			if artrand = 2:dynamic $d_art_anal_cum
		end
	end
}

$d_art_bedmiss = {
	act 'Дальше':
		cls
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/artur/bedmiss.jpg"></center>'
		'Артур кладет вас на кровать и раздвигает ваши ноги.'

		if artfucktimes < 4:
			dynamic $d_art_sexmiss
		elseif artfucktimes >= 4:
			artrand = RAND(0,1)
			if artrand = 0:dynamic $d_art_sexmiss_cum
			if artrand = 1:dynamic $d_art_cum
		end
	end
}

$d_art_sexmiss = {
	act 'Дальше':
		cls
		minut += 5
		pose = 0
		artfucktimes += 1
		artsex += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/sexmiss.jpg"></center>'
		'Артур забирается вам между ног и вы чувствуете как его твердый член упирается вам в киску.'

		dynamic $sexstart4

		tipsexart = RAND(0,1)
		if tipsexart = 0:dynamic $d_art_bed
		if tipsexart = 1:dynamic $d_art_bedmiss
	end
}

$d_art_sexmiss_cum = {
	act 'Дальше':
		cls
		minut += 5
		pose = 0
		artfucktimes += 1
		artsex += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/sexmiss.jpg"></center>'
		'Артур забирается вам между ног и вы чувствуете как его твердый член упирается вам в киску.'

		dynamic $sexstart4
		dynamic $sexcum

		act 'Дальше':gt'arturend'
	end
}

$d_art_sexdog = {
	act 'Дальше':
		cls
		minut += 5
		artfucktimes += 1
		pose = 1
		artsex += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/sexdog.jpg"></center>'
		'Артур хватает вас своими ладонями за попу и вы чувствуете как его твердый член упирается в вашу киску.'

		dynamic $sexstart4

		tipsexart = RAND(0,1)
		if tipsexart = 0:dynamic $d_art_bed
		if tipsexart = 1:dynamic $d_art_bedmiss
	end
}

$d_art_sexdog_cum = {
	act 'Дальше':
		cls
		minut += 5
		artfucktimes += 1
		pose = 1
		artsex += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/sexdog.jpg"></center>'
		'Артур хватает вас своими ладонями за попу и вы чувствуете как его твердый член упирается в вашу киску.'

		dynamic $sexstart4
		dynamic $sexcum

		act 'Дальше':gt'arturend'
	end
}

$d_art_anal = {
	act 'Дальше':
		cls
		minut += 5
		artfucktimes += 1
		pose = 1
		artanal += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/anal.jpg"></center>'
		'Артур хватает вас своими ладонями за попу и вы чувствуете как его твердый член упирается в ваш анус.'

		dynamic $analsex2

		tipsexart = RAND(0,1)
		if tipsexart = 0:dynamic $d_art_bed
		if tipsexart = 1:dynamic $d_art_bedmiss
	end
}

$d_art_anal_cum = {
	act 'Дальше':
		cls
		minut += 5
		artfucktimes += 1
		pose = 1
		artanal += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/anal.jpg"></center>'
		'Артур хватает вас своими ладонями за попу и вы чувствуете как его твердый член упирается в ваш анус.'

		dynamic $analsex2

		act 'Дальше':
			cls
			minut += 5
			lubonus = 0
			cumanus += 1
			gs'stat'

			'<center><img src="images/qwest/alter/artur/analcreampi.jpg"></center>'
			'Через некоторое время <<$boy>> застонал и вы почувствовали как вашу попу наполняет тепло.'

			act 'Дальше':gt'arturend'
		end
	end
}

$d_art_cum = {
	act 'Дальше':
		cls
		minut += 5
		cumface += 1
		facial += 1
		gs'stat'

		'<center><img src="images/qwest/alter/artur/cum0.jpg"></center>'
		'Артур внезапно практически скидывает вас с кровати и ставит на колени. Вам в лицо ударяет струя спермы.'

		act 'Дальше':
			cls
			minut += 1
			gs'stat'

			'<center><img src="images/qwest/alter/artur/cum1.jpg"></center>'
			'Затем еще одна струя спермы попадает вам в лицо.'

			act 'Дальше':
				cls
				minut += 1
				cumlip += 1
				gs'stat'

				'<center><img src="images/qwest/alter/artur/cum2.jpg"></center>'
				'Следующая струя спермы попадает вам на губы и в рот.'

				act 'Дальше':
					cls
					minut += 1
					gs'stat'

					'<center><img src="images/qwest/alter/artur/cum3.jpg"></center>'
					'Наконец то Артур прекращает кончать покрыв почти все ваше лицо своей горячей спермой.'

					act 'Дальше':gt'arturend'
				end
			end
		end
	end
}

$d_art_fist = {
	act 'Дальше':
		cls
		minut += 5
		if anus < 30:anus += 3
		if artfucktimes > 0:artfucktimes -= 1
		gs'stat'

		if anus >= 20:
			'<center><img src="images/qwest/alter/artur/fist2.jpg"></center>'
			'Артур засовывает вам два пальца в попу, потом добавляет еще палец, и еще и вскоре рука Артура уже полностью в вашей попе.'
		end
		if anus < 20:
			'<center><img src="images/qwest/alter/artur/fist.jpg"></center>'
			'Артур засовывает вам в попу палец и начинает там энергично ковырять.'
		end

		tipsexart = RAND(0,1)
		if tipsexart = 0:dynamic $d_art_bed
		if tipsexart = 1:dynamic $d_art_bedmiss
	end
}
--- arturdin ---------------------------------

