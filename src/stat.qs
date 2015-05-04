# stat
clr
view

gs'dinSex2'

if nippain = 2:
	if nippainday+5 < daystart:
		$nippain = 'У вас сильно болят соски.'
		nippain = 1
		nippainday = daystart
	elseif nippainday+5 >= daystart:
		$nippain = 'У вас сильно болят соски.'
	end
elseif nippain = 1:
	if nippainday+5 < daystart:
		$nippain = ''
		nippain = 0
	elseif nippainday+5 >= daystart:
		$nippain = 'У вас немного болят соски.'
	end
end

if painpub = 2:
	if painpubday+5 < daystart:
		$painpub = 'У вас сильно болит влагалище.'
		painpub = 1
		painpubday = daystart
	elseif painpubday+5 >= daystart:
		$painpub = 'У вас сильно болит влагалище.'
	end
elseif painpub = 1:
	if painpubday+5 < daystart:
		$painpub = ''
		painpub = 0
		painpubday = daystart
	elseif painpubday+5 >= daystart:
		$painpub = 'У вас немного болит влагалище.'
	end
end

if year = 2011 and katjaPreg = 0 and month >= 2:katjaPreg = 1

if analplay >= 2 and anus <= 10:anus += 1 & analplay = 0
if analplay >= 4 and anus <= 15:anus += 1 & analplay = 0
if analplay >= 8 and anus <= 20:anus += 1 & analplay = 0

musle[1] = musle
flex[1] = agil
stamina[1] = vital*3
wipo[1] = will
intel[1] = intel
krasota[1] = vnesh
rost[1] = rost
salo[1] = salo
fat[1] = fat
Bteh[1] = bteh
Uteh[1] = uteh
Zteh[1] = zteh
!flex[0] = agil
!stamina[0] = vital*3
!krasota[0] = vnesh
!wipo[0] = will

if nopornowrestling = 0:
	nopornowrestling = 1
	NPCnum = 30
	NPCnow = 1
	!shag = 1
	gs'npc'
	NoView = 1
	NPCrost = 30
	gs'generation'
	NoView = 1
	NPCrost = 30
	gs'generation'
	NoView = 1
	NPCrost = 30
	gs'generation'
	NoView = 1
	NPCrost = 30
	gs'generation'
	NoView = 1
	NPCrost = 30
	gs'generation'

	$nikname[1] = 'Школьница'
	!musle[0] = 100
	!flex[0] = agil
	!stamina[0] = vital*3
	!wipo[0] = will
	!intel[0] = 10
	!krasota[0] = vnesh
	!rost[0] = 165
	!salo[0] = 100
	!fat[0] = 100

	!$nikname[1] = 'Стальная Дева'
	!musle[1] = 100
	!flex[1] = 100
	!stamina[1] = 300
	!wipo[1] = 50
	!intel[1] = 10
	!krasota[1] = 10
	!rost[1] = 165
	!salo[1] = 100
	!fat[1] = 100
end

if newclo[131] = 1 and SchoolAtestat = 1 or newclo[131] = 1 and SchoolBlock = 1:newclo[131] = 0

!!!CHEATS!!!
if cheatWork = 1:work = 0
if cheatWorkKiskis = 1:young_shop_miss = 0
if cheatHapri = 1:hapri = 1
if cheatKlisma = 1:klismaday = day & klismaday1 = 1
if cheatNomakeup = 1:
	if mop = 0:mop = 1
end
if cheatNosweat = 1 and sweat ! -3:sweat = -3
if cheatNoEat = 1:
	if energy ! 19:energy = 19
	if water ! 19:water = 19
end
!!!!!!!!!!!!

if alko > 0 and frost > 0:frost = 0

if lernSkill >= 8:intel += 1 & lernSkill = 0
if numdress ! 131 and Sforma > 0:Sforma = 0
if lern >= 10:intel += 1 & lern = 0

if GorSlut = 1:$gnikname = 'давалка'
if GorSlut = 2:$gnikname = 'вафлерша'
if GorSlut = 3:$gnikname = 'общая хуесоска'
if GorSlut = 4:$gnikname = 'общая дырка'
if GorSlut = 5:$gnikname = 'опущенная шалава'
if GorSlut = 6:$gnikname = 'проститутка'

if GorSlut >= 2:KatjaKnowBJ = 1
if GorSlut >= 1 or preg > 0:KatjaKnowSex = 1
if GorSlut > 6: GorSlut = 6

if film > 0 and kompromatLife < 10:
	!порноактрисса
	if kompromatLife < 10:kompromatLife = 10
	$kompromatFoto = 'На фотографии кадры из вашего порнофильма.'
end
if fotoyousuck = 1 and kompromatLife < 9:
	!сосала в паре у парней и была сфотографированна
	if kompromatLife < 9:kompromatLife = 9
	$kompromatFoto = 'На фотографии отчетливо видно, как вы сосете сразу два члена. Очевидно это та самая фотография, которую расклеили в подъезде, после того как вы отсосали в парке.'
end
if fotoCFNMsex > 0 and kompromatLife < 8:
	kompromatLife = 8
	$kompromatFoto = 'На фотографии вы стоите раком перед толпой народу и вас трахает сзади обнаженный мужик. Явно фотография была сделана в стрипклубе.'
end
if fotoCFNMblowjobCum > 0 and kompromatLife < 7:
	!кончили на лицо в стрипклубе
	kompromatLife = 7
	$kompromatFoto = 'На фотографии вы сидите на корточках перед обнаженным мужиком. Его сперма видна на вашем лице и его член касается ваших губ. Явно фотография была сделана в стрипклубе.'
end
if fotoCFNMblowjob > 0 and kompromatLife < 6:
	!сосала на глазах у всех
	kompromatLife = 6
	$kompromatFoto = 'На фотографии вы сидите на корточках перед обнаженным мужиком, обхватив его член губами. Позади видна толпа девушек. Явно фотография была сделана в стрипклубе.'
end
if stripdancesum > 0 and kompromatLife < 2:
	!стриптизерша
	if kompromatLife < 2:kompromatLife = 2
	$kompromatFoto = 'На фотографии, вы голая танцуете возле шеста. Очевидно вас фоткали когда вы работали стриптизершей.'
end
if modelfoto > 0 and kompromatLife < 1:
	!фото модель
	if kompromatLife < 1:kompromatLife = 1
	$kompromatFoto = 'На фотографии ваше обнаженное тело. Когда вы позировали в модельном агентстве.'
end

shameless = guy+bj+anal+hj+(slutty*2)+(gang*2)
moneySUM = money+karta+stolmoney
cumSUM = cumbelly+cumpussy+cumass+cumlip+cumface+cumfrot+cumanus

gs'dina'
gs'din2'

if husbizvradd > 5:izvratH = 1
if husbharmin > 10:harakHusb = 0
if clrbelo <= 0:clrbelo = 0 & tanga = 0

if husband = 0:
	husbizvradd = 0
	husbharmin = 0
	husbandMark = 0
	houseslut = 0
end

if SNarkvnesh = 0:SNarkvnesh = 1
if SNarkTimes >= SNarkvnesh*25:
	SNarkvnesh += 1
	vidage += 1
end

if gopota >= 20 and gnewQW = 1:gnewQW = 2

if workDisk = 4 and week > 5:workDisk = 1
if workDisk = 3 and week > 5:workDiskAtkPlayer = 1

VeneraN = 0
if VeneraOnce > 0:VeneraOnce = 0
if SifacOnce = 1:VeneraN += 1
if GerpesOnce = 1:VeneraN += 1
if TriperOnce = 1:VeneraN += 1
Venera = VeneraN

if fat < 0:fat = 0
if vokal < 0:vokal = 0
if vokal > 100:vokal = 100
if dance > 100:dance = 100
if stripdance > 100:stripdance = 100
if poledance > 100:poledance = 100

!'
if libonce = 0:
	libonce = 1
	ADDQST 'lib/otg_lib_menu_eng.qsp'
end
if youngshoponce = 0:
	youngshoponce = 1
	ADDQST 'youngshop.qsp'
end

if qwestonce = 0:
	qwestonce = 1
	ADDQST 'qwest/qwest.qsp'
