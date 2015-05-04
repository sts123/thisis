# selfplay
$d_self_ass_fingering = {

}

$d_self_fingering = {
	act 'Засунуть пальчик во влагалище':
		cls
		minut += 2
		selfplaytime += 2

		'<center><img src="images/qwest/selfplay/finger.jpg"></center>'

		if vagina = 0 and mesec <= 0:
			'Вы поласкали пальчиками губки на своей мягкой и влажной киске и начали постепенно вводить себе палец в киску, но вы уткнулись в упругую преграду своей девственной плевы.'

			act 'Проткнуть плеву':
				cls
				horny -= 25
				vagina += 1
				minut += 5
				selfplaytime += 5
				manna -= 100
				gs'stat'

				'<center><img src="images/qwest/selfplay/finger.jpg"></center>'
				'Вы засунули себе палец в киску и с силой надавили на плеву, она немного прогнулась внутрь вашего тела и вдруг прорвалась и ваш палец вошел внутрь полностью. Внутри киски стало немного больно, вы достали из себя палец и увидели, что он в крови.'

				act 'Передохнуть':gt $curloc
			end
		elseif vagina > 0:
			'Вы ввели себе палец во влагалище и затем еще один.'

			if vagina < 5:
				horny += RAND(2,5)

				'Скользкие стенки вашей киски очень плотно обхватили пальчики.'
			elseif vagina >= 5 and vagina < 10:
				horny += RAND(5,10)

				'Вы чувствуете скользкие стенки вашей киски вокруг ваших пальчиков.'
			elseif vagina >= 10:
				horny += RAND(2,5)

				'Ваша киска довольно просторна для пары пальцев и вы двигая пальцами чувствуете скользкие стенки вашей киски.'
			elseif vagina < 5:
				vaginaTemp += 1
			end

			act 'Трахать себя пальцами':
				cls
				minut += 5
				selfplaytime += 5
				if vagina <= 10:horny += RAND(5,10)
				if vagina > 10:horny += RAND(2,5)

				'<center><img src="images/qwest/selfplay/finger.jpg"></center>'
				'Вы начали трахать свою киску пальчиками вводя их себе в лоно и двигая ими.'
				if vagina <= 10:'Ваша киска нежно обхватывает ваши пальчики и вы чувствуете приятно тепло разливающееся внизу живота.'
				if vagina > 10:'Вагина довольно просторная и вам приходится довольно сильно потрудиться, что бы хоть что то ощущать от своих пальцев.'

				gs'stat'
				if vagina < 10:vaginaTemp += 1

				if horny >= 100:
					orgasm += 1
					horny = 0
					manna = mannamax

					'Внезапно вас будто бы ударило током и внизу живота начались приятные спазмы, вы извиваетесь закусив губу, что бы не закричать от удовольствия.'
				end

				if horny > 0:dynamic $d_self_fingering2

				act 'Передохнуть':gt $curloc
			end
		elseif mesec > 0:
			manna -= 5

			'Вход во влагалище немного покрыт засохшей кровью от ваших месячных. Вы попробовали засунуть в себя палец, но вам тут же стало не приятно.'
		end

		gs'stat'

		act 'Передохнуть':gt $curloc
	end
}

