# Autofight
if Formula = 0:Formula = 3

$endurdin = {
	Ken = (musle[a]/100)*Kus/100
	if ken <= 0:ken = 1
	Kene = (musle[i]/100)*Kuse/100
	if kene <= 0:kene = 1

	KoefUder = RAND(Uder*20/100,Uder)
	KoefUderE = RAND(Udere*20/100,Udere)
	KoefBros = RAND(Brosok*20/100,Brosok)
	KoefBrosE = RAND(Brosoke*20/100,Brosoke)
	KoefProt = RAND(Zash*20/100,Zash)
	KoefProtE = RAND(Zashe*20/100,Zashe)
}

$uderdin = {
	Kus = 5
	Kuse = 10
	dynamic $endurdin
	endur -= ken
	endurE -= kene
	Aktiv = (strenW/2)+agilW+RAND(0,lustW)+KoefUder
	Aktiv = Aktiv*endur/endurMax
	Passiv = (((strenWE+(agilWE/2))*koefE)/100)+RAND(0,lustWE)+KoefProtE
	Passiv = Passiv*endurE/endurMaxE
}

$uderdinE = {
	Kus = 10
	Kuse = 5
	dynamic $endurdin
	endur -= ken
	endurE -= kene
	Aktiv = (strenWE/2)+agilWE+RAND(0,lustWE)+KoefUdere
	Aktiv = Aktiv*endurE/endurMaxE
	Passiv = (((strenw+(agilw/2))*koef)/100)+RAND(0,lustw)+KoefProt
	Passiv = Passiv*endur/endurMaxE
}

$brosdin = {
	Kus = 10
	Kuse = 10
	dynamic $endurdin
	endur -= ken
	endurE -= kene
	Aktiv = strenw+(agilw/2)+RAND(0,lustw)+KoefBros
	Aktiv = Aktiv*endur/endurMax
	Passiv = (((strenwE/2)+agilwE)*koefE/100)+RAND(0,lustwE)+KoefProtE
	Passiv = Passiv*endurE/endurMaxE
}

$brosdinE = {
	Kus = 10
	Kuse = 10
	dynamic $endurdin
	endur -= ken
	endurE -= kene
	Aktiv = strenwE+(agilwE/2)+RAND(0,lustwE)+KoefBrosE
	Aktiv = Aktiv*endurE/endurMaxE
	Passiv = (((strenw/2)+agilw)*koef/100)+RAND(0,lustw)+KoefProt
	Passiv = Passiv*endur/endurMax
}

point = 0
pointE = 0
$nameE = $nikname[i]
$nameA = $nikname[a]
strenW = musle[a]/10
strenWE = musle[i]/10
agilW = flex[a]/10
agilWE = flex[i]/10
lustMax = wipo[a]
lustMaxE = wipo[i]
lustW = lustMax
lustWe = lustMaxe
Brosok = Bteh[a]/10
BrosokE = Bteh[i]/10
Uder = Uteh[a]/10
Udere = Uteh[i]/10
Zash = Zteh[a]/10
Zashe = Zteh[i]/10

resultFight = 0
endurMax = stamina[a]/10
endurMaxE = stamina[i]/10
endur = endurMax
endurE = endurMaxE
croonce = 0
round = 1
rMin = 8
stoper = 0

Ku = 0
Kb = 0
Kz = 0
KuE = 0
KbE = 0
KzE = 0

if strenw > strenwE:
	point += 1
	lustw += 1
	crouch = 1
elseif strenw < strenwE:
	pointE += 1
	lustwE += 1
	crouch = 0
elseif strenw = strenwE:
	varrand = RAND(0,1)
	if varrand = 0:crouch = 1
	if varrand = 1:crouch = 0
end

:markFightCrouch
stoper = 0
if crouch = 1:
	enrand = RAND(0,1)
	arand = RAND(0,1)
	if arand = 0:
		endur -= 2

		if enrand = 0:
			pointE += 1
			jump'markfight'
		elseif enrand = 1:
			point += 2
			endurE -= 1
			jump'markfight1'
		end
	elseif arand = 1:
		endur -= 1

		if enrand = 0:
			point += 1
			jump'markfight2'
		elseif enrand = 1:
			pointE += 1
			endurE -= 1
			jump'markfight3'
		end
	end
else
	enrand = RAND(0,1)
	arand = RAND(0,1)
	if arand = 0:
		if enrand = 0:
			point += 1
			endurE -= 2
			jump'markfightE'
		elseif enrand = 1:
			pointE += 1
			endurE -= 1
			jump'markfightE1'
		end
	elseif arand = 1:
		endur -= 1

		if enrand = 0:
			pointE += 2
			endurE -= 2
			jump'markfightE2'
		elseif enrand = 1:
			point += 1
			endurE -= 1
			jump'markfightE3'
		end
	end
end

