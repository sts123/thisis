# shop
if $ARGS[0] = 'start':
	$icecreem = {
		if hour >= 8 and hour <= 20:
			cls
			minut += 3

			'Мороженное предлагают за 50 рублей.'

			act 'Выйти из отдела':gt'shop','start'

			if money >= 50:
				act 'Купить мороженное':
					cls
					money -= 50
					salo += 1
					fat += 50
					manna += 500
					water = 20
					energy = 20
					perkice += 1
					gs'stat'
					!icecreem

					'<center><img src="images/pic/icecreem.jpg"></center>'
					'Вы купили мороженное и съели его не отходя далеко.'

					act 'Выйти из отдела':gt'shop','start'
				end
			end
		else
			'Прилавок с мороженным закрыт'
		end
	}

	$sofood = {
		if hour >= 8 and hour <= 20:
			minut += 3
			gt'shop','food'
		else
			'Отдел закрыт'
		end
	}

	$socosm = {
		if hour >= 8 and hour <= 20:
			minut += 3
			gt'shop','cosm'
		else
			'Отдел закрыт'
		end
	}

	$sohos = {
		if hour >= 8 and hour <= 20:
			minut += 3
			gt'shop','hos'
		else
			'Отдел закрыт'
		end
	}

	$soclo = {
		if hour >= 8 and hour <= 20:
			minut += 3
			gt'shop','clo'
		else
			'Отдел закрыт'
		end
	}

	$soteh = {
		if hour >= 8 and hour <= 20:
			minut += 3
			gt'shop','teh'
		else
			'Отдел закрыт'
		end
	}

	$sobank = {
		if hour >= 8 and hour <= 20:
			if karta > 0:
				act 'Снять деньги со счета':
					cla
					minut = minut + 5

					kartaOUT = input ("Сколько денег вы хотите снять со счета?")
					if kartaOUT <= 0 or kartaOUT > karta:
						'Некорректная операция.'
					else
						karta = karta - kartaOUT
						money = money + kartaOUT

						'Вы сняли со счета <<kartaOUT>> рублей, теперь на вашем счету <<karta>> рублей.'
					end

					act 'Отойти':gt'shop','start'
				end
			else
				'У вас нет банковской карточки'
			end
		else
			'Банкомат отключен'
		end
	}

	cla
	*clr
	minut = minut + 1
	clr
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Супермаркет</font></b></center>'
	'<center><img src="images/pic/shop.jpg"></center>'
	'В холле стоит <a href="exec: dynamic $sobank ">банкомат</a>, с которого можно снять деньги если конечно они у вас есть на счету в банке.'
	'Самое большое место в супермаркете занимает <a href="exec: dynamic $sofood ">продуктовый отдел</a>, но в магазине есть еще отделы <a href="exec: dynamic $socosm ">косметики</a>, <a href="exec: dynamic $sohos ">хозяйственный</a>, <a href="exec: dynamic $soclo ">одежды</a>, и отдел <a href="exec: dynamic $soteh ">бытовой техники</a>. Не далеко от входа стоит <a href="exec: dynamic $icecreem ">прилавок с мороженным</a>'

	if $loc = 'gorodok':
		if week < 6:
			if hour >= 8 and hour < 16:
				'Ваша сестра <a href="exec:SiSonWork = 1 & GT ''sister''">Аня</a> сидит на кассе.'
			end
		end
	end

	if $loc = 'street':
		evrand = RAND(1,100)
		if evrand >= 95 and dimaQW = 0:
			'В холле магазина на вас оценивающе смотрит какой то мужчина.'

			act 'Смотреть на него':gt'event','dima'
		elseif evrand >= 95 and dimaQW = 1:
			'В холле магазина вы замечаете Диму и вас сковывает страх, вы не можете пошевелиться.'

			act 'Смотреть на него':gt'event','scoreslut1'
		elseif evrand >= 95 and dimaQW = 2:
			'Вам встретился тот самый Дима который с дружком развлекался трахая вас. Дима с самоуверенной усмешкой подошел к вам и поздоровался.'

			act 'Поздороваться':
				cla
				'Пойдем ко мне, у меня жены дома нет сказал Дима.'

				act 'Нет':gt'shop','start'
				act 'Пойдем':
					cla
					*clr

					gostrand = RAND(1,2)
					if gostrand = 1:
						cla
						sex = sex + 1
						oral = oral + 1
						throat = throat + 1
						cumlip = cumlip + 1
						swallow = swallow+1
						horny = 0

						'Дима отвел вас к себе домой и там приказал вам встать на колени. Вы встали на колени и он называя вас сучкой и хуесоской стал трахать вас в рот.'
						'<center><img src="images/pics/gostDT2.jpg"></center>'
						'Наконец то Дима кончил вам в рот, вы все послушно проглотили и слизали остатки спермы с его большого члена.'

						act 'Идти домой':gt'street'
					elseif gostrand = 2:
						cla
						sex = sex + 1
						anal = anal + 1
						cumass = cumass + 1
						spank = spank+1
						boom = 5
						horny = 0

						'Дима привел вас к себе домой и прямо в коридоре начал вас целовать и раздевать. После того как он раздел вас он отвел вас в ванную. Там он усадил вас в ванную и открутив лейку душа вставил шланг с водой вам в зад. Быстро возникло чувство наполненности и Дима посадил вас на унитаз. После клизмы он поставил вас раком и вставил вам в анус свой большой член.'
						'<center><img src="images/pics/gostAnal2.jpg"></center>'
						'Дима долго вас трахал и бил по заднице ладонями, вам сначала было больно, но постепенно вы вошли во вкус и начали ловить кайф, наконец ваша попка наполнилась горячей жидкостью и Дима застонав схватил ваши ягодицы.'

						act 'Идти домой':gt'street'
					end
				end
			end
		end
	end

	if hour >= 8 and hour <= 20:
		'В магазине толпы покупателей.'

		if TorgPredZ > 0:
			if $loc = 'street':
				if StreetShopTPday ! day:
					act 'Расставлять продукцию':
						cls
						mtprand = RAND(40,130)
						minut += mtprand
						TorgPredZ -= 1
						TorgPredZV += 1
						StreetShopTPday = day
						gs'stat'

						'<center><img src="images/pic/shop.jpg"></center>'
						'Вы расставляли продукцию довольно долгое время и когда наконец справились, то пошли на кассу и вам там пробили чек.'

						act 'Выйти':gt'shop','start'
					end
				end
			elseif $loc = 'Nord':
				if nordShopTPday ! day:
					act 'Расставлять продукцию':
						cls
						mtprand = RAND(40,130)
						minut += mtprand
						TorgPredZ -= 1
						TorgPredZV += 1
						nordShopTPday = day
						gs'stat'

						'<center><img src="images/pic/shop.jpg"></center>'
						'Вы расставляли продукцию довольно долгое время и когда наконец справились, то пошли на кассу и вам там пробили чек.'

						act 'Выйти':gt'shop','start'
					end
				end
			elseif $loc = 'down':
				if downShopTPday ! day:
					act 'Расставлять продукцию':
						cls
						mtprand = RAND(40,130)
						minut += mtprand
						TorgPredZ -= 1
						TorgPredZV += 1
						downShopTPday = day
						gs'stat'

						'<center><img src="images/pic/shop.jpg"></center>'
						'Вы расставляли продукцию довольно долгое время и когда наконец справились, то пошли на кассу и вам там пробили чек.'

						act 'Выйти':gt'shop','start'
					end
				end
			end
		end
	else
		'Магазин закрыт.'
	end

	act 'Выйти из Магазина':gt $loc