end
'

if bfa < 0:bfa = 0

if painQW = 0:painweather = 6

if beg < 0:beg = 0
if beg > 2000:beg = 2000

if oficiant > 100:oficiant = 100
if vagina > 36:vagina = 36
if throat > 36:throat = 36
if anus > 36:anus = 36

if Jab > 120:Jab = 120
if Punch > 120:Punch = 120
if Kik > 120:Kik = 120
if KikDef > 120:KikDef = 120

if nark >= 30 and narkoman = 0:
	narkoman = 1
elseif nark = 0 and narkoman = 0:
	narkoman = 0
end

boxing = Jab + Punch + Kik + KikDef
if boxing > 100:boxing = 100

if stren > 100 and mutagenP = 0:stren = 100
if speed > 100 and mutagenS = 0:speed = 100
if agil > 100 and mutagenA = 0:agil = 100
if react > 100 and mutagenR = 0:react = 100
if vital > 100 and mutagenV = 0:vital = 100
if will > 100 and mutagenW = 0:will = 100
if intel > 100 and mutagenI = 0 and student = 0 and diplom = 0:intel = 100

if stren > 150 and mutagenP = 1:stren = 150
if speed > 150 and mutagenS = 1:speed = 150
if agil > 150 and mutagenA = 1:agil = 150
if react > 150 and mutagenR = 1:react = 150
if vital > 150 and mutagenV = 1:vital = 150
if will > 150 and mutagenW = 1:will = 150
if intel > 150 and mutagenI = 1 and student = 0 and diplom = 0:intel = 150

if stren > 200 and mutagenP = 2:stren = 200
if speed > 200 and mutagenS = 2:speed = 200
if agil > 200 and mutagenA = 2:agil = 200
if react > 200 and mutagenR = 2:react = 200
if vital > 200 and mutagenV = 2:vital = 200
if will > 200 and mutagenW = 2:will = 200
if intel > 200 and mutagenI = 2 and student = 0 and diplom = 0:intel = 200

if stren > 250 and mutagenP = 3:stren = 250
if speed > 250 and mutagenS = 3:speed = 250
if agil > 250 and mutagenA = 3:agil = 250
if react > 250 and mutagenR = 3:react = 250
if vital > 250 and mutagenV = 3:vital = 250
if will > 250 and mutagenW = 3:will = 250
if intel > 250 and mutagenI = 3 and student = 0 and diplom = 0:intel = 250

if intel > 250:intel = 250

if MagikDostup = 0:
	if orgasm >= 1 and magik < 1:magik = 1 & glaraz = glaraz + 1 & rikudo = rikudo + 500 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 2 and magik < 2:magik = 2 & resnic = resnic + 1 & rikudo = rikudo + 500 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 4 and magik < 3:magik = 3 & glaraz = glaraz + 1 & rikudo = rikudo + 500 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 8 and magik < 4:magik = 4 & resnic = resnic + 1 & rikudo = rikudo + 500 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 16 and magik < 5:magik = 5 & glaraz = glaraz + 1 & rikudo = rikudo + 500 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 32 and magik < 6:magik = 6 & resnic = resnic + 1 & rikudo = rikudo + 1000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 64 and magik < 7:magik = 7 & glaraz = glaraz + 1 & rikudo = rikudo + 1000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 100 and magik < 8:magik = 8 & rikudo = rikudo + 1000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 200 and magik < 9:magik = 9 & rikudo = rikudo + 1000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 300 and magik < 10:magik = 10 & rikudo = rikudo + 2000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 400 and magik < 11:magik = 11 & rikudo = rikudo + 4000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 500 and magik < 12:magik = 12 & rikudo = rikudo + 4000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 600 and magik < 13:magik = 13 & rikudo = rikudo + 4000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 700 and magik < 14:magik = 14 & rikudo = rikudo + 4000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 800 and magik < 15:magik = 15 & rikudo = rikudo + 8000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 900 and magik < 16:magik = 16 & rikudo = rikudo + 8000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 1000 and magik < 17:magik = 17 & rikudo = rikudo + 8000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 1100 and magik < 18:magik = 18 & rikudo = rikudo + 8000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 1200 and magik < 19:magik = 19 & rikudo = rikudo + 8000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 1300 and magik < 20:magik = 20 & rikudo = rikudo + 16000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
	if orgasm >= 1400 and magik < 20:magik = 21 & rikudo = rikudo + 21000 & pl'<b>Вы ощутили как что то открылось внутри вас и в вас хлынула магия, подняв вас на новый энергетический уровень.</b>'
end

if SUB >= DOM and DOM > 0:SUB = SUB - DOM & DOM = 0
if DOM >= SUB and SUB > 0:DOM = DOM - SUB & SUB = 0

if horny < 0:horny = 0
if health > vital*10 + stren*5:health = vital*10 + stren*5
if willpower > intel*5 + will*5:willpower = intel*5 + will*5
if manna > (intel*magik) + magik*100 + vital*10 + rikudo:manna = (intel*magik) + magik*100 + vital*10 + rikudo
mannamax = (intel*magik) + magik*100 + vital*10 + rikudo
!musle = strenbuf + vitalbuf
if vidageday <= 0:
	vidageday = 360
	vidage += 1
end

!!!!!!!!!!!
!!!ВРЕМЯ!!!
!!!!!!!!!!!
if nminut ! minut:
	!totminut время игры в минутах
	totminut += minut
	nminut = minut
end

if vgape > 0:
	if vgape = 3:
		if manna > (mannamax/4):manna = mannamax/4
	elseif vgape = 2:
		if manna > (mannamax/2):manna = mannamax/2
	end

	if vgapetime+2500 <= totminut:
		if vgape = 1:vgape = 0
		if vgape = 2:vgape = 1 & vgapetime = totminut
		if vgape = 3:vgape = 2 & vgapetime = totminut
	end
end

if agape > 0:
	if agape = 3:
		if manna > (mannamax/6):manna = mannamax/6
	elseif agape = 2:
		if manna > (mannamax/3):manna = mannamax/3
	end

	if agapetime+5760 <= totminut:
		if agape = 1:agape = 0
		if agape = 2:agape = 1 & agapetime = totminut
		if agape = 3:agape = 2 & agapetime = totminut
		if anus > 1:anus -= 1
	end
end

if sec >= 60:
	:loopsec
	minut += 1
	sec -= 60
	if sec >= 60:
		jump 'loopsec'
	end
end

if minut >= 60:
	:loopmin
	if SbrosNerdism = 1:nerdism -= ((will/10)+orgasm)
	if nerdism < 0:nerdism = 0
	if obkvsdam > 0:obkvsdam = RAND(2,5)
	hour = hour + 1
	energy = energy - 1
	water = water - 1
	son = son - 1
	minut = minut - 60

	if alko > 0 and alkoblock = 0:
		if alko >= 4:
			if beg > 0:beg -= 1
			if volleyboll > 0:volleyboll -= 1
			if alko >= 6:
				if stren > 10:stren -= 1 & salo += 3
				if vital > 10:vital -= 1 & salo += 3
				if intel > 10:intel -= 1
				alko -= alko/2
			end
		end
		alko -= 1
	end

	!!!!!!!!!!!!!
	!!!АВТОБОЙ!!!
	!!!!!!!!!!!!!
	if hour >= 8 and hour <= 23 and NPCnum > 10:
		:markturnirotbort
		xf = 0
		:markturnirotbortt
		xf += 1
		turnirFighter[xf] = RAND(2,NPCnum)
		if xf < 2:jump'markturnirotbortt'
		if turnirFighter[1] = turnirFighter[2]:jump'markturnirotbort'
		a = turnirFighter[1]
		i = turnirFighter[2]
		NoView = 1
		gs'Autofight'
	end
	!!!!!!!!!!!!!

	if shame > 0:shame -= 1 & manna -= 5
	if smoker >= 20:smokerNeed += 1
	if smokerNeed > 10 and InSleep = 0:manna -= manna*10/100
	if smokerNeed > 300:smokerNeed = 0 & smoker = 0
	if StrongNarkota > 0:StrongNarkota -= 1
	if SLomka > 0:SLomka += 1 & manna -= 500
	if SLomka > 100 and StrongNarkota <= 0:SLomka = 0 & SNarkTimes = 0

	if narkoman = 1 and narkday ! day:
		health = health - 5
		willpower = willpower - 5
		manna = manna - 10
	end

	if tanga = 0 and ski = 0 or glamur = 0 and tanga = 0:
		mosolpred += 1
	end

	if mosolpred >= 10:
		mosol += 1
		mosolpred -= 10
	end

	if mosol >= 50:
		manna -= 5
	end

	if energy >= 25:energy -= 5 & fat += 1

	if tanga = 1 and mosol > 0:mosol -= 1
	if lipbalmstat > 0:lipbalmstat -= 1
	if sickstage = 1:sick += 1 & sicktimer += 1
	if sickstage = 1 and sicktimer >= 80:sicktimer = 0 & sickstage = 2
	if sickstage = 2 and sick > 0:sick -= 1
	if sickstage = 2 and sick <= 0:sick = 0 & sickstage = 0
	if perkice > 0:perkice -= 1
	if frost > 0:frost -= 1

	if KGOLpers > 0:
		if KGHP < KGHPMAX:KGHP += 10
		if KGManna < KGMannaMax:KGManna += 10
	end

	if minut >= 60:
		jump 'loopmin'
	end
