# beforeFW
$endurdin = {
	Ken = (musle/100)*Kus/100
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
	Aktiv = (strenw/2)+agilw+RAND(0,lustw)+KoefUder
	Aktiv = Aktiv*endur/endurMax
	Passiv = (((strenwE+(agilwE/2))*koefE)/100)+RAND(0,lustwE)+KoefProtE
	Passiv = Passiv*endurE/endurMaxE
}

$uderdinE = {
	Kus = 10
	Kuse = 5
	dynamic $endurdin
	endur -= ken
	endurE -= kene
	Aktiv = (strenwE/2)+agilwE+RAND(0,lustwE)+KoefUdere
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

!сила, броски
!гибкость, защита,
!скорость, инициатива
!техника,
!выносливость
a = 1
point = 0
pointE = 0
$nameE = $nikname[i]
$nameA = $nikname[a]
strenw = musle[1]/10
strenwE = musle[i]/10
agilw = flex[1]/10
agilwE = flex[i]/10
lustMax = wipo[1]
lustMaxE = wipo[i]
lustw = lustMax
lustwe = lustMaxe
Brosok = Bteh[1]/10
BrosokE = Bteh[i]/10
Uder = Uteh[1]/10
Udere = Uteh[i]/10
Zash = Zteh[1]/10
Zashe = Zteh[i]/10

resultFight = 0
endurMax = stamina[1]/10
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
!минус выносливость за жир
!сила зависит от выносливости
!скорость зависит от выносливости

if Formula = 0:Formula = 3

'<center><b>Перед раундом</b></center>'
'<center><img src="images/pic/fight/bef.jpg"></center>'
'Вы и <<$nameE>> поприветствовали друг друга.'
'Рефери потребовал начать борьбу на руках.'

act 'Бороться на руках':
	cls
	!картинка
	'<center><img src="images/pic/fight/arm.jpg"></center>'

	if strenw > strenwE:
		point += 1
		lustw += 1
		crouch = 1
		$text = 'Встать вашей сопернице на четвереньки, а вам произвести захват сзади.'

		'Вы победили в схватке на руках.'
	elseif strenw < strenwE:
		pointE += 1
		lustwE += 1
		crouch = 0
		$text = 'Встать вам на четвереньки, а вашей сопернице произвести захват сзади.'

		'Вы проиграли в схватке на руках.'
	elseif strenw = strenwE:
		varrand = RAND(0,1)
		if varrand = 0:crouch = 1 & $text = 'Встать вашей сопернице на четвереньки, а вам произвести захват сзади.'
		if varrand = 1:crouch = 0 & $text = 'Встать вам на четвереньки, а вашей сопернице произвести захват сзади.'

		'Схватка на руках закончилась вничью. Рефери подбросил монетку, что бы определить победителя.'
	end

	'Рефери остановил вас и скомандовал <<$text>>'

	act 'Выполнить указания рефери':
		gt'FightCrouch'
	end
end
--- beforeFW ---------------------------------

