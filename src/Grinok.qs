# Grinok
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Рынок</H4></center>'
'<center><img src="images/pic/Grinok.jpg"></center>'
'Маленький рынок расположен возле <a href="exec:minut += 3 & GT ''vokzalG''">вокзала</a>'

if hour >= 12 and hour <= 18:
	'На рынке продавцы выставили товары и зазывают покупателей.'

	act 'Бродить по рынку':
		cls
		minut += 15
		gs'stat'

		'Вы 15ть минут бродите по рынку среди покупателей.'

		if arturKnow = 0:rinevtip = RAND(0,6)
		if arturKnow = 1:rinevtip = RAND(0,5)
		if rinevtip = 0:
			kosmpayrand = RAND(3,8)
			kosmpay = kosmpayrand*100

			'Вы видите что продают довольно дешевую косметику за <<kosmpay>> рублей'

			if money >= kosmpay:
				act 'Купить':
					cls
					minut += 15
					money -= kosmpay
					kosmetica += RAND(10,40)
					gs'stat'
					gt $curloc
				end
			end
		elseif rinevtip = 1:
			tovpayrand = RAND(2,5)
			tovpay = tovpayrand*100

			'Вы видите что продают витаминки за <<tovpay>> рублей'

			if money >= tovpay:
				act 'Купить':
					cls
					minut += 15
					vitamin += 20
					money -= tovpay
					gt $curloc
				end
			end
		elseif rinevtip = 2:
			tovpayrand = RAND(2,8)
			tovpay = tovpayrand*10

			'Вы видите что продают презервативы за <<tovpay>> рублей'

			if money >= tovpay:
				act 'Купить':
					cls
					minut += 15
					prezik += 5
					money -= tovpay
					gt $curloc
				end
			end
		elseif rinevtip = 3:
			tovpayrand = RAND(5,10)
			tovpay = tovpayrand*100

			'Вы видите что продают бальзам для губ за <<tovpay>> рублей'

			if money >= tovpay:
				act 'Купить':
					cls
					minut += 15
					lipbalm += 20
					money -= tovpay
					gt $curloc
				end
			end
		elseif rinevtip = 4:
			tovpayrand = RAND(1,5)
			tovpay = tovpayrand*1000

			'Вы видите что продают сумочку за <<tovpay>> рублей'

			if bag = 0:
				if money >= tovpay:
					act 'Купить':
						cls
						minut += 15
						bag = 1
						money -= tovpay
						gt $curloc
					end
				end
			elseif bag > 0:
				'Хмм, у вас уже есть сумочка, зачем вам еще одна.'
			end
		elseif rinevtip = 5:
			if pornmarkonce = 0:pornmarkonce = 1

			'Прохаживаясь по рынку вы случайно забредаете в дальний угол где продают порнуху.'

			act 'Подойти':gt'Gpornmark'
		elseif rinevtip = 6:
			'Внезапно вас окликают "Эй девюшка, хочешь мандаринку скюшать?"'

			act 'Оглянуться':gt'arturRinok','start'
		end

		act 'Идти дальше':gt $curloc
	end

	if pornmarkonce = 1:
		act 'Идти в уголок с порнухой':gt'Gpornmark'
	end

	if arturKnow = 1 and arturQW = 0:
		act 'Идти к Артуру':gt'arturRinok','start'
	elseif arturQW = 1 and (week = 6 or week = 7):
		if hour = 12 or hour = 13:
			act 'Идти к Артуру':gt'arturRinok','work_1'
		end
	elseif arturQW = 2:
		if hour = 16 and minut >= 0 and minut <= 30:
			act 'Идти к Артуру':gt'arturRinok','work_2'
		elseif hour < 16:
			act 'Подождать Артура':hour = 16 & gt'Grinok'
		end
	end

	act 'Идти к книжному лотку':
		cls
		minut += 15
		gs'stat'

		'На прилавке лежит очень занимательная фентези книга, которая стоит всего 150 рублей и еще лежат дамские романы в мягкой обложке которые стоят 300 рублей.'

		if money >= 150:
			act 'Купить фентези книжку за 150р':
				cls
				minut += 15
				money -= 150
				f_book += 1
				gs'stat'

				'Вы купили фентези книгу за 150 рублей.'

				act 'Уйти':gt $curloc
			end
		end

		if money >= 300:
			act 'Купить дамский роман за 300р':
				cls
				minut += 15
				money -= 300
				w_book += 1
				gs'stat'

				'Вы купили дамский роман за 300 рублей.'

				act 'Уйти':gt $curloc
			end
		end

		act 'Уйти':gt $curloc
	end
else
	'На рынке никого нет.'

	if arturQW = 1 and (week = 6 or week = 7) and hour < 12:
		act 'Подождать Артура':hour = 12 & gt'Grinok'
	end
end
--- Grinok ---------------------------------