end

if hour >= 24:
	if pirs_pain_ton > 0:pirs_pain_ton -= 1
	if artompower <= 0:artompower = 3
	if brow > 0 and browper = 0:brow -=1

	if shorthair = 1:
		shorthairday += 1
		if shorthairday >= 45:shorthairday = 0 & shorthair = 0
	end

	if KatjaOTN > 0:
		if KatjaHorny > 0 and KatjaLust < 40:KatjaHorny -= RAND(1,3)
		if KatjaLust >= 40:KatjaHorny += RAND(1,3)
		if KatjaHorny < 0:KatjaHorny = 0
		if KatjaHorny >= 100:KatjaHorny = 0 & KatjaMastr += 1 & KatjaLust += 1
	end

	if volleysostav > 0:trenerepa -= 1

	if birthday = day and birthmonth = month:
		!день рождения
		age = age + 1
		vidage = vidage + 1
	end

	if horny > hornyStat:
		hornyStat = horny
		if pirsA > 0:
			horny += 1
		end
		if pirsB > 0:
			horny += 1
		end
		if pirsC > 0:
			horny += 1
		end
		if pirsD > 0:
			horny += 1
		end
		if pirsE > 0:
			horny += 1
		end
		if pirsF > 0:
			horny += 5
		end
		if pirsG > 0:
			horny += 5
		end
		if pirsN > 0:
			horny += 1
		end
	end

	if horny < hornyStat:
		hornyStat = horny
	end

	!!!!!!!!!!!!!!!
	!!!ГЕНЕРАЦИЯ!!!
	!!!!!!!!!!!!!!!
	if NPCnum < 290:
		NPCnow = NPCnum
		NPCnum += RAND(1,3)
		gs'npc'
	end

	if NPCnum >= 290 and NPCnum < 300:
		NPCnow = NPCnum
		NPCnum += 1
		gs'npc'
	end
	!!!!!!!!!!!!!!!

	if kanikuli = 0:Suspeh -= 1
	dmishaevent = 0

	if BuyHous = 2 and ArendHouseSL <= 0:ArendHouseSL = 0 & BuyHous = 0 & housr = 0
	if BuyHous = 2 and ArendHouseSL > 0:ArendHouseSL -= 1

	if Gspravka <= 0 and GspravkaT > 0:GspravkaT = 0 & Gspravka = 0
	if GspravkaT > 0:Gspravka -= 1
	if IvanPodstavaQW = 2 and PodpiskaNeviezd = 30:IvanPodstavaQW = 3
	if IvanPodstavaQW = 2 and PodpiskaNeviezd > 0 and PodpiskaNeviezd < 30:PodpiskaNeviezd += 1

	if salo > fat:
		salo -= 1
		fat += 1
	elseif salo < fat:
		salo += 1
		fat -= 1
	end

	if strenbuf > stren:strenbuf -= 1
	if strenbuf < stren:strenbuf += 1
	if vitalbuf > vital:vitalbuf -= 1
	if vitalbuf < vital:vitalbuf += 1
	if agilbuf > agil:agilbuf -= 1
	if agilbuf < agil:agilbuf += 1
	if husband > 0 and husbandrink ! 11:husbandrink = RAND(0,10)
	inWorkYoungShop = 0
	husbandsexday = 0
	borsexkol = 0
	givisexday = 0

	if shantsr > 0:
		pay = shantsr*5000
		karta += pay
		shantsr = 0
	end

	if shantbog > 0:
		:shantftb
		shantftbgrand = RAND(0,10)
		if shantftbgrand > 2:
			shantpopala += 1
			shantbog -= 1
			if shantbog > 0:jump'shantftb'
		elseif shantftbgrand <= 2:
			karta += 30000
			shantbog -= 1
			if shantbog > 0:jump'shantftb'
		end
	end

	petersexday = 0
	klismaday1 = 0
	:loop
	day = day + 1
	daystart = daystart + 1
	week = week + 1
	hour = hour - 24

	!ЗПП
	if SifacOnce = 1:Sifilis += 1
	if GerpesOnce = 1:Gerpes += 1
	if TriperOnce = 1:Triper += 1
	if KandidozOnce = 1:Kandidoz += 1
	if beg >= 100 and beg < 1000:beg -= 1
	if beg >= 1000 and beg < 1500:beg -= 2
	if beg >= 1500 and beg < 2000:beg -= 3
	if beg >= 2000:beg -= 4

	vidageday = vidageday - 1
	if workDolgDay > 0:workDolgDay -= 1
	if QWdogreiqTimer > 0:QWdogreiqTimer -= 1
	if husband > 0:husbanday += 1
	if kid > 0:kid += 1
	if husband > 10 and husbanday > 0:husband -= 15
	if fingal > 0:fingal -= 1

	if husbandMark = 1 and husband <= 10:
		husbizvradd = 0
		husbharmin = 0
		husbandMark = 0
		husband = 0
		divorced += 1
		if KFOnLineReaga > 0:KFOnLineReaga -= 1

		'<b><font color = red>Ваш муж подал на развод.</font></b>'
	end

	gs'cikl'
	if nark > 0:
		nark = nark - 1
	end

	if pregtime > 10:fat += 1

	if hour >= 24:
		jump 'loop'
	end
end

!Выплаты
if day = 25:
	if PersSecWork = 1 and PersSecWorkTimes > 0 and paydaybistrosec = 0:
		Pay = PersSecWorkTimes*2500
		PersSecWorkTimes = 0
		money += Pay
		paydaybistrosec = 1
		'<b><font color = green>Вам перечислили <<pay>> рублей зарплаты за работу секретаршей.</font></b>'
	end
	if workKafe = 1 and paydayKafe = 0:
		paydayKafe = 1
		pay = smenaKafe*600
		money = money + pay
		smenaKafe = 0
		'<b><font color = green>Вам перечислили <<pay>> рублей зарплаты за работу официанткой в кафе.</font></b>'
	end
	if workhosp = 1 and nopaypoly = 0:
		pay = smena*1000
		money = money + pay
		smena = 0
		nopaypoly = 1
		'<b><font color = green>Вам перечислили <<pay>> рублей зарплаты за работу в поликлинике.</font></b>'
	end
	if worksalon = 1 and nopaysalon = 0:
		pay = smena*800
		money = money + pay
		smena = 0
		nopaysalon = 1
		'<b><font color = green>Вам перечислили <<pay>> рублей зарплаты за работу в салоне красоты.</font></b>'
	end
	if tanwork = 1 and nopaytanwork = 0:
		nopaytanwork = 1
		money += 25000
		'<b><font color = green>Вам перечислили 25000 рублей зарплаты за работу гувернанткой.</font></b>'
	end
	if workSec = 1 and paydaySec = 0:
		paydaySec = 1
		pay = sekDay*800
		if officebestslut >= 3:pay += 20000
		karta = karta + pay
		sekDay = 0
		'<b><font color = green>Вам перечислили на банковский счет <<pay>> рублей зарплаты за работу секретаршей.</font></b>'
	end
	if husband > 0 and paydayHusb = 0:
		paydayHusb = 1
		if husbFin = 0:huspay = 15000
		if husbFin = 1:huspay = 25000
		if husbFin = 2:huspay = 40000
		money += huspay
		'<b><font color = green>Вашему мужу перечислили зарплату на банковский счет, в количестве <<huspay>> рублей.</font></b>'
	end

	if stipuha = 1 and stipuhaday = 0:stipuhaday = 1 & money = money + 1200 & '<b><font color = green>Вам перечислили 1200 рублей стипендии.</font></b>'
	if housr = 1 and haday = 0:haday = 1 & money = money - 3000 & '<b><font color = red>Вы оплатили 3000 рублей за квартиру.</font></b>'

	if housr = 1 and electroday = 0:
		electroday = 1
		if elektro >= 800:elektro = 800 + RAND(0,100)
		money = money - elektro
		'<b><font color = red>Вы оплатили <<elektro>> рублей за свет.</font></b>'
	end
	if housr = 1 and kabel > 0 and kabelday = 0:kabelday = 1 & money = money - 300 & '<b><font color = red>Вы оплатили 300 рублей за кабельное телевидение.</font></b>'
