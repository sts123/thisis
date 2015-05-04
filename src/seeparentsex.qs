# seeparentsex
parentsexday = daystart
gs'stat'

'<center><img src="images/qwest/alter/ev2/see.jpg"></center>'
'Заглянув в дверь к родителям в спальную вы увидели как отчим трахает вашу маму раком.'

act 'Уйти':gt'korrPar'

if horny >= 50:
	act 'Подглядывать':
		cls
		horny += 10
		minut += 15
		gs'stat'

		'<center><img src="images/qwest/alter/ev2/see.jpg"></center>'
		'Вы подглядываете как ваша мамка подмахивает жопой отчиму.'

		act 'Уйти':gt'korrPar'
	end
end
--- seeparentsex ---------------------------------

