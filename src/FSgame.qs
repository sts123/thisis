# FSgame
minut += 1
gs'stat'
gs'FSstat'

'<center><b>Комната в отеле</b></center>'
''

if FSmedkit > 0:
	'Аптечек <<FSmedkit>> штук'

	if FSHP < 100:
		act 'Лечиться':
			cls
			FShour += 1
			FSHP = 100
			FSmedkit -= 1
			minut += 1
			gs'stat'

			'Вы излечили здоровье при помощи аптечки.'

			act 'Далее':gt $curloc
		end
	end
end

act 'Бездельничать':
	cls
	FShour += 1
	minut += 1
	gs'stat'

	'Вы бездельничали в квартире, валяясь на диване и думая, как вам выкручиваться из создавшегося положения.'

	act 'Далее':gt $curloc
end
act 'Выйти из комнаты':
	cls
	FShour += 1
	minut += 1
	gs'stat'

	!'Вы вышли из комнаты.'

	gt'FSroom'
end
--- FSgame ---------------------------------