:markfight
koef = 100
koefE = 90
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		arand = RAND(0,1)
		if arand = 0:
			dynamic $uderdin

			if Aktiv > Passiv:
				point += 1
				Ku += 1
				stoper = 0
				jump'markfight2'
			elseif Aktiv < Passiv:
				pointE += 1
				KzE += 1
				stoper = 0
				jump'markfight3'
			elseif Aktiv = Passiv:
				jump'markfight'
			end
		elseif arand = 1:
			dynamic $brosdin

			if Aktiv > Passiv:
				point += 2
				lustw += 1
				Kb += 1
				stoper = 0
				jump'markfight1'
			elseif Aktiv < Passiv:
				pointE += 1
				KzE += 1
				stoper = 0
				jump'markfight3'
			elseif Aktiv = Passiv:
				jump'markfight'
			end
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	pointE += 1
	jump'markRoundStop'
end

:markfight1
koef = 100
koefE = 85
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		dynamic $uderdin

		if Aktiv > Passiv:
			point += 1
			Ku += 1
			stoper = 0
			jump'markfight2'
		elseif Aktiv < Passiv:
			pointE += 1
			KzE += 1
			stoper = 0
			jump'markfight3'
		elseif Aktiv = Passiv:
			jump'markfight1'
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	pointE += 1
	jump'markRoundStop'
end

:markfight2
koef = 100
koefE = 80
lustE -= 1
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		dynamic $uderdin
		endurE -= 2

		if Aktiv >= Passiv:
			point += 1
			lustwE -= 1
			Ku += 1
			jump'markfight2'
		elseif Aktiv < Passiv:
			pointE += 1
			KzE += 1
			stoper = 0
			jump'markfight3'
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	point += 3
	jump'markRoundStop'
end

:markfight3
koef = 100
koefE = 100
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		arand = RAND(0,1)
		if arand = 0:
			dynamic $uderdin

			if Aktiv > Passiv:
				point += 1
				Ku += 1
				stoper = 0
				jump'markfight2'
			elseif Aktiv <= Passiv:
				pointE += 1
				KzE += 1
				jump'markRoundStop'
			end
		elseif arand = 1:
			dynamic $brosdin

			if Aktiv > Passiv:
				point += 2
				lustw += 1
				Kb += 1
				stoper = 0
				jump'markfight1'
			elseif Aktiv <= Passiv:
				pointE += 1
				KzE += 1
				jump'markRoundStop'
			end
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	pointE += 1
	jump'markRoundStop'
end

:markfightE
koef = 90
koefE = 100
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		deystrand = RAND(0,1)
		if deystrand = 0:
			dynamic $uderdinE

			if Aktiv > Passiv:
				pointE += 1
				KuE += 1
				stoper = 0
				jump'markfightE1'
			elseif Aktiv < Passiv:
				point += 1
				Kz += 1
				stoper = 0
				jump'markfightE3'
			elseif Aktiv = Passiv:
				jump'markfightE'
			end
		elseif deystrand = 1:
			dynamic $brosdinE

			if Aktiv > Passiv:
				pointE += 2
				lustwE += 1
				KbE += 1
				stoper = 0
				jump'markfightE2'
			elseif Aktiv < Passiv:
				point += 1
				Kz += 1
				stoper = 0
				jump'markfightE3'
			elseif Aktiv = Passiv:
				jump'markfightE'
			end
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	point += 1
	jump'markRoundStop'
end

:markfightE1
koef = 80
koefE = 100
lust -= 1
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		dynamic $uderdinE
		endur -= 2

		if Aktiv >= Passiv:
			pointE += 1
			lustw -= 1
			KuE += 1
			jump'markfightE1'
		elseif Aktiv < Passiv:
			point += 1
			Kz += 1
			stoper = 0
			jump'markfightE3'
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	pointE += 3
	jump'markRoundStop'
end

:markfightE2
koef = 85
koefE = 100
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		dynamic $uderdinE

		if Aktiv > Passiv:
			pointE += 1
			KuE += 1
			stoper = 0
			jump'markfightE1'
		elseif Aktiv < Passiv:
			point += 1
			Kz += 1
			stoper = 0
			jump'markfightE3'
		elseif Aktiv = Passiv:
			jump'markfightE2'
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	point += 1
	jump'markRoundStop'
end

:markfightE3
koef = 100
koefE = 100
rMin -= 1
stoper += 1
if endur <= 0 or lustw <= 0:jump'markSubLoss'
if endurE <= 0 or lustwE <= 0:jump'markSubWin'

