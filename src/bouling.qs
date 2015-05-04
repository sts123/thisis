# bouling
$sexloc = $CURLOC

gs'stat'

'<center><b>Боулинг</b></center>'
'<center><img src="images/img/centr/boul.jpg"></center>'

act 'Уйти':gt'torgcentr'

if hour >= 8 and hour <= 20:
	act 'Сыграть 300 руб час':
		if money < 300:
			'У вас нет денег'
		elseif money >= 300:
			money -= 300
			minut += 60
			boulvar = 0
			boulingnav += RAND(0,3)

			boulrand = RAND(0,9)
			if boulrand = 0:
				cla
				'К вам подходят двое парней и предлагают сыграть с ними'

				act 'Играть на деньги, ставка 2000':boulvar = 1 & gt'bouling','randwin'
				act 'Уйти':gt'torgcentr'
			elseif boulrand = 1:
				cla
				'К вам подходят две девушки и предлагают сыграть с ними против двух парней, приз 5000, при проигрыше секс.'

				act 'Играть':boulvar = 2 & gt'bouling','randwin'
				act 'Уйти':gt'torgcentr'
			elseif boulrand > 1:
				cla
				'Вы поиграли в бильярд'

				act 'Уйти':gt'torgcentr'
			end
		end
	end

	if money >= 300:
		act 'Сыграть на деньги':
			money -= 300
			minut += 60
			boulvar = 0
			gt'bouling','randwin'
		end
	end
end

if $ARGS[0] = 'randwin':
	cla
	if boulingnav < 10:boulwin = RAND(0,10)
	if boulingnav >= 10 and boulingnav < 20:boulwin = RAND(0,12)
	if boulingnav >= 20 and boulingnav < 30:boulwin = RAND(0,14)
	if boulingnav >= 30 and boulingnav < 40:boulwin = RAND(0,16)
	if boulingnav >= 40 and boulingnav < 50:boulwin = RAND(0,18)
	if boulingnav >= 50 and boulingnav < 60:boulwin = RAND(0,20)
	if boulingnav >= 60 and boulingnav < 70:boulwin = RAND(0,22)
	if boulingnav >= 70 and boulingnav < 80:boulwin = RAND(0,24)
	if boulingnav >= 80 and boulingnav < 90:boulwin = RAND(0,26)
	if boulingnav >= 90:boulwin = RAND(0,28)

	if boulwin > 10 and boulvar = 0:
		money += 300

		'Вы выиграли и получили 300 руб.'

		act 'Уйти':gt'torgcentr'
	elseif boulwin > 10 and boulvar = 1:
		money += 2000

		'Вы выиграли и получили 2000 руб.'

		act 'Уйти':gt'torgcentr'
	elseif boulwin > 10 and boulvar = 2:
		money += 5000

		'Вы выиграли и получили 5000 руб.'

		act 'Уйти':gt'torgcentr'
	elseif boulwin <= 10 and boulvar = 0:
		money -= 300

		'Вы проиграли и заплатили 300 руб.'

		act 'Уйти':gt'torgcentr'
	elseif boulwin <= 10 and boulvar = 1:
		picrand = 14

		if money >= 2000:
			'Вы проиграли и должны заплатить 2000 руб.'

			act 'Предложить натурой':xgt'sexdvoe','var'
			act 'Заплатить':
				money -= 2000
				gt'torgcentr'
			end
		elseif money < 2000:
			'Вы проиграли, но у вас нет денег чтобы расплатиться, способ оплаты лишь один.'

			act 'Натурой':xgt'sexdvoe','var'
		end
	elseif boulwin <= 10 and boulvar = 2:
		picrand = 11

		'Вы проиграли, придется раздвигать ноги.'

		act 'Платить':gt'sexorg','var'
	end
end

if $ARGS[0] = 'start':
	'<center><b>Боулинг</b></center>'
	'<center><img src="images/img/centr/boul.jpg"></center>'

	act 'Уйти':gt'bouling'
end
--- bouling ---------------------------------