$d_self_fingering2 = {
	act 'Засунуть ладонь во влагалище':
		cls
		minut += 2
		selfplaytime += 2

		'<center><img src="images/qwest/selfplay/hand.jpg"></center>'

		if vagina > 0:
			'Вы ввели себе всю ладонь во влагалище.'

			if vagina < 10:
				if vgape = 2:vgape = 3
				if vgape = 1:vgape = 2
				if vgape = 0:vgape = 1
				vgapetime = totminut
				horny -= 10
				manna -= 10

				'Вы засунули все пальцы в киску и вам тут же стало очень больно.'
			elseif vagina >= 10 and vagina < 15:
				horny += RAND(1,3)

				'Вы засунули все пальцы в вашу киску и почувствовали как ваше влагалище очень туго обхватывает пальцы, кажется еще чуть чуть и у вас что нибудь порвется.'
			elseif vagina >= 15 and vagina < 20:
				horny += RAND(3,6)

				'Вы засунули все пальцы в вашу киску и почувствовали как ваше влагалище туго обхватывает пальцы своими горячими и влажными стенками.'
			elseif vagina >= 20:
				horny += RAND(6,12)

				'Вы засунули все пальцы в вашу киску и почувствовали как ваше влагалище обхватывает пальцы своими горячими и влажными стенками. Вас охватывает приятное ощущение наполненности.'
			elseif vagina < 15:
				vaginaTemp += 1
			end

			act 'Трахать себя ладонью':
				cls
				minut += 5
				selfplaytime += 5

				if vagina < 10:
					if vgape = 2:vgape = 3
					if vgape = 1:vgape = 2
					if vgape = 0:vgape = 1
					vgapetime = totminut
					horny -= 10
					manna -= 10
				end

				'<center><img src="images/qwest/selfplay/hand.jpg"></center>'
				'Вы начали трахать свою киску пальчиками вводя их себе в лоно и двигая ими.'

				if vagina <= 15:horny -= 10 & manna -= 10 & 'Вам больно когда вы пытаетесь трахать свою киску всей ладонью.'
				if vagina > 10:horny += RAND(10,20) & 'Вагина довольно просторная и вам приходится довольно сильно потрудиться, что бы хоть что то ощущать от своих пальцев.'

				gs'stat'
				if vagina < 20:vaginaTemp += 1

				if horny >= 100:
					orgasm += 1
					horny = 0
					manna = mannamax

					'Внезапно вас будто бы ударило током и внизу живота начались приятные спазмы, вы извиваетесь закусив губу, что бы не закричать от удовольствия.'
				end

				dynamic $d_self_fingering2

				act 'Передохнуть':gt $curloc
			end
		end

		gs'stat'

		act 'Передохнуть':gt $curloc
	end
}

$d_van_vtor = {
	if indorf = 0:
		cls
		horny -= 50
		manna -= 10
		gs'stat'

		'В ванную стучат "Света! Ты что, утонула что ли? Выходи из ванной!"'

		act 'Выйти из ванной':
			analplay = 0
			selfplaytime = 0
			mastrOnce = 0
			proverkasisterhere = 0
			if vaginaTemp > vagina*2:vagina += 1 & vaginaTemp = 0
			gt $loc, $metka
		end

		exit
	end
}

!if $loc = 'vanrPar' and selfplaytime >= 60:dynamic $d_van_vtor
!dynamic $d_sis_prov

$d_sis_prov = {
	if sister_indorf = 0:
		if $loc = 'bedrPar':
			gs'family'
			if sisterHere = 0 and proverkasisterhere = 0:proverkasisterhere = 1
			if sisterHere > 0 and proverkasisterhere = 2:gt $curloc
		end
	end
}

if mastrOnce = 0:mastr += 1 & mastrOnce = 1
gs'stat'

if $loc = 'bedrPar' or $loc = 'Gadsarai':'<center><img src="images/qwest/selfplay/start.jpg"></center>'
if $loc = 'vanrPar':'<center><img src="images/qwest/selfplay/startvann.jpg"></center>'

!тут расчет вторжения
if $loc = 'vanrPar':
	if selfplaytime >= 60:
	end
end
if $loc = 'bedrPar':
	gs'family'

	if sister_indorf = 0:
		if sisterHere = 0 and proverkasisterhere = 0:proverkasisterhere = 1
		if sisterHere > 0:
			cls
			gs'stat'

			!if $loc = 'bedrPar':'<center><img src="images/qwest/selfplay/start.jpg"></center>'

			if $loc = 'vanrPar':
				'<center><img src="images/qwest/selfplay/startvann.jpg"></center>'
			else
				'<center><img src="images/qwest/selfplay/start.jpg"></center>'
			end

			if proverkasisterhere = 2:
				SisterKnowMastr = 1

				'<font color = red><b>Аня увидела, что вы мастурбируете.</b></font>'
			end

			if proverkasisterhere = 1:
				proverkasisterhere = 2

				'<font color = red><b>Вы слышите шаги приближающиеся к вашей комнате.</b></font>'
			end
		end
	end
