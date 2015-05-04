# gaptek
if $ARGS[0] = 'start':
	if hour >= 8 and hour <= 20:
		cla
		clr
		*clr
		minut = minut + 5
		gs'stat'
		gs'time'

		'<center><b><font color = maroon>Аптека</font></b></center>'
		'<center><img src="images/pic/aptek.jpg"></center>'
		'Презервативы - 100 руб'
		'Тест на беременность - 200 руб'
		'Противозачаточные таблетки - 500 руб'
		'Лекарства - 500 руб'
		'Витамины - 500 руб'
		if klisma = 0:'Клизма - 500 руб'
		'Мазь от мозолей - 600 руб'
		'Увлажняющий бальзам для губ - 1000 руб'
		'Жиросжигатели - 1500 руб'
		if KandidNapr = 1:'Таблетки от молочницы - 1500 руб'

		if StoryLine=1:'За прилавком как всегда сидит тетя Люда. "Привет Светулечка. Как жизнь? Как настроение?"'

		if motherQW >= 2:
			act 'Огород':
				cla
				cls
				gaogorodrand = RAND(1,20)
				gs'stat'

				'<center><b><font color = maroon>Аптека</font></b></center>'
				'<center><img src="images/pic/aptek.jpg"></center>'

				if motherQW = 2 and ((gaogorod + gaogorodrand) < 40):
					if gaptekfirst = 0:
						gaptekfirst = 1
						minut += 5

						'Вы зашли в аптеку и принялись с умными видом осматривать витрины, обдумывая, как бы заговорить с тетей. Чем больше думали, тем меньше действительно умных мыслей посещало вашу голову, и от это вы только сильнее занервничали. Тетя это заметила и, отпустив последнего покупателя, заговорила сама.'
						'- Светочка, ты чего тут трешься? Надо чего?'
						'- Да как бы... для огорода ищу.'
						'- Племяшка, ты магазином не ошиблась? У нас тут аптека, знаешь ли, - засмеялась она.'
						'- Знаю, теть. Мама попросила купить у тебя все для огорода.'
						'- Мама значит... для огорода...'
						'Она с серьезным видом посмотрела на вас и подвела к витрине с контрацептивами.'
						'- Вот тут у нас все "для огорода". Выбирай.'
					else
						if gaprezikday ! day or gatabletkiday ! day:
							minut += RAND(5,15)

							'Вы подождали, пока из аптеки выйдет последний покупатель, и подошли к тете.'
							'- Теть, мне бы это... маме для огорода...'
							'- Да поняла я уже, ходишь тут, трешься, - усмехнулась она.'
							'- Спасибо, теть.'
							'- Да не за что, и скажи Наташе, что пора бы ей уже заканчивать с огородами.'
						elseif gaprezikday = day and gatabletkiday = day:
							minut += RAND(5,15)

							'Вы решили подождать, пока тетя освободится, но с каждой минутой покупателей в аптеке становилось все больше. Вы только зря потратили время.'
						end
					end
				elseif motherQW = 2 and ((gaogorod + gaogorodrand) >= 40):
					gt'motherQW','motherQW_3'
				elseif motherQW >= 3 and galubri = 0:
					if gaprezikday ! day or gatabletkiday ! day:
						minut += RAND(5,15)
						oluuosegunrand = RAND(1,10)
						gs'stat'

						if oluuosegunrand = 10 and oluuosegunday ! day:
							gt'motherQW','olu'
						elseif oluuosegunrand < 10 or oluuosegunday = day:
							'Вы подождали своей очереди и подошли к прилавку, кивком указав на нужную витрину.'
						end
					elseif gaprezikday = day and gatabletkiday = day:
						minut += RAND(5,15)

						'Вы подождали своей очереди и подошли к прилавку, кивком указав на нужную витрину. "Все раскупили, Свет, - сказала тетя. И с ехидством почти шепотом добавила, - Придется твоим ебарям ждать до завтра."'
					end
				elseif motherQW >= 3 and galubri = 1:
					if gaprezikday ! day or gatabletkiday ! day or galubriday ! day:
						minut += RAND(5,15)
						oluuosegunrand = RAND(1,10)

						if oluuosegunrand = 10 and oluuosegunday ! day:
							gt'motherQW','olu'
						elseif oluuosegunrand < 10 or oluuosegunday = day:
							'Вы подождали своей очереди и подошли к прилавку.'
						end
					elseif gaprezikday = day and gatabletkiday = day and galubriday = day:
						minut += RAND(5,15)

						'Вы подождали своей очереди и подошли к прилавку. "Все раскупили, Свет, - сказала тетя. И с ехидством почти шепотом добавила, - Придется твоим ебарям ждать до завтра."'
					end
				end

				if money >= 100 and motherQW >= 2 and gaptekfirst = 1 and gaprezikday ! day:
					act 'Купить презервативы (100 руб)':
						cla
						*clr
						portion = input ("Сколько упаковок вы хотите купить?")
						if portion > 2 and motherQW < 3:portion = 2 & '"Лучше не покупать сразу много, а то тетя может что-то заподозрить."'
						if portion > 5 and motherQW >= 3:portion = 5 & '"Света, завод резиновых изделий не успевает поставлять продукцию."'
						if portion*100 > money:'У вас не хватает денег.'
						if portion*100 <= money:
							prezik = prezik + portion*5
							money = money - portion*100
							gaprezikday = day

							'Вы купили <<portion>> упак. презервативов и заплатили деньги в кассу.'

							if motherQW < 3:
								gaogorod = gaogorod + portion
							end
						end

						act 'Отойти от прилавка':gt'gaptek','start'
					end
				end

				if money >= 200 and motherQW >= 2 and gaptekfirst = 1:
					act 'Купить тест на беременность (200 руб)':
						cla
						*clr
						money = money - 200
						pregtest += 2

						'<center><img src="images/pic/kassa.jpg"></center>'
						'Вы купили тест и заплатили деньги в кассу.'

						act 'Отойти от прилавка':gt'gaptek','start'
					end
				end

				if money >= 300 and galubri = 1 and motherQW >= 2 and gaptekfirst = 1 and galubriday ! day:
					act 'Купить лубрикант (300 руб)':
						cla
						*clr
						portion = input ("Сколько упаковок вы хотите купить?")
						if portion > 10:portion = 10 & '"Свет, могу продать только 10 штук, больше не привезла, извини."'
						if portion*100 > money:'У вас не хватает денег.'
						if portion*100 <= money:
							lubri += portion*5
							money = money - portion*300
							galubriday = day

							'Вы купили <<portion>> упак. презервативов и заплатили деньги в кассу.'
						end

						act 'Отойти от прилавка':gt'gaptek','start'
					end
				end

				if money >= 500 and motherQW >= 2 and gaptekfirst = 1 and gatabletkiday ! day:
					act 'Купить противозачаточные таблетки (500 руб)':
						cla
						*clr
						portion = input ("Сколько упаковок вы хотите купить?")
						if portion > 1 and motherQW < 3:portion = 1 & '"Лучше не покупать сразу много, а то тетя может что-то заподозрить."'
						if portion*100 > money:'У вас не хватает денег.'
						if portion*100 <= money:
							tabletki = tabletki + portion*28
							money = money - portion*500
							gatabletkiday = day

							'Вы купили <<portion>> упак. презервативов и заплатили деньги в кассу.'
						end

						act 'Отойти от прилавка':gt'gaptek','start'
					end
				end

				if klisma = 0 and motherQW >= 2 and gaptekfirst = 1:
					act 'Купить клизму (500 руб)':
						cla
						*clr
						klisma = 1
						money = money - 500

						'<center><img src="images/pic/kassa.jpg"></center>'
						'Вы купили клизму и заплатили деньги в кассу.'

						act 'Отойти от прилавка':gt'gaptek','start'
					end
				end

				act 'Отойти от прилавка':gt'gaptek','start'
			end
		end

		if money >= 100 and Storyline = 0:
			act 'Купить презервативы (100 руб)':
				cla
				*clr
				portion = input ("Сколько упаковок вы хотите купить?")
				if portion*100 > money:'У вас не хватает денег.'
				if portion*100 <= money:
					prezik = prezik + portion*5
					money = money - portion*100

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили презервативы и заплатили деньги в кассу.'
				end

				act 'Отойти от прилавка':gt'gaptek','start'
			end
		end

		if money >= 200 and Storyline = 0:
			act 'Купить тест на беременность (200 руб)':
				cla
				*clr
				money = money - 200
				pregtest += 2

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили тест и заплатили деньги в кассу.'

				act 'Отойти от прилавка':gt'gaptek','start'
			end
		end

		if money >= 300 and Storyline = 0:
			act 'Купить лубрикант (300 руб)':
				cla
				*clr
				portion = input ("Сколько вы хотите купить?")
				if portion*300 > money:'У вас не хватает денег.'
				if portion*300 <= money:
					lubri += portion*5
					money = money - portion*300

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили лубрикант и заплатили деньги в кассу.'
				end

				act 'Отойти от прилавка':gt'gaptek','start'
			end
		end

		if money >= 500 and Storyline = 0:
			act 'Купить противозачаточные таблетки (500 руб)':
				cla
				*clr
				portion = input ("Сколько упаковок вы хотите купить?")
				if portion*500 > money:'У вас не хватает денег.'
				if portion*500 <= money:
					tabletki = tabletki + portion*28
					money = money - portion*500

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили противозачаточные таблетки и заплатили деньги в кассу.'
				end

				act 'Отойти от прилавка':gt'gaptek','start'
			end
		end

		if money >= 500:
			act 'Купить лекарства (500 руб)':
				cla
				*clr
				portion = input ("Сколько упаковок вы хотите купить?")
				if portion*500 > money:'У вас не хватает денег.'
				if portion*500 <= money:
					lekarstvo += portion*10
					money = money - portion*500

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили лекарства и заплатили деньги в кассу.'
				end

				act 'Отойти от прилавка':gt'gaptek','start'
			end
			act 'Купить витамины (500 руб)':
				cla
				*clr
				portion = input ("Сколько упаковок вы хотите купить?")
				if portion*500 > money:'У вас не хватает денег.'
				if portion*500 <= money:
					vitamin += portion*20
					money = money - portion*500

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили витамины и заплатили деньги в кассу.'
				end

				act 'Отойти от прилавка':gt'gaptek','start'
			end

			if klisma = 0 and Storyline = 0:
				act 'Купить клизму (500 руб)':
					cla
					*clr
					klisma = 1
					money = money - 500

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили клизму и заплатили деньги в кассу.'

					act 'Отойти от прилавка':gt'gaptek','start'
				end
			end
		end

		if money >= 600:
			act 'Купить мазь от мозолей (600 руб)':
				cla
				*clr
				money = money - 600
				mosolmaz += 10

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили мазь и заплатили деньги в кассу.'

				act 'Отойти от прилавка':gt'gaptek','start'
			end
		end

		if money >= 1000:
			act 'Купить увлажняющий бальзам для губ (1000 руб)':
				cla
				*clr
				lipbalm += 25
				money = money - 1000

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили витамины и заплатили деньги в кассу.'

				act 'Отойти от прилавка':gt'gaptek','start'
			end
		end

		if money >= 1500:
			act 'Купить жиросжигатели (1500 руб)':
				cla
				*clr
				fatdel = fatdel + 1
				money = money - 1500

				'<center><img src="images/pic/kassa.jpg"></center>'
				'Вы купили жиросжигающую капсулу и заплатили деньги в кассу.'

				act 'Отойти от прилавка':gt'gaptek','start'
			end

			if KandidNapr = 1:
				act 'Купить таблетки от молочницы (1500 руб)':
					cla
					*clr
					money = money - 1500
					Kandidoz = 0

					'<center><img src="images/pic/kassa.jpg"></center>'
					'Вы купили таблетки и заплатили деньги в кассу.'
					'Сразу же около кассы вы выпили таблетку.'

					act 'Отойти от прилавка':gt'gaptek','start'
				end
			end
		end

		act 'Выйти':gt'gorodok'
	elseif hour < 8 or hour > 20:
		cla
		*clr
		'<center><b><font color=maroon>Аптека</font></b></center>'
		'<center><img src="images/pic/aptek.jpg"></center>'
		'Аптека закрыта'

		act 'Выйти':gt'gorodok'
	end
end
--- gaptek ---------------------------------

