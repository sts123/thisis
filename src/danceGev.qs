# danceGev
if lesbian > 0:
	horny += 10
elseif lesbian = 0:
	manna += 10
	wipo += 5
end

danceevtimes += 1
gs'stat'

if danceevtimes < 5:dancegevtipe = RAND(0,2)
if danceevtimes >= 5:dancegevtipe = RAND(0,3)

'<center><img src="images/qwest/alter/ev2/ev<<dancegevtipe>>.jpg"></center>'

if dancegevtipe = 0:
	'Вероничка Мохова делает растяжку и наконец то садится на шпагат.'
elseif dancegevtipe = 1:
	'Вероничка Мохова делает стойку на руках.'
elseif dancegevtipe = 2:
	'Вероничка Мохова разминается'
elseif dancegevtipe = 3:
	'Вероничка Мохова делает шпагат стоя на руках, при этом она без трусов.'
end

act 'Уйти':gt'gdksport'
--- danceGev ---------------------------------

