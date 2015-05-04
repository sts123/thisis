# NatBelHome
if BeInNatBelHome = 0:BeInNatBelHome = 1
gs'stat'

'<center><b><font color = maroon><<$npcName[16]>> <<$npcSurName[16]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
'Очень бедная комната, впрочем как и вся квартира.'

if lernHome ! 0:
	'Наташа раскладывает учебники по столу.'

	act 'Заниматься с Наташей':
		cls
		minut += 60
		!grupNPC[16] += 10
		lernHome = 0
		lern += RAND(3,6)
		intel += RAND(1,2)
		gs'stat'

		'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
		'Вы в течении часа занимались с Наташей и выучили уроки.'

		act 'Передохнуть':gt $curloc
	end
elseif lernHome = 0:
	'Наташа сидит на своей кровати.'

	act 'Болтать с Наташей':
		cls
		minut += 15
		NatBelBestFrend += 1
		gs'stat'

		'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
		'Вы поболтали с Наташей о всякой ерунде.'

		if NatBelBestFrend = 1:'Наташа признается, что она живет в очень бедной семье. У нее нет отца, а ее мать работает за копейки на швейной фабрике.'
		if NatBelBestFrend >= 2:'Наташа завидует, что другие девчонки могут нарядно одеваться и покупать косметику, когда она донашивает мамины вещи.'

		act 'Далее':gt $curloc
	end

	if NatDolg <= 0 and money >= 2000 and natsub > 0:
		'Наташу смущаясь спросила "Света, а можно у тебя занять пару тысяч?"'

		act 'Дать денег Наташе':
			cls
			minut += 15
			NatDolg = 2000
			money -= 2000
			gs'stat'

			'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
			'Вы достали кошелек и дали Наташе денег понимая что деньги она точно не отдаст и предпочтет что бы вы с ней поиграли.'

			act 'Далее':gt $curloc
		end
	elseif NatBelBestFrend >= 3 and NatDolg = 0 and money >= 5000 and natsub = 0:
		'Наташа потупилась "Света, у тебя водятся деньги. Ты не могла бы мне одолжить 5000 рублей. Я отдам, честное слово."'

		act 'Дать в долг Наташе':
			cls
			minut += 15
			NatDolg = 5000
			money -= 5000
			NatDolgDay = daystart+30
			NatBelBestFrend += 1
			gs'stat'

			'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
			'Вы достали кошелек и дали Наташе денег в долг. Наташа обрадовалась и сказала, что отдаст их через месяц.'

			act 'Передохнуть':gt $curloc
		end
	elseif NatDolg > 0 and NatDolgDay > daystart:
		'Наташа обещает вам вернуть долг <<NatDolg>> рублей, через <<NatDolgDay-daystart>> дней'
	elseif NatDolg > 0 and NatDolgDay <= daystart:
		'Наташа смотрит в пол "Света, у меня нет денег, что бы отдать долг."'

		act 'Простить долг Наташе':
			cls
			minut += 15
			NatDolg = 0
			NatDolgDay = 0
			NatBelBestFrend += 10
			gs'stat'

			'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
			'Вы решили простить долг Наташе, она обрадовалась и начала сердечно вас благодарить.'

			act 'Передохнуть':gt $curloc
		end

		if dom >= 10 and natotrab = 0:
			act 'Требовать деньги':
				cls
				minut += 15
				gs'stat'

				'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
				'Вы решили не спускать долг Наташе, и закатили ей скандал, требуя вернуть деньги. Наташа вся сжалась в комок на своей кровати и лишь бормотала "Светочка, милая, прости меня. Я для тебя что угодно сделаю." Глядя на перепуганную Наташу вам в голову пришла пара идей, как можно использовать эту курицу. И вы зло прошипели ей "Ты у меня все до последней копейки отработаешь тварь."'

				act 'На колени! И пасть открой!':
					cls
					minut += 5
					natotrab += 1
					natsub += 1
					!natknee
					gs'stat'

					'<center><img src="images/qwest/alter/ev2/natknee.jpg"></center>'
					'Вы рявкнули на Наташку, и она тут же послушно встала на колени и открыла рот.'

					act 'Плюнуть ей в морду':
						cls
						minut += 5
						natsub += 1
						NatDolg -= 500
						!natknee
						gs'stat'

						'<center><img src="images/qwest/alter/ev2/natknee.jpg"></center>'
						'Вы рявкнули на Наташку, и она тут же послушно встала на колени и открыла рот. Вы собрали слюну и смачно харкнули Наташке в морду, от чего она дернулась и зажмурила глаза. Вы усмехнулись, "Ладно, прощаю." Наташка открыла глаз в который не попал харчок и переспросила "Прощаешь?" Вы засмеялись "Прощаю 500 рублей от долга, дура. Теперь будешь отрабатывать пока весь долг не погасишь."'

						act 'Передохнуть':gt $curloc
					end
				end
			end
		end

		if natotrab > 0 and NatDolg > 0:
			'Наташка должна еще <<NatDolg>> рублей.'

			act 'На колени! И пасть открой!':
				cls
				minut += 5
				natotrab += 1
				natsub += 1
				!natknee
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/natknee.jpg"></center>'
				'Вы рявкнули на Наташку, и она тут же послушно встала на колени и открыла рот.'

				act 'Плюнуть ей в морду':
					cls
					minut += 5
					natsub += 1
					NatDolg -= 500
					!natknee
					gs'stat'

					'<center><img src="images/qwest/alter/ev2/natspit.jpg"></center>'
					'Вы рявкнули на Наташку, и она тут же послушно встала на колени и открыла рот. Вы собрали слюну и смачно харкнули Наташке в морду, от чего она дернулась и зажмурила глаза.'

					act 'Передохнуть':gt $curloc
				end

				if natsub >= 4:
					act 'Заставить ее вылизать':
						cls
						minut += 5
						natsub += 1
						NatDolg -= 500
						if npcSex[16] = 0:npcSex[16] = 1 & girl += 1
						lesbian += 1
						!horny = 0
						!orgasm += 1
						natlesb += 1
						!natknee
						gs'stat'

						'<center><img src="images/qwest/alter/ev2/natlick.jpg"></center>'
						'Вы заставили раздеться Наташку и раздевшись самостоятельно встали перед ее лицом. "А теперь вылизывай!". Наташа испуганно приступила к работе.'

						if natsub < 10:
							'Эта криворукая коза даже по клитору попасть не в состоянии и лишь вяло, без энтузиазма чавкает своим ртом по вашей киске.'

							if dom >= 20 and NatDolg >= 500:
								act 'Нассать ей в рот':
									cls
									minut += 5
									natsub += 1
									NatDolg -= 500
									natpee += 1
									!natknee
									gs'stat'

									'<center><img src="images/qwest/alter/ev2/natpee.jpg"></center>'
									'Вы разозлившись на эту сучку выпустили струю мочи в лицо Наташке. Та зажмурилась и наклонила лицо вниз, но не отпрянула и молча дотерпела экзекуцию до самого конца.'

									act 'Передохнуть':gt $curloc
								end
							end
						else
							orgasm += 1
							horny = 0
							gs'stat'

							'Наташка старательно обрабатывает вашу киску язычком и вы чувствуете как на вас накатывает оргазм.'
						end

						act 'Передохнуть':gt $curloc
					end
				end
			end

			if natsub >= 6:
				act 'Позвать брата':
					cls
					minut += 15
					natsub += 1
					NatDolg -= 500
					natbj += 1
					gs'stat'

					'<center><img src="images/qwest/alter/ev2/natbj.jpg"></center>'
					'Вы позвонили брату и тот быстро пришел в Наташкину квартиру. Коротко объяснив ситуацию брату вы сказали Наташке "А ты, сука, чтоб сейчас за щеку взяла и причмокивала, понятно?" Наташка перепугано кивнула головой и встала на колени ожидая когда Колька начнет трахать ее в рот. Колька подошел к Наташкиному лицу и достал свой стоячий член. Он немного похлопал багровой головкой по губам Наташки и та стала лизать его своим язычком.'

					act 'Передохнуть':gt $curloc
				end
			end
		end
	end
end

act 'Идти домой':gt'gorodok'
--- NatBelHome ---------------------------------