end

if day ! 25:
	if paydayHusb = 1:paydayHusb = 0
	if workKafe = 1 and paydayKafe = 1:paydayKafe = 0
	if workSec = 1 and paydaySec = 1:paydaySec = 0
	if housr = 1 and haday = 1:haday = 0
	if housr = 1 and electroday = 1:electroday = 0
	if housr = 1 and kabel > 0 and kabelday = 1:kabelday = 0
	if stipuhaday = 1:stipuhaday = 0
	if nopaytanwork = 1:nopaytanwork = 0
	if nopaypoly = 1:nopaypoly = 0
	if nopaysalon = 1:nopaysalon = 0
	if paydaybistrosec = 1:paydaybistrosec = 0
end

if sdaday = day and sdamonth = month and housr = 0:
	housr = 1
	'<b><font color = red>Срок аренды вашей квартиры истек, вам вернули ключи.</font></b>'
end

if month = 1 or month = 3 or month = 5 or month = 7 or month = 8 or month = 10 or month = 12:
	!31
	if day > 31:day -= 31 & month += 1
elseif month = 2:
	!28
	if day > 28:day -= 28 & month += 1
elseif month = 0:
	month = 1
	if day > 31:day -= 31 & month += 1
elseif month = 13:
	month = 1
	if day > 31:day -= 31 & month += 1
else
	!30
	if day > 30:day -= 30 & month += 1
end

!'
if day > 30:
	day = day - 30
	month = month + 1
end
'

if day = 0:day = 1

if week > 7:
	:loopweek
	week = week - 7
	husbandrink = 0
	if military = 1:military = 0
	if week > 7:
		jump 'loopweek'
	end
end

if week = 1:$week = 'Понедельник'
if week = 2:$week = 'Вторник'
if week = 3:$week = 'Среда'
if week = 4:$week = 'Четверг'
if week = 5:$week = 'Пятница'
if week = 6:$week = 'Суббота'
if week = 7:$week = 'Воскресенье'

if month = 0:month = 1
if month = 13:month = 1 & year = year + 1
if month = 1:$month = 'Январь' & $mons = 'Января'
if month = 2:$month = 'Февраль' & $mons = 'Февраля'
if month = 3:$month = 'Март' & $mons = 'Марта'
if month = 4:$month = 'Апрель' & $mons = 'Апреля'
if month = 5:$month = 'Май' & $mons = 'Мая'
if month = 6:$month = 'Июнь' & $mons = 'Июня'
if month = 7:$month = 'Июль' & $mons = 'Июля'
if month = 8:$month = 'Август' & $mons = 'Августа'
if month = 9:$month = 'Сентябрь' & $mons = 'Сентября'
if month = 10:$month = 'Октябрь' & $mons = 'Октября'
if month = 11:$month = 'Ноябрь' & $mons = 'Ноября'
if month = 12:$month = 'Декабрь' & $mons = 'Декабря'

if minut < 10:$nilmin = '0'
if minut >= 10:$nilmin = ''

if kid > 0:
	if year > yearkid[1] and markyear[1] ! year:
		if monthkid[1] = month and daykid[1] = day:
			markyear[1] = year
			kidage[1] += 1
		end
	end
end

!мудлеты
!mannamax
!totminut

if Mud >= totminut:
	manna = mannamax
	$mud = 'Вы чувствуете себя окрыленной.'
else
	$mud = ''
end

if nerdism > 0:
	if lastreadday = daystart:
		!<font color = green>Вы полностью здоровы и сияете здоровым румянцем.</font>
		manna = mannamax
		SbrosNerdism = 0
		$mudnerd = '<font color = green>Вы погружены в свои фантазии после прочтения книги.</font>'
	end
	if lastreadday+1 = daystart:
		!manna = mannamax
		SbrosNerdism = 0
		$mudnerd = '<font color = black>Вам немного скучно и хочется опять погрузится в книги.</font>'
	end
	if lastreadday+2 = daystart:
		SbrosNerdism = 0
		if manna > mannamax/2:manna -= 10
		$mudnerd = '<font color = red>Вам очень хочется что нибудь почитать.</font>'
	end
	if lastreadday+3 <= daystart:
		if manna > mannamax/10:manna -= 10
		SbrosNerdism = 1
		$mudnerd = '<font color = red><b>Вы жутко хотите хоть что нибудь почитать!!!</b></font>'
	end
	!$mudnerd += 'lastread<<lastread>> totminut<<totminut>> <<totminut-lastread>>'
else
	SbrosNerdism = 0
	$mudnerd = ''
end

!!!!!!!!!!!!!!!!!!!
!!!КОНЕЦ ВРЕМЕНИ!!!
!!!!!!!!!!!!!!!!!!!
subage = 0
:metakasubage
subage += 10
if subage+10 < age:
	jump'metakasubage'
else
	subage = age-subage
end

if subage = 0 or subage >= 5:
	$letgoda = 'лет'
elseif subage = 1:
	$letgoda = 'года'
else
	$letgoda = 'года'
end

subagevne = 0
:metakasubagevne
subagevne += 10
if subagevne+10 < vidage:
	jump'metakasubagevne'
else
	subagevne = vidage-subagevne
end

if subagevne ! 1:
	$letgoda2 = 'лет'
else
	$letgoda2 = 'года'
end

!!!!!!!!!!!!!
!!!ЭНЕРГИЯ!!!
!!!!!!!!!!!!!
if son < 0:
	son = 0
	manna = manna - 5
end

if energy < 0:
	energy = 0
	health = health - 1
	if fat = 0 and stren + vital > 0:
		stren = stren - 1
		vital = vital - 1
		energy = energy + 2
	elseif fat = 0 and stren + vital <= 0:
		over = 3
		gt'gameover'
		exit
	elseif fat > 0:
		fat = fat - 1
		energy = energy + 2
	end
end

if water < 0:
	water = 1
	health = health - 5
	willpower = willpower - 1
end

if manna <= 0:
	manna = 1
	health = health - 5
	willpower = willpower - 5
	!fat = fat + 1
end

if health < 0:
	over = 1
	gt'gameover'
	exit
end
if willpower < 0 and StoryLine = 0:
	over = 2
	gt'gameover'
	exit
end

if saloonce = 0 and opPRE = 0:
	saloonce = 1
	salo = fat
	strenbuf = stren
	vitalbuf = vital
	agilbuf = agil
end

gs'body'
!!!!!!!!!!!!!

if health = vital*10 + stren*5:$health = '<font color = green>Вы полностью здоровы и сияете здоровым румянцем.</font>'
if willpower = intel*5 + will*5:$willpower = '<font color = green>У вас кристально чистый разум.</font>'
if manna = (intel*magik) + magik*100 + vital*10 + rikudo:$manna = '<font color = green>Вы в прекрасном настроении.</font>'

