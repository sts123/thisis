# priziv
if $ARGS[0] = 'tobi':
	$nameV = 'Тоби'
	!Статы
	strenV = 300
	speedV = 100
	agilV = 100
	reactV = 100
	vitalV = 100
	intelV = 100
	willV = 200
	!Навыки
	magikV = 12
	boxingV = 100
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 6
	unmaterialV = 40

	stunV = 0
end

if $ARGS[0] = 'sasori':
	$nameV = 'Кукла Сасори'
	!Статы
	strenV = 100

	if SasoriBody = 5:
		speedV = 100
		agilV = 100
		reactV = 100
	end
	if SasoriBody = 4:
		speedV = 110
		agilV = 100
		reactV = 100
	end
	if SasoriBody = 3:
		speedV = 120
		agilV = 105
		reactV = 105
	end
	if SasoriBody = 2:
		speedV = 130
		agilV = 110
		reactV = 110
	end

	vitalV = 100
	intelV = 100
	willV = 100
	!Навыки
	magikV = 10
	boxingV = 100
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 9
	klonV = 3
	stunV = 0
end

if $ARGS[0] = 'sasori1':
	$nameV = 'Сасори'
	!Статы
	strenV = 500
	speedV = 140
	agilV = 120
	reactV = 110
	vitalV = 500
	intelV = 100
	willV = 100
	!Навыки
	magikV = 10
	boxingV = 105
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 9
	klonV = 3
	stunV = 0
end
--- priziv ---------------------------------

