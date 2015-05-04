# enderKik
if $ARGS[0] = 'win':
	!KikWin = KikWin + 1
	pointKik = 0
	pointKikV = 0
	round = 0
	minround = 0
	if health < 10:health = 10

	if profi = 1:
		KikWinPro = KikWinPro + 1
		profi = 0
		rikudo = rikudo + 5

		act 'Уйти':gt'fit','start'
		exit
	elseif amature = 1:
		KikWinAm = KikWinAm + 1
		amature = 0
		amatReit = amatReit + 1
		money = money + 500 + kikmoney
		rikudo = rikudo + 5

		'Вам вручили приз 500 рублей.'

		gs'razrKik'

		act 'Уйти':gt'fit','razd'
		exit
	elseif sparing = 1:
		sparing = 0

		act 'Уйти':gt'fit','razd'
		exit
	end
end

if $ARGS[0] = 'winKO':
	!KikWin = KikWin + 1
	pointKik = 0
	pointKikV = 0
	round = 0
	minround = 0
	if health < 10:health = 10

	if profi = 1:
		KikWinPro = KikWinPro + 1
		KikKOPro = KikKOPro + 1
		profi = 0
		rikudo = rikudo + 10

		act 'Уйти':gt'fit','razd'
		exit
	elseif amature = 1:
		KikWinAm = KikWinAm + 1
		amatReit = amatReit + 1
		amature = 0
		money = money + 500
		rikudo = rikudo + 10

		'Вам вручили приз 500 рублей.'

		act 'Уйти':gt'fit','razd'
		exit
	elseif sparing = 1:
		sparing = 0

		act 'Уйти':gt'fit','razd'
		exit
	end
end

if $ARGS[0] = 'loss':
	!KikLoss = KikLoss + 1
	pointKik = 0
	pointKikV = 0
	round = 0
	minround = 0
	if health < 10:health = 10

	if profi = 1:
		KikLossPro = KikLossPro + 1
		profi = 0

		act 'Уйти':gt'fit','razd'
		exit
	elseif amature = 1:
		KikLossAm = KikLossAm + 1
		if amatReit > 0:amatReit = amatReit - 1
		amature = 0

		act 'Уйти':gt'fit','razd'
		exit
	elseif sparing = 1:
		sparing = 0

		act 'Уйти':gt'fit','razd'
		exit
	end
end

if $ARGS[0] = 'draw':
	!KikLoss = KikLoss + 1
	pointKik = 0
	pointKikV = 0
	round = 0
	minround = 0
	if health < 10:health = 10

	if profi = 1:
		KikDrawPro = KikDrawPro + 1
		profi = 0

		act 'Уйти':gt'fit','razd'
		exit
	elseif amature = 1:
		KikDrawAm = KikDrawAm + 1
		amature = 0

		act 'Уйти':gt'fit','razd'
		exit
	elseif sparing = 1:
		sparing = 0

		act 'Уйти':gt'fit','razd'
		exit
	end
end
--- enderKik ---------------------------------