if health < vital*10 + stren*5 and health >= (vital*10 + stren*5)*75/100:$health = '<font color = blue>Вы здоровы, но самочувствие как то не очень.</font>'
if health < (vital*10 + stren*5)*75/100 and health >= (vital*10 + stren*5)*50/100:$health = '<font color = brown>Вам нездоровиться.</font>'
if health < (vital*10 + stren*5)*50/100 and health >= (vital*10 + stren*5)*25/100:$health = '<font color = red>Вы болеете.</font>'
if health < (vital*10 + stren*5)*25/100:$health = '<font color = red>Вы на пороге смерти.'

if willpower < intel*5 + will*5 and willpower >= (intel*5 + will*5)*75/100:$willpower = '<font color = blue>Вы большей частью пребываете в задумчивости.</font>'
if willpower < (intel*5 + will*5)*75/100 and willpower >= (intel*5 + will*5)*50/100:$willpower = '<font color = brown>Вы подавленны.</font>'
if willpower < (intel*5 + will*5)*50/100 and willpower >= (intel*5 + will*5)*25/100:$willpower = '<font color = red>Вы в депрессии.</font>'
if willpower < (intel*5 + will*5)*25/100:$willpower = '<font color = red>Вы на грани сумашествия.</font>'

if manna < (intel*magik) + magik*100 + vital*10 + rikudo and manna >= ((intel*magik) + magik*100 + vital*10 + rikudo)*75/100:$manna = '<font color = blue>У вас нормальное настроение.</font>'
if manna < ((intel*magik) + magik*100 + vital*10 + rikudo)*75/100 and manna >= ((intel*magik) + magik*100 + vital*10 + rikudo)*50/100:$manna = '<font color = brown>Вы в скверном настроении.</font>'
if manna < ((intel*magik) + magik*100 + vital*10 + rikudo)*50/100 and manna >= ((intel*magik) + magik*100 + vital*10 + rikudo)*25/100:$manna = '<font color = red>Вы в ужасном настроении.</font>'
if manna < ((intel*magik) + magik*100 + vital*10 + rikudo)*25/100:$manna = '<font color = red>Ваше настроение ниже любого плинтуса и городской канализации.</font>'

if energy >= 20:$energy = '<font color = green>Вы наелись до отвала.</font>'
if energy < 20 and energy >= 10:$energy = '<font color = blue>Вы сыты.</font>'
if energy < 10 and energy >= 2:$energy = '<font color = brown>Вы слегка голодны.</font>'
if energy < 2:$energy = '<font color = red>Вы очень голодны.</font>'

if water >= 20:$water = '<font color = green>Вы напились и больше не хотите пить.</font>'
if water < 20 and water >= 10:$water = '<font color = blue>Вы не хотите пить.</font>'
if water < 10 and water >= 2:$water = '<font color = brown>Вы хотите пить.</font>'
if water < 2:$water = '<font color = red>У вас сушняк.</font>'

if son >= 20:$son = '<font color = green>Вы выспались и больше не хотите спать.</font>'
if son < 20 and son >= 10:$son = '<font color = blue>Вы не хотите спать.</font>'
if son < 10 and son >= 2:$son = '<font color = brown>Вы хотите спать.</font>'
if son < 2:$son = '<font color = red>Вы засыпаете на ходу.</font>'

!'
$din_shame = {
	dynamic din_shame
	shame += 1
	if shame >= 5:shame = 4 & shameless += 1
	if shame >= 4:$shame = '<font color = red><b>Ваши щеки полыхают от залившего их румянца стыда.</b></font>'
	if shame = 3:$shame = '<font color = red>Ваши щеки красные от румянца стыда.</font>'
	if shame = 2:$shame = '<font color = brown>Вы немного покраснели от стыда.</font>'
	if shame = 1:$shame = '<font color = green>Вы немного смущены.</font>'
	if shame <= 0:$shame = '<font color = green>Вы немного смущены.</font>'
	gs'stat'
}

if shame >= 5:shame = 4 & shameless += 1
if shame >= 4:$shame = '<font color = red><b>Ваши щеки полыхают от залившего их румянца стыда.</b></font>'
if shame = 3:$shame = '<font color = red>Ваши щеки красные от румянца стыда.</font>'
if shame = 2:$shame = '<font color = brown>Вы немного покраснели от стыда.</font>'
if shame = 1:$shame = '<font color = green>Вы немного смущены.</font>'
if shame <= 0:$shame = '<font color = green>Вы немного смущены.</font>'
'

$holyday = ''
kanikuli = 0
if (month = 10 and day >= 27) or (month = 11 and day <= 4):$holyday = '<b>Осенние каникулы.</b>' & kanikuli = 1
if (month = 12 and day >= 29) or (month = 1 and day <= 13):$holyday = '<b>Зимние каникулы.</b>' & kanikuli = 2
if (month = 3 and day >= 25):$holyday = '<b>Весенние каникулы.</b>' & kanikuli = 3
if (month = 5 and day >= 25) or month = 6 or month = 7 or month = 8:$holyday = '<b>Летние каникулы.</b>' & kanikuli = 4
if month = 1 and day = 1:$holyday = '<b>Новый год!</b>' & kanikuli = 5

if hour >= 8 and hour < 16 and week < 6 and StoryLine > 0 and SchoolAtestat = 0 and kanikuli = 0 and schoolProgulDay ! day:
	!прогул школы
	schoolprogul += 1
	schoolProgulDay = day
end

!!!!!!!!!!!!!!!!!!!!!
!!!НАЧАЛО ОПИСАНИЯ!!!
!!!!!!!!!!!!!!!!!!!!!
!pl'Время <b><<hour>></b> часов <b><<$nilmin>><<minut>></b> минут'
!pl 'Сейчас <<day>> <<$month>> <<year>> года, <<$week>>.'
if hour < 10:
	if minut > 9:pl' <b> 0<<hour>> : <<minut>> </b> <<$week>> : <<day>> <<$mons>> <<year>> года, '
	if minut < 10:pl' <b> 0<<hour>> : 0<<minut>> </b> <<$week>> : <<day>> <<$mons>> <<year>> года, '
end
if hour > 9:
	if minut > 9:pl' <b> <<hour>> : <<minut>> </b> <<$week>> : <<day>> <<$mons>> <<year>> года, '
	if minut < 10:pl' <b> <<hour>> : 0<<minut>> </b> <<$week>> : <<day>> <<$mons>> <<year>> года, '
end

pl' <b><<money>></b> рублей в кошельке'
if StoryLine>0 and SchoolAtestat = 0:pl'<<$holyday>>'
if birthday = day and birthmonth = month:pl'<b>Сегодня ваше день рождение.</b>'
!if shame > 0:pl'<<$shame>>'
pl'<b><<$manna>></b>'
if horny >= 90:pl'<font color = #FF1493>Вы чувствуете, что между ног все промокло от ваших соков.</font>'
if horny >= 50 and horny < 90:pl'<font color = #DB7093>Вы немного возбужденны, ощущение как будто между ног что то приятно зудит.</font>'

if ETOmenu = 1:
	pl'<b><<$health>></b>'
	pl'<b><<$willpower>></b>'
	pl'<b><<$energy>></b>'
	pl'<b><<$water>></b>'
	pl'<b><<$son>></b>'
elseif ETOmenu = 0:
	a = horny
	!a1 = horny
	gs'indik','2'
	pl '<<$ind>> возбуждение'

	healthmax = (vital*10 + stren*5)
	a = (health*100 /healthmax)
	a1 = health
	gs'indik','1'
	pl '<<$ind>> здоровье'

	willpowermax = (intel*5 + will*5)
	a = (willpower*100 / willpowermax)
	a1 = willpower
	gs'indik','1'
	pl '<<$ind>> чистота разума'

	a = (manna *100 / mannamax)
	a1 = manna
	gs'indik','1'
	pl '<<$ind>> мана'

	a = energy*4
	a1 = energy
	gs'indik','1'
	pl '<<$ind>> сытость'

	a = water*5
	a1 = water
	gs'indik','1'
	pl '<<$ind>> жажда'

	a = son*4
	a1 = son
	gs'indik','1'
	pl '<<$ind>> бодрость'
