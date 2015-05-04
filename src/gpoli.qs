# gpoli
clr
minut = minut + 5
frost = 0
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Поликлиника</font></b></center>'
'<center><img src="images/pic/poli.jpg"></center>'

act 'Выйти':gt'gorodok'

if hour >= 6 and hour <= 21:
	if gpoliuborka = 0:
		act 'Прочитать объявление':
			cla
			*clr
			minut = minut + 5
			gpoliuborka = 1

			'На стене около входа в поликлинику висит объявление. Требуется уборщица, работа один час в день, с 16 до 21 часа, оплата 100 рублей.'

			act 'Отойти':gt'gpoli'
		end
	elseif gpoliuborka = 1 and hour >= 8 and hour <= 21:
		act 'Спросить у главврача про работу уборщицей':
			cla
			*clr
			gpoliuborka = 2
			minut = minut + 15
			gs'stat'

			'<center><img src="images/pic/poli.jpg"></center>'
			'Вы подошли к кабинету глав врача и постучав в дверь вошли в кабинет. В кабинете сидел грузный мужчина в белом халате. Он строго посмотрел на вас через стекла очков. "По какому вопросу?" Вы ответили что прочитали объявление и хотели бы устроиться уборщицей. Глав врач немного подумал и протянул вам бумагу. "Напишите по образцу заявление о приеме на работу по совместительству." Вы взяли бумаги и написали заявление. Глав врач встал с кресла и вы вместе вышли в коридор. Он показал вам бытовку, где храниться инструмент, ведра, швабры, тряпки.'

			act 'Уйти':gt'gpoli'
		end
	elseif gpoliuborka > 1 and hour >= 8 and hour <= 21 and gpolicleanday ! day:
		act 'Работать уборщицей':
			cla
			*clr
			gpolicleanday = day
			minut = minut + 60
			manna = manna - 15
			money = money + 100
			sweat = sweat + 2
			gs'stat'

			'<center><img src="images/pic/clener1.jpg"></center>'
			'Вы взяли швабру с ведром и помыли коридоры во всей поликлинике. После мытья коридоров вы стали мыть кабинеты. Врачи конечно ругались и бубнили, так как вы бесцеремонно вламывались в их кабинеты, но все же давали вам спокойно помыть пол.'

			act 'Закончить работу':gt'gpoli'

			ginrand = RAND(0,1)
			if Gspravka < 10 and ginrand = 0:
				'Когда вы убираете кабинет гинеколога, он выходит из кабинета оставляя вас одну.'

				if vagina > 0:
					act 'Подделать справку':
						cls
						Gspravka = 30
						GspravkaT = 1
						gs'stat'

						'Вы быстренько вытаскиваете из стола бланк справки и печать и шлепаете печатью по справке.'
						'После этого вы убираете печать обратно в стол и прячете справку. Текст справки от гинеколога вы напишите чуть по позже.'

						act 'Закончить работу':gt'gpoli'
					end
				end
			end
		end
	end

	if health < (vital*10 + stren*5) and money >= 1000:
		act 'Лечить здоровье (1 тыс.руб)':
			cla
			money = money - 1000
			minut = minut + 60
			health = vital*10 + stren*5+1000
			gs'stat'

			'Врач сделал вам укол и вам сразу же стало гораздо лучше'

			act 'Выйти':gt $curloc
		end
	end

	if willpower < intel*5 + will*5 and money >= 1000:
		act 'Прием у психотерапевта (1 тыс.руб)':
			cla
			money = money - 1000
			minut = minut + 60
			willpower = intel*5 + will*5+1000
			manna = (intel*magik) + magik*100 + vital*10 + rikudo
			gs'stat'

			'Вы полежали на кушетке у психотерапевта и рассказали ему о своих невзгодах и вам сразу же стало гораздо легче на душе.'

			act 'Выйти':gt $curloc
		end
	end

	if sick >= 1:
		act 'Идти к участковому терапевту':
			cla
			minut = minut + 15
			sick = 0
			gs'stat'

			'Вы пришли на прием к участковому терапевту и врач прописал вам таблетки от простуды.'

			act 'Выйти':gt $curloc
		end
	end

	if StoryLine > 0 and SchoolAtestat = 0 and Gspravka < 3:
		act 'Идти к гинекологу за справкой':
			cls
			minut = minut + 15

			'<center><img src="images/pic/gin.jpg"></center>'
			'Вы легли на гинекологическое кресло и раздвинули ноги. Гинеколог стал рассматривать вашу вагину.'

			if vagina > 0:
				Gspravka = 30
				GspravkaT = 2

				'Гинеколог написал в справке, что вы не девственница.'
			elseif vagina = 0:
				Gspravka = 30
				GspravkaT = 1

				'Гинеколог написал в справке, что вы девственница.'
			end

			if preg > 0:
				'Гинеколог сказал вам, что вы беременны.'
			end

			gs'stat'

			act 'Выйти':gt $curloc
		end
	end
else
	'Поликлиника закрыта.'
end
--- gpoli ---------------------------------

