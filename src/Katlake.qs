# Katlake
!if $ARGS[0] = 'start':
cla
gs'stat'

'<center><img src="images/img/Lake/kat.jpg"></center>'
'Вам становиться скучно и вы начинаете осматривать остальных отдыхающих, Недалеко от вас лежит красивая девушка.'

act 'Не подходить':gt'Nudelake'
act 'Подойти':
	cla
	'Вы подходите к девушке и пытаетесь завести разговор.'

	act 'Привет':gt'Katlake','znakomstvo'
end

if $ARGS[0] = 'znakomstvo':
	cla
	gs'stat'

	if vnesh < 14:
		katday = day

		'"Привет" немного стесняясь говорите вы.'
		'Девушка окинула вас пренебрежительным взглядом и ничего не сказала'
		'"Разговора не получится" мелькнуло у вас в голове'

		act 'Уйти':gt'Nudelake'
	elseif vnesh >= 14:
		cla
		clr
		katday = day
		telkat += 1
		kat = 1
		minut += 30

		'"Привет" немного стесняясь говорите вы.'
		'Девушка осматривает вас с ног до головы, улыбается и говорит "Привет".'
		'Она смотрит на вас с легкой улыбкой и ждет. Вы судорожно пытаетесь придумать что же сказать, краснеете пытаясь выдавить из себя хоть слово.'
		'Девушка замечает ваши муки и решает взять инициативу в свои руки "Я Катя, для друзей Кэт, а тебя как зовут?"'
		'"Света" с облегчением выдохнули вы. Дальше разговор пошел гораздо лучше и вы проболтали еще полчаса.'

		act 'Уйти':gt'Nudelake'
	end
end

if $ARGS[0] = 'kat':
	cla
	clr
	*clr
	gs'stat'
	minut += 30

	'<center><img src="images/img/Lake/kat.jpg"></center>'
	'Увидев вас Катя улыбается "Привет Светик как делишки".'

	act 'Уйти':gt'Nudelake'
	act 'Предложить сыграть в волейбол':gt'Katlake','voleybol'
	act 'Предложить прогуляться':gt'Katlake','walk'
	act 'Поболтать':
		cla
		clr
		katday = day
		kat += 1
		minut += 30

		'Вы проболтали полчаса.'

		act 'Уйти':gt'Nudelake'
	end
end

if $ARGS[0] = 'voleybol':
	cla
	clr
	*clr
	katday = day
	kat += 3
	minut += 30
	agil += 1
	react += 1
	speed += 1
	gs'stat'

	'<center><img src="images/img/Lake/voleybol.jpg"></center>'
	'Вы с Кэт идете к волейбольной площадке и присоединяетесь к играющим. Когда у вас что-то не получается Кэт подбадривает вас хлопая рукой по вашей голой попе, при этом её рука немного задерживается на ягодице слегка сжимая её.'

	act 'Закончить':gt'Nudelake'
end

if $ARGS[0] = 'walk':
	cla
	katday = day
	kat += 2
	minut += 30
	gs'stat'

	'Вы с Кэт гуляете по берегу, весело болтая.'

	kwalrand = RAND(0,100)
	if kwalrand >= 80 and kwalrand < 90 and kat > 20:gt'Kwlake1'
	if kwalrand >= 90 and kat > 20:gt'Kwlake2'

	act 'Закончить':gt'Nudelake'
end

if $ARGS[0] = 'key':
	cla
	clr
	*clr
	katkey = 1
	kat += 10
	minut += 60
	gs'stat'

	'<center><img src="images/img/Lake/sun.jpg"></center>'
	'Вы загораете, как вдруг вам становиться плохо, голова кружится, вас подташнивает. Вы попытались встать и потеряли сознание.'
	'"Сейчас, сейчас, потерпи немного." слышится вам откуда то из темноты голос Кати.'
	'Вы чувствуете прохладу, тьма потихоньку развевается и вы открываете глаза. Перед вами лицо Кэт.'
	'"Ну наконец то, очнулась." говорит Кэт. Вы осматриваетесь, у вас на голове мокрое полотенце, а сами вы лежите в тени под деревом.'
	'"Что со мной случилось" спрашиваете вы.'
	'"Что, что, солнечный удар, вот что." отвечает Катя.'
	'"А сейчас приходи в себя и пошли ко мне, сегодня у меня останешься" продолжила она.'
	'"Мне уже лучше, я домой пойду" попытались вы возразить.'
	'"Не, ну вы поглядите лучше её, я с ней ношусь как курица с яйцом, три раза бегала полотенце мочила, волокла на себе в тень, а она еще и выкобенивается. Все я сказала ко мне значит ко мне, я все таки медсестра и мне лучше знать"'
	'После такой тирады возражать вы не стали'

	act 'Идти с Кэт':gt'kathouse0'
end
--- Katlake ---------------------------------