end

if $ARGS[0] = 'food':
	$buyfood = {
		if hour >= 8 and hour <= 20:
			if money >= 50:
				cla
				*clr
				minut = minut + 15

				portion = input ("Сколько порций вы хотите купить?")
				if portion <= 0:portion = 1
				if portion*50 > money:
					'У вас не хватает денег.'
				elseif portion*50 <= money:
					eda = eda + portion
					money = money - portion*50

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили еду и заплатили деньги в кассу.'
				end

				act 'Отойти от прилавка':gt'shop','food'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buyfood2 = {
		if hour >= 8 and hour <= 20:
			if money >= 250:
				cla
				*clr
				minut = minut + 15

				portion = input ("Сколько порций вы хотите купить?")
				if portion <= 0:portion = 1
				if portion*250 > money:
					'У вас не хватает денег.'
				elseif portion*250 <= money:
					edaD = edaD + portion
					money = money - portion*250
					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили еду и заплатили деньги в кассу.'
				end

				act 'Отойти от прилавка':gt'shop','food'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	cla
	clr
	*clr
	minut = minut + 1
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Продуктовый отдел</font></b></center>'
	'<center><img src="images/pic/shop1.jpg"></center>'
	'<a href="exec: dynamic $buyfood ">Одна порция еды - 50 руб</a>'
	'<a href="exec: dynamic $buyfood2 ">Одна порция диетической еды - 250 руб</a>'

	act 'Выйти из отдела':gt'shop','start'

	if money >= 300:
		act 'Купить печенье к чаю (300 р)':
			cls
			money -= 300
			pranik += 10

			'Вы купили кулек печенья которого хватит вам раз на десять.'

			act 'Выйти из отдела':gt'shop','food'
		end
	end

	if bag > 0:
		if money >= 50 and bottle = 0:
			act 'Купить бутылочку воды (50 р)':
				cls
				money -= 50
				bottle += 1

				'Вы купили бутылочку воды и положили ее в свою сумочку.'

				act 'Выйти из отдела':gt'shop','food'
			end
		end

		if money >= 100 and buterbrod = 0:
			act 'Купить бутерброд (100 р)':
				cls
				money -= 100
				buterbrod += 1

				'Вы купили бутерброд и положили его в свою сумочку.'

				act 'Выйти из отдела':gt'shop','food'
			end
		end

		if money >= 500 and wine = 0:
			act 'Купить бутылку вина (500 р)':
				cls
				money -= 500
				wine += 1

				'Вы купили бутылку вина и положили ее в свою сумочку.'

				act 'Выйти из отдела':gt'shop','food'
			end
		end
	end
end

if $ARGS[0] = 'cosm':
	$buykosm = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*1000 > money:'У вас не хватает денег.'
			if portion*1000 <= money:
				kosmetica += portion*50
				money = money - portion*1000

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили косметику.'
			end

			act 'Отойти от прилавка':gt'shop','cosm'
		else
			'Отдел закрыт'
		end
	}

	$buystanok = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*500 > money:'У вас не хватает денег.'
			if portion*500 <= money:
				stanok += portion*10
				money = money - portion*500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили бритвенный станок.'
			end

			act 'Отойти от прилавка':gt'shop','cosm'
		else
			'Отдел закрыт'
		end
	}

	$buykrem = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*500 > money:'У вас не хватает денег.'
			if portion*500 <= money:
				krem += portion*20
				money = money - portion*500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили крем для загара.'
			end

			act 'Отойти от прилавка':gt'shop','cosm'
		else
			'Отдел закрыт'
		end
	}

	$buytampon = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*200 > money:'У вас не хватает денег.'
			if portion*200 <= money:
				tampon += portion*20
				money = money - portion*200

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили тампоны.'
			end

			act 'Отойти от прилавка':gt'shop','cosm'
		else
			'Отдел закрыт'
		end
	}

	$buyshampoo = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*500 > money:'У вас не хватает денег.'
			if portion*500 <= money:
				shampoo += portion*30
				money = money - portion*500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили шампунь.'
			end

			act 'Отойти от прилавка':gt'shop','cosm'
		else
			'Отдел закрыт'
		end
	}

	cla
	clr
	*clr
	minut = minut + 1
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Отдел косметики</font></b></center>'
	'<center><img src="images/pic/shop2.jpg"></center>'
	'<a href="exec: dynamic $buykosm ">Косметика - 1000руб</a>'
	'<a href="exec: dynamic $buystanok ">Бритвенный станок - 500 руб</a>'
	'<a href="exec: dynamic $buykrem ">Крем для загара - 500 руб</a>'
	'<a href="exec: dynamic $buytampon ">Тампоны - 200 руб</a>'
	'<a href="exec: dynamic $buyshampoo ">Шампунь - 500 руб</a>'
	'Сумочка - 5 тыс.руб'
	'Салфетки 100 руб'
	'Косметичка 1000 руб'
	'Расческа 150 руб'

	act 'Выйти из отдела':gt'shop','start'

	if bag > 0:
		if money >= 100:
			act 'Купить влажные салфетки (100 руб)':
				cls
				money -= 100
				salfetka += 10

				'Вы купили влажные салфетки и положили их в свою сумочку.'

				act 'Выйти из отдела':gt'shop','cosm'
			end
		end

		if money >= 1000:
			act 'Купить переносную косметичку (1000 руб)':
				cls
				money -= 1000
				kosmetitka += 10

				'Вы купили переносную косметичку и положили ее в свою сумочку.'

				act 'Выйти из отдела':gt'shop','cosm'
			end
		end

		if money >= 150 and greben = 0:
			act 'Купить расческу (150 руб)':
				cls
				money -= 150
				greben = 1

				'Вы купили расческу и положили ее в свою сумочку.'

				act 'Выйти из отдела':gt'shop','cosm'
			end
		end
	elseif bag = 0:
		if money >= 5000:
			act 'Купить сумочку (5000 руб)':
				cls
				money -= 5000
				bag = 1

				'Вы купили дамскую сумочку.'

				act 'Выйти из отдела':gt'shop','cosm'
			end
		end
	end
