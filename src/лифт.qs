# лифт
act 'Вернуться':
	gt'гостиница'
end
act 'Отправиться в свой номер':
	msg 'Извините, но лифт временно не работает'
	gt'лифт'
!'
	if nomer = 0:
		msg 'У вас нет оплаченного номера в этой гостинице'
		gt'лифт'
	elseif nomer = 1:
		gt'номер1'
	elseif nomer = 2:
		gt'номер2'
	elseif nomer = 3:
		gt'номер3'
	elseif nomer = 4:
		gt'номер4'
	end
'
end
--- лифт ---------------------------------

