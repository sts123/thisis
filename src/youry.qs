# youry
$roomyour = {
	$nameV = 'Юрий'
	$boy = $nameV
	dick = 18
	silavag = 2
	harakBoy = 1
	NoGuy = 1
	GoToGuy = 1
	finance = 1
	act 'На кровать':gt'BDsex','start'
}

clr
minut = minut + 5
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Квартира Юрия</font></b></center>'
'<center><img src="images/peter/peterdoor.jpg"></center>'

act 'Выйти':
	cla
	minut = minut + 5
	gt'nord'
end

act 'Позвонить в дверь':
	cla

	if hour > 16:
		'Вы позвонили в дверь. Дверь очень быстро открылась, на пороге стоял Юрий. Он пригласил вас войти.'

		act 'Войти к Юрию':
			cls
			minut += 15
			gs'stat'

			'Вы вошли в квартиру к Юрию, он проводил вас в зал и усадил на кресло. Сходил на кухню и принес бутылку шампанского с виноградом.'

			act 'Выпивать с Юрием':
				cls
				minut += 15
				gs'stat'

				'Вы слушая как Юрий нахваливает ваши секс умения выпили шампанское. Юрий предложил пойти в кровать.'

				dynamic $roomyour
			end
		end

		exit
	else
		'Вы позвонили в дверь, но вам никто не открыл.'
	end

	act 'Отойти от двери':gt $curloc
end
--- youry ---------------------------------