end

if $ARGS[0] = 'hos':
	$buyfairy = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*100 > money:'У вас не хватает денег.'
			if portion*100 <= money:
				fairy += portion*20
				money = money - portion*100

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили средство для мытья посуды.'
			end

			act 'Отойти от прилавка':gt'shop','hos'
		else
			'Отдел закрыт'
		end
	}

	$buyporoshok = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*250 > money:'У вас не хватает денег.'
			if portion*250 <= money:
				poroshok += portion*30
				money = money - portion*250

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили стиральный порошок.'
			end

			act 'Отойти от прилавка':gt'shop','hos'
		else
			'Отдел закрыт'
		end
	}

	$buycltarelka = {
		if hour >= 8 and hour <= 20:
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*300 > money:'У вас не хватает денег.'
			if portion*300 <= money:
				cltarelka += portion*5
				money = money - portion*300

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили набор из 5ти тарелок.'
			end

			act 'Отойти от прилавка':gt'shop','hos'
		else
			'Отдел закрыт'
		end
	}

	cla
	clr
	*clr
	minut = minut + 1
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Отдел хозтоваров</font></b></center>'
	'<center><img src="images/pic/shop3.jpg"></center>'
	'<a href="exec: dynamic $buyfairy ">Средство для мытья посуды - 100 рублей</a>'
	'<a href="exec: dynamic $buyporoshok ">Стиральный порошок - 250 рублей</a>'
	'<a href="exec: dynamic $buycltarelka ">Набор из 5ти тарелок - 300 рублей</a>'

	act 'Выйти из отдела':gt'shop','start'
