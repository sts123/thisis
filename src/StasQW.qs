# StasQW
gs'stat'

if StasKafe = 2:
	'<center><img src="images/qwest/sosed/kafe2.jpg"></center>'
	'После танца Стас за руку отвел вас к столику и взяв вас за талию усадил к себе на колени. Он тут же начал вас целовать и вы почувствовали как его рука опять проникла вам под юбку начав ласкать ваш клитор. Стас зашептал вам в ушко "Пойдем к тебе или может развлечемся в туалете?"'

	act 'Пойдем ко мне!':
		cls
		gs'stat'

		'<center><img src="images/qwest/sosed/kafe2.jpg"></center>'
		'Стас широким жестом бросил деньги официантке, после чего встал со стула и подал вам руку. Оперевшись о его руку вы поднялись с насиженного места и вместе со Стасом вышли из кафе.'

		act 'Идти':
			cls
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/sosed/go.jpg"></center>'
			'Довольно не уверенным от выпитого шагом вы направились домой, Стас галантно подхватил вас под руку и повел вас до дома, вы показывали ему дорогу до дома. Наконец вы пришли к вашему дому, Стас проводил вас до квартиры и когда вы открыли дверь он буквально втащил вас в вашу квартиру.'

			act 'Далее':SStip = 0 & gt'StasSex'
		end
	end
elseif StasKafe = 1:
	'<center><img src="images/qwest/sosed/kafe.jpg"></center>'
	'После танца вы опять сели за стол, официантка принесла счет. Вы взглянули на цифру и слегка обалдели. Пять тысяч! Стас взял бумажку из ваших рук и сказал вам "Не парься, я заплачу."'

	if money >= 5000:
		act 'Нет спасибо, я сама заплачу':
			cls
			money -= 5000
			gs'stat'

			'<center><img src="images/qwest/sosed/kafe.jpg"></center>'
			'Вы достали деньги и расплатились с официанткой. Стас встал со своего места и подал вам руку. Оперевшись о его руку вы поднялись с насиженного места и вместе со Стасом вышли из кафе.'

			act 'Идти':
				cls
				minut += 5
				gs'stat'

				'<center><img src="images/qwest/sosed/go.jpg"></center>'
				'Довольно не уверенным от выпитого шагом вы направились домой, Стас галантно подхватил вас под руку и повел вас до дома, вы показывали ему дорогу до дома. Наконец вы пришли к вашему дому, Стас проводил вас до квартиры и явно ожидает, что вы его пригласите.'

				act 'Пригласить к себе':SStip = 0 & gt'StasSex'
				act 'Попрощаться':
					cls
					gs'stat'

					'Вы попрощались со Стасом и тот грустно вздохнул и пошел вниз.'

					act 'Закрыть дверь':gt'korr'
				end
			end
		end
	end
	act 'Ой это так мило!':
		cls
		gs'stat'

		'<center><img src="images/qwest/sosed/kafe.jpg"></center>'
		'Вы обрадовались, что не придется платить за кафе и Стас широким жестом бросил деньги официантке, после чего встал со стула и подал вам руку. Оперевшись о его руку вы поднялись с насиженного места и вместе со Стасом вышли из кафе.'

		act 'Идти':
			cls
			minut += 5
			gs'stat'

			'<center><img src="images/qwest/sosed/go.jpg"></center>'
			'Довольно не уверенным от выпитого шагом вы направились домой, Стас галантно подхватил вас под руку и повел вас до дома, вы показывали ему дорогу до дома. Наконец вы пришли к вашему дому, Стас проводил вас до квартиры и явно ожидает, что вы его пригласите. Вы помялись на пороге, думая как бы отшить Стаса, но глядя на него вы чувствуете себя обязанной ему, он нашел вам работу, он раскошелился за кафе, хотя это была ваша обязанность и выставить его за порог вы просто не можете.'

			act 'Пригласить к себе':SStip = 0 & gt'StasSex'
		end
	end
