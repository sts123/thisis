# TV
if $ARGS[0] = 'start':
	cla
	clr
	elektro = elektro + 5
	gs'stat'

	'<center><img src="images/pics/telek.jpg"></center>'
	'Вы включили телевизор и поудобней устроились на диване.'

	if TV = 1:'Древний телевизор включился и из него хрипло донеслись звуки рекламы.'
	if TV = 2:'Огромная плазма включилась и из нее бойко донеслись звуки рекламы.'

	if kabel = 0:
		'Кабельного у вас нет, поэтому показывает только один канал с постоянной рекламой и новостями.'

		act 'Смотреть телевизор 1 час':gt'TV','nokable'
	elseif kabel = 1:
		'У вас подключено кабельное телевидение.'

		act 'Смотреть телевизор 1 час':gt'TV','kable'
	end

	if daystart < 10 and StoryLine = 0:'Иногда во время просмотра телевизора взгляд случайно останавливается на ваших ногах или груди, и каждый раз это шокирует вас, видеть что ваше тело теперь такое женское.'

	act 'Выключить телевизор и встать с дивана':
		cla
		gt'TV','fin'
	end
end

if $ARGS[0] = 'nokable':
	cla
	clr
	*clr
	minut = minut + 60
	manna = manna + 3
	willpower = willpower + RAND(5,10)
	manna = manna + RAND(10,50)
	elektro = elektro + 3
	gs'stat'

	'<center><img src="images/pics/telek.jpg"></center>'
	'Вы смотрите центральный канал лежа на диване. Смотреть почти нечего, сплошная реклама и дрянные программы.'
	if daystart < 10 and StoryLine = 0:'Иногда во время просмотра телевизора взгляд случайно останавливается на ваших ногах или груди, и каждый раз это шокирует вас, видеть что ваше тело теперь такое женское.'

	act 'Смотреть телевизор 1 час':gt'TV','nokable'
	act 'Выключить телевизор и встать с дивана':gt'TV','fin'
end

if $ARGS[0] = 'kable':
	cla
	clr
	*clr
	minut = minut + 60
	manna = manna + 6
	willpower = willpower + RAND(10,20)
	manna = manna + RAND(50,100)
	elektro = elektro + 3
	gs'stat'

	'<center><img src="images/pics/telek.jpg"></center>'
	'Вы смотрите кабельное телевидение.'
	if daystart < 10 and StoryLine = 0:'Иногда во время просмотра телевизора взгляд случайно останавливается на ваших ногах или груди, и каждый раз это шокирует вас, видеть что ваше тело теперь такое женское.'

	act 'Смотреть телевизор 1 час':gt'TV','kable'
	act 'Выключить телевизор и встать с дивана':gt'TV','fin'
end

if $ARGS[0] = 'fin':
	cla
	gt $locM, $metkaM
!'
	if housr = 1 and housrA = 1:
		housrA = 0
		gt'sitr'
	end
'
end
--- TV ---------------------------------

