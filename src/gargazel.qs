# gargazel
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><H4>Гараж</H4></center>'

if father_go = 1 and hour >= 16 and hour < 21:
	'<center><img src="images/pic/gargazel.jpg"></center>'
	'Большой гараж в котором храниться газель отчима.'
else
	'<center><img src="images/pic/gargazel_empty.jpg"></center>'
	'Большой гараж в котором храниться газель отчима. Сейчас гараж закрыт на замок.'
end

act 'Уйти':minut += 5 & gt'garmassiv'

if father_go = 1 and hour >= 16 and hour < 21:
	'Сейчас отчим в гараже, чинит машину.'

	act 'Помогать':
		cls
		minut += 15
		father += RAND(1,3)
		gs'stat'

		'Вы стали помогать отчиму чинить машину, подавали ему ключи и болтики.'

		act 'Далее':gt $curloc

		if father >= 80 and hour = 20:
			'Отчим достал из ящика бутылку водки и банку соленых огурцов. "Выпью я пожалуй после работы."'

			act 'Далее':
				cls
				minut += 60
				father += RAND(1,3)
				gs'stat'

				'Отчим налил себе рюмку водки и выпил. Вы с ним стали разговаривать обо всем подряд.'

				act 'Далее':gt $curloc
			end
		end
	end
end

if YouCanGar > 0:
	'В гараже есть хранится <<GarTorgItem>> единиц товара, при общей вместимости 100 единиц. Для того, что бы суметь продать товар из гаража, надо перенести его в свою комнату.'

	if tovarL >= 30:
		'Дома и так все забито товаром, переносить просто некуда.'
	elseif tovarL < 30:
		perenGarTov = 30-tovarL

		'Я бы могла перенести из гаража <<perenGarTov>> единиц товара в комнату.'

		if GarTorgItem > 0:
			if GarTorgItem >= perenGarTov:
				act 'Перенести <<perenGarTov>> единиц товара':
					cls
					minut += 60
					tovarL += perenGarTov
					GarTorgItem -= perenGarTov
					gs'stat'

					'Вы целый час разбирались с товаром и переносили его из гаража в квартиру.'

					act 'Далее':gt $curloc
				end
			end
			if GarTorgItem < perenGarTov:
				act 'Перенести <<GarTorgItem>> единиц товара':
					cls
					minut += 60
					tovarL += GarTorgItem
					GarTorgItem = 0
					gs'stat'

					'Вы целый час разбирались с товаром и переносили его из гаража в квартиру.'

					act 'Далее':gt $curloc
				end
			end
		end
	end
end
--- gargazel ---------------------------------

