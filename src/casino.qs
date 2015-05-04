# casino
minut += 10
gs'stat'

'<right><img src="images/casino/zdcasino.jpg"></right>'
'Вы стоите перед дверью огромного здания казино.'

act 'Войти в казино':
	gt'холл'
end
act 'Вернуться в Северный район':
	gt'nord'
end

!if tobiQW < 1000:tobiQW = 1000
--- casino ---------------------------------