end

if dildo = 1:'У вас есть маленький дилдо длинной 10 см.'
if middildo = 1:'У вас есть дилдо длинной 15 см.'
if largedildo = 1:'У вас есть дилдо длинной 20 см.'
if bigdildo = 1:'У вас есть дилдо длинной 25 см.'
if extradildo = 1:'У вас есть дилдо длинной 30 см.'
if superdildo = 1:'У вас есть дилдо длинной 35 см.'
if maddildo = 1:'У вас есть дилдо длинной 40 см.'

if horny > 0:
	act 'Ласкать клитор':
		cls
		minut += 5
		selfplaytime += 5

		!if $loc = 'bedrPar':'<center><img src="images/qwest/selfplay/klit.jpg"></center>'

		if $loc = 'vanrPar':
			'<center><img src="images/qwest/selfplay/klitvann.jpg"></center>'
		else
			'<center><img src="images/qwest/selfplay/klit.jpg"></center>'
		end

		if manna >= mannamax/2:
			horny += RAND(5,10)

			'Вы опустили руку себе между ног и нащупали в складках своей мягкой и влажной киски маленький бугорок прикосновения к которому очень приятны, вы начали ласкать пальчиками этот бугорок и наслаждаться чувством приятного тепла охватывающего вас между ног.'
		elseif manna < mannamax/2:
			horny += RAND(0,1)

			'Вы ласкаете пальчиками клитор, вам хорошо и приятно, но ваше плохое настроение сказывается, вы никак не можете отвлечься от своих размышлений и у вас не получается возбудиться.'
		end

		if horny >= 100:
			orgasm += 1
			horny = 0
			manna = mannamax

			'Внезапно вас будто бы ударило током и внизу живота начались приятные спазмы, вы извиваетесь закусив губу, что бы не закричать от удовольствия.'
		end

		gs'stat'

		act 'Передохнуть':gt $curloc

		if horny > 0:dynamic $d_self_fingering
	end
end

