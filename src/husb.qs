# husb
if $ARGS[0] = 'start':
	clr
	gs'stat'

	if week < 6:
		if hour > 22 or hour < 7:
			'Ваш муж <<$husName>> лежа в кровати открывает глаза. "Чего тебе? Ночь уже, иди спать."'
		elseif hour = 7:
			'<<$husName>> сидит за кухонным столом.'
		elseif hour = 17:
			'<<$husName>> сидит за кухонным столом.'
		elseif hour > 17 and hour <= 22:
			'<<$husName>> сидит на диване и смотрит телевизор.'
		end
	else
		if hour > 22 or hour < 7:
			'Ваш муж <<$husName>> лежа в кровати открывает глаза. "Чего тебе? Ночь уже, иди спать."'
		elseif hour = 7:
			'<<$husName>> сидит за кухонным столом.'
		elseif hour > 7 and hour < 17:
			'<<$husName>> сидит на диване и смотрит телевизор.'
		elseif hour = 17:
			'<<$husName>> сидит за кухонным столом.'
		elseif hour > 17 and hour <= 22:
			'<<$husName>> сидит на диване и смотрит телевизор.'
		end
	end

	act 'Уйти':gt $loc, $metka

	if husbandsexday < 4:
		act 'Секс с мужем':gt'husbsex','room'
	end
end
--- husb ---------------------------------