end

$smoker = {
	siga -= 1
	smoker += 1
	smokeHour = hour
	smokeDay = day
	smokeminut = minut+5
	smokeNeed = 0
	manna += 100
	wipo += 100
	if energy < 20:energy += 3
	gs'stat'
}

if $mud ! '':pl'<font color = green><b><<$mud>></b></font>'
if siga <= 0 and smoker >= 20:pl'<font color = red><b>У вас кончились сигареты.</b></font>'

if smokeNeed > 0 and siga > 0 and smoker >= 20:
	pl'<a href="exec:dynamic $smoker"><font color = red><b>Вам хочется курить. У вас есть еще <<siga>> сигарет</b></font></a>'
elseif siga > 0 and smoker >= 20:
	pl'<a href="exec:dynamic $smoker"><font color = blue><b>У вас есть еще <<siga>> сигарет</b></font></a>'
end

if siga > 0 and smoker < 20:
	if smokeHour = hour and smokeday = day and smokeminut >= minut:
	else
		pl'<a href="exec:dynamic $smoker"><font color = blue><b>У вас есть еще <<siga>> сигарет</b></font></a>'
	end
end

if smokeHour = hour and smokeday = day and smokeminut >= minut:pl'<font color = green>Вы курите сигарету</font>'

if pirs_pain_ton > 0:
	if pirs_pain_ton = 1:pl'<font color = red>У вас ноет язык и он немного припухший.</font>'
	if pirs_pain_ton = 2:pl'<font color = red>У вас сильно ноет язык и он заметно припухший.</font>'
	if pirs_pain_ton > 2:pl'<font color = red><b>У вас болит язык, он сильно опух и едва ворочается во рту.</b></font>'
end

if nippain > 0:pl'<font color = red><b><<$nippain>></b></font>'
if painpub > 0:pl'<font color = red><b><<$painpub>></b></font>'

if opPRE = 0:pl'<<$mop>> и <<$hapri>> волосы.'

if sweat = 1:pl'<font color = brown>Вы вспотели.</font>'
if sweat = 2:pl'<font color = red>От вас немного пахнет.</font>'
if sweat = 3:pl'<font color = red>От вас разит потом.</font>'
if sweat > 3:pl'<b><font color = red>От вас разит как от бомжихи.</font></b>'
if isprok = 0 and mesec > 0 and preg = 0:pl'<b><font color = red>У вас течет кровь между ног, срочно нужна прокладка.</font></b>'
if isprok = 1 and mesec > 0 and preg = 0:pl'У вас месячные, но прокладка вас защищает.'
if preg = 1 and pregtime = 280:pl'<b><font color = red>У ВАС НАЧАЛИСЬ СХВАТКИ ВАМ СРОЧНО НАДО В РОДДОМ</font></b>'
if preg = 1:rodtime = 280 - pregtime
if preg = 1 and pregtime < 280 and pregtime > 6:pl'<b><font color = blue>Вы беременны <<pregtime>> дней, до родов осталось <<rodtime>> дней</font></b>'
if hour >= 11 and hour < 12 and week > 1 and week < 5 and workKafe = 1:pl'<b><font color = red>ВЫ МОЖЕТЕ ВЫЙТИ НА РАБОЧУЮ СМЕНУ ОФИЦИАНТКОЙ В КАФЕ</font></b>'
if hour >= 8 and hour < 9 and week < 5 and workSec >= 1:pl'<b><font color = red>ВАМ НУЖНО НА РАБОТУ СЕКРЕТАРЕМ В ПРОЕКТНУЮ ОРГАНИЗАЦИЮ</font></b>'
if PersSecWork = 1 and week < 6 and hour < 10 and hour >= 5:pl'<b><font color = red>ВАМ НУЖНО НА РАБОТУ СЕКРЕТАРШЕЙ В БЫСТРОЕЖКУ, НЕ ПОЗДНЕЕ 9 ЧАСОВ</font></b>'

$cumeater = {
	cumlip += 1
	vaf += 1
	cumbelly = 0
	gs'stat'
	'Вы собрали пальцами сперму с живота и облизали их почувствовав терпкий вкус спермы.'
}

$cumeater2 = {
	cumlip += 1
	vaf += 1
	cumpussy = 0
	gs'stat'
	'Вы собрали пальцами сперму из киски и облизали их почувствовав терпкий вкус спермы.'
}

$cumeater3 = {
	cumlip += 1
	vaf += 1
	cumass = 0
	gs'stat'
	'Вы собрали пальцами сперму с попы и облизали их почувствовав терпкий вкус спермы.'
}

$cumeater4 = {
	cumlip += 1
	vaf += 1
	cumface = 0
	gs'stat'
	'Вы собрали пальцами сперму с лица и облизали их почувствовав терпкий вкус спермы.'
}

$cumeater5 = {
	cumlip += 1
	vaf += 1
	cumfrot = 0
	gs'stat'
	'Вы собрали пальцами сперму с одежды и облизали их почувствовав терпкий вкус спермы.'
}

$cumeater6 = {
	cumlip += 1
	vaf += 1
	cumanus = 0
	gs'stat'
	'Вы собрали пальцами сперму из ануса и облизали их почувствовав терпкий вкус спермы.'
}

$cumeater7 = {
	cumlip = 0
	bottle -= 1
	gs'stat'
	'Вы запили сперму водой.'
}

!'<a href="exec:view''images/picb/cumface.jpg''">лицо</a>'
!'<a href="exec:view''images/picb/cumface.jpg''"><b><font color = red>Ваше лицо</font></b></a>'
!'<a href="exec:view''images/picb/cumass.jpg''"><b><font color = red>Ваша попа</font></b></a>'

if cumbelly > 0 and swallow < 10:pl'<b><font color = red>Ваш <a href="exec:view''images/picb/cumbelly.jpg''">живот</a> перемазан в сперме.</font></b>'
if cumbelly > 0 and swallow >= 10:pl'<a href="exec:view''images/picb/cumbelly.jpg''"><b><font color = red>Ваш живот</font></b></a> <a href="exec:dynamic $cumeater"><b><font color = red>перемазан в сперме.</font></b></a>'

if cumpussy > 0 and swallow < 10:pl'<b><font color = red>Из вашей <a href="exec:view''images/picb/cumpussy.jpg''">киски</a> медленно вытекает сперма.</font></b>'
if cumpussy > 0 and swallow >= 10:pl'<a href="exec:view''images/picb/cumpussy.jpg''"><b><font color = red>Из вашей киски</font></b></a> <a href="exec:dynamic $cumeater2"><b><font color = red>медленно вытекает сперма.</font></b></a>'

if cumass > 0 and swallow < 10:pl'<b><font color = red>Ваша <a href="exec:view''images/picb/cumass.jpg''">попа</a> перемазана в сперме.</font></b>'
if cumass > 0 and swallow >= 10:pl'<a href="exec:view''images/picb/cumass.jpg''"><b><font color = red>Ваша попа</font></b></a> <a href="exec:dynamic $cumeater3"><b><font color = red>перемазана в сперме.</font></b></a>'

if cumlip > 0 and bottle = 0:pl'<b><font color = red>Из вашего рта пахнет спермой.</font></b>'
if cumlip > 0 and bottle > 0:pl'<a href="exec:dynamic $cumeater7"><b><font color = red>Из вашего рта пахнет спермой.</font></b></a>'

