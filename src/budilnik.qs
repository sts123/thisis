# budilnik
if $ARGS[0] = 'start':
	cla
	clr
	gs'stat'

	'<center><img src="images/pic/bed2.jpg"></center>'
	*nl
	*nl
	if numbud = 4:'<center><b><<bud1>><<bud2>>: <<bud3>><<bud4>></b></center>'
	if numbud = 3:'<center><b><<bud1>><<bud2>>: <<bud3>></b><<bud4>></center>'
	if numbud = 2:'<center><b><<bud1>><<bud2>></b>: <<bud3>><<bud4>></center>'
	if numbud = 1:'<center><b><<bud1>></b><<bud2>>: <<bud3>><<bud4>></center>'
	if numbud = 0:'<center><<bud1>><<bud2>>: <<bud3>><<bud4>></center>'
	*nl
	'<center><b><a href="exec:GT ''budilnik'',''1''">1</a> <a href="exec:GT ''budilnik'',''2''">2</a> <a href="exec:GT ''budilnik'',''3''">3</a></b></center>'
	'<center><b><a href="exec:GT ''budilnik'',''4''">4</a> <a href="exec:GT ''budilnik'',''5''">5</a> <a href="exec:GT ''budilnik'',''6''">6</a></b></center>'
	'<center><b><a href="exec:GT ''budilnik'',''7''">7</a> <a href="exec:GT ''budilnik'',''8''">8</a> <a href="exec:GT ''budilnik'',''9''">9</a></b></center>'
	'<center><b><a href="exec:GT ''budilnik'',''0''">0</a></b></center>'
	'<center><b><a href="exec:GT ''budilnik'',''Сброс''">Сброс</a> <a href="exec:GT ''budilnik'',''Время''">Установить время</a></b></center>'

	act 'Положить будильник':
		cla
		bud1 = 0
		bud2 = 0
		bud3 = 0
		bud4 = 0
		numbud = 0
		gt'budilnik','fin'
	end
end

if $ARGS[0] = 'Время':
	cla
	if bud1 > 0:
		timer = bud1*10
		timer = timer + bud2
	end
	if bud2 > 0 and bud1 = 0:
		timer = bud2
	end
	if bud3 > 0:
		timerM = bud3*10
		timerM = timerM + bud4
	end
	if bud4 > 0 and bud3 = 0:
		timerM = bud4
	end

	if timer > 23:timer = 0
	if timerM > 60:timerM = 0

	'Будильник заведен на <<timer>> часов, <<timerM>> минут.'

	act 'Поставить будильник на место':
		cla
		gt'budilnik','fin'
	end
end

if $ARGS[0] = '1':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 1 & numbud = 4
	if numbud = 2:bud3 = 1 & numbud = 3
	if numbud = 1:bud2 = 1 & numbud = 2
	if numbud = 0:bud1 = 1 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '2':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 2 & numbud = 4
	if numbud = 2:bud3 = 2 & numbud = 3
	if numbud = 1:bud2 = 2 & numbud = 2
	if numbud = 0:bud1 = 2 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '3':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 3 & numbud = 4
	if numbud = 2:bud3 = 3 & numbud = 3
	if numbud = 1:bud2 = 3 & numbud = 2
	if numbud = 0:bud1 = 3 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '4':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 4 & numbud = 4
	if numbud = 2:bud3 = 4 & numbud = 3
	if numbud = 1:bud2 = 4 & numbud = 2
	if numbud = 0:bud1 = 4 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '5':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 5 & numbud = 4
	if numbud = 2:bud3 = 5 & numbud = 3
	if numbud = 1:bud2 = 5 & numbud = 2
	if numbud = 0:bud1 = 5 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '6':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 6 & numbud = 4
	if numbud = 2:bud3 = 6 & numbud = 3
	if numbud = 1:bud2 = 6 & numbud = 2
	if numbud = 0:bud1 = 6 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '7':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 7 & numbud = 4
	if numbud = 2:bud3 = 7 & numbud = 3
	if numbud = 1:bud2 = 7 & numbud = 2
	if numbud = 0:bud1 = 7 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '8':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 8 & numbud = 4
	if numbud = 2:bud3 = 8 & numbud = 3
	if numbud = 1:bud2 = 8 & numbud = 2
	if numbud = 0:bud1 = 8 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '9':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 9 & numbud = 4
	if numbud = 2:bud3 = 9 & numbud = 3
	if numbud = 1:bud2 = 9 & numbud = 2
	if numbud = 0:bud1 = 9 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = '0':
	cla
	if numbud = 4:
	end
	if numbud = 3:bud4 = 0 & numbud = 4
	if numbud = 2:bud3 = 0 & numbud = 3
	if numbud = 1:bud2 = 0 & numbud = 2
	if numbud = 0:bud1 = 0 & numbud = 1
	gt'budilnik','start'
end

if $ARGS[0] = 'Сброс':
	cla
	bud1 = 0
	bud2 = 0
	bud3 = 0
	bud4 = 0
	numbud = 0
	gt'budilnik','start'
end

if $ARGS[0] = 'fin':
	cla
	gt $locM, $metkaM
!'
	if housr = 1 and housrA = 1:
		housrA = 0
		gt'bedr'
	end
'
end
--- budilnik ---------------------------------

