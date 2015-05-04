# Nudelake
gs'stat'

'<center><b>Нудистский пляж</b></center>'
'<center><img src="images/img/Lake/Nudelake.jpg"></center>'
'Здесь можно ходить голышом и никто вас не осудит.'

if hour >= 6 and hour <= 20:
	'Здесь можно <a href="exec:gt''Nudelake'',''zagarat''">загорать</a> и <a href="exec:gt''Nudelake'',''swim''">купаться</a>'
	'А ещё можно сыграть в <a href="exec:gt''Nudelake'',''voleybol''">пляжный волейбол</a>'
end

act 'Уйти на основной пляж':gt'lake','start'

if katday ! day and kat >= 1:
	'Вы видите на пляже Кэт.'

	act 'Подойти к Кэт':
		gt'Katlake','kat'
	end
end

if $ARGS[0] = 'voleybol':
	cls
	minut += 1

	'<center><img src="images/img/Lake/voleybol.jpg"></center>'
	'Вы подошли к волейбольной площадке.'

	act 'Смотреть':gt'Nudelake','smotr'
	act 'Уйти':gt'Nudelake'
	act 'Играть':
		cla
		*clr
		agil += 1
		react += 1
		speed += 1
		minut += 30

		'<center><img src="images/img/Lake/voleybol.jpg"></center>'
		'Вы подходите к играющим и спрашиваете можно ли присоединиться, вас с удовольствием берут в команду.'

		act 'Закончить':gt'Nudelake'
	end
end

if $ARGS[0] = 'zagarat':
	cls
	minut += 30
	sweat = sweat + 1
	manna = manna + 5
	gs'stat'

	'<center><img src="images/img/Lake/nudezagarat.jpg"></center>'

	if krem = 0:
		tan = tan + 1

		'Вы легли на пляж загорать.'
	elseif krem > 0:
		krem = krem - 1
		tan = tan + 3

		'Вы намазали тело кремом для загара и легли загорать.'
	end

	nzagrand = RAND(0,100)
	if nzagrand >= 60 and nzagrand < 70 and kat > 30 and katkey = 0:gt'Katlake','key'
	if nzagrand >= 70 and nzagrand < 80 and kat = 0 and katday ! day:gt'Katlake'
	if nzagrand >= 80 and nzagrand < 90:gt'Vnlake1'
	if nzagrand >= 90:gt'Vnlake2'

	act 'Закончить':gt'Nudelake'
end

if $ARGS[0] = 'swim':
	cla
	*clr
	cumpussy = 0
	cumbelly = 0
	cumass = 0
	cumlip = 0
	cumface = 0
	cumfrot = 0
	minut = minut + 60
	sweat = -3
	manna = manna + 5
	willpower = willpower + 5
	if stren < 30:stren = stren + 1

	'<center><img src="images/img/Lake/nudeswim.jpg"></center>'
	'Вы пошли искупаться.'

	act 'Закончить':gt'Nudelake'
end

if $ARGS[0] = 'smotr':
	cls
	minut += 30
	gs'stat'

	'<center><img src="images/img/Lake/voleybol.jpg"></center>'
	'Вы смотрите как играют другие.'

	act 'Уйти':gt'Nudelake'
end
--- Nudelake ---------------------------------

