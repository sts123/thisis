# cikl
if curly > 0:curly = curly - 1
sweat = sweat + 1
if tan > 0:tan = tan - 1
if tabletki > 0:tabletki = tabletki - 1
leghair = leghair + 1
lobok = lobok + 1
if suhbelo > 0:suhbelo2 = suhbelo & suhbelo = 0
manna = manna - 10

!'
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
'

if anus > 1:
	if anusK < 0:anusK = 0
	if anusK < 3:anusK += 1
	if anusK >= 3:anus = anus - 1 & anusK = 0
end

if vagina > 10:
	if vaginaK < 0:vaginaK = 0
	if vaginaK < 6:vaginaK = vaginaK + 1
	if vaginaK >= 6:vaginaK = 0 & vagina = vagina - 1
end

lipkoef = lipkoef - 1
!!!!!!!!!!!!
!!!РАБОТЫ!!!
!!!!!!!!!!!!

if isprok = 1:isprok = 0 & 'Вы выкинули использованный тампон.'

!ЦИКЛ 28 дней, 4 дня ментсруация
if preg = 0:
	if mesec > 0:mesec = mesec - 1
	if mesec = 0:cikl = cikl + 1
	if cikl >= 23 and preg ! 1:mesec = 4 & cikl = 0
elseif preg = 1 and pregtime < 280:
	pregtime = pregtime + 1
	if pregTimes = 0:pregTimes = 1
elseif preg = 1 and pregtime = 280 and hourpreg ! hour:
	hourpreg = hour
	'<center><b>Резко толкнуло в живот и что то потекло по ногам. Черт, у вас отошли воды! Надо срочно в поликлинику!</b></center>'
elseif preg = 1 and pregtime > 280:
	cla
	*clr
	over = 4
	'<center><b>Страшная боль пронзила вас внизу живота</b></center>'
	xgt'gameover'
	exit
end

if StoryLine = 0:
	if horny < 100:horny = horny + vagina
elseif StoryLine > 0:
	if vagina = 0:
		razeba = 0
		if horny > 0 and horny <= 50:horny -= 10
		if horny > 50:horny -= 25
	elseif vagina > 0:
		if pregTimes = 0:
			if age < 18:
				razeba = 1
				if horny > 0 and horny <= 50:horny -= 5
				if horny > 50 and horny < 80:horny -= 10
				if horny >= 80:horny -= 20
			elseif age >= 18 and age < 21:
				razeba = 2
				if horny > 0 and horny <= 50:horny -= 1
				if horny > 50 and horny < 80:horny -= 5
				if horny >= 80:horny -= 10
			elseif age >= 21 and age < 25:
				razeba = 3
				if horny > 0 and horny <= 50:horny += 1
				if horny > 50 and horny < 80:horny -= 1
				if horny >= 80:horny -= 5
			elseif age >= 25 and age < 30:
				razeba = 4
				if horny > 0 and horny <= 50:horny += 5
				if horny > 50 and horny < 80:horny += 1
				if horny >= 80:horny -= 5
			elseif age >= 30:
				razeba = 5
				if horny > 0 and horny <= 50:horny += 10
				if horny > 50 and horny < 80:horny += 5
				if horny >= 80:horny += 1
			end
		elseif pregTimes > 0:
			if preg = 0:
				razeba = 5
				if horny > 0 and horny <= 50:horny += 10
				if horny > 50 and horny < 80:horny += 5
				if horny >= 80:horny += 1
			elseif preg > 0:
				razeba = 6
				if horny < 100:horny = horny + (pregtime/10)
			end
		end
	end
end

if horny < 0:horny = 0

if musle >= salo and stren >= 10 and vital >= 10 and dounspell = 0:
	!Падение мускулистости
	if downmusl >= 5:
		downmusl = 0
		stren = stren - 1
		vital = vital - 1
		fat = fat + 4
		salo += 4
	else
		downmusl += 1
	end
end

gs'starenie'
--- cikl ---------------------------------

