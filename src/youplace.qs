# youplace
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Ваш земельный участок</H4></center>'
if placeMansion < 2:'<center><img src="images/pic/yzemelniy.jpg"></center>'
if placeMansion = 2:'<center><img src="images/pic/ystart.jpg"></center>'
if placeMansion = 3:'<center><img src="images/pic/yosobnak.jpg"></center>'
''

if car > 0 and cardrive = 18:
	cardrive = 18
	'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>.'
end

act 'Выйти в поселок':minut += 15 & gt'locmansion'

if bassMansion = 1:'<a href="exec:gt''ybass''">Бассейн</a>.'
if banaMansion >= 1:'<a href="exec:gt''yban''">Баня</a>.'
if placeMansion = 3:'<a href="exec:gt''ymans''">Особняк</a>.'

if karta >= 1500000 and placeMansion = 0:
	act 'Купить участок под коттедж (1,5 млн.руб)':
		cls
		karta -= 1500000
		placeMansion = 1
		minut += 5
		gs'stat'

		'Вы купили участок под коттедж'

		act 'Уйти':gt $curloc
	end
end

if karta >= 500000 and placeMansion = 1:
	act 'Оплатить подвод коммуникаций (500 тыс.руб)':
		cls
		karta -= 500000
		placeMansion = 2
		minut += 5
		gs'stat'

		'Вы оплатили подвод коммуникаций к участку'

		act 'Уйти':gt $curloc
	end
end

if karta >= 1500000 and placeMansion = 2:
	act 'Оплатить постройку здания (1,5 млн.руб)':
		cls
		karta -= 1500000
		placeMansion = 3
		minut += 5
		gs'stat'

		'Вы оплатили постройку корпуса особняка'

		act 'Уйти':gt $curloc
	end
end

if karta >= 500000 and placeMansion = 3 and ymanrem[3] = 0:
	act 'Оплатить постройку комнат (500 тыс.руб)':
		cls
		karta -= 500000
		ymanrem[3] = 1
		minut += 5
		gs'stat'

		'Вы оплатили постройку корпуса особняка'

		act 'Уйти':gt $curloc
	end
end

if placeMansion >= 2:
	if karta >= 800000 and banaMansion = 0:
		act 'Оплатить постройку бани (800 тыс.руб)':
			cls
			karta -= 800000
			banaMansion = 1
			minut += 5
			gs'stat'

			'Вы оплатили постройку корпуса особняка'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 500000 and bassMansion = 0:
		act 'Оплатить постройку бассейна (500 тыс.руб)':
			cls
			karta -= 500000
			bassMansion = 1
			minut += 5
			gs'stat'

			'Вы оплатили постройку бассейна'

			act 'Уйти':gt $curloc
		end
	end
end

if placeMansion = 3:
	if karta >= 250000 and ymanrem[3] = 1:
		act 'Оплатить ремонт холла (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[3] = 2
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 150000 and ymanrem[3] = 2:
		act 'Оплатить мебель для холла (150 тыс.руб)':
			cls
			karta -= 150000
			ymanrem[3] = 3
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[4] = 0:
		act 'Оплатить ремонт спальной (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[4] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 300000 and ymanrem[4] = 1:
		act 'Оплатить мебель для спальной (300 тыс.руб)':
			cls
			karta -= 300000
			ymanrem[4] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[5] = 0:
		act 'Оплатить ремонт ванной (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[5] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 250000 and ymanrem[5] = 1:
		act 'Оплатить мебель и сантехнику для ванной (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[5] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели и сантехники.'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[6] = 0:
		act 'Оплатить ремонт кухни (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[6] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 350000 and ymanrem[6] = 1:
		act 'Оплатить мебель для кухни (350 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[6] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели для кухни.'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[7] = 0:
		act 'Оплатить ремонт зала (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[7] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 250000 and ymanrem[7] = 1:
		act 'Оплатить мебель для зала (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[7] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели для зала'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[8] = 0:
		act 'Оплатить ремонт каминной комнаты (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[8] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 250000 and ymanrem[8] = 1:
		act 'Оплатить покупку мебели для каминной комнаты (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[8] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели.'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[9] = 0:
		act 'Оплатить ремонт детской комнаты (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[9] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 250000 and ymanrem[9] = 1:
		act 'Оплатить покупку мебели для детской комнаты (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[9] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[10] = 0:
		act 'Оплатить ремонт библиотеки (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[10] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 250000 and ymanrem[10] = 1:
		act 'Оплатить покупку мебели для библиотеки (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[10] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[11] = 0:
		act 'Оплатить ремонт спортзала (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[11] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 250000 and ymanrem[11] = 1:
		act 'Оплатить мебель для спортзала (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[11] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели для спортзала'

			act 'Уйти':gt $curloc
		end
	end

	if karta >= 250000 and ymanrem[12] = 0:
		act 'Оплатить ремонт кабинета (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[12] = 1
			minut += 5
			gs'stat'

			'Вы оплатили ремонт'

			act 'Уйти':gt $curloc
		end
	elseif karta >= 250000 and ymanrem[12] = 1:
		act 'Оплатить покупку мебели для кабинета (250 тыс.руб)':
			cls
			karta -= 250000
			ymanrem[12] = 2
			minut += 5
			gs'stat'

			'Вы оплатили покупку мебели.'

			act 'Уйти':gt $curloc
		end
	end
end
--- youplace ---------------------------------

