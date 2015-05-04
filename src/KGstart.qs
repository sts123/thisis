# KGstart
$KGOLklassvibor = {
	cls
	'Необходимо выбрать класс персонажа.'

	if KGOLrace = 1:
		'Для людей доступные классы Воин, Вор, Маг.'

		act 'Воин':$KGOLklass = 'Воин' & KGOLklass = 1 & dynamic $KGOLklassvibor2
		act 'Вор':$KGOLklass = 'Вор' & KGOLklass = 2 & dynamic $KGOLklassvibor2
		act 'Маг':$KGOLklass = 'Маг' & KGOLklass = 3 & dynamic $KGOLklassvibor2
	elseif KGOLrace = 2:
		'Для эльфов доступные классы Жрец, Лучник.'

		act 'Жрец':$KGOLklass = 'Жрец' & KGOLklass = 4 & dynamic $KGOLklassvibor2
		act 'Лучник':$KGOLklass = 'Лучник' & KGOLklass = 5 & dynamic $KGOLklassvibor2
	else
		'Для звероидов доступные классы Варвар.'

		act 'Варвар':$KGOLklass = 'Варвар' & KGOLklass = 6 & dynamic $KGOLklassvibor2
	end
}

$KGOLklassvibor2 = {
	cls
	KGOLexp = 0
	KGOLlvl = 1
	KGOLbrona = 0
	KGOLwpower = 0

	if KGOLklass = 1:
		KGOLstren = 30
		KGOLspeed = 20
		KGOLvital = 30
		KGOLintel = 20
	elseif KGOLklass = 2:
		KGOLstren = 20
		KGOLspeed = 30
		KGOLvital = 20
		KGOLintel = 30
	elseif KGOLklass = 3:
		KGOLstren = 10
		KGOLspeed = 20
		KGOLvital = 20
		KGOLintel = 50
	elseif KGOLklass = 4:
		KGOLstren = 10
		KGOLspeed = 10
		KGOLvital = 10
		KGOLintel = 70
	elseif KGOLklass = 5:
		KGOLstren = 20
		KGOLspeed = 40
		KGOLvital = 10
		KGOLintel = 30
	else
		KGOLstren = 40
		KGOLspeed = 10
		KGOLvital = 40
		KGOLintel = 10
	end

	KGHP = KGOLvital*10
	KGManna = KGOLintel*10

	'<<$KGOLname>> <<$KGOLrace>> <<$KGOLklass>> <<KGOLlvl>> уровня'

	act 'Играть':KGOLpers = 1 & gt'KGOLgame'
	act 'Удалить персонажа':
		KGOLpers = 0
		gt $curloc
	end
}

minut += 1
gs'stat'

if KFOnLineReaga > 0:
	'Добро пожаловать в игру Vertep World. Вы можете играть еще <<KFOnLineReaga>> дней'
	'Вы в любое время можете заплатить с банковской карты, что бы продлить время действия аккаунта.'
	'30 дней 1000 рублей, на вашей банковской карте <<karta>> рублей'

	if KGOLpers > 0:
		'Вы можете войти в игру своим персонажем или удалить его'
		'<<$KGOLname>> <<$KGOLrace>> <<$KGOLklass>> <<KGOLlvl>> уровня'

		act 'Играть':gt'KGOLgame'
		act 'Удалить персонажа':
			KGOLpers = 0
			gt $curloc
		end
	else
		'Вы можете создать персонажа'

		act 'Создать персонажа':
			cls
			$KGOLname = input("Введите ваш ник")
			if $KGOLname <= 0:msg'Не допустимый ник' & gt $curloc

			'Ваш ник <<$KGOLname>>'
			'Необходимо выбрать расу игрока'

			act 'Человек':$KGOLrace = 'Человек' & KGOLrace = 1 & dynamic $KGOLklassvibor
			act 'Эльф':$KGOLrace = 'Эльф' & KGOLrace = 2 & dynamic $KGOLklassvibor
			act 'Звероид':$KGOLrace = 'Звероид' & KGOLrace = 3 & dynamic $KGOLklassvibor
		end
	end

	if karta >= 1000:
		act 'Оплата аккуаунта':
			karta -= 1000
			KFOnLineReaga += 30
			gt $curloc
		end
	end

	if karta > 0:
		act 'Донат денег в игру (1руб = 1монета)':
			cla
			KGOLdonat = input("Сколько денег вы хотите задонатить?")

			if KGOLdonat <= 0 or KGOLdonat > karta:
				msg'Не допустимая операция'
			else
				karta -= KGOLdonat
				KGOLmoney += KGOLdonat
				msg'На ваш счет переведено <<KGOLdonat>> монет'
			end

			gt $curloc
		end
	end
else
	'Добро пожаловать в онлайн игру Vertep World'
	'Что бы играть в эту игру нужно заплатить 1000 руб за 30 дней с банковской карты.'

	if karta >= 1000:
		act 'Оплата':
			karta -= 1000
			KFOnLineReaga += 30
			gt $curloc
		end
	end
end

act 'Выйти':gt'Komp','start'
--- KGstart ---------------------------------