if cumface > 0 and swallow < 10:pl'<b><font color = red>Ваше <a href="exec:view''images/picb/cumface.jpg''">лицо</a> и волосы измазаны в сперме.</font></b>'
if cumface > 0 and swallow >= 10:pl'<a href="exec:view''images/picb/cumface.jpg''"><b><font color = red>Ваше лицо</font></b></a> <a href="exec:dynamic $cumeater4"><b><font color = red>и волосы измазаны в сперме.</font></b></a>'
if cumfrot > 0 and swallow < 10:pl'<b><font color = red>У вас на <a href="exec:view''images/picb/cumfrot.jpg''">одежде</a> пятно спермы.</font></b>'
if cumfrot > 0 and swallow >= 10:pl'<a href="exec:view''images/picb/cumfrot.jpg''"><b><font color = red>У вас на одежде</font></b></a> <a href="exec:dynamic $cumeater5"><b><font color = red>пятно спермы.</font></b></a>'
if cumanus > 0 and swallow < 10:pl'<b><font color = red>Из вашей <a href="exec:view''images/picb/cumanal.jpg''">попки</a> медленно вытекает сперма.</font></b>'
if cumanus > 0 and swallow >= 10:pl'<a href="exec:view''images/picb/cumanal.jpg''"><b><font color = red>Из вашей попки</font></b></a> <a href="exec:dynamic $cumeater6"><b><font color = red>медленно вытекает сперма.</font></b></a>'

if vgape = 3:pl'<b><font color = red>У вас сильно болит влагалище, вы даже с трудом ходите, при этом стараясь по шире расставить ноги.</font></b>'
if vgape = 2:pl'<b><font color = red>У вас болит влагалище и вы с трудом можете свести ноги вместе.</font></b>'
if vgape = 1:pl'<b><font color = red>У вас немного болит влагалище.</font></b>'

if agape = 3:pl'<b><font color = red>У вас сильно болит анус и из него идет кровь.</font></b>'
if agape = 2:pl'<b><font color = red>У вас болит анус.</font></b>'
if agape = 1:pl'<b><font color = red>У вас немного болит и чешется анус.</font></b>'

if Gerpes >= 3:pl'<b><font color = red>На ваших губах язвочки. Все признаки генитального герпеса.</font></b>'
if Gerpes < 10 and Gerpes >= 5:pl'<b><font color = red>Ваша киска покраснела и сильно зудит. Это генитальный герпес.</font></b>'
if Gerpes >= 10:pl'<b><font color = red>На вашей киске появились язвочки. Это генитальный герпес.</font></b>'
if Gerpes >= 20:pl'<b><font color = red>Вашу жопу покрывают язвочки генитального герпеса.</font></b>'

if Sifilis >= 21 and Sifilis < 50:pl'<b><font color = red>У вас вскочила большая, твердая болячка на губе.</font></b>'
if Sifilis >= 50:pl'<b><font color = red>Сифилитическая сыпь покрывает все ваше тело.</font></b>'

if Triper > 2:pl'<b><font color = red>Из влагалища выходят белые выделения и сильная резь при мочеиспускании. Так же из влагалища сильно и противно пахнет.</font></b>'
if Kandidoz > 30:pl'<b><font color = red>У вас молочница.</font></b>'
if SLomka > 0:pl'<b><font color = red>Вам очень плохо и болят все кости. У вас ломка</font></b>'
if narkday ! day and narkoman = 1:pl'<b><font color = red>Вам очень плохо и болят все кости. Срочно нужна бледная леди!</font></b>'
if fingal > 0:pl'<b><font color = red>У вас фингал на лице.</font></b>'

if cloth_vid = 1:
	pl'<b><a href="exec:dynamic $din_exhibiTakeOffBimbo">Вы одеты в образе бимбо</a></b>'
end
if exhibi >= 4 and exhibiHideNewCloth ! 1:
	pl'<b><a href="exec:dynamic $din_exhibiHideNewCloth">Вы открыли новый готовый наряд</a></b>'
end

if tanga = 0 and ski = 1 or tanga = 0 and glamur = 1:
	pl'<b><font color = red>Румянец стыда заливает ваше лицо, вы не одели трусики и теперь из под вашей короткой юбки иногда сверкает голая задница.</font></b>'
elseif tanga = 0 and ski = 0 and glamur = 0 and opPRE = 0 and nude = 0:
	pl'<b><font color = red>Вы не одели трусики.</font></b>'
end

if mosol >= 30 and mosol < 50:pl'<b><font color = red>Пися покраснела и зудит, кажется вы ее натерли об одежду.</font></b>'
if mosol >= 50:pl'<b><font color = red>Пися болит и каждый шаг дается через боль, она пунцовая и видны потертости от хождения без нижнего белья.</font></b>'

if analplugIN = 1:pl'<b><font color = red>У вас в попу вставлена анальная пробка.</font></b>'
if vibratorin = 1:pl'<b><font color = red>У вас во влагалище работает вибратор.</font></b>'

if young_shop_work = 1 and hour = 14 and week < 6:pl'<b><font color = red>В 15 часов вам надо быть на работе в магазине Кис Киска.</font></b>'
if young_shop_work = 1 and hour = 16 and week < 6 and inWorkYoungShop = 0:young_shop_miss += 1 & pl'<b><font color = red>Вы прогуляли работу.</font></b>'

if workrin = 1:
	if week = 2 or week = 4 or week = 6:
		if hour = 7:pl'<b><font color = red>В 8м часов вам на работу на рынок.</font></b>'
		if hour = 8:pl'<b><font color = red>Вам надо на работу на рынок.</font></b>'
	end
end

if frost > 0 and frost <= 5:pl'<b><font>Вам немного холодно.</font></b>'
if frost > 5 and frost < 11:pl'<b><font color = red>Вы замерзли.</font></b>'
if frost >= 11:pl'<b><font color = red>Вы очень замерзли.</font></b>'

if sick = 1:pl'<b><font color = red>Вам что то не хорошо, першит в горле и немного течет из носа.</font></b>'
if sick > 1 and sick < 24:pl'<b><font color = red>Вас знобит. У вас течет из носа и саднит горло, вы покашливаете и чихаете - похоже, вы простыли.</font></b>'
if sick >= 24 and sick < 48:pl'<b><font color = red>У вас поднялась температура. У вас забит нос, вам больно глотать - горло побаливает. Вы постоянно кашляете и чихаете - похоже, вы простудились.</font></b>'
if sick >= 48 and sick < 72:pl'<b><font color = red>У вас сильный жар. У вас заложен нос, болят голова и горло, вы сильно кашляете - похоже, вы сильно простудились. Может быть, это грипп.</font></b>'
if sick >= 72:pl'<b><font color = red>Вы мечетесь в жару. У вас заложен нос, болит голова и ломит все кости. Ваше горло воспалено и очень болит. Вы тяжело с надрывом кашляете - похоже, вы серьезно больны. Может быть, это ангина.</font></b>'

if $mudnerd ! '':pl'<<$mudnerd>>'

if hour < meethour and svidanieA = 1:pl'<<$boyA>> будет вас ждать около вашего дома в <<meethour>> часов'
if hour = meethour and svidanieA = 1:pl'<b><font color = red><<$boyA>> уже ждет вас около дома.</font></b>'

if meetday < daystart and svidanieA = 1:bfA -= 10 & svidanieA = 0
if StrongNarkota > 20:pl'<b><font color = red>Вы под кайфом.</font></b>'

if alko > 0:
	if alko < 3:pl'<b><font color = red>Вы немного выпивши.</font></b>'
	if alko >= 3 and alko < 6:pl'<b><font color = red>Вы пьяны.</font></b>'
	if alko >= 6:pl'<b><font color = red>Вы в стельку пьяны.</font></b>'
end

if day = 29 and month = 12 and year = 2010 and StoryLine = 1:
	if hour >= 5 and hour <= 14:pl'В 14 часов пройдет школьная новогодняя вечеринка.'
end

if sisboyday + 1 = day and $CURLOC = 'bedrPar' and hour = 18:gt'sisterQW','sisboyQW_expel'

gs'din_bad'

if bag > 0:
	pl'<a href="exec:dynamic $d_bag"><b>Сумочка</b></a>'
end

!обнуление проверок на замужество
proverka1 = 0
proverka2 = 0
proverka3 = 0
proverka4 = 0
proverka5 = 0

