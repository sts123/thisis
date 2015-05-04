# cfnm
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	horny = horny + 5
	minut = minut + 15
	money = money - 50
	gs'stat'

	'<center><img src="images/picVA/cfnm.jpg"></center>'
	'Стриптизер обнажил вашу грудь и начал облизывать ваши соски.'

	if hour < 23:
		act 'Наслаждаться':gt'cfnm','tits'
		act 'Потрогать его член рукой':gt'cfnm','hand'
	end

	act 'Отойти':gt'stripclub','stolW'
end

if $ARGS[0] = 'tits':
	cla
	clr
	*clr
	horny = horny + 10
	minut = minut + 15
	gs'stat'

	'<center><img src="images/picVA/cfnm1.jpg"></center>'
	'Стриптизер обсасывает и покусывает ваши соски.'

	if horny < 90:
		if hour < 23:
			act 'Наслаждаться':gt'cfnm','eat'
			act 'Потрогать его член рукой':gt'cfnm','hand'
		end

		act 'Отойти':gt'stripclub','stolW'
	elseif horny >= 90:
		act 'Отдаться':gt'cfnm','sex'
	end
end

if $ARGS[0] = 'hand':
	cla
	clr
	*clr
	horny = horny + 5
	minut = minut + 15
	fotoCFNMblowjob += 1
	gs'stat'

	'<center><img src="images/picVA/cfnmHand.jpg"></center>'
	'Вы взяли член стриптизера рукой и начали ласкать его на глазах у других девушек.'

	act 'Взять в рот':gt'cfnm','blow'
	act 'Прекратить':gt'cfnm','eat'
end

if $ARGS[0] = 'eat':
	cla
	clr
	*clr
	horny = horny + 10
	minut = minut + 15
	gs'stat'

	'<center><img src="images/picVA/cfnm2.jpg"></center>'
	'Стриптизер накрыл вас полотенцем от окружающих вложил свой член вам в руку.'

	if horny < 90:
		if hour < 23:
			act 'Взять в рот':gt'cfnm','blow'
			act 'Дрочить у него':gt'cfnm','hand'
		end

		act 'Уйти от стриптизера':gt'stripclub','stolW'
	elseif horny >= 90:
		act 'Отдаться':gt'cfnm','sex'
	end
end

if $ARGS[0] = 'blow':
	cla
	clr
	*clr
	horny = horny + 10
	minut = minut + 15
	bj = bj + 1
	if stripguy = 0:stripguy = 1 & guy += 1
	gs'stat'

	'<center><img src="images/picVA/cfnmBlow.jpg"></center>'
	'Вы взяли в рот член спрятавшись от посторонних глаз за полотенцем стриптизера. Другие девушки заинтересовались сокрытым от их глаз и стриптизер убрал полотенце.'

	if horny < 90:
		if hour < 23:
			act 'Отсасывать на глазах у всех':gt'cfnm','blow2'
			act 'Прекратить сосать':gt'cfnm','hand'
		end

		act 'Уйти от стриптизера':gt'stripclub','stolW'
	elseif horny >= 90:
		act 'Отдаться':gt'cfnm','sex'
	end
end

if $ARGS[0] = 'blow2':
	cla
	clr
	*clr
	horny = horny + 10
	minut = minut + 15
	fotoCFNMblowjob += 1
	gs'stat'

	'<center><img src="images/picVA/cfnmBlow2.jpg"></center>'
	'Стриптизер убрал полотенце, вы покраснели от стыда, но продолжили у него сосать на глазах у смеющихся над вами девушек.'

	if horny < 90:
		act 'Окончание на лицо':gt'cfnm','blow4'
		act 'Окончание в рот':gt'cfnm','blow3'

		if DOM > 0:
			act 'Окончание на пол':gt'cfnm','end'
		end
	elseif horny >= 90:
		act 'Отдаться':gt'cfnm','sex'
	end
end

if $ARGS[0] = 'blow3':
	cla
	clr
	*clr
	horny = horny + 10
	minut = minut + 15
	cumlip = cumlip + 1
	swallow = swallow + 1
	!cumface = cumface + 1
	!facial = facial + 1
	SUB = SUB + 1
	fotoCFNMblowjobCum += 1
	gs'stat'

	'<center><img src="images/picVA/swallow.jpg"></center>'
	'Стриптизер вынимает член из вашего рта и дрочит его перед вашим лицом, вы покорно стоите перед ним на коленях с открытым ртом, наконец вязкие струи спермы приземляются вам в рот, вы облизываетесь и слизываете терпкую сперму со своих губ, вы сгораете от стыда когда окружающие зрители улюлюкают вам.'

	act 'Уйти от стриптизера':gt'stripclub','stolW'
end

if $ARGS[0] = 'blow4':
	cla
	clr
	*clr
	horny = horny + 10
	minut = minut + 15
	!cumlip = cumlip + 1
	!swallow = swallow + 1
	cumface = cumface + 1
	facial = facial + 1
	SUB = SUB + 1
	fotoCFNMblowjobCum += 1
	gs'stat'

	'<center><img src="images/picVA/facial.jpg"></center>'
	'Стриптизер вынимает член из вашего рта и дрочит его перед вашим лицом, вы покорно стоите перед ним на коленях, наконец вязкие струи спермы приземляются вам на щеку, вы краснеете от стыда когда окружающие зрители улюлюкают вам.'

	act 'Уйти от стриптизера':gt'stripclub','stolW'
end

if $ARGS[0] = 'end':
	cla
	clr
	*clr
	horny = horny + 10
	minut = minut + 15
	!cumlip = cumlip + 1
	!swallow = swallow + 1
	gs'stat'

	'<center><img src="images/picVA/end.jpg"></center>'
	'Вы убираете член стриптизера от своего лица и он кончает на пол.'

	act 'Уйти от стриптизера':gt'stripclub','stolW'
end

if $ARGS[0] = 'sex':
	cla
	clr
	*clr
	horny = 0
	minut = minut + 15
	!cumlip = cumlip + 1
	!swallow = swallow + 1
	!cumface = cumface + 1
	!facial = facial + 1
	sex = sex + 1
	cumass = cumass + 1
	SUB = SUB + 5
	fotoCFNMsex += 1
	if stripguy = 0:stripguy = 1 & guy += 1
	manna = manna + 15
	willpower = willpower + 15
	orgasm = orgasm + 1
	vagina = vagina + 1
	gs'stat'

	'<center><img src="images/picVA/sex.jpg"></center>'
	'Стриптизер разворачивает вас и ставит раком, его член таранит вашу истекающую влагой киску, на вас моментально обрушивается оргазм. Вы стоните и визжите, толпа улюлюкает и стриптизер засовывает свои пальцы вам в рот, вы в экстазе обсасываете их и наконец стриптизер вынимает свой член из вас и кончает вам на задницу.'

	act 'Уйти от стриптизера':gt'stripclub','stolW'
end
--- cfnm ---------------------------------

