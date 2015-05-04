# DanceWhore1
minut += 5
dick = RAND(10,26)
gs'stat'

'Мужчина взял вас под руку и отвел в комнату. Когда мужчина включил в комнате свет, вы увидели, что это большая спальная.'

act 'Сесть на корточки':
	cls
	bj += 1
	guy += 1
	sub += 1
	minut += 10
	gs'stat'

	'<center><img src="images/qwest/alter/dance/bj.jpg"></center>'
	'Вы сели на корточки перед мужчиной и взяли его член рукой. Немного подвигав кожицу на члене вы облизнули головку. Ваш ловкий язычок начал ласкать горячий и твердый член мужчины. После этого вы начали сосать член вбирая его в свой рот на столько, насколько могли.'

	tipdarand = RAND(0,2)
	if tipdarand = 0:
		'Мужчина взял вашу голову руками и стал насаживать ее на член.'

		act 'Расслабить горло':
			cls
			if throat < dick:throat += 1
			minut += 10
			gs'stat'

			'<center><img src="images/qwest/alter/dance/throat.jpg"></center>'

			if throat < dick/2:
				manna = 0
				horny = 0

				'Вы стали судорожно расслаблять горло когда член входил в вас. У вас потекли слюни, сопли и слезы, постоянно охватывали рвотные спазмы.'
			elseif throat >= dick/2 and throat < dick:
				manna = manna/2
				horny = horny/2

				'Вы расслабили горло и член стал входить в ваше горло до основания. У вас потекли сопли и слезы от этого и вы стали задыхаться.'
			elseif throat >= dick:
				'Вы полностью расслабили горло и член каждый раз входил в ваше горло до основания ударяя вас мохнатыми яйцами по подбородку.'
			end

			tipdarand = RAND(0,1)
			if tipdarand = 0:
				'Мужчина немного застонал и грубо схватил ваши волосы прижав вас лицом к своему кучерявому лобку. Внезапно вам в горло ударила струя спермы.'

				act 'Глотать':
					cls
					cumlip += 1
					swallow += 1
					minut += 10
					gs'stat'

					'<center><img src="images/qwest/alter/dance/swallow.jpg"></center>'
					'Вы стали судорожно глотать сперму пока член не закончил изливать семя вам в рот.'

					dynamic $din_go_to_home_dance
				end
			elseif tipdarand = 1:
				'Мужчина вынул член из вашего рта и стал дрочить его перед вашим лицом.'

				act 'Закрыть глаза':
					cls
					cumface += 1
					facial += 1
					minut += 10
					gs'stat'

					'<center><img src="images/qwest/alter/dance/facial.jpg"></center>'
					'Вы закрыли глаза и почувствовали как вам по лицу ударила теплая струя спермы и потекла вниз. Затем следующая струя ударила вам в лицо. Потом еще и еще. Наконец член перестал кончать.'

					dynamic $din_go_to_home_dance
				end
			end
		end
	elseif tipdarand = 1:
		'Мужчина вынул член из вашего рта и поставил вас раком.'

		act 'Подставить попку':
			cls
			minut += 30
			$boy = 'Клиент'
			cumanus += 1
			gs'stat'

			'<center><img src="images/qwest/alter/dance/anal.jpg"></center>'

			dynamic $sexstart
			dynamic $analsex
			dynamic $din_go_to_home_dance
		end
	elseif tipdarand = 2:
		'Мужчина вынул член из вашего рта и положил вас на спину.'

		act 'Лечь на спину':
			cls
			minut += 30
			!sex += 1
			$boy = 'Клиент'
			gs'stat'

			'<center><img src="images/qwest/alter/dance/sex.jpg"></center>'
			'Вы легли на спину. <<$bname>> лег сверху и раздвинул ваши ноги.'

			dynamic $sexstart
			dynamic $sexstart2
			dynamic $sexcum
			dynamic $din_go_to_home_dance
		end
	end
end
--- DanceWhore1 ---------------------------------