end

if $ARGS[0] = 'clo':
	cla
	*clr
	minut = minut + 5
	clr
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Отдел женской одежды</font></b></center>'
	'<center><img src="images/pic/shop4.jpg"></center>'
	'Женское белье - 300 руб'
	'Вся женская одежда по 2500 руб'

	act 'Выйти из отдела':gt'shop','start'

	if money >= 300:
		act 'Купить белье 300 руб':
			cla
			*clr

			portion = input ("Сколько вы хотите купить?")
			if portion <= 0:portion = 1
			if portion*300 > money:'У вас не хватает денег.'
			if portion*300 <= money:
				clrbelo += portion
				money = money - portion*300

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили в кассу и купили белье.'
			end

			act 'Отойти от прилавка':gt'shop','clo'
		end
	end

	if money >= 2000:
		act 'Купить набор белья "Неделька" 2000 руб':
			cla
			*clr
			money = money - 2000
			clrbelo += 7

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы заплатили в кассу и купили белье.'

			act 'Отойти от прилавка':gt'shop','clo'
		end
	end

	if palto < 2:
		'В магазине продают зимнее пальто. 10000 руб'

		if money >= 10000:
			act 'Купить зимнее пальто':
				cla
				money -= 10000
				palto = 2
				$palto = 'зимнее пальто'

				'Вы купили пальто.'

				act 'Выйти':gt'shop','clo'
			end
		end
	end

	if money >= 1000 and bikini < 1:
		act 'Купить купальник 1000 руб':
			cla
			*clr
			money = money - 1000
			bikini = 1

			'<center><img src="images/pic/kassa.jpg"></center>'
			'Вы заплатили в кассу и купили купальник.'

			act 'Отойти от прилавка':gt'shop','clo'
		end
	end

	if money >= 2500:
		if profi[1] = 0:
			act 'Осмотреть офисную одежду №1':
				cla
				*clr
				'<center><img src="images/ode/profi1.jpg"></center>'
				'Офисная одежда.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					profi[1] = 1
					profiH[1] = 60
					profiB[1] = bedra
					gt'shop','clo'
				end
			end
		end
		if profi[2] = 0:
			act 'Осмотреть офисную одежду №2':
				cla
				*clr
				'<center><img src="images/ode/profi2.jpg"></center>'
				'Офисная одежда.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					profi[2] = 1
					profiH[2] = 60
					profiB[2] = bedra
					gt'shop','clo'
				end
			end
		end
		if sarafan[1] = 0:
			act 'Осмотреть цветастый сарафан':
				cla
				*clr
				'<center><img src="images/ode/sarafan1.jpg"></center>'
				'Простой сарафан, главное его достоинство это его безразмерность.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					sarafan[1] = 1
					sarafanH[1] = 60
					gt'shop','clo'
				end
			end
		end
		if sarafan[2] = 0:
			act 'Осмотреть светлый сарафан':
				cla
				*clr
				'<center><img src="images/ode/sarafan2.jpg"></center>'
				'Простой сарафан, главное его достоинство это его безразмерность.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					sarafan[2] = 1
					sarafanH[2] = 60
					gt'shop','clo'
				end
			end
		end
		if short[1] = 0:
			act 'Осмотреть Черные шорты с фиолетовой майкой':
				cla
				*clr
				'<center><img src="images/ode/short1.jpg"></center>'
				'Черные шорты с фиолетовой майкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					short[1] = 1
					shortH[1] = 60
					shortB[1] = bedra
					gt'shop','clo'
				end
			end
		end
		if short[2] = 0:
			act 'Осмотреть Черные шорты с полосатой майкой':
				cla
				*clr
				'<center><img src="images/ode/short2.jpg"></center>'
				'Черные шорты с полосатой майкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					short[2] = 1
					shortH[2] = 60
					shortB[2] = bedra
					gt'shop','clo'
				end
			end
		end
		if short[3] = 0:
			act 'Осмотреть Черные шорты с черной майкой':
				cla
				*clr
				'<center><img src="images/ode/short3.jpg"></center>'
				'Черные шорты с черной майкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					short[3] = 1
					shortH[3] = 60
					shortB[3] = bedra
					gt'shop','clo'
				end
			end
		end
		if short[4] = 0:
			act 'Осмотреть розовые шорты с розовые майкой':
				cla
				*clr
				'<center><img src="images/ode/short4.jpg"></center>'
				'розовые шорты с розовые майкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					short[4] = 1
					shortH[4] = 60
					shortB[4] = bedra
					gt'shop','clo'
				end
			end
		end
		if short[5] = 0:
			act 'Осмотреть белые шорты с белым лифом':
				cla
				*clr
				'<center><img src="images/ode/short5.jpg"></center>'
				'белые шорты с белым лифом.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					short[5] = 1
					shortH[5] = 60
					shortB[5] = bedra
					gt'shop','clo'
				end
			end
		end
		if skirt[1] = 0:
			act 'Осмотреть белую юбку с цветастой блузкой':
				cla
				*clr
				'<center><img src="images/ode/skirt1.jpg"></center>'
				'Белая юбка с цветастой блузкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					skirt[1] = 1
					skirtH[1] = 60
					skirtB[1] = bedra
					gt'shop','clo'
				end
			end
		end
		if skirt[2] = 0:
			act 'Осмотреть черную юбку с красной кофтой':
				cla
				*clr
				'<center><img src="images/ode/skirt2.jpg"></center>'
				'Черная юбка с красной кофтой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					skirt[2] = 1
					skirtH[2] = 60
					skirtB[2] = bedra
					gt'shop','clo'
				end
			end
		end
		if skirt[3] = 0:
			act 'Осмотреть белую юбку с полосатой футболкой':
				cla
				*clr
				'<center><img src="images/ode/skirt3.jpg"></center>'
				'Белая юбка с полосатой футболкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					skirt[3] = 1
					skirtH[3] = 60
					skirtB[3] = bedra
					gt'shop','clo'
				end
			end
		end
		if skirt[4] = 0:
			act 'Осмотреть черную юбку под кожу, с красной блузкой':
				cla
				*clr
				'<center><img src="images/ode/skirt4.jpg"></center>'
				'Черная юбка под кожу, с красной блузкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					skirt[4] = 1
					skirtH[4] = 60
					skirtB[4] = bedra
					gt'shop','clo'
				end
			end
		end
		if skirt[5] = 0:
			act 'Осмотреть черную юбку, с белой блузкой':
				cla
				*clr
				'<center><img src="images/ode/skirt5.jpg"></center>'
				'Черная юбка, с белой блузкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					skirt[5] = 1
					skirtH[5] = 60
					skirtB[5] = bedra
					gt'shop','clo'
				end
			end
		end
		if pants[1] = 0:
			act 'Осмотреть штаны, с блузкой. №1':
				cla
				*clr
				'<center><img src="images/ode/pants1.jpg"></center>'
				'Штаны, с блузкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					pants[1] = 1
					pantsH[1] = 60
					pantsB[1] = bedra
					gt'shop','clo'
				end
			end
		end
		if pants[2] = 0:
			act 'Осмотреть штаны, с блузкой. №2':
				cla
				*clr
				'<center><img src="images/ode/pants2.jpg"></center>'
				'Штаны, с блузкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					pants[2] = 1
					pantsH[2] = 60
					pantsB[2] = bedra
					gt'shop','clo'
				end
			end
		end
		if pants[3] = 0:
			act 'Осмотреть штаны, с блузкой. №3':
				cla
				*clr
				'<center><img src="images/ode/pants3.jpg"></center>'
				'Штаны, с блузкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					pants[3] = 1
					pantsH[3] = 60
					pantsB[3] = bedra
					gt'shop','clo'
				end
			end
		end
		if pants[4] = 0:
			act 'Осмотреть штаны, с блузкой. №4':
				cla
				*clr
				'<center><img src="images/ode/pants4.jpg"></center>'
				'Штаны, с блузкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					pants[4] = 1
					pantsH[4] = 60
					pantsB[4] = bedra
					gt'shop','clo'
				end
			end
		end
		if pants[5] = 0:
			act 'Осмотреть леггинсы, с майкой':
				cla
				*clr
				'<center><img src="images/ode/pants5.jpg"></center>'
				'Леггинсы с майкой.'
				'Стоит 2500 руб.'

				act 'Уйти':gt'shop','clo'
				act 'Купить':
					cla
					money = money - 2500
					pants[5] = 1
					pantsH[5] = 60
					pantsB[5] = bedra
					gt'shop','clo'
				end
			end
		end
	end