if horny > 0 and agape < 3:
	act 'Засунуть палец в попу':
		cls
		minut += 5
		selfplaytime += 5

		!if $loc = 'bedrPar':'<center><img src="images/qwest/selfplay/klit.jpg"></center>'
		!if $loc = 'vanrPar':'<center><img src="images/qwest/selfplay/klitvann.jpg"></center>'
		'<center><img src="images/qwest/selfplay/1.jpg"></center>'

		if anus >= 3:
			'Вы засунули пальчик в свою попу и он свободно проскользнул в ваш анус.'
		elseif anus >= 1 and anus < 3:
			anus += 1

			'Вы засунули пальчик в свою попу и почувствовали как анус туго обхватил ваш палец.'
		elseif anus = 0:
			anus = 1

			'Вы засунули пальчик в свою девственную попу и почувствовали как анус туго обхватил ваш палец.'
		end

		if $loc = 'vanrPar' and selfplaytime >= 60:dynamic $d_van_vtor

		dynamic $d_sis_prov

		gs'stat'

		act 'Передохнуть':gt $curloc
		act 'Засунуть два пальца':
			cls
			minut += 5
			selfplaytime += 5

			'<center><img src="images/qwest/selfplay/2.jpg"></center>'

			if anus >= 5:
				'Вы спокойно засунули два пальчика в вашу попку.'

				if agape > 0:
					if agape = 2:agape = 3
					if agape = 1:agape = 2
					agapetime = totminut
					horny -= 50
					if anus > 1:anus -= 1

					'У вас уже болит попа и засунув два пальчика вы еще сильнее ее повредили.'
				end
			elseif anus >= 3 and anus < 5:
				analplay += 1

				'Вы засунули два пальчика в свою попу и ваш анус туго обхватил их.'

				if agape > 0:
					if agape = 2:agape = 3
					if agape = 1:agape = 2
					agapetime = totminut
					horny -= 50
					anus += 1

					'У вас уже болит попа и засунув два пальчика вы еще сильнее ее повредили.'
				end
			elseif anus >= 1 and anus < 3:
				anus += 1
				if agape = 2:agape = 3
				if agape = 1:agape = 2
				if agape = 0:agape = 1
				horny -= 50
				agapetime = totminut

				'Вы засунули два пальца в свою попу и почувствовали резкую боль в вашем анусе.'
			end

			gs'stat'

			act 'Передохнуть':gt $curloc

			if $loc = 'vanrPar' and selfplaytime >= 60:dynamic $d_van_vtor

			dynamic $d_sis_prov

			if horny > 0 and agape < 3:
				act 'Засунуть три пальца':
					cls
					minut += 5
					selfplaytime += 5

					'<center><img src="images/qwest/selfplay/3.jpg"></center>'

					if anus >= 10:
						'Вы спокойно засунули три пальчика в вашу попку.'

						if agape > 0:
							if agape = 2:agape = 3
							if agape = 1:agape = 2
							agapetime = totminut
							horny -= 50
							if anus > 1:anus += 1

							'У вас уже болит попа и засунув три пальчика вы еще сильнее ее повредили.'
						end
					elseif anus >= 5 and anus < 10:
						analplay += 1

						'Вы засунули три пальчика в свою попу и ваш анус туго обхватил их.'

						if agape > 0:
							if agape = 2:agape = 3
							if agape = 1:agape = 2
							agapetime = totminut
							horny -= 50
							anus += 1

							'У вас уже болит попа и засунув три пальчика вы еще сильнее ее повредили.'
						end
					elseif anus < 5:
						anus += 1
						if agape = 2:agape = 3
						if agape = 1:agape = 2
						if agape = 0:agape = 1
						horny -= 50
						agapetime = totminut

						'Вы засунули три пальца в свою попу и почувствовали резкую боль в вашем анусе.'
					end

					act 'Передохнуть':gt $curloc

					if $loc = 'vanrPar' and selfplaytime >= 60:dynamic $d_van_vtor

					dynamic $d_sis_prov

					gs'stat'

					if horny > 0 and agape < 3:
						act 'Засунуть четыре пальца':
							cls
							minut += 5
							selfplaytime += 5

							'<center><img src="images/qwest/selfplay/4.jpg"></center>'

							if anus >= 15:
								'Вы спокойно засунули ладонь в вашу попку.'

								if agape > 0:
									if agape = 2:agape = 3
									if agape = 1:agape = 2
									agapetime = totminut
									horny -= 50
									if anus > 1:anus -= 1

									'У вас уже болит попа и засунув четыре пальчика вы еще сильнее ее повредили.'
								end
							elseif anus >= 10 and anus < 15:
								analplay += 1

								'Вы засунули ладонь в свою попу и ваш анус туго обхватил их.'

								if agape > 0:
									if agape = 2:agape = 3
									if agape = 1:agape = 2
									agapetime = totminut
									horny -= 50
									anus += 1

									'У вас уже болит попа и засунув ладонь вы еще сильнее ее повредили.'
								end
							elseif anus < 10:
								anus += 1
								if agape = 2:agape = 3
								if agape = 1:agape = 2
								if agape = 0:agape = 1
								horny -= 50
								agapetime = totminut

								'Вы засунули ладонь в свою попу и почувствовали резкую боль в вашем анусе.'
							end

							act 'Передохнуть':gt $curloc

							if $loc = 'vanrPar' and selfplaytime >= 60:dynamic $d_van_vtor

							dynamic $d_sis_prov

							gs'stat'

							if horny > 0 and agape < 3:
								act 'Засунуть всю руку':
									cls
									SelfFisting += 1
									minut += 5
									selfplaytime += 5

									'<center><img src="images/qwest/selfplay/5.jpg"></center>'

									if anus >= 20:
										'Вы спокойно засунули руку в вашу попку.'

										if agape > 0:
											if agape = 2:agape = 3
											if agape = 1:agape = 2
											agapetime = totminut
											horny -= 50
											if anus > 1:anus -= 1

											'У вас уже болит попа и засунув руку вы еще сильнее ее повредили.'
										end
									elseif anus >= 15 and anus < 20:
										analplay += 1

										'Вы засунули руку в свою попу и ваш анус туго обхватил их.'

										if agape > 0:
											if agape = 2:agape = 3
											if agape = 1:agape = 2
											agapetime = totminut
											horny -= 50
											anus += 1

											'У вас уже болит попа и засунув руку вы еще сильнее ее повредили.'
										end
									elseif anus < 15:
										anus += 1
										if agape = 2:agape = 3
										if agape = 1:agape = 2
										if agape = 0:agape = 1
										horny -= 50
										agapetime = totminut

										'Вы засунули руку в свою попу и почувствовали резкую боль в вашем анусе.'
									end

									act 'Передохнуть':gt $curloc

									if $loc = 'vanrPar' and selfplaytime >= 60:dynamic $d_van_vtor

									dynamic $d_sis_prov

									gs'stat'
								end
							end
						end
					end
				end
			end
		end
	end