elseif StasKafe = 0:
	'<center><b><font color = maroon>Кафе</font></b></center>'
	'<center><img src="images/pic/kafe.jpg"></center>'
	'Вы сели на стул и Стас хозяйским жестом подозвал официантку. Когда подошла официантка он заказал шампанского и фруктов. Заказ быстро принесли и Стас разлил шампанское по бокалам. "Давай за знакомство."'

	act 'Выпить за знакомство':
		cls
		minut += 5
		horny += 5
		gs'stat'

		'<center><img src="images/qwest/sosed/kafe.jpg"></center>'
		'Вы выпили шампанского и Стас начал рассказывать веселые истории подливая шампанского в бокалы.'

		act 'Выпивать и болтать':
			cls
			minut += 60
			horny += 15
			water = 24
			energy = 24
			salo += 2
			fat += 20
			gs'stat'

			'<center><img src="images/qwest/sosed/kafe.jpg"></center>'
			'Вы расслабились и попивая шампанское слушали байки которыми вас потчевал Стас. За болтовней, вы даже не заметили как Стас заказал еще бутылку и еще. Наконец вы поняли, что уже прилично набрались. Тут в кафе заиграла музыка и Стас встав со своего стула галантно протянул вам руку предлагая потанцевать.'

			act 'Танцевать':
				cls
				minut += 1
				horny += 10
				gs'stat'

				'<center><img src="images/qwest/sosed/dance.jpg"></center>'
				'Вы вышли на танцпол и Стас крепко обнял вас и вы начали танцевать. Его руки во время танца плавно сползли с талии вам на бедра и начали гладить их. Вы почувствовали как ладонь Стаса сжала вашу мягкую попу.'

				if horny < 100:
					act 'Поднять его руки выше':
						cls
						minut += 1
						horny += 10
						gs'stat'

						'<center><img src="images/qwest/sosed/dance.jpg"></center>'
						'Вы взяли руки Стаса и подняли их опять себе на талию. Стас только шире заулыбался и опять его руки начали сползать вам на попу.'

						if horny < 100:
							act 'Опять поднять его руки выше':
								cls
								minut += 1
								horny += 10
								gs'stat'

								'<center><img src="images/qwest/sosed/dance.jpg"></center>'
								'Вы опять взяли руки Стаса и подняли их себе на талию. Стаса видимо от этого только охватил азарт и он начал нежно поглаживая вашу спину плавно спускаться вам руками на попку. Наконец танец закончился.'

								act 'Сесть за стол':StasKafe = 1 & gt $curloc
							end
						end

						act 'Танцевать':
							cls
							minut += 1
							horny += 20
							gs'stat'

							'<center><img src="images/qwest/sosed/dance2.jpg"></center>'
							'Вы продолжили танцевать и распаленный Стас стал засовывать вам руки под юбку. Вскоре Стас нащупал ваши трусики и запустил туда руку. Вас охватило возбуждение когда Стас нащупал ваш маленький бугорок клитора и стал его ласкать. Внезапно танец закончился, но Стас явно не собирался садится за стол обратно'

							act 'Сесть за стол':StasKafe = 2 & gt $curloc
						end
					end
				end

				act 'Танцевать':
					cls
					minut += 1
					horny += 20
					gs'stat'

					'<center><img src="images/qwest/sosed/dance2.jpg"></center>'
					'Вы продолжили танцевать и распаленный Стас стал засовывать вам руки под юбку. Вскоре Стас нащупал ваши трусики и запустил туда руку. Вас охватило возбуждение когда Стас нащупал ваш маленький бугорок клитора и стал его ласкать.'

					if horny < 100:
						act 'Поднять его руки выше':
							cls
							minut += 1
							horny += 10
							gs'stat'

							'<center><img src="images/qwest/sosed/dance.jpg"></center>'
							'Вы опять взяли руки Стаса и подняли их себе на талию. Стаса видимо от этого только охватил азарт и он начал нежно поглаживая вашу спину плавно спускаться вам руками на попку. Наконец танец закончился.'

							act 'Сесть за стол':StasKafe = 2 & gt $curloc
						end
					end

					act 'Танцевать':
						cls
						minut += 1
						horny += 20
						gs'stat'

						'<center><img src="images/qwest/sosed/dance2.jpg"></center>'
						'Вы продолжили танцевать и распаленный Стас стал засовывать вам руки под юбку. Вскоре Стас нащупал ваши трусики и запустил туда руку. Вас охватило возбуждение когда Стас нащупал ваш маленький бугорок клитора и стал его ласкать. Внезапно танец закончился, но Стас явно не собирался садится за стол обратно'

						act 'Сесть за стол':StasKafe = 2 & gt $curloc
					end
				end
			end
		end
	end
end
--- StasQW ---------------------------------
