# sauna
clr
sauna += 1
gs'stat'

'<center><b>Сауна</b></center>'
'<center><img src="images/pic/sauna.jpg"></center>'
'Отлично отремонтированная сауна.'

act 'Уйти':minut += 15 & gt'street'

!if saunaWorkWhore > 0:act 'Идти на работу':gt'saunawork'
if SaunaWhore > 0:act 'Идти работать шлюхой':gt'saunawork'

if week = 5 and workDisk = 2:
	'У входа вас уже ждет крепкий мужчина ожидая от вас диска.'

	act 'Отдать диск':
		cls
		minut += 20
		workDisk = 3
		konvert = 1
		gs'stat'

		'Вы отдали диск и вам вручили толстый конверт.'

		act 'Уйти':minut += 15 & gt'street'
	end
end

if hour >= 8 and hour <= 23:act 'Идти в сауну':gt'sauna2'
--- sauna ---------------------------------