end

if $ARGS[0] = 'teh':
	$buytv = {
		if hour >= 8 and hour <= 20:
			if money >= 5000 and TV < 1:
				cla
				*clr
				money = money - 5000
				TV = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили телевизор'

				act 'Уйти':gt'shop','teh'
			elseif TV > 0:
				'У вас уже есть телевизор'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buytv2 = {
		if hour >= 8 and hour <= 20:
			if money >= 35000 and TV < 2:
				cla
				*clr
				money = money - 35000
				TV = 2

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили телевизор'

				act 'Уйти':gt'shop','teh'
			elseif TV > 1:
				'У вас уже есть телевизор'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buykomp = {
		if hour >= 8 and hour <= 20:
			if money >= 25000 and komp = 0:
				cla
				*clr
				money = money - 25000
				komp = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили компьютер'

				act 'Уйти':gt'shop','teh'
			elseif komp > 0:
				'У вас уже есть компьютер'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buycd = {
		if hour >= 8 and hour <= 20:
			if money >= 500 and komp > 0 and GameCD = 0:
				cla
				*clr
				money = money - 500
				GameCD = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили игру'

				act 'Уйти':gt'shop','teh'
			elseif komp = 0:
				'У вас нет компьютера'
			elseif GameCD > 0:
				'У вас уже есть эта игра'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buycd2 = {
		if hour >= 8 and hour <= 20:
			if money >= 500 and komp>0 and GameCD2 = 0:
				cla
				*clr
				money = money - 500
				GameCD2 = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили игру'

				act 'Уйти':gt'shop','teh'
			elseif komp = 0:
				'У вас нет компьютера'
			elseif GameCD2 > 0:
				'У вас уже есть эта игра'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buycd3 = {
		if hour >= 8 and hour <= 20:
			if money >= 500 and komp>0 and GameCD3 = 0:
				cla
				*clr
				money = money - 500
				GameCD3 = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили игру'

				act 'Уйти':gt'shop','teh'
			elseif komp = 0:
				'У вас нет компьютера'
			elseif GameCD3 > 0:
				'У вас уже есть эта игра'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buyposudmoi = {
		if hour >= 8 and hour <= 20:
			if money >= 50000 and posudomashina = 0:
				cla
				*clr
				money = money - 50000
				posudomashina = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили посудомоечную машину'

				act 'Уйти':gt'shop','teh'
			elseif posudomashina > 0:
				'У вас уже есть посудомоечная машина'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buystiralka = {
		if hour >= 8 and hour <= 20:
			if money >= 50000 and stiralka = 0:
				cla
				*clr
				money = money - 50000
				stiralka = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили стиральную машину'

				act 'Уйти':gt'shop','teh'
			elseif stiralka > 0:
				'У вас уже есть стиральная машина'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buyzenit = {
		if hour >= 8 and hour <= 20:
			if money >= 10000 and zenit = 0:
				cla
				*clr
				money = money - 10000
				zenit = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили фотоаппарат'

				act 'Уйти':gt'shop','teh'
			elseif zenit > 0:
				'У вас уже есть фотоаппарат'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	$buyminifoto = {
		if hour >= 8 and hour <= 20:
			if money >= 40000 and minifoto = 0:
				cla
				*clr
				money = money - 40000
				minifoto = 1

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы заплатили деньги в кассу и купили мини фотоаппарат'

				act 'Уйти':gt'shop','teh'
			elseif minifoto > 0:
				'У вас уже есть мини фотоаппарат'
			else
				'У вас не хватает денег'
			end
		else
			'Отдел закрыт'
		end
	}

	cla
	*clr
	minut = minut + 1
	clr
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Отдел бытовой техники</font></b></center>'
	'<center><img src="images/pic/shop5.jpg"></center>'

	if TV = 0:'<a href="exec: dynamic $buytv ">Не большой телевизор с кинескопом можно купить за 5000 руб</a>'
	if TV ! 2:'<a href="exec: dynamic $buytv2 ">Большой плазменный телевизор можно купить за 35000 руб</a>'
	if komp = 0:'<a href="exec: dynamic $buykomp ">Компьютер стоит 25000 руб</a>'
	!'<a href="exec: dynamic $buycd ">Компьютерная игра Дисопль 500 руб</a>'
	if GameCD2 = 0:'<a href="exec: dynamic $buycd2 ">Компьютерная игра Закат мертвецов 500 руб</a>'
	!'<a href="exec: dynamic $buycd3 ">Компьютерная игра Альбида 500 руб</a>'
	if posudomashina = 0:'<a href="exec: dynamic $buyposudmoi ">Посудомоечную машину можно купить за 50000 руб</a>'
	if stiralka = 0:'<a href="exec: dynamic $buystiralka ">Стиральную машину можно купить за 50000 руб</a>'
	if zenit = 0:'<a href="exec: dynamic $buyzenit ">Фотоаппарат можно купить за 10000 руб</a>'
	if minifoto = 0:'<a href="exec: dynamic $buyminifoto ">Мини фотоаппарат замаскированный под сигаретную пачку можно купить за 40000 руб</a>'

	act 'Выйти из отдела':gt'shop','start'
end
--- shop ---------------------------------

