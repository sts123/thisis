# DanceWhore7
minut += 5
dick = RAND(18,35)
gs'stat'

'Два негра повели вас в комнату.'

act 'Сесть на корточки':
	cls
	bj += 2
	guy += 2
	gang += 1
	sub += 1
	minut += 10
	gs'stat'

	'<center><img src="images/qwest/alter/dance/bjdn.jpg"></center>'
	'Вы сели на корточки перед парнями и взяли их члены руками. Немного подрочив вы облизнули головку одного из членов. После этого вы начали сосать член вбирая его в свой рот на столько, насколько могли и дрочить второй член. Когда член затвердел вы стали сосать второй член. Ваш мокрый ротик ласкал и сосал сразу оба члена.'

	tipdarand = RAND(0,1)
	if tipdarand = 0:
		'Парни поставили вас раком. Один зашел к вам сзади, второй подошел к вашему рту. Вы почувствовали как пальцы парня стали ласкать ваш анус. А второй парень в нетерпении стукнул своим членом вам по лицу.'

		act 'Расслабить попку и сосать':
			cls
			minut += 30
			$boy = 'Клиент'
			cumanus += 1
			gs'stat'

			'<center><img src="images/qwest/alter/dance/dn.jpg"></center>'
			'Вы сосете член вбирая его как можно глубже.'

			dynamic $sexstart
			dynamic $analsex

			tipdarand = RAND(0,1)
			if tipdarand = 0:
				'Мужчина трахающий вас в рот, немного застонал и грубо схватил ваши волосы прижав вас лицом к своему кучерявому лобку. Внезапно вам в горло ударила струя спермы.'

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
				'Мужчина трахающий вас в рот, вынул член из вашего рта и стал дрочить его перед вашим лицом.'

				act 'Закрыть глаза':
					cls
					cumface += 1
					facial += 1
					minut += 10
					gs'stat'

					'<center><img src="images/qwest/alter/dance/facialn.jpg"></center>'
					'Вы закрыли глаза и почувствовали как вам по лицу ударила теплая струя спермы и потекла вниз. Затем следующая струя ударила вам в лицо. Потом еще и еще. Наконец член перестал кончать.'

					dynamic $din_go_to_home_dance
				end
			end
		end
	elseif tipdarand = 1:
		'Парни положили вас спиной на диван, один из них расположился между ваших ног, второй подошел к вашему лицу.'

		act 'Сосать':
			cls
			minut += 30
			!sex += 1
			$boy = 'Клиент'
			gs'stat'

			'<center><img src="images/qwest/alter/dance/d1n.jpg"></center>'
			'Вы стали сосать член, пока второй парень раздвинул ваши ноги.'

			dynamic $sexstart
			dynamic $sexstart2
			dynamic $sexcum

			tipdarand = RAND(0,1)
			if tipdarand = 0:
				'Мужчина трахающий вас в рот, немного застонал и грубо схватил ваши волосы прижав вас лицом к своему кучерявому лобку. Внезапно вам в горло ударила струя спермы.'

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
				'Мужчина трахающий вас в рот, вынул член из вашего рта и стал дрочить его перед вашим лицом.'

				act 'Закрыть глаза':
					cls
					cumface += 1
					facial += 1
					minut += 10
					gs'stat'

					'<center><img src="images/qwest/alter/dance/facialn.jpg"></center>'
					'Вы закрыли глаза и почувствовали как вам по лицу ударила теплая струя спермы и потекла вниз. Затем следующая струя ударила вам в лицо. Потом еще и еще. Наконец член перестал кончать.'

					dynamic $din_go_to_home_dance
				end
			end
		end
	end
!	if tipdarand = 2:
!	end
end
--- DanceWhore7 ---------------------------------