if stoper < 3:
	if rMin > 0:
		deystrand = RAND(0,1)
		if deystrand = 0:
			dynamic $uderdinE

			if Aktiv > Passiv:
				pointE += 1
				KuE += 1
				stoper = 0
				jump'markfightE1'
			elseif Aktiv <= Passiv:
				point += 1
				Kz += 1
				jump'markRoundStop'
			end
		elseif deystrand = 1:
			dynamic $brosdinE

			if Aktiv > Passiv:
				pointE += 2
				lustwE += 1
				KbE += 1
				stoper = 0
				jump'markfightE2'
			elseif Aktiv <= Passiv:
				point += 1
				Kz += 1
				jump'markRoundStop'
			end
		end
	else
		jump'markRoundEnd'
	end
elseif stoper >= 3:
	point += 1
	jump'markRoundStop'
end

:markRoundStop
stoper = 0
if crouch = 1 and croonce = 0:crouch = 0 & croonce = 1
if crouch = 0 and croonce = 0:crouch = 1 & croonce = 1
croonce = 0
jump'markFightCrouch'
:markSubWin
resultFight = 0
jump'markEndFight'
:markSubLoss
resultFight = 4
jump'markEndFight'
:markRoundEnd
round += 1
rMin = 8
stoper = 0

if round = Formula+1:
	if point > pointE:
		resultFight = 1
	elseif point < pointE:
		resultFight = 3
	elseif point = pointE:
		resultFight = 2
	end

	jump'markEndFight'
elseif round < Formula+1:
	endur += lustw*25/100
	endurE += lustwe*25/100
	if crouch = 1 and croonce = 0:crouch = 0 & croonce = 1
	if crouch = 0 and croonce = 0:crouch = 1 & croonce = 1
	croonce = 0
	jump'markFightCrouch'
end

:markEndFight
if NoView = 0:'<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>>'
if NoView = 0:'<<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>>'
if NoView = 0:'<<point>> очков <<$nameA>> <<Ku>> активных действий в атаках удержанием, <<Kb>> активных действий в атаках бросками, <<Kz>> удачных защит.'
if NoView = 0:'<<pointE>> очков <<$nameE>> <<KuE>> активных действий в атаках удержанием, <<KbE>> активных действий в атаках бросками, <<KzE>> удачных защит.'

if resultFight = 0:
	wipo[a] += 2
	wipo[i] -= 1
	rating[a] += 2
	rating[i] -= 5

	strand = RAND(0,2)
	if strand = 0:musle[a] += 10
	if strand = 1:flex[a] += 10
	if strand = 2:stamina[a] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[a] += 10
	if tehrand = 1:Uteh[a] += 10
	if tehrand = 2:Zteh[a] += 10

	if NoView = 0:'<b><<$nameA>> одержала победу сдачей</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа сдачей</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение сдачей</font>
	'

	win[a] += 1
	SubWin[a] += 1
	loss[i] += 1
	SubLoss[i] += 1
elseif resultFight = 1:
	wipo[a] += 1
	rating[a] += 1
	rating[i] -= 3

	strand = RAND(0,2)
	if strand = 0:musle[a] += 10
	if strand = 1:flex[a] += 10
	if strand = 2:stamina[a] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[a] += 10
	if tehrand = 1:Uteh[a] += 10
	if tehrand = 2:Zteh[a] += 10

	if NoView = 0:'<b><<$nameA>> одержала победу</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение</font>
	'

	win[a] += 1
	loss[i] += 1
elseif resultFight = 2:
	rating[a] -= 1
	rating[i] -= 1

	if NoView = 0:'<b>Результат боя ничья</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = black>ничья</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = black>ничья</font>
	'

	draw[a] += 1
	draw[i] += 1
elseif resultFight = 3:
	wipo[i] += 1
	rating[a] -= 3
	rating[i] += 1

	strand = RAND(0,2)
	if strand = 0:musle[i] += 10
	if strand = 1:flex[i] += 10
	if strand = 2:stamina[i] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[i] += 10
	if tehrand = 1:Uteh[i] += 10
	if tehrand = 2:Zteh[i] += 10

	if NoView = 0:'<b><<$nameE>> одержала победу</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа</font>
	'

	win[i] += 1
	loss[a] += 1
elseif resultFight = 4:
	wipo[i] += 2
	wipo[a] -= 1
	rating[a] -= 5
	rating[i] += 2

	strand = RAND(0,2)
	if strand = 0:musle[i] += 10
	if strand = 1:flex[i] += 10
	if strand = 2:stamina[i] += 10

	tehrand = RAND(0,2)
	if tehrand = 0:Bteh[i] += 10
	if tehrand = 1:Uteh[i] += 10
	if tehrand = 2:Zteh[i] += 10

	if NoView = 0:'<b><<$nameE>> одержала победу сдачей</b>'
	$spisok[a] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = red>Поражение сдачей</font>
	'
	$spisok[i] += '<<$nameA>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>> vs <<$nameE>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>> <font color = green>Победа сдачей</font>
	'

	win[i] += 1
	SubWin[i] += 1
	loss[a] += 1
	SubLoss[a] += 1
end
--- Autofight ---------------------------------