!Ремонт одежды, для старых сохранений.
if remdrop = 0:
	remdrop = 1
	if jeans = 1:jeans[1] = 1 & jeansH[1] = 50 & jeansB[1] = bedra
	if jeans2 = 1:jeans[2] = 1 & jeansH[2] = 50 & jeansB[2] = bedra
	if jeans3 = 1:jeans[3] = 1 & jeansH[3] = 50 & jeansB[3] = bedra
	if jeans4 = 1:jeans[4] = 1 & jeansH[4] = 50 & jeansB[4] = bedra
	if jeans5 = 1:jeans[5] = 1 & jeansH[5] = 50 & jeansB[5] = bedra
	if yoga = 1:yoga[1] = 1 & yogaH[1] = 50
	if yoga2 = 1:yoga[2] = 1 & yogaH[2] = 50
	if yoga3 = 1:yoga[3] = 1 & yogaH[3] = 50
	if yoga4 = 1:yoga[4] = 1 & yogaH[4] = 50
	if yoga5 = 1:yoga[5] = 1 & yogaH[5] = 50
	if yoga6 = 1:yoga[6] = 1 & yogaH[6] = 50
	if yoga7 = 1:yoga[7] = 1 & yogaH[7] = 50
	if yoga8 = 1:yoga[8] = 1 & yogaH[8] = 50
	if yoga9 = 1:yoga[9] = 1 & yogaH[9] = 50
	if yoga10 = 1:yoga[10] = 1 & yogaH[10] = 50
	if yoga11 = 1:yoga[11] = 1 & yogaH[11] = 50
	if yoga12 = 1:yoga[12] = 1 & yogaH[12] = 50
	if yoga13 = 1:yoga[13] = 1 & yogaH[13] = 50
	if yoga14 = 1:yoga[14] = 1 & yogaH[14] = 50
	if yoga15 = 1:yoga[15] = 1 & yogaH[15] = 50
	if yoga16 = 1:yoga[16] = 1 & yogaH[16] = 50
	if yoga17 = 1:yoga[17] = 1 & yogaH[17] = 50
	if yoga18 = 1:yoga[18] = 1 & yogaH[18] = 50
	if sarafan = 1:sarafan[1] = 1 & sarafanH[1] = 50
	if sarafan2 = 1:sarafan[2] = 1 & sarafanH[2] = 50
	if short = 1:short[1] = 1 & shortH[1] = 50 & shortB[1] = bedra
	if short2 = 1:short[2] = 1 & shortH[2] = 50 & shortB[2] = bedra
	if short3 = 1:short[3] = 1 & shortH[3] = 50 & shortB[3] = bedra
	if short4 = 1:short[4] = 1 & shortH[4] = 50 & shortB[4] = bedra
	if short5 = 1:short[5] = 1 & shortH[5] = 50 & shortB[5] = bedra
	if skirt = 1:skirt[1] = 1 & skirtH[1] = 50 & skirtB[1] = bedra
	if skirt2 = 1:skirt[2] = 1 & skirtH[2] = 50 & skirtB[2] = bedra
	if skirt3 = 1:skirt[3] = 1 & skirtH[3] = 50 & skirtB[3] = bedra
	if skirt4 = 1:skirt[4] = 1 & skirtH[4] = 50 & skirtB[4] = bedra
	if skirt5 = 1:skirt[5] = 1 & skirtH[5] = 50 & skirtB[5] = bedra
	if dress = 1:dress[1] = 1 & dressH[1] = 100 & dressB[1] = bedra
	if dress2 = 1:dress[2] = 1 & dressH[2] = 100 & dressB[2] = bedra
	if dress3 = 1:dress[3] = 1 & dressH[3] = 100 & dressB[3] = bedra
	if dress4 = 1:dress[4] = 1 & dressH[4] = 100 & dressB[4] = bedra
	if dress5 = 1:dress[5] = 1 & dressH[5] = 100 & dressB[5] = bedra
	if dress6 = 1:dress[6] = 1 & dressH[6] = 100 & dressB[6] = bedra
	if dress7 = 1:dress[7] = 1 & dressH[7] = 100 & dressB[7] = bedra
	if dress8 = 1:dress[8] = 1 & dressH[8] = 100 & dressB[8] = bedra
	if dress9 = 1:dress[9] = 1 & dressH[9] = 100 & dressB[9] = bedra
	if dress10 = 1:dress[10] = 1 & dressH[10] = 100 & dressB[10] = bedra
	if dress11 = 1:dress[11] = 1 & dressH[11] = 100 & dressB[11] = bedra
	if dress12 = 1:dress[12] = 1 & dressH[12] = 100 & dressB[12] = bedra
	if dress13 = 1:dress[13] = 1 & dressH[13] = 100 & dressB[13] = bedra
	if dress14 = 1:dress[14] = 1 & dressH[14] = 100 & dressB[14] = bedra
	if dress15 = 1:dress[15] = 1 & dressH[15] = 100 & dressB[15] = bedra
	if dress16 = 1:dress[16] = 1 & dressH[16] = 100 & dressB[16] = bedra
	if dress17 = 1:dress[17] = 1 & dressH[17] = 100 & dressB[17] = bedra
	if dress18 = 1:dress[18] = 1 & dressH[18] = 100 & dressB[18] = bedra
	if dress19 = 1:dress[19] = 1 & dressH[19] = 100 & dressB[19] = bedra
	if dress20 = 1:dress[20] = 1 & dressH[20] = 100 & dressB[20] = bedra
	if dress21 = 1:dress[21] = 1 & dressH[21] = 100 & dressB[21] = bedra
	if dress22 = 1:dress[22] = 1 & dressH[22] = 100 & dressB[22] = bedra
	if dress23 = 1:dress[23] = 1 & dressH[23] = 100 & dressB[23] = bedra
	if dress24 = 1:dress[24] = 1 & dressH[24] = 100 & dressB[24] = bedra
	if profi = 1:profi[1] = 1 & profiH[1] = 50 & profiB[1] = bedra
	if profi2 = 1:profi[2] = 1 & profiH[2] = 50 & profiB[2] = bedra
	if pants = 1:pants[1] = 1 & pantsH[1] = 50 & pantsB[1] = bedra
	if pants2 = 1:pants[2] = 1 & pantsH[2] = 50 & pantsB[2] = bedra
	if pants3 = 1:pants[3] = 1 & pantsH[3] = 50 & pantsB[3] = bedra
	if pants4 = 1:pants[4] = 1 & pantsH[4] = 50 & pantsB[4] = bedra
	if pants5 = 1:pants[5] = 1 & pantsH[5] = 50 & pantsB[5] = bedra
	if latex = 1:latex[1] = 1 & latexH[1] = 50 & latexB[1] = bedra
	if latex2 = 1:latex[2] = 1 & latexH[2] = 50 & latexB[2] = bedra
	if hooker = 1:hooker[1] = 1 & hookerH[1] = 50 & hookerB[1] = bedra
	if hooker2 = 1:hooker[2] = 1 & hookerH[2] = 50 & hookerB[2] = bedra
	if hooker3 = 1:hooker[3] = 1 & hookerH[3] = 50 & hookerB[3] = bedra
	if hooker4 = 1:hooker[4] = 1 & hookerH[4] = 50 & hookerB[4] = bedra
	if hooker5 = 1:hooker[5] = 1 & hookerH[5] = 50 & hookerB[5] = bedra
	if dressel1 = 1:odekis[1] = 1 & odekisH[1] = 50 & odekisB[1] = bedra
	if odekis1 = 1:odekis[2] = 1 & odekisH[2] = 50 & odekisB[2] = bedra
	if odekis2 = 1:odekis[3] = 1 & odekisH[3] = 50 & odekisB[3] = bedra
	if odekis3 = 1:odekis[4] = 1 & odekisH[4] = 50 & odekisB[4] = bedra
	if odekis4 = 1:odekis[5] = 1 & odekisH[5] = 50 & odekisB[5] = bedra
	if odekis5 = 1:odekis[6] = 1 & odekisH[6] = 50 & odekisB[6] = bedra
	if odekis6 = 1:odekis[7] = 1 & odekisH[7] = 50 & odekisB[7] = bedra
	if odekis7 = 1:odekis[8] = 1 & odekisH[8] = 50 & odekisB[8] = bedra
	if odekis8 = 1:odekis[9] = 1 & odekisH[9] = 50 & odekisB[9] = bedra
	if odekis9 = 1:odekis[10] = 1 & odekisH[10] = 50 & odekisB[10] = bedra
end
--- stat ---------------------------------

