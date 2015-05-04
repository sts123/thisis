# BDSM
$metka = $ARGS[0]
$loc = $CURLOC

cla
clr
*clr
gs'stat'

'Вы пришли на съемочную площадку где уже все было готово для съемок порнофильма.'

act 'Начать участие в съемках':
	cla
	*clr

	if hcol = 0:'<center><img src="images/studia/Brunette_2.jpg"></center>'
	if hcol = 1:'<center><img src="images/studia/Brown_2.jpg"></center>'
	if hcol = 2:'<center><img src="images/studia/Redhead_2.jpg"></center>'
	if hcol = 3:'<center><img src="images/studia/Blonde_2.jpg"></center>'

	'Вас стали снимать в сцене с двумя актерами'

	act 'Снять сцену с миньетом':
		cla
		*clr
		guy += 2
		bj += 2
		gang += 1

		if hcol = 0:'<center><img src="images/studia/Brunette_3.jpg"></center>'
		if hcol = 1:'<center><img src="images/studia/Brown_3.jpg"></center>'
		if hcol = 2:'<center><img src="images/studia/Redhead_3.jpg"></center>'
		if hcol = 3:'<center><img src="images/studia/Blonde_3.jpg"></center>'

		'Вы обхватили губами член и взяли в ладошку член второго актера и начали энергично работать перед камерой, попеременно обсасывая члены и стараясь натянуть свой рот сразу на оба члена.'

		act 'Встать раком':
			cla
			*clr
			anal += 1
			anus += 1

			if hcol = 0:'<center><img src="images/studia/Brunette_4.jpg"></center>'
			if hcol = 1:'<center><img src="images/studia/Brown_4.jpg"></center>'
			if hcol = 2:'<center><img src="images/studia/Redhead_4.jpg"></center>'
			if hcol = 3:'<center><img src="images/studia/Blonde_4.jpg"></center>'

			'Один из актёров поставил вас раком и начал грубо засовывать вам свой твердый член в зад, после того как его член вошел в вас он начал яростно трахать вас в очко, а вы продолжали сосать у второго...'

			act 'Сесть сверху...':
				cla
				*clr

				if hcol = 0:'<center><img src="images/studia/Brunette_5.jpg"></center>'
				if hcol = 1:'<center><img src="images/studia/Brown_5.jpg"></center>'
				if hcol = 2:'<center><img src="images/studia/Redhead_5.jpg"></center>'
				if hcol = 3:'<center><img src="images/studia/Blonde_5.jpg"></center>'

				'Вы лихо сели на один хуй попкой и продолжили отсасывать другой...'

				act 'Продолжить телодвижения':
					cla
					*clr

					if hcol = 0:'<center><img src="images/studia/Brunette_6.jpg"></center>'
					if hcol = 1:'<center><img src="images/studia/Brown_6.jpg"></center>'
					if hcol = 2:'<center><img src="images/studia/Redhead_6.jpg"></center>'
					if hcol = 3:'<center><img src="images/studia/Blonde_6.jpg"></center>'

					'Мужички поменялись местами и продолжили ебать вас'

					act 'Приготовиться к двойному проникновению':
						cla
						*clr
						sex += 1
						vagina += 1

						if hcol = 0:'<center><img src="images/studia/Brunette_7.jpg"></center>'
						if hcol = 1:'<center><img src="images/studia/Brown_7.jpg"></center>'
						if hcol = 2:'<center><img src="images/studia/Redhead_7.jpg"></center>'
						if hcol = 3:'<center><img src="images/studia/Blonde_7.jpg"></center>'

						'Вы сели пиздёнкой на один член, и почувствовали как второй член входит в вас зудящий и раздолбанный анус'

						act 'Наслаждаться':
							cla
							*clr

							if hcol = 0:'<center><img src="images/studia/Brunette_8.jpg"></center>'
							if hcol = 1:'<center><img src="images/studia/Brown_8.jpg"></center>'
							if hcol = 2:'<center><img src="images/studia/Redhead_8.jpg"></center>'
							if hcol = 3:'<center><img src="images/studia/Blonde_8.jpg"></center>'

							'Широко раскинув ноги, вы наслаждаетесь действом в два смычка, члены долбят ваше тело как поршни, вы стоните и раздвигаете булки руками, чтобы оператору было удобней брать крупный план.'

							act 'Пора кончать...':
								cla
								*clr
								facial += 1
								swallow += 1

								if hcol = 0:'<center><img src="images/studia/Brunette_9.jpg"></center>'
								if hcol = 1:'<center><img src="images/studia/Brown_9.jpg"></center>'
								if hcol = 2:'<center><img src="images/studia/Redhead_9.jpg"></center>'
								if hcol = 3:'<center><img src="images/studia/Blonde_9.jpg"></center>'

								'Парни вынули свои толстые члены из вас и вы готовностью всали перед ними на колени и открыв похотливо рот в ожидании спермы, ребята не заставили себя ждать и вскоре горячие струи спермы начали хлестать по вашему лицу и стекать по подбородку на грудь.'

								act 'Получить гонорар':
									cla
									clr
									*clr
									minut = minut+480
									film = film+1
									BDSMfilm = BDSMfilm+1
									money = money+vnesh*500
									actr = 0
									gs'stat'

									'<center><img src="images/studia/dvd-disс.jpg"></center>'
									'Вы потратили 9 часов на съёмки в фильме'
									'и получили <<vnesh*500>> рублей наличными'

									act 'Уйти со студии':gt'down'
								end
							end
						end
					end
				end
			end
		end
	end
end
--- BDSM ---------------------------------

