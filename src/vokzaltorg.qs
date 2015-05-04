# vokzaltorg
$d_kachatprava = {
	act 'Качать права':
		cls
		money = 0
		tovarL = 0
		minut += 120
		manna = 0
		gs'stat'

		'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
		'Вы решили покачать свои права, на что Полицейские отреагировали вполне ожидаемо, притащили вас в отделение, изъяли деньги и конфисковали товар. После того как вас промурыжили два часа, вас все же отпустили.'

		act 'Уйти':minut += 1 & gt'vokzalGin'
	end
}

cls
minut += 30
prodskill = vnesh+will+dom
if prodskill < 20:prodskill = 20
if prodskill > 150:minimumtov = 3
if prodskill > 100 and prodskill <= 150:minimumtov = 2
if prodskill < 100:minimumtov = 1
tovarand = RAND(minimumtov,prodskill/10)
if tovarand > tovarL:tovarand = tovarL
tovpay = tovarand*300
money += tovpay
tovarL -= tovarand
will += RAND(0,1)
TorgVokzalTimes += 1
dom += 1
gs'stat'

'<center><img src="images/qwest/vokzal/peron.jpg"></center>'
'Вам удалось втюхать <<tovarand>> единиц товара, заработав при этом <<tovpay>> рублей.'

act 'Уйти':
	cls
	gs'stat'

	'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
	'Возле платформы вас уже поджидает полиция. "Нарушаем? Торгуем без соответствующих бумаг?"'

	if money >= 500:
		act 'Заплатить 500 руб':
			cls
			money -= 500
			gs'stat'

			'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
			'Вы заплатили 500 рублей полицейскому. Он забрал деньги и тут же потерял интерес к вам.'

			act 'Уйти':minut += 1 & gt'vokzalGin'
		end
	end

	act 'Уговаривать простить':
		cls
		gs'stat'

		'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
		'Вы начали уговаривать капитана полиции простить вас и отпустить.'

		if katalkinSexOnce >= 1:
			if katalkinSexDay+7 >= daystart:
				'Капитан усмехнулся "Ну ты заходи ко мне в отделение."'

				act 'Уйти':minut += 1 & gt'vokzalGin'
			elseif katalkinSexDay+7 < daystart:
				'Капитан нахмурился "Ты давненько ко мне не заходила, избегаешь?"'

				act 'Нет, что ты, просто времени нет':
					cls
					gs'stat'

					'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
					'Вы начали оправдываться утверждая, что у вас просто времени не хватает. Капитан усмехнулся "Пойдем тогда прямо сейчас в отделение. Проведем телесный досмотр."'

					act 'Идти в отделение':minut += 5 & katalkinNoexit = 1 & gt'katalkin'
				end
			end
		elseif katalkinSexOnce = 0:
			schtraf = 500

			'Капитан усмехнулся "Пойдем тогда прямо сейчас в отделение. Там разберемся."'

			act 'Идти в отделение':minut += 5 & katalkinNoexit = 1 & gt'katalkin'
		end
	end

	dynamic $d_kachatprava
end
--- vokzaltorg ---------------------------------

