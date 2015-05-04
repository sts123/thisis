# FSroom
minut += 1
gs'stat'
gs'FSstat'

'<center><b>Улица</b></center>'

act 'Идти в комнату':
	cls
	FShour += 1
	minut += 1
	gs'stat'

	!'Вы вышли из комнаты.'

	gt'FSgame'
end
act 'Бродить':
	cls
	FShour += 1
	minut += 1
	gs'stat'

	'Вы бродите по пустынным улицам.'

	act 'Далее':gt $curloc
end
--- FSroom ---------------------------------

