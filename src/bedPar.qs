# bedPar
gs'stat'

if nude = 0:'<center><img src="images/pics/bed.jpg"></center>'
if nude = 1:'<center><img src="images/pics/son.jpg"></center>'
'Вы лежите на кровати. Будильник заведен на <<timer>> часов, <<timerM>> минут.'

act 'Завести будильник':gt'budilnik','start'

!if son < 10:
act 'Раздеться и лечь спать':
	if disable_autosave = 0:
		if StoryLine = 0:
			SAVEGAME 'autosave.sav'
		else
			SAVEGAME 'autosave_alt.sav'
		end
	end

	cls
	health = health + 5
	hapri = 0
	InSleep = 1
	:loopson
	minut = minut + 1
	stime = stime + 1
	if stime = 60:stime = 0 & son = son + 3
	clr
	cls
	gs'stat'

	'<center><img src="images/pics/son.jpg"></center>'
	if analplugIN = 1:analplugIN = 0 & 'Перед сном вы вынули анальную пробку.'
	if vibratorIN = 1:vibratorIN = 0 & 'Перед сном вы вынули вибратор.'
	if mop > 1:mop = 0 & vidageday = vidageday - 1 & 'Косметика размазалась по лицу, вы подумали, что вредно для внешности спать с косметикой, кожа стареет быстрее от этого.'
	'Вы спите и вам ничего не снится.'

	if hour = timer and minut = timerM:
		manna = manna - 10

		'Звонит будильник'

		act 'Встать с кровати и одеться (15 минут)':
			cla
			!numdress = odedosna
			InSleep = 0
			minut += 15
			tanga = 1
			!nude = 0
			gt $locM, $metkaM
		end

		exit
	end

	if son > 23 and dosip = 0:
		'Вы проснулись от того, что выспались'

		act 'Встать с кровати и одеться (15 минут)':
			cla
			!numdress = odedosna
			InSleep = 0
			minut += 15
			tanga = 1
			!nude = 0
			gt $locM, $metkaM
		end

		exit
	end

	jump 'loopson'
end
!end

act 'Встать с кровати':
	cla
	gt $locM, $metkaM
end
--- bedPar ---------------------------------

