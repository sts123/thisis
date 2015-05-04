# billiard
$sexloc = $CURLOC
cla
*clr
gs'stat'

'<center><b>Бильярдная</b></center>'
'<center><img src="images/img/centr/bil.jpg"></center>'
'Довольно большая бильярдная, здесь много столов в зале, но есть и столы в отдельных кабинках.'

act 'Уйти':gt'torgcentr'

if hour >= 8 and hour <= 20:
	if money >= 250:
		act 'Сыграть 250 руб час':
			money -= 250
			minut += 60
			billvar = 0
			billiardnav += RAND(0,3)

			billrand = RAND(0,5)
			if billrand = 0:
				cla
				'К вам подходит парень и предлагает сыграть с ним'

				if money >= 1000:act 'Играть на деньги, ставка 1000':gt'billiard','randwin'

				if DOM > 20 and strapon = 1:
					act 'Играем на твою задницу, проиграю трахнешь меня':
						billvar = 1
						gt'billiard','randwin'
					end
				end

				act 'Уйти':gt'billiard'
			elseif billrand = 1:
				cla
				'К вам подходит несколько парней и предлагают сыграть с ними'

				if money >= 1000:act 'Играть на деньги, ставка 1000':gt'billiard','randwin'

				if DOM > 20 and strapon = 1:
					act 'Играем на ваши задницы, проиграю трахните меня':
						billvar = 2
						gt'billiard','randwin'
					end
				end

				act 'Уйти':gt'billiard'
			elseif billrand > 1:
				cla
				'Вы поиграли в бильярд'

				act 'Уйти':gt'billiard'
			end
		end
	end

	if money >= 300:
		act 'Сыграть на деньги':
			money -= 300
			minut += 60
			billvar = 3
			gt'billiard','randwin'
		end
	end
end

if $ARGS[0] = 'randwin':
	cla
	if billiardnav < 10:billwin = RAND(0,10)
	if billiardnav >= 10 and billiardnav < 20:billwin = RAND(0,12)
	if billiardnav >= 20 and billiardnav < 30:billwin = RAND(0,14)
	if billiardnav >= 30 and billiardnav < 40:billwin = RAND(0,16)
	if billiardnav >= 40 and billiardnav < 50:billwin = RAND(0,18)
	if billiardnav >= 50 and billiardnav < 60:billwin = RAND(0,20)
	if billiardnav >= 60 and billiardnav < 70:billwin = RAND(0,22)
	if billiardnav >= 70 and billiardnav < 80:billwin = RAND(0,24)
	if billiardnav >= 80 and billiardnav < 90:billwin = RAND(0,26)
	if billiardnav >= 90:billwin = RAND(0,28)

	if billwin > 10 and billvar = 0:
		money += 1000

		'Вы выиграли и получили 1000 руб.'

		act 'Уйти':gt'billiard'
	elseif billwin > 10 and billvar = 1:
		*clr
		DOM += 5

		'<center><img src="images/img/centr/strapon.jpg"></center>'
		'Вы выиграли, одели страпон, и посмотрели на парня: "Ну что стоишь нагибайся, сегодня ты моя сучка"'
		'Парень спустил штаны и встал раком, вы оттрахали его страпоном.'

		act 'Уйти':gt'billiard'
	elseif billwin > 10 and billvar = 2:
		DOM += 8

		'<center><img src="images/img/centr/strapon.jpg"></center>'
		'Вы выиграли одели страпон, и посмотрели на парней: "Ну же девочки спускаем трусишки и встаем в очередь я сейчас весь этот гарем ебать буду"'
		'Вы трахали их всех по очереди.'

		act 'Уйти':gt'billiard'
	elseif billwin > 10 and billvar = 3:
		money += 300

		'Вы выиграли и получили 300 руб.'

		act 'Уйти':gt'billiard'
	elseif billwin <= 10 and billvar = 0:
		money -= 1000

		'Вы проиграли и заплатили 1000 руб.'

		act 'Уйти':gt'billiard'
	elseif billwin <= 10 and billvar = 1:
		picrand = 16

		'Вы проиграли, придется раздвигать ноги.'

		act 'Платить':xgt'sex','var'
	elseif billwin <= 10 and billvar = 2:
		'Вы проиграли, придется раздвигать ноги.'

		act 'Платить':gt'paysex','var'
	elseif billwin <= 10 and billvar = 3:
		money -= 300

		'Вы проиграли и заплатили 300 руб.'

		act 'Уйти':gt'billiard'
	end
end

if $ARGS[0] = 'start':
	'<center><b>Биллиардная</b></center>'
	'<center><img src="images/img/centr/bil.jpg"></center>'

	act 'Уйти':gt'billiard'
end
--- billiard ---------------------------------

