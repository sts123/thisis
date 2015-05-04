# StasSex
if SStip = 0:
	minut += 5
	horny += 10
	gs'stat'

	'<center><img src="images/qwest/sosed/stas.jpg"></center>'
	'Вы вошли в квартиру и Стас разувшись, сразу же впился своими губами в ваши и вы почувствовали как его руки охватили ваши груди начав ласкать их и сжимать. Он не прекращая ласкать вас, повел в вашу спальную.'

	act 'Идти в спальную':
		cls
		gs'stat'

		'<center><img src="images/qwest/sosed/pov.jpg"></center>'
		'Стас уронил вас на кровать и стал раздевать вас не прекращая ласкать вашу грудь и раздеваться сам.'

		act 'Далее':
			cls
			if StasikSex > 0:StasikSex += 1
			if StasikSex = 0:StasikSex = 1 & guy += 1
			!if ValeraSex = 0:ValeraSex = 1 & guy += 1
			!gang += 1
			minut += 15
			gs'stat'

			'<center><img src="images/qwest/sosed/sex.jpg"></center>'
			'Вы расслабились и стали наслаждаться лаской груди и киски.'

			$boy = 'Стасик'
			dick = 15
			silavag = 1
			pose = 0

			!dynamic $sexstart

			'Вы почувствовали как тело Стасика раздвинуло ваши ноги и его твердый член уперся в вашу мягкую, истекающую соком киску.'

			dynamic $sexstart2
			!dynamic $sexcum

			cumpussy = cumpussy + 1

			'<<$boy>> застонал и вы почувствовали как струя спермы ударила вам внутрь вашего тела.'

			if tabletki <= 0 and mesec <= 0:
				gs'preg'
				manna = manna - 15
				willpower = willpower - 15
				'Черт, так ведь и залететь можно, подумалось вам с ужасом.'
			end

			act 'Перевести дух':
				cls
				minut += 5
				gs'stat'

				'<center><img src="images/qwest/sosed/aftersex.jpg"></center>'
				'Стас слез с вас и расположился рядом поглаживая вашу грудь рукой. Из вашей киски медленно вытекает сперма смешанная с вашими вагинальными соками. Стас извиняющимся тоном сказал "Извини что кончил в тебя, не удержался." Он потянулся и стал вставать с кровати. "Ну мне пора идти Светик."'

				act 'Проводить до двери':gt'korr'
			end
		end
	end
end
--- StasSex ---------------------------------