end

if horny > 10:
	if dildo >= 1 or middildo = 1 or largedildo = 1 or bigdildo = 1 or extradildo = 1 or superdildo = 1 or maddildo = 1:
		if dildohand > 0:
			'У вас в руках <<dildohand>>ти сантиметровый дилдо'

			if vgape <= 0:
				act 'Дилдо в киску':
					cls
					minut += 15
					selfplaytime += 15
					dick = dildohand

					!if $loc = 'bedrPar':'<center><img src="images/qwest/selfplay/dildo.jpg"></center>'

					if $loc = 'vanrPar':
						'<center><img src="images/qwest/selfplay/dildovann.jpg"></center>'
					else
						'<center><img src="images/qwest/selfplay/dildo.jpg"></center>'
					end

					dynamic $d_vag_sex_dildo

					gs'stat'

					act 'Передохнуть':gt $curloc
				end
			end

			if agape <= 0:
				act 'Дилдо в попу':
					cls
					minut += 15
					selfplaytime += 15
					dick = dildohand

					!if $loc = 'bedrPar':'<center><img src="images/qwest/selfplay/dildoanal.jpg"></center>'

					if $loc = 'vanrPar':
						'<center><img src="images/qwest/selfplay/dildovann.jpg"></center>'
					else
						'<center><img src="images/qwest/selfplay/dildoanal.jpg"></center>'
					end

					dynamic $d_analsex_dildo

					gs'stat'

					act 'Передохнуть':gt $curloc
				end
			end

			act 'Положить дилдо на место':dildohand = 0 & gt $curloc
		elseif dildohand = 0:
			'У вас нет дилдо в руках'

			if dildo = 1:
				act 'Взять 10ти сантиметровый дилдо':dildohand = 10 & gt $curloc
			end
			if middildo = 1:
				act 'Взять 15ти сантиметровый дилдо':dildohand = 15 & gt $curloc
			end
			if largedildo = 1:
				act 'Взять 20ти сантиметровый дилдо':dildohand = 20 & gt $curloc
			end
			if bigdildo = 1:
				act 'Взять 25ти сантиметровый дилдо':dildohand = 25 & gt $curloc
			end
			if extradildo = 1:
				act 'Взять 30ти сантиметровый дилдо':dildohand = 30 & gt $curloc
			end
			if superdildo = 1:
				act 'Взять 35ти сантиметровый дилдо':dildohand = 35 & gt $curloc
			end
			if maddildo = 1:
				act 'Взять 40ти сантиметровый дилдо':dildohand = 40 & gt $curloc
			end
		end
	end
end

if horny > 0:dynamic $d_self_fingering

act 'Отказаться от этой затеи':
	analplay = 0
	selfplaytime = 0
	mastrOnce = 0
	proverkasisterhere = 0
	if vaginaTemp > vagina*2:vagina += 1 & vaginaTemp = 0
	gt $loc, $metka
end

if $loc = 'vanrPar' and selfplaytime >= 60:dynamic $d_van_vtor

if $loc = 'Gadsarai':
	piratHorny += 1

	'Пес по кличке пират с любопытством смотрит на то, что вы делаете.'
end
--- selfplay ---------------------------------

