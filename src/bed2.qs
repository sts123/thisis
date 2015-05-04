# bed2
if $ARGS[0] = 'dosip':
	dosip = 1
else
	dosip = 0
end

if disable_autosave = 0:
	if StoryLine = 0:
		SAVEGAME 'autosave.sav'
	else
		SAVEGAME 'autosave_alt.sav'
	end
end

nude = 1
odedosna = numdress
numdress = 0
health = health + 5
hapri = 0
InSleep = 1
cloth_vid = 0

'<center><img src="images/pics/son.jpg"></center>'
if analplugIN = 1:analplugIN = 0 & 'Перед сном вы вынули анальную пробку.'
if vibratorIN = 1:vibratorIN = 0 & 'Перед сном вы вынули вибратор.'
if mop > 1:mop = 0 & vidageday = vidageday - 1 & 'Косметика размазалась по лицу, вы подумали, что вредно для внешности спать с косметикой, кожа стареет быстрее от этого.'

slep = RAND(0,10)
if StoryLine = 0:slep = 0
if slep = 0:$slep = 'ничего не снится'
if slep = 1:$slep = 'снятся какие то не понятные образы из прошлого'
if slep = 2:$slep = 'снится луна глядящая на мир своим единственным кровавым глазом'
if slep = 3:$slep = 'снится что вы опять мужчина'
if slep = 4:$slep = 'ничего не снится'
if slep = 5:$slep = 'ничего не снится'
if slep = 6:$slep = 'ничего не снится'
if slep = 7:$slep = 'ничего не снится'
if slep = 8:$slep = 'ничего не снится'
if slep = 9:$slep = 'ничего не снится'
if slep = 10:$slep = 'ничего не снится'
'Вы спите и вам <<$slep>>.'

:loopson
clr
cls
minut = minut + 1
stime = stime + 1
if stime = 60:stime = 0 & son = son + 3
gs'stat'

if hour = timer and minut = timerM:
	manna = manna - 10

	'Звенит будильник'

	if daystart < 10 and StoryLine = 0:'Первой мыслью было как вы проснулись "Черт подери. Это не сон, я действительно теперь баба."'
	if daystart >= 10 and daystart < 30 and StoryLine = 0:'Спросонья вы немного удивленно попялились на свое женское тело.'

	act 'Встать с кровати и одеться (15 минут)':
		cla
		numdress = odedosna
		InSleep = 0
		minut += 15
		tanga = 1
		nude = 0
		gt'bed','fin'
	end
	act 'Встать с кровати':
		cla
		InSleep = 0
		gt'bed','fin'
	end
	act 'Постараться уснуть':gt'bed2','dosip'
elseif son > 23 and dosip = 0:
	manna = manna - 10

	'Вы выспались'

	if daystart < 10 and StoryLine = 0:'Первой мыслью было как вы проснулись "Черт подери. Это не сон, я действительно теперь баба."'
	if daystart >= 10 and daystart < 30 and StoryLine = 0:'Спросонья вы немного удивленно попялились на свое женское тело.'

	act 'Встать с кровати и одеться (15 минут)':
		cla
		numdress = odedosna
		InSleep = 0
		minut += 15
		tanga = 1
		nude = 0
		gt'bed','fin'
	end
	act 'Встать с кровати':
		cla
		InSleep = 0
		gt'bed','fin'
	end
	act 'Постараться уснуть':gt'bed2','dosip'
elseif son > 47 and dosip = 1:
	manna = manna - 10
	dosip = 0
	son = son - 24

	'Вы выспались'

	act 'Встать с кровати и одеться (15 минут)':
		cla
		numdress = odedosna
		InSleep = 0
		minut += 15
		tanga = 1
		nude = 0
		gt'bed','fin'
	end
	act 'Встать с кровати':
		cla
		InSleep = 0
		gt'bed','fin'
	end
	act 'Постараться уснуть':gt'bed2','dosip'
else
	jump 'loopson'
end
--- bed2 ---------------------------------

