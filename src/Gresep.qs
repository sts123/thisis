# Gresep
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><H4>Ресепшен</H4></center>'
'<center><img src="images/pic/Gotel.jpg"></center>'
'За стойкой стоит симпатичная брюнетка.'

if GotelWork = 0 and GotelRoom = 0:
	if BeInOtel < 10:
		'Девушка улыбается вам и спрашивает "Желаете номер? 500 рублей в сутки."'
	elseif BeInOtel >= 10:
		'Девушка хитро улыбается вам и спрашивает "Желаете номер? 500 рублей в сутки. Или вы здесь по другому делу?"'
	end

!'
	if money >= 500:
		act 'Оплатить комнату':
			cls
			money -= 500
			Goteldaytot = daystart+1
			GotelRoom = 1
			gs'stat'

			'Вы оплатили проживание в отеле.'

			act 'Отойти':gt'Gotel'
		end
	end
'

	act 'Спросить работу':
		cls
		if GermanQW = 0:GermanQW = 1
		gs'stat'

		'Вы поинтересовались у девушки работой в отеле. Девушка пожала плечами, "Наймом работников занимается хозяин гостиницы Герман Леонидович, он бывает в гостинице в основном с 12 до 13."'

		act 'Отойти':gt'Gotel'
	end
end

act 'Отойти':gt'Gotel'

if GotelRoom > 0:
	act 'Идти в комнату':gt'Gotelroom'
end
--- Gresep ---------------------------------

