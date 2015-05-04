# qwIzoldaApp
minut += 15
gs'stat'

if hour >= 16 and izoldaday ! day:
	'<center><b><font color = maroon>Изольда</font></b></center>'
	'<center><img src="images/qwest/kolan/izolda.jpg"></center>'
	'Дверь вам открыла Изольда. "Привет Света, заходи."'

	act 'Уйти':gt'down'
	act 'Войти в квартиру':
		cla
		minut += 30
		izoldaday = day
		izoldaQW += 1
		gs'stat'

		if izoldaQW < 5:
			'Вы прошли в квартиру и Изольда проводила вас на кухню. Там она налила вам чаю и себе. Вы сели за стол и стали болтать о всяких пустяках.'
		elseif izoldaQW >= 5 and izoldaSex = 0:
			'Изольда предложила вам выпить вина. Вы согласились и прошли на кухню. Изольда открыла бутылку вина и разлила по бокалам. Вы выпили с ней.'

			if izoldaQW >= 10 and izoldaSex = 0:
				'Вскоре вы обе напились и Изольда предложила вам пройти в зал отдохнуть.'

				act 'Идти с Изольдой':
					cls
					girl += 1
					lesbian += 1
					izoldaSex = 1
					horny += 10
					gs'stat'

					'<center><img src="images/qwest/kolan/izoldasex.jpg"></center>'
					'В комнате Изольда неожиданно вас поцеловала и нежно обняла.'

					act 'Целоваться с Изольдой':
						cls
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/kolan/izoldasex1.jpg"></center>'
						'Голова Изольды плавно сползла с ваших губ к вашим грудям и начала их ласкать.'

						act '...':
							cls
							horny += 10
							gs'stat'

							'<center><img src="images/qwest/kolan/izoldasex2.jpg"></center>'
							'Изольда вас уронила на диван и плавно раздела покрывая поцелуями. После того, как вы легли на спину, она начала лизать вашу киску.'

							act '...':
								cls
								horny = 0
								orgasm += 1
								gs'stat'

								'<center><img src="images/qwest/kolan/izoldasex3.jpg"></center>'
								'Блондинка развернулась и залезла на вас не прекращая вылизывать вашу киску. Она перебросив ногу через вас подставила свою разгоряченную и истекающую соками щелку для ласк. Вы начали язычком ласкать ее клитор и целовать ее сочные губки, наконец вас обеих сотряс оргазм.'

								act 'Уйти':gt'down'
							end
						end
					end
				end
			end
		elseif izoldaSex > 0:
			'Изольда предложила вам выпить вина и вы прошли с ней на кухню, выпив бутылку она взяла вас за руку и отвела в комнату.'

			act 'Идти с Изольдой':
				cls
				lesbian += 1
				izoldaSex += 1
				horny += 10
				gs'stat'

				'<center><img src="images/qwest/kolan/izoldasex.jpg"></center>'
				'В комнате Изольда неожиданно вас поцеловала и нежно обняла.'

				act 'Целоваться с Изольдой':
					cls
					horny += 10
					gs'stat'

					'<center><img src="images/qwest/kolan/izoldasex1.jpg"></center>'
					'Голова Изольды плавно сползла с ваших губ к вашим грудям и начала их ласкать.'

					act '...':
						cls
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/kolan/izoldasex2.jpg"></center>'
						'Изольда вас уронила на диван и плавно раздела покрывая поцелуями. После того, как вы легли на спину, она начала лизать вашу киску.'

						act '...':
							cls
							horny = 0
							orgasm += 1
							gs'stat'

							'<center><img src="images/qwest/kolan/izoldasex3.jpg"></center>'
							'Блондинка развернулась и залезла на вас не прекращая вылизывать вашу киску. Она перебросив ногу через вас подставила свою разгоряченную и истекающую соками щелку для ласк. Вы начали язычком ласкать ее клитор и целовать ее сочные губки, наконец вас обеих сотряс оргазм.'

							act 'Уйти':gt'down'
						end
					end
				end
			end
		end

		act 'Уйти':gt'down'
	end
else
	'Вы позвонили в звонок но вам никто не открыл.'

	act 'Уйти':gt'down'
end
--- qwIzoldaApp ---------------------------------

