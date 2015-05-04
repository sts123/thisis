# vokdin
$din_vokzalg_kassi = {
	cls
	gs'stat'

	'<center><H4>Кассы</H4></center>'
	'<center><img src="images/qwest/alter/kassa.jpg"></center>'
	'Билет в город стоит 200 рублей.'
	'Поезда дальнего следования проходят в 11:00-11:30 и 18:00-18:30'

	if money >= 200:
		act 'Купить билет до Центра (200 руб)':
			cls
			money -= 200
			minut += 15
			gs'stat'

			'<center><img src="images/pic/electri.jpg"></center>'
			'Вы заплатили за билет и сели в электричку идущую в Городок.'
			'Через 15 минут электричка остановилась на полустанке.'

			act 'Ехать дальше':
				cls
				minut += 15
				gs'stat'

				'<center><img src="images/pic/electri.jpg"></center>'
				'Через 15 минут электричка остановилась на полустанке.'

				act 'Ехать дальше':
					cls
					minut += 15
					gs'stat'

					'<center><img src="images/pic/electri.jpg"></center>'
					'Через 15 минут электричка остановилась на полустанке.'

					act 'Ехать дальше':
						cls
						minut += 15
						gs'stat'

						'<center><img src="images/pic/electri.jpg"></center>'
						'Через 15 минут электричка остановилась в Центре.'

						act 'Выйти':minut += 5 & nroad = 0 & gt'Vokzal'
					end
					act 'Выйти':minut += 5 & nroad = 5 & gt'road'
				end
				act 'Выйти':minut += 5 & nroad = 10 & gt'road'
			end
			act 'Выйти':minut += 5 & nroad = 15 & gt'road'
		end
	end

	act 'Уйти от касс':minut += 1 & gt'vokzalGin'
}

$din_vokzalg_kabinet = {
	cls
	gs'stat'

	'Вы подошли к кабинету начальника вокзала. Около кабинет висит объявление "Требуется уборщица. 2 часа работы в любое время, зарплата 250 рублей в день."'

	act 'Уйти':minut += 1 & gt'vokzalGin'

	if hour >= 8 and hour <= 16:
		act 'Войти в кабинет':
			cls
			gs'stat'

			'Вы постучали в дверь и вошли в кабинет начальника. Пожилой мужчина отвлекся от писанины и посмотрел на вас "По какому вопросу?"'

			act 'Уйти':minut += 1 & gt'vokzalGin'

			if vokzalVork = 0:
				act 'Устроиться уборщицей':
					cls
					vokzalVork = 1
					minut += 15
					gs'stat'

					'Вы сказали, что хотели бы устроится уборщицей. Начальник вокзала обрадовался, очевидно тому, что никто не хочет работать за такую мизерную зарплату. Он записал ваши данные и объяснил. Вам придется мыть полы на вокзале и чистить туалеты. Как все сделаете, так получите 250 рублей. Если что то не успеете, то не получите ничего. После этого вы вышли из его кабинета и он показал кладовку в котором хранится инвентарь.'

					act 'Уйти':minut += 1 & gt'vokzalGin'
				end
			end
		end
	end
}

$din_vokzalg_toilet_deyst = {
	if hapri = 0:
		act 'Причесаться':
			cla
			minut = minut + 3
			hapri = 1
			if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
			if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
		end
	end

	if mop = 1 and kosmetica > 0:
		act 'Нанести макияж':
			cla
			*clr

			'<center><img src="images/pic/mop.jpg"></center>'

			act 'Легкий макияж':
				cla
				minut = minut + 3
				kosmetica = kosmetica - 1
				mop = 2

				'Вы легонечко подвели глаза и немного подкрасили губы.'

				if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
				if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
			end

			if kosmetica >= 2:
				act 'Нормальный макияж':
					cla
					minut = minut + 5
					kosmetica = kosmetica - 2
					mop = 3

					'Вы накрасили губы, подвели глаза и наложили тени.'

					if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
					if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
				end
			end

			if kosmetica >= 3:
				act 'Вызывающий макияж':
					cla
					minut = minut + 10
					kosmetica = kosmetica - 3
					vidageday = vidageday - 1
					mop = 4

					'Вы густо накрасили глаза, наложили тени и тушь для ресниц, накрасили контур губ карандашом и губы помадой.'

					if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
					if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
				end
			end
		end
	end

	if cumpussy > 0 or cumbelly > 0 or cumass > 0 or cumanus > 0:
		act 'Подмыться 15 мин':
			cla
			*clr
			dynamic $showerdin
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pics/wash5.jpg"></center>'
			'Вы тщательно смыли сперму с себя.'

			if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
			if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
		end
	end

	if cumlip > 0 or cumface > 0:
		act 'Смыть сперму с лица 15 мин':
			cla
			*clr
			mop = 1
			cumlip = 0
			cumface = 0
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pic/facesp.jpg"></center>'
			'Вы тщательно смыли сперму с лица.'

			if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
			if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
		end
	end

	if cumfrot > 0:
		act 'Стереть сперму с одежды 15 мин':
			cla
			*clr
			cumfrot = 0
			sweat = sweat - 1
			minut = minut + 15

			'<center><img src="images/pic/frotsp.jpg"></center>'
			'Вы стерли следы спермы с одежды.'

			if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
			if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
		end
	end

	if tampon > 0 and mesec > 0 and isprok = 0:
		act 'Поменять тампон':
			cla
			*clr
			tampon = tampon - 1
			isprok = 1
			minut = minut + 5
			manna = manna - 5

			'<center><img src="images/pics/wash3.jpg"></center>'
			'Вы поменяли тампон.'

			if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
			if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
		end
	end

	if horny >= 90:
		act 'Мастурбировать':
			cls
			orgasm += 1
			mastr += 1
			horny = 0
			gs'stat'

			'<center><img src="images/qwest/alter/Ev/mastr.jpg"></center>'
			'Вы закрыли кабинку, сняли трусы и сели на унитаз.'
			'Ваши пальчики начали ласкать истекающую соком киску и вы начали тереть клитор.'
			'Вскоре приятные волны начали распространяться по всему телу и вас накрыл очень мощный оргазм.'

			if vokzalToilet = 1:act 'Закончить':dynamic $din_vokzalg_toilet_f
			if vokzalToilet = 2:act 'Закончить':dynamic $din_vokzalg_toilet_m
		end
	end
}

$din_vokzalg_toilet_f = {
	cls
	vokzalToilet = 1
	gs'stat'

	'<center><H4>Женский туалет</H4></center>'
	'<center><img src="images/pic/PublicToilet.jpg"></center>'
	'Вы открыли дверь в женский туалет и вошли туда.'

	act 'Уйти':minut += 1 & dynamic $din_vokzalg_toilet

	dynamic $din_vokzalg_toilet_deyst
}

$din_vokzalg_toilet_m = {
	cls
	vokzalToilet = 2
	gs'stat'

	'<center><H4>Мужской туалет</H4></center>'
	'<center><img src="images/pic/PublicToilet.jpg"></center>'
	'Вы открыли дверь в мужской туалет и вошли туда.'

	if cloth_vid = 1:
		act 'Стоять и ждать приключений':gt'vokBimbo','pos1'
		act 'Зайти в кабинку':gt'vokBimbo','pos5'
	end

	act 'Уйти':minut += 1 & dynamic $din_vokzalg_toilet

	dynamic $din_vokzalg_toilet_deyst
}

$din_vokzalg_toilet = {
	cls
	vokzalToilet = 0
	gs'stat'

	'<center><H4>Вокзал</H4></center>'
	'<center><img src="images/qwest/alter/vokzal.jpg"></center>'
	'Вы вошли в крыло вокзала где находиться <a href="exec:minut += 1 & dynamic $din_vokzalg_toilet_f">женский</a> и <a href="exec:minut += 1 & dynamic $din_vokzalg_toilet_m">мужской</a> туалет.'

	act 'Уйти':minut += 1 & gt'vokzalGin'
}

$din_vokazalg_podbros2 = {
	cls
	gs'stat'

	'Вы показали свои деньги мужчине и он сказал, что именно этой суммы и не хватает в его кошельке. Мужчина потребовал, что бы вы вернули деньги.'

	act 'Вернуть деньги':
		cls
		money = 0
		podbros = 1
		gs'stat'

		'<center><H4>Вокзал</H4></center>'
		'<center><img src="images/qwest/alter/vokzal.jpg"></center>'
		'Вы отдали свои деньги мужчине, что бы не затевать скандал и не быть привлеченной милицией, за воровство.'

		act 'Уйти':minut += 1 & gt'vokzalGin'
	end
}

$din_vokzalg_podbros = {
	cls
	gs'stat'

	'<center><H4>Вокзал</H4></center>'
	'<center><img src="images/qwest/alter/vokzal.jpg"></center>'
	'Вы наклоняетесь поднять кошелек и тут же какая то худенькая девушка наклоняется к кошельку. Вы успеваете первой поднять кошелек и девушка предлагает вам отойти в сторону и поделить деньги.'

	act 'Уйти с кошельком':
		cls
		gs'stat'

		'<center><H4>Вокзал</H4></center>'
		'<center><img src="images/qwest/alter/vokzal.jpg"></center>'
		'Вы взяли кошелек и пошли к выходу, девица начала громко вопить, что вы украли кошелек. К вам подошел мужчина потерявший кошелек и потребовал вернуть его. Вы отдали кошелек мужчине, он пересчитал деньги и заявил, что в кошельке не хватает крупной суммы денег. После чего он потребовал, что бы вы показали свои деньги ему.'

		act 'Показать деньги':dynamic $din_vokazalg_podbros2
	end

	act 'Отдать кошелек и уйти':minut += 1 & gt'vokzalGin'

	act 'Отойти в сторону и поделить деньги':
		cls
		gs'stat'

		'<center><H4>Вокзал</H4></center>'
		'<center><img src="images/qwest/alter/vokzal.jpg"></center>'
		'Вы отошли в сторону, вместе с девушкой и достали кошелек, что бы поделить деньги. Вы поделили деньги поровну и отдали половину девушке, сунув оставшиеся деньги в свой карман. В этот момент к вам подошел мужчина, потерявший кошелек. Он забрал кошелек из ваших рук. Он пересчитал деньги и заявил, что в кошельке не хватает крупной суммы денег. После чего он потребовал, что бы вы показали свои деньги ему.'

		act 'Показать деньги':dynamic $din_vokazalg_podbros2
	end
}
--- vokdin ---------------------------------

